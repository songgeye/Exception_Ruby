# frozen_string_literal: true

class Main
  def test_exception(num)
    puts 2
    begin
      puts 3
      answer = 100 / num
      return answer
      puts 4
    rescue ZeroDivisionError => e
      puts 5
      raise e
    ensure
      puts 6
    end
  end
end

puts 1

begin
  main = Main.new
  main.test_exception(0)
  puts 7
rescue ZeroDivisionError => e
  puts 8
  p e
end