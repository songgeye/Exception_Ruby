class Main
  def calculate(num1, num2, operator)
      if num1 !~ /\A-?\d+\z/ || num2 !~ /\A-?\d+\z/
        raise ArgumentError.new("num1、 num2 には整数を入力してください")
      end

      unless ['+', '-', '*', '/'].include?(operator)
        raise StandardError.new("演算子には +、-、*、/ のいずれかを使用してください")
      end

    if operator == '+'
      num1.to_i + num2.to_i
    elsif operator == '-'
      num1.to_i - num2.to_i
    elsif operator == '*'
      num1.to_i * num2.to_i
    elsif operator == '/'
      num1.to_i / num2.to_i
    end
  end
end

puts "1番目の整数を入力してください:"
num1 = gets.chomp

puts "2番目の整数を入力してください:"
num2 = gets.chomp

puts "演算子(+, -, *, /)を入力してください:"
operator = gets.chomp

begin
  main = Main.new
  result = main.calculate(num1, num2, operator)
  puts result
rescue ArgumentError => e
  puts e.message
rescue ZeroDivisionError => _e
  puts "ゼロによる割り算は許可されていません"
rescue StandardError => e
  puts e.message
end

# begin
#   main = Main.new
#   result = main.calculate(1.5, 2, '+')
#   puts result
# rescue ZeroDivisionError => e
#   p e.message
# end