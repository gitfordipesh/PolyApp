class Events::CommentsController < CommentsController
    before_action :set_commentable

    def set_commentable
        @commentable = Event.find(params[:event_id])
    end
end