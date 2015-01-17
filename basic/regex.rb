puts /cde/ =~ "abcdefg"

puts (/cde/ =~ "ABCDEFG") == nil

puts /cde/i =~ "ABCDEFG"
