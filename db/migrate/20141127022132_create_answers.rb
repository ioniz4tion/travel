class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :text
      t.integer :score
      t.string :color

      t.timestamps
    end
  end
end
