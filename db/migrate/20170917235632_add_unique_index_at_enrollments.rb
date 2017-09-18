class AddUniqueIndexAtEnrollments < ActiveRecord::Migration[5.1]
  def up
    add_index :enrollments, [:student_id, :course_id], unique: true
  end

  def down
    remove_index :enrollments, column: [:student_id, :course_id], unique: true
  end
end
