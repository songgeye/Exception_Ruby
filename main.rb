# frozen_string_literal: true

class Main
  puts 1
  begin
    num = 1
    answer = 100 / num
    puts answer2
  rescue NameError => e
    puts "未定義の変数を呼び出しています"
    # puts e.message
    # p e.backtrace
    STDERR.puts e.backtrace
  ensure
    puts 2
  end
end