class Mastermind
  @@correct_combo = %w[5 2 3 4]
  def check_digit(arg)
    digits = 0
    arg.each do |digit|
      @@correct_combo.each do |combo_digit|
        digits += 1 if digit.eql? combo_digit
      end
    end
    digits
  end

  def check_position(arg)
    position = 0
    arg.each_with_index do |digit, digit_index|
      @@correct_combo.each_with_index do |combo_digit, combo_digit_index|
        position += 1 if digit.eql? combo_digit and digit_index.eql? combo_digit_index
      end
    end
    position
  end
end

my_input = %w[4 2 3 1]
test = Mastermind.new

puts test.check_digit(my_input)

puts test.check_position(my_input)
