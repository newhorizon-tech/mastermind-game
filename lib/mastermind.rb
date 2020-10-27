class Mastermind
  def initialize()
    random_combo_generator
  end

  def random_combo_generator()
    arr = (0..9).to_a.shuffle
    @correct_combo = arr[0, 4]
    # puts "Random number is #{@correct_combo}"
  end

  def turn_correct(arg)
    arg.eql? @correct_combo
  end

  def check_digit(arg)
    digits = 0
    @correct_combo.each do |combo_digit|
      digits += 1 if arg.any? { |digit| digit.eql? combo_digit }
    end
    digits
  end

  def check_position(arg)
    position = 0
    arg.each_with_index do |digit, digit_index|
      @correct_combo.each_with_index do |combo_digit, combo_digit_index|
        if digit.eql? combo_digit and digit_index.eql? combo_digit_index
          position += 1
          next
        end
      end
    end
    position
  end

  def combo_int
    num = 0
    rev_combo = @correct_combo.reverse
    rev_combo.each_with_index { |value, key| num += (value * 10**key) }
    num
  end
end
