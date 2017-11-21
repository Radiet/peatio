class ChangeToEnumerizeInWithdraws < ActiveRecord::Migration
  def up
    change_column :withdraws, :payment_way, 'integer USING CAST(payment_way AS integer)'
    change_column :withdraws, :state, 'integer USING CAST(state AS integer)'
  end

  def down
    change_column :withdraws, :payment_way, :string
    change_column :withdraws, :state, :string
  end
end
