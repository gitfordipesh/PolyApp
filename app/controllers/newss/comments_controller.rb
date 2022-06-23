class Newss::CommentsController < CommentsController
    before_action :set_commentable

    def set_commentable
        @commentable = News.find(params[:news_id])
    end
end