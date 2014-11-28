class CreateAnswerValues < ActiveRecord::Migration
  def change
    create_table :answer_values do |t|
    	t.integer :score
    	t.belongs_to :gen_package
    	t.belongs_to :question
      t.timestamps
    end
  end
end
