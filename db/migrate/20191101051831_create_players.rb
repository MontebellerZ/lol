class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :nome
      t.string :sobrenome
      t.integer :idade
      t.string :nickname
      t.string :elo
      t.integer :divisao
      t.integer :team_id

      t.timestamps
    end
  end
end
