class CreateAdjectives < ActiveRecord::Migration[7.0]
  def change
    create_table :adjectives do |t|
      t.string :word
      t.text :definition

      t.timestamps
    end
  end
end
