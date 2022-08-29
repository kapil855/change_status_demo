class ChangeFieldToStudent < ActiveRecord::Migration[6.1]
  def change
    change_column :students, :status, :string
  end
end
