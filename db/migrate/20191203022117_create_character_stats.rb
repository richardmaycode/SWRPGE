class CreateCharacterStats < ActiveRecord::Migration[6.0]
  def change
    create_table :character_stats do |t|
      t.integer :brawn
      t.integer :agility
      t.integer :intellect
      t.integer :cunning
      t.integer :willpower
      t.integer :presence
      t.integer :wound_threshold
      t.integer :strain_threshold
      t.integer :experience
      
      t.bigint :statable_id
      t.string :statable_type
      t.timestamps
    end

    add_index :character_stats, [:statable_type, :statable_id]
  end
end
