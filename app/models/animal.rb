class Animal < ApplicationRecord
  has_many :animal_combos
  validates :name, :definition, presence: true
end
