# frozen_string_literal: true

class Main
  puts 1
  begin
    num = 0
    answer = 100 / num
    puts answer
  rescue ZeroDivisionError => e
    p e
  ensure
    puts 2
  end
end