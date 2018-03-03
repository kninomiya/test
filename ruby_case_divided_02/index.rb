#!/usr/local/bin/ruby
# frozen_string_literal: true

require './define.rb'

input = STDIN.gets.chomp
type = input.to_i

if type == TYPE_DRAW

  puts BATTLE_DRAW_TEXT
elsif TYPE_END_WINNER.key?(type)

  puts BATTLE_END_TEXT % TYPE_END_WINNER[type]
else

  puts BATTLE_CONTINUE_TEXT
end
