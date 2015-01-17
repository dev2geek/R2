condition = 2

puts (/zz/ === "xyzzg")
puts (String === "ss")
puts ((1..3) === 2)

# case

case condition
  when 1 then
    puts "one"
  when 2 then
    puts "two"
  else
    puts 'unknown'
end

# is ~ then ~ end
if condition > 2 then
  print "yes", "\n"
elsif condition = 2
  print "really?", "\n"
else
  print "no"
end

# while循环
while condition > 0
  print condition, "\n"
  condition -= 1
end

# times循环
10.times do
  print "condition = #{condition}", "\n"
end
