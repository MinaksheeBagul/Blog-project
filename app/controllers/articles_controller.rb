class ArticlesController < ApplicationController

    # that will help to show perticular id element
    def show
        @article = Article.find(params[:id])
    end

    # this will help to display complete table data
    # before this(in rails console, we assigned a variable Article.all, articles = Article.all, articles)
    # After this will go to index.html file
    def index
        @articles = Article.all
    end
end