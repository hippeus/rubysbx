class ArticlesController < ApplicationController
  def show
    # byebug <- uncommenting this line will trigger debugger to break here
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end
end