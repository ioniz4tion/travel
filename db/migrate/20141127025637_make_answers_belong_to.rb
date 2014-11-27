class MakeAnswersBelongTo < ActiveRecord::Migration
  def change
  	add_reference :answers, :question
  end
end
