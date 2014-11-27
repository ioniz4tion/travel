class PlannerController < ApplicationController
  def planner

  	@questions = Question.all

  	@answers = []
  	Question.all.each do |question|
  		@answers << question.answers
  	end
  	render layout: 'planner_layout'
  end
end
