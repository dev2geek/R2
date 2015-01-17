$x = "global"
x = "local"

require './sub'

puts $x
puts x

# 合并赋值
a, b, c, d = 11, 12
puts [a, b, c]

a, b, *c = 11, 12, 13, 14, 15
puts c

# 用数组赋值

ary = [21, 22]
a, b = ary
puts a, b
c, = ary
puts c

# 置换
a = "31"
b = "32"
a, b = b, a
puts a, b