class CreateCombos < ActiveRecord::Migration[7.0]
  def change
    create_table :combos do |t|
      t.string :name

      t.timestamps
    end
  end
end
