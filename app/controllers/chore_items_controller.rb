class ChoreItemsController < ApplicationController
    before_action :set_kid
    
    def create
        @chore_item = @kid.chore_items.create(chore_item_params)
        redirect_to @kid
    end
    
    private
    
    def set_kid
        @kid = Kid.find(params[:kid_id])
    end
    
    def chore_item_params
        params[:chore_item].permit(:content)
    end
end
