class ChangeToEnumerizeInTrades < ActiveRecord::Migration
  def up
    change_column :trades, :trend, 'integer USING CAST(trend AS integer)'
    change_column :trades, :currency, 'integer USING CAST(currency AS integer)'
  end

  def down
    change_column :trades, :currency, :string
    change_column :trades, :trend, :boolean
  end
end
