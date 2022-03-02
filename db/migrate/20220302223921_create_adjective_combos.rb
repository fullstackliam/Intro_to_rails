class CreateAdjectiveCombos < ActiveRecord::Migration[7.0]
  def change
    create_table :adjective_combos do |t|
      t.belongs_to :adjectives
      t.belongs_to :combos
      t.timestamps
    end

  end
end
