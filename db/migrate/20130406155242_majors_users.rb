class MajorsUsers < ActiveRecord::Migration
  def up
   create_table :majors_users, :id => false do |t| 
       t.integer :major_id
       t.integer :user_id
    end 
  end

  def down
  end
end
