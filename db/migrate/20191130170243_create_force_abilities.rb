class CreateForceAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :force_abilities do |t|
      t.string :name
      t.text :description
      t.belongs_to :source, foreign_key: true
      t.belongs_to :force_power, null: false, foreign_key: true
      t.timestamps
    end
  end
end
