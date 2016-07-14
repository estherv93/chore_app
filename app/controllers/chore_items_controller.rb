class ChoreItemsController < ApplicationController
    before_action :set_kid
    before_action :set_chore_item, except: [:create]
    
    def create
        @chore_item = @kid.chore_items.create(chore_item_params)
        redirect_to @kid
    end
    
    def destroy
        @chore_item.destroy
        redirect_to chore_lists_path
    end
    
    private
    
    def set_kid
        @kid = Kid.find(params[:kid_id])
    end
    
    def set_chore_item
        @chore_item = @kid.chore_items.find(params[:id])
    end
    
    def chore_item_params
        params[:chore_item].permit(:content)
    end
end
