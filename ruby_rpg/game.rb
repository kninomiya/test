#!/usr/local/bin/ruby

# frozen_string_literal: true

require_relative 'models/mob.rb'

require_relative 'models/battle.rb'

# ゲームクラス
class Game
  def initialize(player_name, player_attack)
    @player = Mob.new(player_name, 10, player_attack)

    @monster = Mob.new('敵', 10, 3)

    @battle = Battle.new(@player, @monster)
  end

  # ゲーム実行
  def run
    loop do
      @battle.show_status # バトルメニューにHPを表示

      @battle.attack # 攻撃処理

      break if @battle.end? # 終了判定
    end

    @battle.show_result
  end
end
