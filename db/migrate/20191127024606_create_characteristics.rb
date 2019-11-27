class CreateCharacteristics < ActiveRecord::Migration[6.0]
  def change
    create_table :characteristics do |t|
      t.string :name
      t.text :description
      t.string :abbreviation

      t.timestamps
    end
  end
end
