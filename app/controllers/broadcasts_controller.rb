class BroadcastsController < ApplicationController
    def index
        @broadcasts = Broadcast.all
    end

    def show
        @broadcast = Broadcast.find(params[:id])
    end

    def new 
        @broadcast = Broadcast.new
    end

    def create
        @broadcast = Broadcast.new(broadcast_params)
        if @broadcast.save
            redirect_to broadcasts_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @broadcast = Broadcast.find(params[:id])
    end
    
    def update
        @broadcast = Broadcast.find(params[:id])
        if @broadcast.update(broadcast_params)
            redirect_to broadcast_path(@broadcast)
        else
            render :edit,status: :unprocessable_entity
        end
    end

    def destroy
        @broadcast = Broadcast.find(params[:id])
        @broadcast.destroy
        redirect_to broadcasts_path
    end

    private
    def broadcast_params
        params.require(:broadcast).permit(:title, :is_live)
    end
end