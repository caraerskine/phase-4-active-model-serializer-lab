class AuthorsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    authors = Author.all 
    render json: authors, include: ['profile', 'posts', 'posts.tags']
    #when youa re trying to show data that does not have a direct relatiosnhip 
    #associated and not directly
  end
  #added the array includes 

  def show
    author = Author.find(params[:id])
    render json: author
  end

  private

  def render_not_found_response
    render json: { error: "Author not found" }, status: :not_found
  end

end
