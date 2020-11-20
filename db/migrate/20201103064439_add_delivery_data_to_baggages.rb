class AddDeliveryDataToBaggages < ActiveRecord::Migration[5.2]
  def change
    add_column :baggages, :delivery_data, :boolean, default: false, null: false
  end
end
