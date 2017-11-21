class ChangeToEnumerizeInAccounts < ActiveRecord::Migration
  def up
    change_column :accounts, :currency, 'integer USING CAST(currency AS integer)'
  end

  def down
    change_column :accounts, :currency, :string
  end
end
