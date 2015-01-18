# new
list = Array.new

ary = []
str = "Hello World"

# .class
puts list.class
puts ary.class
puts [].class
puts str.class
puts "there".class
puts

# instance_of?
puts ary.instance_of?(Array)
puts ary.instance_of? String
puts str.instance_of? Array
puts str.instance_of?(String)
puts

# is_a?
str = "a string"
puts str.is_a?(String)
puts str.is_a?(Object)