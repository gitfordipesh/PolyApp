class NewssController < ApplicationController
    def index
        @newss = News.all
    end

    def show
        @news = News.find(params[:id])
    end

    def new 
        @news = News.new
    end

    def create
        @news = News.new(news_params)
        if @news.save
            redirect_to newss_index_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @news = News.find(params[:id])
    end
    
    def update
        @news = News.find(params[:id])
        if @news.update(news_params)
            redirect_to newss_path(@news)
        else
            render :edit,status: :unprocessable_entity
        end
    end

    def destroy
        @news = News.find(params[:id])
        @news.destroy
        redirect_to newss_index_path
    end

    private
    def news_params
        params.require(:news).permit(:title, :is_live)
    end
end