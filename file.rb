#! /usr/bin/ruby -Ks


puts "------------------------------------------------------"
begin
  # File.openはファイルをオープンし、Fileオブジェクトを返す
  # 第一引数：　ファイルパス
  # 第二引数：　ファイルモード（デフォルト "r"）
  # 第三引数：　ファイルを生成する場合のパーミッション
  # 失敗した場合にErrno::EXXX例外が発生
  #
  # File.openにブロックを渡すと、
  # ブロックを閉じた時点でファイルを自動クローズする。  

  File.open('./inputFile.txt', 'r') do |file|
 
    # IO#each_lineは1行ずつ文字列として読み込み、
    # ブロックを実行する。
    # 第一引数：行の区切り文字
    # 第二引数：最大の読み込みバイト数
    # 読み込み用にオープンされていない場合にIOError
    file.each_line {|line| puts line }
  end

# 例外処理 
rescue SystemCallError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
rescue IOError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
end


puts "------------------------------------------------------"
# IO.foreachを使う場合。IO.foreachはオープンしたファイルの
# 各行を引数としてブロックを実行する。
# ファイルモードは'r'？
# 第一引数：ファイルパス
# 第二引数：行の区切り文字
# オープンに失敗した場合はErrono::EXXX例外が発生

begin
  File.foreach('./inputFile.txt') do |line|
    puts line
  end

# 例外処理
rescue SystemCallError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
end

puts "-----------------------------------------------"
# 他にもファイルの全ラインを先に読んだり、一文字ずつ読んだりできる。
# 下記は一度に読む例。区切り文字を与えて配列で取り出すこともできる。
begin
  s = File.read("./inputFile.txt")
  puts s

rescue SystemCallError => e
  puts %Q(class=[#{e.class}] message=[#{e.message}])
end




