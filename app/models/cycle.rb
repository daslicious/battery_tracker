class Cycle < ActiveRecord::Base
  attr_accessor :out_battery
  belongs_to :battery
  belongs_to :device

  def planned_end_date
    created_at + 6.months.from_now
  end
end
