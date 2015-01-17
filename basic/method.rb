# yield

def myloop
  while true
    yield
  end
end

num = 1

myloop do
  puts "num is #{num}"
  break if num > 100
  num *= 2
end

# 参数个数不确定

def foo(*args)
  args
end

puts foo(1, 2, 3)

# 关键字参数

def area2(x: 0, y: 0, z: 0)
  xy = x * y
  yz = y * z
  zx = z * x
  (xy + yz + zx) * 2
end

arg = {
    :x => 2,
    :y => 3,
    z: 4
}

puts area2(x: 2, y: 3, z: 4)
puts area2(z: 4, y: 3, x: 2)
puts area2(x: 2, z: 3)
puts area2(arg)