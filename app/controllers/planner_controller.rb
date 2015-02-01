class PlannerController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update_question, :destroy]
  before_action :set_answer, only: [:show, :edit, :update_answer]
  before_action :set_answer_value, only: [:show, :edit, :update_answer_value]


  def planner

  	@questions = Question.all.order(:id)

  	@answers = []
  	Question.all.order(:id).each do |question|
  		@answers << question.answers.order(:id)
  	end
  	#render layout: 'planner_layout'
  end

  def update_question
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

  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to :planner, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def create
    @question = Question.new(text: "Default")
    @answer = @question.answers.build(text: "Answer1", color: "red", score: 100)
    @answer.save
    @answer = @question.answers.build(text: "Answer2", color: "green", score: 50)
    @answer.save
    @answer = @question.answers.build(text: "Answer3", color: "blue", score: 0)
    @answer.save

    GenPackage.all.each do |package|
      @answer_value =  package.answer_values.build(score: 0, question_id: @question.id)
      @answer_value.save
    end

    respond_to do |format|
      if @question.save
        format.html { redirect_to :planner, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: :planner }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_answer
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to :planner, notice: 'Answer was successfully updated.' }
        format.json { respond_with_bip(@answer) }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_answer_value
    respond_to do |format|
      if @answer_value.update(answer_value_params)
        format.html { redirect_to :planner, notice: 'Answer Value was successfully updated.' }
        format.json { respond_with_bip(@answer_value) }
      else
        format.html { render :edit }
        format.json { render json: @answer_value.errors, status: :unprocessable_entity }
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
  	GenPackage.all.order(:id).each do |package|
  		@packageScore << []  		
  		package.answer_values.all.order(:id).each do |score|
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

  	@sort = @packageRating.sort
  	@packageOrder = []
  	for i in 0..(packageNumber - 1) do 
  		@packageOrder << @packageRating.index(@sort[i]) + 1  		
  	end

  	@packages = []
  	@packageOrder.each do |order|
  		@packages << GenPackage.find_by_id(order)
  	end
  	#5 list scores from least to greatest, pass them to the view 

  	#6 additional view data
  	# render text: @packageRating.inspect
  	#render layout: 'planner_layout'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question      
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:text)
    end

    def set_answer     
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:text, :color, :score)
    end

    def set_answer_value     
      @answer_value = AnswerValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_value_params
      params.require(:answer_value).permit(:score)
    end
end
