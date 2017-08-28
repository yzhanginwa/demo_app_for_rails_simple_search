class RemoveAddressIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :address_id, :integer
  end
end
