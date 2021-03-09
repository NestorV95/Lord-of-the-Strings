class CreateRounds < ActiveRecord::Migration[6.1]

  def change
    create_table :rounds do |t|
       t.integer :player_id
       t.integer :monster_id
    end
  end

end
