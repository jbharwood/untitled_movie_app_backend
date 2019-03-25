class QuestionsController < ApplicationController
  # before_action :set_question, only: [:show, :update, :destroy]

  # GET /questions
  def index
    @questions=Question.all
    render json: @questions
  end
  # POST /questions
  def create
    @question = Question.new(question_params)
    if @question.save
      render json: @question, status: :created, location: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end


  # def fetchMovies(num)
  #   i = 0
  #   while i < num do
  #     i = i + 1
  #     url = "https://api.themoviedb.org/3/movie/#{i}?api_key=3eb68659d6134fa388c1a0220feb7fd1&language=en-US"
  #     begin
  #       response = RestClient.get(url)
  #       result_array = JSON.parse(response)
  #       Question.create(title: result_array["title"], synopsis: result_array["overview"], movie_id:result_array["id"])
  #     rescue RestClient::ExceptionWithResponse => e
  #         e.response.to_s
  #       end
  #   end
  # end

  # GET /questions/1
  def show
    render json: @question
  end


  # PATCH/PUT /questions/1
  def update
    if @question.update(question_params)
      render json: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questions/1
  def destroy
    @question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_params
      params.require(:question).permit(:title, :movie_id, :synopsis)
    end
end
