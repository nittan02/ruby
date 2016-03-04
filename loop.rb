#! /usr/bin/ruby -Ks

# 繰り返しの構文
# for, while, until
# 
# 繰り返しのメソッド。各クラスに用意されている繰り返しメソッド。
# each, times

array = Array.new(3)

# for 変数 in 範囲 do
#   ...
# end
# 範囲演算子は降順を設定できない
#for i in 10..0 do
#  print i.to_s + " "
#end
for num in 0..10 do
  print num.to_s + " "
  array.push( num )
end

# while 条件式 do
#   演算
# end
# 条件式が成り立つ限り繰り返す。
while num = array.pop do
  puts num
end

# until 条件式 do
#   演算 
# end
# 条件が成立するまで繰り返す。

num=0
until num > 5 do
  puts num 
  num = num+1
end

puts
puts
puts "--------------------------------"

array_name = Array.new(3)
array_name = [ "aikawa", "hirosawa", "utagawa" ]

while name = array_name.pop do
  count = 3
  puts name
  until ( 0 >= count ) do
    for number in 0..10 do
      print number.to_s + " "
    end
    puts
    count = count-1
  end
end





