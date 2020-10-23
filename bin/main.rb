#!/usr/bin/env ruby

def color_input
  colors = []
  puts 'Enter Color 1:'
  colors[0] = gets.chomp
  puts 'Enter Color 2:'
  colors[1] = gets.chomp
  puts 'Enter Color 3:'
  colors[2] = gets.chomp
  puts 'Enter Color 4:'
  colors[3] = gets.chomp
  colors
end

turn = color_input

puts "Turn 1: #{turn}"
