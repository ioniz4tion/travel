class AnswerValue < ActiveRecord::Base
	belongs_to :gen_package
	belongs_to :question
end
