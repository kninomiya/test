#!/usr/local/bin/ruby

# frozen_string_literal: true

# 戦闘クラス
class Battle
  attr_accessor :last_command

  EXIT_COMMAND = 3

  def initialize(player, monster)
    @player = player
    @monster = monster
    @status_message = '%<player>s <-> %<monster>s' # メニュー表示メッセージ
    @battle_message = '%<name>sの攻撃！！ %<target>sに%<damage>iのダメージ' # 戦闘メッセージ
    @last_command = 0
  end

  def show_status
    player_status = @player.status
    monster_status = @monster.status

    puts ''
    puts '----------'

    puts format(@status_message, player: player_status, monster: monster_status)
  end

  def command
    print format('ENTERキーを押下すると実行, %<esc>dを入力すると終了 > ', esc: EXIT_COMMAND)

    input = gets.chomp.to_i
    exit if input == EXIT_COMMAND

    @last_command = input
  end

  def battle_message(attacker, target)
    damage = attacker.attack
    format(@battle_message,
           name: attacker.name,
           target: target.name,
           damage: damage)
  end

  def attack
    puts battle_message(@player, @monster)
    @monster.health_point = @monster.health_point - @player.attack

    puts battle_message(@monster, @player)
    @player.health_point = @player.health_point - @monster.attack
  end

  def end?
    @player.dead? || @monster.dead? # どちらかのキャラクターの hp が無くなったかの判定
  end

  def show_result
    puts ''
    if @player.dead?
      puts format('おぉ%<name>sよ、死んでしまうとは情けない..', name: @player.name)
    else
      puts format('%<name>sが勝ちました！', name: @player.name)
    end
  end
end
