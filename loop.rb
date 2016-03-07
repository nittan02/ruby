#! /usr/bin/ruby -Ks

# 繰り返しの構文（Classクラスのメソッド？)
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
#一番簡単なのは範囲演算子を使う。0 - 10が
#出力、配列にプッシュされる
for num in 0..10 do
  print num.to_s + " "
  array.push( num )
end

print "\n"

# for文をハッシュに使う場合はキーとバリューを指定する。
hash= {:apple =>"RIKUTO", :orange=>"AKITO", :banana=>"NAOKI"}
for key, value in hash do
  print key
  print " : "
  puts value
end

# while 条件式 do
#   演算
# end
# 条件式が成り立つ限り繰り返す。
# array配列が空になるまで繰り返す。
while num = array.pop do
  print num
  print " "
end
print "\n"

# until 条件式 do
#   演算 
# end
# 条件が成立するまで繰り返す。
# whileの反対論理
num=0
until num > 5 do
  print num.to_s + " " 
  num = num+1
end
print "\n"

ary = Array.new(10)
numbers = 10
# integerクラスのtimesメソッドを使う。
numbers.times do |num|
  ary.push num
end

# each, times等は各クラスに用意されているメソッド
# 詳細はクラスの仕様と合わせて勉強する。
# Arrayクラスのeachメソッド  
ary.each do |element|
  print element.to_s + " "
end


