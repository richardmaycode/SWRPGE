class CreateSecondaryMotivations < ActiveRecord::Migration[6.0]
  def change
    create_table :secondary_motivations do |t|
      t.string :name
      t.text :description
      t.belongs_to :source, foreign_key: true
      t.belongs_to :primary_motivation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
