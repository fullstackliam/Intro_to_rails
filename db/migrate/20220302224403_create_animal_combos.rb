class CreateAnimalCombos < ActiveRecord::Migration[7.0]
  def change
    create_table :animal_combos do |t|
      t.belongs_to :animals
      t.belongs_to :combos
      t.timestamps
    end
  end
end
