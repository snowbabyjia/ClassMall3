class CoursesDistributions < ActiveRecord::Migration
  def up
     create_table :courses_distributions, :id => false do |t| 
       t.integer :course_id
       t.integer :distribution_id
    end 
  end

  def down
  end
end
