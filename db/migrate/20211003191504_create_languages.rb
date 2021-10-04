class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.integer :teacher_reference

      t.timestamps
    end
  end
end
