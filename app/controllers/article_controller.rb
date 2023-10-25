class ArticleController < ApplicationController
  before_action :find_article,only:[:show,:edit,:update,:destroy]
  before_action :authenticate_user!, only:[:new,:edit,:update,:destroy,:create]

  #estas son las acciones que se van a mandar a llamar antes del metodo find_Article tambien puedes usar except en ves de only
  #CRUD = CREATE,READ,UPDATE,DELETE
  #el opuesto de before_action es after_action
  #
  def index
    @articles = Article.all
  end
  def destroy

    @article.destroy
    redirect_to root_path
  end
  def show
  end
  def edit


  end
  def update

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def article_params
    params.require(:article).permit(:title) # Asegúrate de incluir todos los atributos que puedes actualizar aquí
  end
  def  new
    # en rails una variable sin arroba solo se puede utilizar en el metodo y con el arroba se puede acceder desde la vista
    @article = Article.new
    # @article.title = 'Demo'
  end
  def create
    @article = Article.create(title: params[:article][:title])

    render json: @article
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
