# test_file.rb
# Test an assembly file against the testing thing.
a=OpCodeCompiler6502.new(ARGV[0])
require 'OpCodeCompiler'
args=nil
tests=[]
h=File.open(ARGV[1])
h.each_line do |b|
 if b[0..0]==';'
  k=b[1..-1].split
  if k[0]=='args'
   args=k[1]
  else
   tests<<b[2..-1] if b[1..1]=='#'
  end
  
 end
 a.build(b.strip)
end
fn=ARGV[2]
a.save(fn)

# Run the test suit
match=true
k=`./testfw #{fn} #{args}`
n=0
k.each_line do |x|
# puts 'beep'
 if x.strip!=tests[n].strip
  print 'Differing at line %i' % n
  match=false
 end
# puts x.strip()
# puts tests[n].strip()
 n+=1
end

puts 'Test passed' if match
#puts k
#puts args
#puts tests