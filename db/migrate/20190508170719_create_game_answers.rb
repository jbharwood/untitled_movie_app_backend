class CreateGameAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :game_answers do |t|
      t.integer :game_question_id
      t.string :title

      t.timestamps
    end
  end
end
