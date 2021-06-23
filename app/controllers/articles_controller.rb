class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # can't just directly use params to save to database - instead we require :article
    # and then we permit certain attributes for that param
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      #redirect to that article's show page
      redirect_to article_path(@article.id)
      # could also just redirect to @article
    else
      render 'new'
    end 
  end
end