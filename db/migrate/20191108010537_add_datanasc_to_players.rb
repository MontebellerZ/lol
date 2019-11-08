class AddDatanascToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :datanasc, :date
  end
end
