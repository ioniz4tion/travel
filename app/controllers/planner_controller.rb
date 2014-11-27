class PlannerController < ApplicationController
  def planner
  	
  	@questions = Question.all
  	render layout: 'planner_layout'
  end
end
