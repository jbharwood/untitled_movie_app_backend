class GameQuestionsController < ApplicationController
  before_action :set_game_question, only: [:show, :update, :destroy]

  # GET /game_questions
  def index
    @game_questions = GameQuestion.all

    render json: @game_questions
  end

  # GET /game_questions/1
  def show
    render json: @game_question
  end

  # POST /game_questions
  def create
    @game_question = GameQuestion.new(game_question_params)

    if @game_question.save
      render json: @game_question, status: :created, location: @game_question
    else
      render json: @game_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_questions/1
  def update
    if @game_question.update(game_question_params)
      render json: @game_question
    else
      render json: @game_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_questions/1
  def destroy
    @game_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_question
      @game_question = GameQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_question_params
      params.require(:game_question).permit(:question_id, :game_instance_id, :completed)
    end
end
