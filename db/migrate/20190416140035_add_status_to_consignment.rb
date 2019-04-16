class AddStatusToConsignment < ActiveRecord::Migration[5.2]
  def change
    add_column :consignments, :status, :string, default: 'Available'
  end
end
