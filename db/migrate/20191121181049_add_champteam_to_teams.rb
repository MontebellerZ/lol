class AddChampteamToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :champteam_id, :integer
  end
end
