class ArticlesController < ApplicationController


    before_action :find_article, except: [:new,:create,:index]
    before_action :authenticate_user!, only: [:new,:create,:edit,:destroy]

    def index
        @articles = Article.all
    end


    def show
    end
    
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.create(title: params[:article][:title], 
        content: params[:article][:content], user: current_user)
        redirect_to @article
    end
    
    def edit
    end
    
    def update
        
        @article = Article.update(title: params[:article][:title], content: params[:article][:content])
        redirect_to @article[0]
    end
    
    def destroy
        @article.destroy
        redirect_to root_path
    end
    
    def find_article
        @article = Article.find(params[:id])
    end

end
