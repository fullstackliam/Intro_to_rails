class Adjective < ApplicationRecord
  has_many :adjective_combos
  validates :word, :definition, presence: true
end
