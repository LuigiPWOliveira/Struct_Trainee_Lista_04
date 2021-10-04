class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :registration
      t.string :email
      t.date :birth
      t.integer :teacher_reference

      t.timestamps
    end
  end
end
