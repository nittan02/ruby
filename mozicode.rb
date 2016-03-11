#! /usr/bin/ruby -Ku
# 
# このファイルを実行するときのコマンドを指定する。
# -K[code] は実行時の文字コードを指定。
# 上述の場合だと、utf-8を指定。
# 正しく日本語が表示される
#
# s or S    : Shift-JIS
# e or E    : EUC-JP
# u or U    : UTF-8
# n or N    : NONE (ASCII)

# kconvクラスは文字コードを変換するためのクラス
require "kconv"

def moziCode
  number = ARGV[0]
  even = number.to_i % 2

  if even != 0 then
    print("入力された値は奇数です。")
#    print(Kconv.tosjis("入力された値は奇数です。"))
  else
    print("入力された値は偶数です。")
#    print(Konv.tosjis("入力された値は偶数です。"))
  end
end

moziCode()
