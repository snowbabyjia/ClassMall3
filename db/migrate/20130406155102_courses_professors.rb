class CoursesProfessors < ActiveRecord::Migration
  def up
    create_table :courses_professors, :id => false do |t| 
       t.integer :course_id
       t.integer :professor_id
    end  
  end

  def down
  end
end
