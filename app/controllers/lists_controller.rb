class ListsController < ApplicationController
  # show all lists
  def index
    @lists = List.all
  end
  # show one list
  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new # Needed to instantiate the form_with
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
