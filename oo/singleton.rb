str1 = "Ruby"
str2 = "Ruby"

class << str1
  # 定义str1这个实例的专属方法
  def hello
    "Hello, #{self}"
  end
end

puts str1.hello
puts str2.hello