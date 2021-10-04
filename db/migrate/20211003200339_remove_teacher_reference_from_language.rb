class RemoveTeacherReferenceFromLanguage < ActiveRecord::Migration[7.0]
  def change
    remove_column :languages, :teacher_reference, :integer
  end
end
