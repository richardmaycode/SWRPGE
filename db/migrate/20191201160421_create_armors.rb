class CreateArmors < ActiveRecord::Migration[6.0]
  def change
    create_table :armors do |t|
      t.string :name
      t.text :description
      t.integer :defense
      t.integer :encumbrance
      t.integer :hp
      t.integer :price
      t.integer :rarity
      t.integer :soak
      t.belongs_to :source, foreign_key: true

      t.timestamps
    end
  end
end
