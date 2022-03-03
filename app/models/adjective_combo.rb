class AdjectiveCombo < ApplicationRecord
  belongs_to Adjective
  belongs_to Combo
  validates :adjectives_id, :combos_id, presence: true
end
