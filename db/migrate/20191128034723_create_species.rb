class CreateSpecies < ActiveRecord::Migration[6.0]
  def change
    create_table :species do |t|
      t.string :name
      t.text :description

      t.belongs_to :source, foreign_key: true
      t.references :statable, polymorphic: true
      t.timestamps
    end
  end
end
