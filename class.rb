#! /usr/bin/ruby -Ks

# classはオブジェクトの設計図。
# mainの処理で利用したい機能を定義しておく。
class Test
  # @nameは、インスタンス変数。インスタンス内で使用することができる。
  # @@nameはクラス変数。同じクラスなら共通して使用することができる。
  def initialize(name)
    @objectname = name
    @@classname = "Test"
  end

 def disp_name
    puts @@classname
    puts @objectname
    puts @class_instance_var
  end

  def change_classname( newname )
    @@classname = newname
  end

  # クラススコープ内でインスタンス変数を宣言すると
  # クラスインスタンス変数となる
  # また、self.を付けると、クラスメソッドとなり、
  # クラスインスタンスはクラスメソッドから
  # 参照することができる。
  # クラスメソッドは、インスタンスではなくクラス
  # そのものに関連付けられたメソッド。
  @class_instance_var = 0
  def self.disp_class_instance
    puts "class instance is #{@class_instance_var}"
  end
end

# main function
def main
  c1 = Test.new( "first class" )
  c2 = Test.new( "second class" )
  
  c1.disp_name
  c2.disp_name

  puts
  c1.change_classname( "otherName" )

  puts
  c1.disp_name
  c2.disp_name

  c1.disp_class_instance

end

main()
