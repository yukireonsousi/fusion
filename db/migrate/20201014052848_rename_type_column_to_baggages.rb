class RenameTypeColumnToBaggages < ActiveRecord::Migration[5.2]
  def change
    rename_column :baggages, :type, :kind
  end
end
