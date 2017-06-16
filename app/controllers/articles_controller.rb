class ArticlesController < ApplicationController
  def index
  	@article=Article.all
  end
  def new
  	@article=Article.new
  end
  def create
    @article=Article.new(article_params)
    #debugger
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end
  private
  def article_params
  	#params.require(:article).permit!
  	params.require(:article).permit(:title,{avatar:[]})
  end
end
