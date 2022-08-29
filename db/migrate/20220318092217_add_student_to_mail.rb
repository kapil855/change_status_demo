class AddStudentToMail < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :coching, :boolean
  end
end
