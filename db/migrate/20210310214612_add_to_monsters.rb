class AddToMonsters < ActiveRecord::Migration[6.1]

  def change
    add_column :monsters,
      :max_hp, :integer
    add_column :monsters,
      :attack, :string
  end

end
