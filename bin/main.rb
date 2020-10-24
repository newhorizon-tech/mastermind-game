#!/usr/bin/env ruby

correct_combo = %w[1 2 3 4 5]

def num_input
  print 'Enter your guess: '
  num = gets.chomp
  num.split('')
end

puts "Rules. \n 1. The number should have 5 digits. \n 2. You can't repeat digits \n"
puts '-' * 40

win = false
10.times do
  turn = num_input
  if turn.eql? correct_combo
    win = true
    puts 'You have lost the game!'
    break
  else
    puts 'Incorrect'
  end
end

puts 'You have lost the game!' unless win
