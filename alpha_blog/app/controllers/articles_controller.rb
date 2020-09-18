class ArticlesController < ApplicationController
  def show
    # byebug <- uncommenting this line will trigger debugger to break here
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # .required(:symbol).permit(:attr...) <-- whitelisting params
    @article = Article.new(params.require(:article).permit(:title, :description))
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

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = 'Article was updates successfully.'
      redirect_to @article
    else
      render 'edit'
    end
  end

  def delete; end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
end
