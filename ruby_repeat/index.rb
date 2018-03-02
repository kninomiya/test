#!/usr/local/bin/ruby
# frozen_string_literal: true

# while loop
puts 'while i < 3'

def run_while
  i = 1
  while i <= 3
    puts format('主人公が勝ちました %<i>d', i: i)
    i += 1
  end
end

run_while

# for loop
puts 'for i in [1, 2, 3]'
for i in [1, 2, 3] do
  # [1, 2, 3].each do |i|
  puts i
end

puts 'for i in 1..3'
# for i in 1..3 do
(1..3).each do |i|
  puts i
end

n = 10
sum = 0

puts format('sum 1..%<n>d', n: n)
# for i in 1..n do
(1..n).each do |i|
  sum += i
end
puts format('sum = %<sum>s', sum: sum)

puts 'sum(n)=(1 + n) * (n / 2)'
puts format('sum = %<n>d', n: ((1 + n) * (n / 2)))

puts 'array.each'
items = [1, 2, 3]
items.each do |item|
  puts item
end
