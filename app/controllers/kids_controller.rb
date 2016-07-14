class KidsController < ApplicationController
    
    def index
        @kids = Kid.all
    end
    
    def new
        @kid = Kid.new 
    end
    
    def create
        @kid = Kid.new(kid_params)
        if @kid.save
            redirect_to chore_lists_path
        else
            render 'new'
        end
    end
    
    def edit
        @kid = Kid.find(params[:id])
    end
    
    def update
        if @kid.update(kid_params)
            flash[:success] = "Your child has been updated!"
            redirect_to kid_path(@kid)
        else
            render 'edit'
        end
    end
    
    def show
        @kid = Kid.find(params[:id])
        @chore_lists = @kid.chore_lists
    end
    
    private
    
    def kid_params
        params.require(:kid).permit(:kidname, :email, :password)
    end
end