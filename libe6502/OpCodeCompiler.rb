require 'OpCodeTable6502.rb'

module OpCodeCompiler
 def addressing_mode(v,a)
#  r=@modeinstr[v]
#  if r
#   return [r,a]
#  end
  
  if a==nil
   return [@modemap[''],nil]
  end
  
  case a[0..0]
   when '#' then return [@modemap['#ii'],a[1..-1].to_i]
   when '0' then return [@modemap['#ii'],a[2..-1].hex]
   else
    case a
     when 'X' then return [@modemap['X'],nil]
     when 'Y' then return [@modemap['Y'],nil]
     when 'A' then return [@modemap['A'],nil]
     else
      m='nnnn'
      r=a
      if a[-2..-2]=='.'
       case a[-1..-1]
        when 'b'
             m='nn'
             r=a[0..-3]
        when 'w'
             m='nnnn'
             r=a[0..-3]
       end
      end
      return [@modemap[m],r]
    end
  end
 end
 
 def build(str)
  return if str.strip.length==0
  return if str.strip[0..0]=='#'
  return if str.strip[0..0]==';'
  a=str.split
  if a[0][-1..-1]==':'
   # Label
   @label[a[0][0..-2]]=@address
   a=a[1..-1]
  end

  if a[0][0..0]=='.'
   #data statements and the like
   case a[0][1..-1]
    when 'int8' then @instr<<[a[1].hex,nil,nil,@address,str]
                     @address+=1
   end
#   puts a.inspect
  else
   r=@opnames[a[0]]
   k=addressing_mode(a[0],a[1])
   if r.length==1 and r.keys[0]=='rr'
    puts r
    k[0]=@modemap['rr']
   end
   o=@mapmode[k[0]]

   puts o
  #puts k.inspect
  #puts str
#   r=@opnames[a[0]]
#  puts o.inspect
#  puts r.inspect
#  puts r[o]
   @instr<<[r[o],k[0],k[1],@address,str]
   @address+=1+k[0].inc_pc
  end
 end
 
 def save(str)
  a=@opnames['NOP']['']
  r=a.chr*65536
  puts @instr.inspect
  for x in @instr
   puts x.inspect
   r[x[3]]=x[0]
#   puts x[2]
   if x[1]!=nil
    if x[2].class==String
     if @label[x[2]]==nil
      raise 'Label %s undefined' % x[2]
     end
     oh=@label[x[2]]
    else
     oh=x[2]
    end
    if x[1].class==Relative
     oh-=(x[3]+2) # Jumps are relative to the memory after that holding the relative address
    end
    puts oh
    case x[1].inc_pc
     when 1 then r[x[3]+1]=oh
     when 2 then na=split_byte(oh)
                 r[x[3]+1]=na[1]
                 r[x[3]+2]=na[0]
    end
#    puts x.inspect
   end
  end
  o=@label['MAIN']
  o=0 if o==nil
  oo=split_byte(o)
  puts oo.inspect
  r[0xFFFC]=oo[0]
  r[0xFFFD]=oo[1]
  file=File.new(str,'w')
  file.print(r)
  file.close()
  puts @label.inspect
 end
 
 def split_byte(a)
  r=[a>>8,a & 0xff]
 end
end

class OpCodeCompiler6502 <OpCode6502
 include OpCodeCompiler
 def initialize(filename)
  @instr=[]
  @label={}
  @begin=0
  @address=@begin
  super(filename)
  @mapmode=@modemap.invert()
 end
end


r=%q{
 MAIN:  LDA HOWDY
        SBC HOWDY.w
        ADC HOWDY.w
        LDA HOWDY.b
        LDA HOWDY.w
        LDX HOWDY
        LDY 0xad
 HOWDY: .int8 0xdd
 }

a=OpCodeCompiler6502.new(ARGV[0])
File.new(ARGV[1]).each_line do |b|
 puts b
 a.build(b)
end
a.save('test_asm')