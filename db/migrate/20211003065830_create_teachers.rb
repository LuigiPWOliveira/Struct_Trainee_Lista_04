class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.date :birth

      t.timestamps
    end
  end
end
