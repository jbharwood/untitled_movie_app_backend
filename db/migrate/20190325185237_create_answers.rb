class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.title :string
      t.question_id :integer

      t.timestamps
    end
  end
end
