class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :nome
      t.string :sigla
      t.string :instituicao

      t.timestamps
    end
  end
end
