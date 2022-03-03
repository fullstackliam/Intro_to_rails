class AnimalCombo < ApplicationRecord
  belongs_to Animal
  belongs_to Combo
end
