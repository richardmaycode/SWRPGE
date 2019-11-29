class CreateTalents < ActiveRecord::Migration[6.0]
  def change
    create_table :talents do |t|
      t.string :abbreviation
      t.string :name
      t.text :description
      t.boolean :ranked, default: true
      t.boolean :forceTalent, default: true
      t.string :activation

      t.timestamps
    end
  end
end
