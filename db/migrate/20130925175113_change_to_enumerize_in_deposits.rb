class ChangeToEnumerizeInDeposits < ActiveRecord::Migration
  def up
    change_column :deposits, :payment_way, 'integer USING CAST(payment_way AS integer)'
    change_column :deposits, :state, 'integer USING CAST(state AS integer)'
  end

  def down
    change_column :deposits, :payment_way, :string
    change_column :deposits, :state, :string
  end
end
