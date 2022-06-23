class Broadcasts::CommentsController < CommentsController
    before_action :set_commentable

    def set_commentable
        @commentable = Broadcast.find(params[:broadcast_id])
    end
end