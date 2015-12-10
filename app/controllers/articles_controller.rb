class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
     @article = Article.find(params[:id])
  end

  def new
     @article = Article.new
  end

  def create
    @article = Article.new(article_params)
  
    @article.save
    redirect_to @article
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to(@book)
    else
      render :edit
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end

