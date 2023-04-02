class Hero < ApplicationRecord
    has_many :hero_powers
    hes_many :powers, through: :hero_powers
end
