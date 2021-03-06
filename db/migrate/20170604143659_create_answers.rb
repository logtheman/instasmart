class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
    	t.text :response
    	t.references :question, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :comments_count, default: 0
    	

      t.timestamps
    end
  end
end
