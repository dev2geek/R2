# 定义类方法的第一种方式

class HelloWorld
  # 常量
  Version = "1.0"

  # 类变量
  @@count = 0
end

# HelloWorld类已定义
class << HelloWorld
  def hello(name)
    puts "#{name} said hello."
  end
end

HelloWorld.hello("no body")
HelloWorld::hello(1)
# 类常量
puts HelloWorld::Version


hey = HelloWorld.new
# hey.hello("d") # 实例中不能调用类方法

# 定义类方法的第二种方式
class HelloWorldII
  class << self
    def hello_2(name)
      puts "#{name} said hello 2."
    end
  end
end

HelloWorldII.hello_2("no body")

# 定义类方法的第三种方式
class HelloWorldIII

end

def HelloWorldIII.hello_3(name)
  puts "#{name} said hello 3."
end

HelloWorldIII.hello_3("yo")