class RenameDateToValidFromInActions < ActiveRecord::Migration[5.0]
  def change
    rename_column :actions, :date, :valid_from
  end
end
