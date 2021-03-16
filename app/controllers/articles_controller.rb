class ArticlesController < ApplicationController
    # this will take before action n call set_article
    before_action :set_article, only: [ :show, :edit, :update, :destroy]

    # that will help to show perticular id element
    def show
       
    end

    # this will help to display complete table data
    # before this(in rails console, we assigned a variable Article.all, articles = Article.all, articles)
    # After this will go to index.html file
    def index
        @articles = Article.all
    end

    # to display new form_with(or user input)
    def new
        @article = Article.new
    end

    def edit
        # (check your terminal =>"params" after this put "continue" check on your browser.)
        # byebug
       
    end

    def create
        #data will save on /articles path
        # render plain: params[:article]
        #will provide permit for both parameters due to security reason 
        @article = Article.new(article_params)
        # render plain: @article.inspect
        #saving into db
       if @article.save
        # after saving data in db, using flash will display error msg 
         flash[:notice] = "Article was created successfully"
        #that will redirect to this path after saving into db.
        #(Check into rails c => path of show article-path-id)
        # redirect_to article_path(@article)
        #OR we can use simply
        redirect_to @article
       else
        render 'new'
       end
    end

    def update
        # check to rails c => enter "params" and then edited article will find
        # byebug
       
        if @article.update(article_params)
            flash[:notice] = "Article updated successfully"
            redirect_to @article
        else
            render 'edit'
        end

    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    # private method will be private for some of methods,
    private
     
    def set_article
    @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description)
    end
end