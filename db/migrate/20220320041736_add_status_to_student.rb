class AddStatusToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :status, :boolean
  end
end
