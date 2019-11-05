class CreatePlayerroles < ActiveRecord::Migration[5.0]
  def change
    create_table :playerroles do |t|
      t.integer :player_id
      t.integer :role_id

      t.timestamps
    end
  end
end
