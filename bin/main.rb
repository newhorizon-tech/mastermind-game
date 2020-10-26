#!/usr/bin/env ruby

require_relative '../lib/mastermind.rb'

def num_input
  print 'Enter your guess: '
  num = gets.chomp
  num.split('').map(&:to_i)
end

puts "Rules \n 1. The number should have 5 digits. \n 2. You can't repeat digits \n"

test = Mastermind.new
puts "The correct answer is #{test.comb_int}"
win = false
correct_digits = 0 # Correct digits at correct position
correct_position = 0 # Correct digits at incorrect positon
10.times do |turn|
  puts
  puts '-' * 40
  puts "Turn no. #{turn + 1}"
  puts '-' * 40
  turn_guess = num_input
  win = test.turn_correct(turn_guess)
  correct_position = test.check_position(turn_guess)
  correct_digits = test.check_digit(turn_guess)
  incorrect_position = correct_digits - correct_position
  if win
    puts '-' * 40
    puts 'You have won the game!'
    break
  elsif correct_position.positive? or incorrect_position.positive?
    puts "#{correct_position} correct digit(s) at correct position." if correct_position.positive?
    puts "#{incorrect_position} correct digit(s) at incorrect position" if incorrect_position.positive?
  else
    puts 'No correct digit'
  end
end
puts '-' * 40

unless win
  puts 'You have lost the game!'
  puts "The correct answer was #{test.comb_int}"
end
