module Edition
  def edition(n)
    "#{self} 第#{n}版"
  end
end

str = "Ruby Tutorial"

# 将module Mix-In进对象
str.extend(Edition)

puts str.edition(4)

module ClassMethods
  def cmethod
    "class method"
  end
end

module InstanceMethods
  def imethod
    "instance method"
  end
end

class MyClass
  # 使用extend方法定义类方法
  extend ClassMethods

  # 使用include定义实例方法
  include InstanceMethods
end

puts MyClass.cmethod
puts MyClass.new.imethod