class RemoveTeacherReferenceFromStudent < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :teacher_reference, :integer
  end
end
