class CreateConsignments < ActiveRecord::Migration[5.2]
  def change
    create_table :consignments do |t|
      t.string :source
      t.string :destination
      t.datetime :entry_time
      t.datetime :exit_time
      t.string :given_consignment_ID

      t.timestamps
    end
  end
end
