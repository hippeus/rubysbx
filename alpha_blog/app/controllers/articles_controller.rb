class ArticlesController < ApplicationController
  def show
    # byebug <- uncommenting this line will trigger debugger to break here
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    # .required(:symbol).permit(:attr...) <-- whitelisting params
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    # line below is a shorthand for -> redirect_to article_path(@article)
    redirect_to @article
  end
end