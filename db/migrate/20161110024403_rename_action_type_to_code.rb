class RenameActionTypeToCode < ActiveRecord::Migration[5.0]
  def change
    rename_column :actions, :type, :code
  end
end
