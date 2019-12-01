class CreateSources < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.string :name
      t.integer :page

      t.timestamps
    end
  end
end