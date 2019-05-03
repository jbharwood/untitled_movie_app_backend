# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'pry'
def fetchMovies(num)
  i = 0
  while i < num do
    i = i + 1
    url = "https://api.themoviedb.org/3/movie/#{i}?api_key=3eb68659d6134fa388c1a0220feb7fd1&language=en-US"
    begin
      response = RestClient.get(url)
      result_array = JSON.parse(response)
      Question.create(title: result_array["title"], synopsis: result_array["overview"], movie_id:result_array["id"])
    rescue RestClient::ExceptionWithResponse => e
        e.response.to_s
      end
  end
end



def fetchSimilarMovies(num)
  i = 0
  while i < num do
    i+=1
    url = "https://api.themoviedb.org/3/movie/#{i}/similar?api_key=3eb68659d6134fa388c1a0220feb7fd1&language=en-US&page=1"
    begin
      response = RestClient.get(url)
      result_array = JSON.parse(response)
      y = 0
      while y < result_array["results"].length
        q = Question.find_by(movie_id: i)
        Answer.create(question_id: q.id, title: result_array["results"][y]["title"])
        # Answer.create(question: Question.find_by(movie_id: i), title: result_array["results"][y]["title"])
        y+=1
    end
    rescue RestClient::ExceptionWithResponse => e
        e.response.to_s
    end
  end
end

User.create(username:"cool")
User.create(username:"bill")
User.create(username:"steve")

fetchMovies(5)
fetchSimilarMovies(5)
