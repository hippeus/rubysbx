class ArticlesController < ApplicationController
  # before_action is a special purpose hook which runs before any other specified method.
  # also
  # %i[ ] # Non-interpolated Array of symbols, separated by whitespace
  # %I[ ] # Interpolated Array of symbols, separated by whitespace
  before_action :set_article, only: %i[show edit update destroy]

  def show; end

  def index
    # byebug <- uncommenting this line will trigger debugger to break here
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # .required(:symbol).permit(:attr...) <-- whitelisting params
    @article = Article.new(article_params)
    if @article.save
      # built-in flash message
      flash[:notice] = 'Article was created successfully'
      # redirect_to article_path(@article)
      redirect_to @article
    else
      # render new view
      render 'new'
    end
  end

  def edit; end

  def update
    if @article.update(article_params)
      flash[:notice] = 'Article was updates successfully.'
      redirect_to @article
    else
      render 'edit'
    end
  end

  def delete; end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
