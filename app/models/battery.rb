class Battery < ActiveRecord::Base
  belongs_to :device
  has_many :cycles, -> {order(created_at: :desc)}
  scope :cycle_order, -> {order('cycles.created_at desc')}
  scope :cycle_needed, -> {includes(:cycles).where("cycles.planned_end_date < ?", Time.now).references(:cycles)}

  def rechargeable?
    %w(NiMH).include? technology
  end
end
