class AddColumnsToQuizzes < ActiveRecord::Migration[7.0]

  def change
    add_column :quizzes, :topic, :string
  end
end
