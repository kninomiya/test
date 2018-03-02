#!/usr/local/bin/ruby
# frozen_string_literal: true

puts 'create array ["a", "b", "c", "d"]'
array = %w[a b c d]
puts array[0]
puts array[1]
puts array[2]
puts array[3]

puts 'array.each'
array.each do |obj|
  puts obj
end
