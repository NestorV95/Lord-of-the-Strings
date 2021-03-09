class CreateMonsters < ActiveRecord::Migration[6.1]

  def change
    create_table :monsters do |t|
        t.string :name
        t.integer :exp
        t.integer :hp
        t.integer :level_id
    end
  end
  
end
