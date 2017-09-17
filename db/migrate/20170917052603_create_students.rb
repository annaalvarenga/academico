class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.string :street, null: false
      t.integer :street_number, null: false
      t.string :neighborhood, null: false
      t.string :city, null: false
      t.string :state, null: false

      t.timestamps
    end
  end
end
