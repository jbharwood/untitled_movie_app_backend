class CreateGameInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :game_instances do |t|
      t.integer :game_round
      t.string :game_status
      t.string :user_status

      t.timestamps
    end
  end
end
