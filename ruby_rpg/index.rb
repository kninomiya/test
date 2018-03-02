#!/usr/local/bin/ruby
# frozen_string_literal: true

require_relative 'game.rb'

print 'プレイヤーの名前を入力してください: '
player_name = STDIN.gets.chomp
game = Game.new(player_name, player_name.size)
game.run
