class AnimalCombo < ApplicationRecord
  belongs_to Animal
  belongs_to Combo
  validates :animals_id, :combos_id, presence: true
end
