class PlannerController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def planner

  	@questions = Question.all

  	@answers = []
  	Question.all.each do |question|
  		@answers << question.answers
  	end
  	render layout: 'planner_layout'
  end

  def update   
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to :planner, notice: 'Question was successfully updated.' }
        format.json { respond_with_bip(@question) }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def suggest
  	# params[:i] is score

  	questionNumber = Question.all.count

  	packageNumber = GenPackage.all.count

  	#3 get all package scores in an array or data set up
  	@packageScore = []

  	i = 0
  	GenPackage.all.each do |package|
  		@packageScore << []  		
  		package.answer_values.all.each do |score|
  			@packageScore[i] << score.score
  		end
  		i += 1
  	end 

  	#4 loops through package scores and answer data to create 6 scores
  	i = 1
  	@packageRating = []
  	@packageScore.each do |package|
  		@packageRating << 0
  		k=1
  		package.each do |score|
  			data = params[k.to_s.to_sym].to_i
  			rating = (score - data).abs  			
  			@packageRating[i - 1] += rating
  			k += 1
  		end
  		i += 1
  	end

  	sort = @packageRating.sort
  	@packageOrder = []
  	for i in 0..(packageNumber - 1) do 
  		@packageOrder << @packageRating.index(sort[i]) + 1  		
  	end

  	@packages = []
  	@packageOrder.each do |order|
  		@packages << GenPackage.find_by_id(order)
  	end
  	#5 list scores from least to greatest, pass them to the view 

  	#6 additional view data
  	# render text: @packageRating.inspect
  	render layout: 'planner_layout'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question      
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:gen_restaurant).permit(:text)
    end
end
