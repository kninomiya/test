# frozen_string_literal: true

# Mobクラス
class Mob
  attr_accessor :name, :health_point, :attack

  def initialize(name, hp, attack)
    @name = name
    @health_point = hp
    @attack = attack
  end

  def status
    format('%<name>s HP:%<hp>i', name: @name, hp: @health_point)
  end

  def dead?
    @health_point <= 0
  end
end
