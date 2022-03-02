class Combo < ApplicationRecord
  has_many :animal_combos
  has_many :adjective_combos
  validates :adjective_combos, :adjective_combos, presence: true
end
