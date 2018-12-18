class Api::V1::ChildrenOptionsController < ApplicationController

    def index
        @children_options = ChildrenOption.all
        render json: @children_options
    end
  
    def show
       @children_option = ChildrenOption.find_by(id: params[:id])
       if @children_option
           render json: @children_option
       else
           render json: {error: "This children category was not found"}, status: 404
       end
   end
  
  end