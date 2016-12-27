class AddDeviceUniqueIdToVisits < ActiveRecord::Migration[5.0]
  def change
    add_column :visits, :device_unique_id, :string
    add_column :ahoy_events, :device_unique_id, :string
  end
end
