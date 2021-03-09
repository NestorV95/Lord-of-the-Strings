class CreatePlayers < ActiveRecord::Migration[6.1]

  def change
    create_table :players do |t|
      t.string :name
      t.integer :lvl
      t.integer :exp
      t.integer :hp
      t.integer :rubees
    end
  end

end
