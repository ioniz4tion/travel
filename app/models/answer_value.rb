class AnswerValue < ActiveRecord::Base
	belongs_to :gen_package
	belongs_to :question

	def package
    GenPackage.find(self.gen_package_id)
  end
end
