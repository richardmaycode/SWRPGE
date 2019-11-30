class CreateAttitudes < ActiveRecord::Migration[6.0]
  def change
    create_table :attitudes do |t|
      t.string :name
      t.text :description

      t.belongs_to :source, foreign_key: true
      t.timestamps
    end
  end
end
