class AddToPlayers < ActiveRecord::Migration[6.1]

  def change
    add_column :players,
      :max_hp, :integer
    add_column :players,
      :attack, :string
  end

end
