class GameAnswersController < ApplicationController
  before_action :set_game_answer, only: [:show, :update, :destroy]

  # GET /game_answers
  def index
    @game_answers = GameAnswer.all

    render json: @game_answers
  end

  # GET /game_answers/1
  def show
    render json: @game_answer
  end

  # POST /game_answers
  def create
    @game_answer = GameAnswer.new(game_answer_params)

    if @game_answer.save
      render json: @game_answer, status: :created, location: @game_answer
    else
      render json: @game_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_answers/1
  def update
    if @game_answer.update(game_answer_params)
      render json: @game_answer
    else
      render json: @game_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_answers/1
  def destroy
    @game_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_answer
      @game_answer = GameAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_answer_params
      params.require(:game_answer).permit(:game_question_id, :title)
    end
end
