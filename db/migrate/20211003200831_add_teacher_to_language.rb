class AddTeacherToLanguage < ActiveRecord::Migration[7.0]
  def change
    add_reference :languages, :teacher, null: false, foreign_key: true
  end
end
