class CreateChampteams < ActiveRecord::Migration[5.0]
  def change
    create_table :champteams do |t|
      t.integer :team_id
      t.integer :championship_id

      t.timestamps
    end
  end
end
