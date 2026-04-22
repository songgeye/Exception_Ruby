# frozen_string_literal: true

class Main
  puts 1
  begin
    num = 0
    answer = 100 / num
    puts answer
  rescue ZeroDivisionError => e
    puts "0では割り算できません"
    # puts e.message
    # p e.backtrace
    STDERR.puts e.backtrace
  ensure
    puts 2
  end
end