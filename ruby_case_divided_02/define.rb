#!/usr/local/bin/ruby
# frozen_string_literal: true

BATTLE_DRAW_TEXT = '相打ちになりました...'.freeze
BATTLE_END_TEXT = '%sが勝ちました!'.freeze
BATTLE_CONTINUE_TEXT = 'まだ戦(や)ってます'.freeze

TYPE_DRAW = 1
TYPE_END_WINNER = { 2 => '主人公', 3 => 'モンスター' }.freeze
