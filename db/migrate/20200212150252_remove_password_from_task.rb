class RemovePasswordFromTask < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :password_digest, :string
  end
end
