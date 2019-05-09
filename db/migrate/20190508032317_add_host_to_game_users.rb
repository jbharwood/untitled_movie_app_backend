class AddHostToGameUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :game_users, :host, :boolean
  end
end
