#! /usr/bin/ruby -Ku

class TestBranch
  def test_if( num )
    print num.to_s + "\t : "

    if (num % 2) == 1 then
      puts "input number is odd"
    elsif num % 2 == 0 then
      puts "input nubmer is even"
    else
      puts "input argv is not Integer"
    end
  end

  def test_false_check( obj )

    if obj == 0 then
      str = obj.to_s
    elsif obj == "" then
      str = "blank"
    elsif obj == nil then
      str = "nil"
    elsif obj == false then
      str = "false"
    else
    end

    print "check\t" + str + "\t : " 
    if obj then
      puts str + " is true"
    else
      puts str + " is false"
    end
  end

  def char_comp(str1, str2)
    if( str1 < str2) then
      puts str1 + " < " + str2
    else
      puts str2 + " =< " + str1
    end
  end


end

def branch_test  
  branch = TestBranch.new()
  branch.test_if(1)
  branch.test_if(10)
  branch.test_if(1.2)
  branch.test_if("test")

  puts

puts <<"EOS"
# 0, ""(空文字), nil, falseを判定してみる
# if xx then
#   puts "xx is true"
# else
#   puts "xx is false"
# end

EOS

  branch.test_false_check(0)
  branch.test_false_check("")
  branch.test_false_check(nil)
  branch.test_false_check(false)

  puts
  puts "rubyでは偽と判定されるのはnil, falseのみ"
  puts "0, 空文字も真と判定される。"

puts <<"EOS"
# 文字列の大小を比較してみる。
# ABCD...XYZabcd...xyz
# の順と大小関係が決まっている。
EOS


end

def compare_test
  # 関数代えたのでオブジェクトを作りなおす。
  # 関数内で作成したオブジェクトのスコープは
  # その関数の中。
  comp = TestBranch.new()
  comp.char_comp("a", "b")
  comp.char_comp("A", "a")
  comp.char_comp("aa", "ba")
  comp.char_comp("aa", "ab")
end

# test code
#branch_tesht
compare_test

