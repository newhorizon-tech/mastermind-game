#!/usr/bin/env ruby

correct_combo = %w[5 2 3 4]

def num_input
  print 'Enter your guess: '
  num = gets.chomp
  num.split('')
end

puts "Rules \n 1. The number should have 4 digits. \n 2. You can't repeat digits \n"

win = false
correct_position = 1 # Correct digits at correct position
incorrect_position = 0 # Correct digits at incorrect positon
10.times do |turn|
  puts
  puts '-' * 40
  puts "Turn no. #{turn + 1}"
  puts '-' * 40
  turn_guess = num_input
  win = turn_guess.eql? correct_combo
  if win
    puts '-' * 40
    puts 'You have won the game!'
    break
  elsif correct_position.positive? or incorrect_position.positive?
    puts "#{correct_position} correct digit(s) at correct position." if correct_position.positive?
    puts "#{incorrect_position} correct digit(s) at incorrect position." if incorrect_position.positive?
  else
    puts 'No correct digit'
  end
end

puts 'You have lost the game!' unless win
