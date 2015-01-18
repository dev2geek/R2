class HelloWorld

  attr_accessor :age #必须是symbol

  def initialize(myname = "Ruby", myage = 0)
    @name = myname
    @age = myage
  end

  def hello
    puts "Hello, world. I am #{@name}."
  end

  def how_old
    puts "I am #{@age} years old."
    # self
    puts "I am #{self.age} years old."
  end

  # 存取器
  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

# 调用对象方法
bob.hello
ruby.hello
puts

# accessor method
bob.name = "Robot"
bob.hello
ruby.name=("python")
ruby.hello
puts

# accessor attr
bob.age = 11
bob.how_old