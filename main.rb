# frozen_string_literal: true

class Main
  puts 1
  begin
    num = 0
    answer = 100 / num
    puts answer2
  rescue Exception => e
    puts "予期せぬエラーが発生しました"
    puts e
  rescue ZeroDivisionError => e
    puts "0では割り算できません"
    p e
  rescue NameError => e
    puts "未定義の変数を呼び出しています"
    p e
  ensure
    puts 2
  end
end