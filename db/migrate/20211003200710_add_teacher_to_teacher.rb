class AddTeacherToTeacher < ActiveRecord::Migration[7.0]
  def change
    add_reference :teachers, :teacher, null: false, foreign_key: true
  end
end
