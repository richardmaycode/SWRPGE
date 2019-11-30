class CreatePrimaryMotivations < ActiveRecord::Migration[6.0]
  def change
    create_table :primary_motivations do |t|
      t.string :title
      t.text :description
      t.belongs_to :source, foreign_key: true

      t.timestamps
    end
  end
end
