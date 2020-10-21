class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]

  def index
    @records = Record.order('created_at ASC')
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to top_index_path
    else
      render action: :new
    end
  end

  def show
  end

  def edit
    @lists = List.where(user: current_user)
  end

  def update
    if @record.update_attributes(record_params)
      redirect_to top_index_path
    else
      render action: :edit
    end
  end

  def destroy
    @record.destroy
    redirect_to top_index_path
  end

  private

  def record_params
    params.require(:record).permit(:title, :memo,:image,:record_day)
  end

  def set_record
    @record = Record.find_by(id: params[:id])
  end
end
