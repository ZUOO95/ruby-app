class CreateGraczs < ActiveRecord::Migration[5.1]
  def change
    create_table :graczs do |t|
      t.string :imie
      t.string :nazwisko
      t.string :nick
      t.references :team, foreign_key: true

      t.timestamps
    end
    add_index :graczs, [:team_id, :created_at]
  end
end
