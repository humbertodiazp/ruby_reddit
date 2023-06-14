class UsersController < ApplicationController

    def index
        @User = User.all 
    end

    def new
        @User = User.new
    end
    
    def create
        @User = User.new(userparams)
        if @User.save
        redirect_to @User
        else
        # This line overrides the default rendering behavior, which
        # would have been to render the "create" view.
        render "new"
        end
    end
    
    private 

    def userparams 
        params.require(:user).permit(:username)
    end


end
