# 可以在已经定义好的类中添加方法
class String
  def count_word
    ary = self.split(/\s+/)
    return ary.size
  end
end

str = "Just Another Ruby Newbie"
puts str.count_word


# 继承
class RingArray < Array
  # 重新定义运算符 []
  def [](i)
    idx = i % size
    super(idx)
  end
end

wday = RingArray["日","月","火","水","木","金","土"]
puts wday[6]
puts wday[11]