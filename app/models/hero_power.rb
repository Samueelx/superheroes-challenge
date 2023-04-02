class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power

  enum :strength, [:STRONG, :AVERAGE, :WEAK]

  validates :strength, inclusion: {in: %w(STRONG AVERAGE WEAK), 
  message: "%{value} is not a valid value!" }
end
