class AddTimestampsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_timestamps :users, default: nil, null: true
  end
end
