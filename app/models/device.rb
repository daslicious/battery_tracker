class Device < ActiveRecord::Base
  has_many :batteries
  has_many :cycles
  validate :battery_limit
  def battery_limit
    batteries.size >= slots.to_i
  end
end
