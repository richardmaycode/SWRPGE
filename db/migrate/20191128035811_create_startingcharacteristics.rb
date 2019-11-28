class CreateStartingcharacteristics < ActiveRecord::Migration[6.0]
  def change
    create_table :startingcharacteristics do |t|
      t.integer :value
      t.references :species, null: false, foreign_key: true
      t.references :characteristic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
