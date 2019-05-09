class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :update, :destroy]

  # GET /answers
  def index
    @answers = Answer.all
    render json: @answers
  end

#   def fetchSimilarMovies(num)
#     i = 0
#     while i < num do
#       i = i+=1
#       url = "https://api.themoviedb.org/3/movie/#{i}/similar?api_key=3eb68659d6134fa388c1a0220feb7fd1&language=en-US&page=1"
#       begin
#         response = RestClient.get(url)
#         result_array = JSON.parse(response)
#         y = 0
#         while y <= result_array["results"].length
#           y = y+=1
#           Answer.create(question_id: i, title: result_array["results"][y]["title"])
#       end
#       rescue RestClient::ExceptionWithResponse => e
#           e.response.to_s
#     end
#   end
# end


  # GET /answers/1
  def show
    render json: @answer
  end

  # POST /answers
  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      render json: @answer, status: :created, location: @answer
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /answers/1
  def update
    if @answer.update(answer_params)
      render json: @answer
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /answers/1
  def destroy
    @answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def answer_params
      params.require(:answer).permit(:question_id, :title, :active)
    end
end
