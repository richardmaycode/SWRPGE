class CreateCareersSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :careers_skills, id: false do |t|
      t.belongs_to :career, null: false, foreign_key: true
      t.belongs_to :skill, null: false, foreign_key: true
    end
  end
end
