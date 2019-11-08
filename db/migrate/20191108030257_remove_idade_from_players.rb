class RemoveIdadeFromPlayers < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :idade, :integer
  end
end
