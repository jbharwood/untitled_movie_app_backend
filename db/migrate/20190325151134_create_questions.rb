class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :synopsis
      t.integer :movie_id
      
      t.timestamps
    end
  end
end
