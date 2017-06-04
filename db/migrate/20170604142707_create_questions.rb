class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :body
      t.text :detail
      t.references :user, index: true, foreign_key: true
      t.integer :answers_count, default: 0
      t.integer :comments_count, default: 0
      t.integer :views_count, default: 0

      t.timestamps
    end
  end
end
