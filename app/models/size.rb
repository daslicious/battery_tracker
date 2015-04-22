class Size < ActiveRecord::Base
  has_many :batteries
  has_many :devices
end
