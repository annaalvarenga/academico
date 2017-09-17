class AddPostalCodeToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :postal_code, :string, null: false
  end
end
