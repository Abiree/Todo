class ToDoListController < ApplicationController
  def index
    @lists = List.all
  end
  def show
    @list = List.find(params[:id])
  end
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to to_do_list_index_path
    else
      render :new
    end

  end

  def edit 
    @list= List.find(params[:id])
  end

  def update
    @list= List.find(params[:id])
    if @list.update(list_params)
      redirect_to to_do_list_path(@list)
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to root_path
  end

  private
    def list_params
      params.require(:list).permit(:Author, :title, :desc)
    end
end
