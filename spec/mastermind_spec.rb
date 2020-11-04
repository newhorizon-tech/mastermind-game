require 'rspec'
require_relative '../lib/mastermind.rb'

describe Mastermind do
  describe 'random_combo_generator' do
    it 'returns array with random numbers between 0 and 9' do
      Obj = Mastermind.new
      random_combo = Obj.random_combo_generator
      test_condition = random_combo.all? { |x| (x < 10 and x > -1) }
      expect(test_condition).to eql(true)
    end
  end

  describe 'check_digit' do
    it 'returns 1 if one number is present in combo' do
      Obj = Mastermind.new([1, 2, 3, 4])
      test_condition = Obj.check_digit([0, 1, 0, 0])
      expect(test_condition).to eql(1)
    end

    it 'returns 2 if two numbers are present in combo' do
      Obj = Mastermind.new([1, 2, 3, 4])
      test_condition = Obj.check_digit([0, 1, 0, 2])
      expect(test_condition).to eql(2)
    end
  end

  describe 'check_position' do
    it 'returns 1 if one number is at correct position in combo' do
      Obj = Mastermind.new([1, 2, 3, 4])
      test_condition = Obj.check_position([1, 0, 0, 0])
      expect(test_condition).to eql(1)
    end

    it 'returns 2 if two numbers are at correct position in combo' do
      Obj = Mastermind.new([1, 2, 3, 4])
      test_condition = Obj.check_position([1, 2, 0, 0])
      expect(test_condition).to eql(2)
    end
  end
end
