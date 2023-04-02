class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power

  enum :strength, [:STRONG, :AVERAGE, :WEAK]
end
