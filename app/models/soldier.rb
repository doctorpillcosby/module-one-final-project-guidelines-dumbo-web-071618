class Soldier < ActiveRecord::Base



  has_many :soldier_battlefields
  has_many :battlefields, through: :soldier_battlefields

  after_initialize :init

  def arr_abilities
    ["shoot", "kiss", "kick", "love", "sleep"]
  end

  def init
    self.hp = 10
    self.ability = arr_abilities.sample
  end


end
