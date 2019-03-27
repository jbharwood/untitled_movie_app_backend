class AddInputToGameQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :game_questions, :input, :string
  end
end
