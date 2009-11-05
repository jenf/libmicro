require 'Operators'
include Operators
class Nah
 def ge
  print 'no'
 end
end

class Register
 include Operators
 def inc_pc
  return 0
 end
 def load
  printf "  uint8_t var=%s;\n",@var
 end
 def load_other
  printf " uint8_t var2=%s;\n",@var
 end
 def store
  printf "  %s=var;\n",@var
 end
end

class Register16
 include Operators
 def load
  printf "  uint16_t var=%s;\n",@var
 end
 def load_other
  printf " uint16_t var2=%s;\n",@var
 end
 def store
  printf "  %s=var;\n",@var
 end
end

class RegSP
 include Operators
 def initialize
  @var='SP'
 end
 def load
  printf "  uint16_t var=(%s & 0xff);\n",@var
 end
 def load_other
  printf " uint16_t var2=(%s & 0xff);\n",@var
 end
 def store
  printf "  %s=0x0100 | (var & 0xff);\n",@var
 end
end


class RegPC <Register16
 def initialize
  @var='PC'
 end
end

class RegO <Register
 def initialize(var)
  @var=var
 end
end
class RegA <Register
 def initialize
  @var='A'
 end
end

class RegX <Register
 def initialize
  @var='X'
 end
end

class RegY <Register
 def initialize
  @var='Y'
 end
end
class RegS <Register
# Stack Pointer
 def initialize
  @var='SP'
 end
end
