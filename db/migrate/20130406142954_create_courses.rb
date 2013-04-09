class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.date :start
      t.date :end
      t.text :description

      t.timestamps
    end
  end
end
