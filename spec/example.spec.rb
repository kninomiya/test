# frozen_string_literal: true

# sample_spec.rb
class Calculator
  def initialize(val)
    @n = val
  end

  def smart
    (1 + @n) * (@n / 2)
  end

  def inject
    (1..@n).inject(:+)
  end

  def reduce
    (1..@n).reduce { |sum, n| sum + n }
  end

  def sum
    sum = 0
    (1..@n).each do |i|
      sum += i
    end
    sum
  end
end

describe Calculator do
  it 'smart sum(1..10) = 55' do
    obj = Calculator.new(10)
    expect(obj.smart).to eq(55)
  end

  it 'with inject(1..10) = 55' do
    obj = Calculator.new(10)
    expect(obj.inject).to eq(55)
  end

  it 'with reduce(1..10) = 55' do
    obj = Calculator.new(10)
    expect(obj.reduce).to eq(55)
  end

  it 'with loop(1..10) = 55' do
    obj = Calculator.new(10)
    expect(obj.sum).to eq(55)
  end
end
