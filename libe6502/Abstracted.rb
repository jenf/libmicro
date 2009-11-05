module Abstracted
 def func_name(a)
  printf "void e6502_%s()\n{\n",a 
 end

 def inc_pc_real()
  a=inc_pc()
  printf "  PC+=%s;\n",a if a>0
 end

 def inc_pc()
  0
 end

 def basic_code(a)
#  func_name(a)
  yield if block_given?
  inc_pc_real()
#  puts "}\n\n"
 end

 def preop()
 end

 def load_store(a,params={})
  basic_code(a) {
  preop()
  load()
  yield if block_given?
  check_flags(params[:flags]) if params.has_key?(:flags)
  store()
  }
 end
 def load_storeother(a,b,params={})
  basic_code(a) {
  preop()
  b.preop()
  load()
  yield if block_given?
  check_flags(params[:flags]) if params.has_key?(:flags)
  b.store()
  }
 end
 def loadother_store(a,b,params={})
  basic_code(a) {
  preop()
  b.preop()
  b.load()
  yield if block_given?
  check_flags(params[:flags]) if params.has_key?(:flags)
  store()
  }
 end
 def load_loadother_storeother(a,b,params={})
  basic_code(a) {
  preop()
  b.preop()
  load_other()
  b.load()
  yield if block_given?
  check_flags(params[:flags]) if params.has_key?(:flags)
  b.store()
  }
 end
 def load_loadother(a,b,params={})
  basic_code(a) {
  preop()
  b.preop()
  load_other()
  b.load()
  yield if block_given?
  check_flags(params[:flags]) if params.has_key?(:flags)
  }
 end


 def preload(a,params={})
  basic_code(a) {
  preop()
  load()
  yield if block_given?
  check_flags(params[:flags]) if params.has_key?(:flags)
  }
 end
 def poststore(a,params={})
  basic_code(a) {
  yield if block_given?
  check_flags(params[:flags]) if params.has_key?(:flags)
  store()
  }
 end
end
