class ChangeToEnumerizeInOrders < ActiveRecord::Migration
  def up
    change_column :orders, :bid, 'integer USING CAST(bid AS integer)'
    change_column :orders, :ask, 'integer USING CAST(ask AS integer)'
    change_column :orders, :state, 'integer USING CAST(state AS integer)'
    change_column :orders, :currency, 'integer USING CAST(currency AS integer)'
    change_column :orders, :type, :string, :limit => 8
  end

  def down
    change_column :orders, :bid, :string
    change_column :orders, :ask, :string
    change_column :orders, :state, :string
    change_column :orders, :currency, :string
    change_column :orders, :type, :string, :limit => nil
  end
end
