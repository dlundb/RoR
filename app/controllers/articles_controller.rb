class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "art", password: "secret", except: [:index, :show]
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @prev = Article.where("id < ?", params[:id]).order(:id).last
    @next = Article.where("id > ?", params[:id]).order(:id).first
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  def tagged
    if params[:tag].present?
      @articles = Article.tagged_with(params[:tag])
      @tag = params[:tag]
    else
      @articles = Article.all
    end
  end


  private
    def article_params
      params.require(:article).permit(:title, :body, :status, :tag_list)
    end

end
