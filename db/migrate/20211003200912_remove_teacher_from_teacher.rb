class RemoveTeacherFromTeacher < ActiveRecord::Migration[7.0]
  def change
    remove_reference :teachers, :teacher, null: false, foreign_key: true
  end
end
