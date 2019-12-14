class CreateSilhouettes < ActiveRecord::Migration[6.0]
  def change
    create_table :silhouettes do |t|
      t.integer :size
      t.text :description

      t.timestamps
    end
  end
end
