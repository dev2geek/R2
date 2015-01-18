module HelloModule
  Version = "1.0"

  def hello(name)
    puts "Hello, #{name}"
  end

  #  module_function :hello
end

class MyClassI
  include HelloModule

  def ver
    puts Version
  end

end

puts MyClassI.instance_of?(HelloModule)
puts MyClassI.include?(HelloModule)

puts MyClassI.ancestors
puts MyClassI.superclass

class MyClassII
  include HelloModule

  def ver
    puts Version
  end
end

class_i = MyClassI.new
class_i.ver

class_ii = MyClassII.new
# 当定义为moudle_function时候不能被实例调用
class_ii.hello("girl")

# 只有当hello方法被定义为module_function时候才可以被调用
# HelloModule.hello("boy")