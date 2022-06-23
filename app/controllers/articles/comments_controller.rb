class Articles::CommentsController < CommentsController
    before_action :set_commentable
    def set_commentable
        @commentable = Article.find(params[:article_id])
    end
end