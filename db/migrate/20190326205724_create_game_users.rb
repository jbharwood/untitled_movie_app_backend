class CreateGameUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :game_users do |t|
      t.integer :game_instance_id
      t.integer :user_id
      t.integer :score

      t.timestamps
    end
  end
end
