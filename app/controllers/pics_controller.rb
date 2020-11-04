class PicsController < ApplicationController
    before_action :set_pic, only: [:show, :edit, :update, :destroy]
   
  
    def index
      @pics=current_user.pics
    end
  
    def new
      @pic = Pic.new
    end
  
    def create
      @pic= Pic.new(pics_params)
      if  @pic.save
        redirect_to pics_path
      else
        render action: :new
      end
    end


  
    def show
    end
  
    def edit
    end
  
    def update
      if @pic.update_attributes(pics_params)
        redirect_to pics_path
      else
        render action: :edit
      end
    end
  
    def destroy
      @pic.destroy
      redirect_to pics_path
    end

  
    def search
      @pics= Pic.search(params[:keyword])
    end
  
    private
    def pics_params
      params.require(:pic).permit(:title, :memo,:image,:record_day).merge(user_id: current_user.id)
    end
    
    def set_pic
      @pic = Pic.find_by(id: params[:id])
    end
end
