class CreateCareers < ActiveRecord::Migration[6.0]
  def change
    create_table :careers do |t|
      t.string :name
      t.text :description
      t.belongs_to :source, foreign_key: true
      t.integer :free_ranks

      t.timestamps
    end
  end
end
