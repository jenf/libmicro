#!/usr/bin/env ruby

#opfile = open(ARGV[0])
#title = ARGV[1]

class OpCodeTable <Array
 attr :opnames
 def initialize(filename)
  0.upto(255) {|x|
   self[x] = nil
  }
  opfile=open(filename)
  @opnames={}
  @opnames.default=nil
  opfile.readlines.each do |a|
   a=a.split(" ")
   b=a[0].hex
   c=a[1]
   e=a[2..-1].join
   @opnames[c]={} if @opnames[c]==nil
   @opnames[c][e]=b
#   puts "#{b} #{c} #{e}" 
   self[b]=[c,e]    
  end
 end
 
 def mode_name(opcode)
  return self[opcode][1]=='' ? 'Inh' : self[opcode][1]
 end
end


#rar=OpCodeTable.new(ARGV[0])
#puts rar.inspect
#puts rar[0].inspect
