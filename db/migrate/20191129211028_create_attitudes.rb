class CreateAttitudes < ActiveRecord::Migration[6.0]
  def change
    create_table :attitudes do |t|
      t.string :name
      t.text :description

      t.integer :source_id
      t.timestamps
    end
  end
end
