class C1
  def hello
    "hello"
  end

  def bye
    "bye"
  end
end

class C2 < C1
  alias old_hello hello #设定别名old_hello
  undef bye

  def hello
    "#{old_hello}, again"
  end
end

obj = C2.new
puts obj.old_hello
puts obj.hello
puts obj.bye # undefined method 'bye'