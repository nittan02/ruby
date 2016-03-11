#! /usr/bin/ruby.rb -Ks

# classを作成
class Argment
  def putArg
    # コマンドライン引数を取得。
    # コマンドラインはクラスから参照可能
    number = ARGV[0]
    
    # .class で何クラスに属しているか調べることができる
    # 引数はStringクラスで与えられる
    puts number.class
    puts number
  end
end

def main
  # ARGV (コマンドライン引数)のクラスはArray
  puts ARGV.class
  a = Argment.new()
  a.putArg
end

# main関数のコール
main()

