class CreateChampionships < ActiveRecord::Migration[5.0]
  def change
    create_table :championships do |t|
      t.string :nome
      t.string :local
      t.integer :champteam_id
      t.string :premiacao

      t.timestamps
    end
  end
end
