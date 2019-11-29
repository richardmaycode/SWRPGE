class CreateHooks < ActiveRecord::Migration[6.0]
  def change
    create_table :hooks do |t|
      t.string :name
      t.text :description
      t.belongs_to :source, null: false, foreign_key: true

      t.timestamps
    end
  end
end
