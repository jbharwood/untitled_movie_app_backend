class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :synopsis
      t.string :genre
      t.string :keywords
      t.string :credits

      t.timestamps
    end
  end
end
