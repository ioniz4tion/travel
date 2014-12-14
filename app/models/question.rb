class Question < ActiveRecord::Base
	has_many :answers, dependent: :destroy
	has_many :answer_values, dependent: :destroy
end
