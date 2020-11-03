require_relative '../lib/mastermind.rb'

describe Mastermind do
  describe 'Random num' do
    it 'returns array with random numbers between 0 and 9' do
      Obj = Mastermind.new
      random_combo = Obj.random_combo_generator
      test_condition = random_combo.all? { |x| (x < 5 and x > -1) }
      expect(test_condition).to eql(true)
    end
  end
end
