class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
    # was the controller able to get the lists from the DB?
    # render 'lists/index.html.erb'
  end

  def show
    @list = List.find(params[:id])
    @item = @list.items.build

  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_url(@list)
    else
      @lists = List.all
      @list.name = ""
      render :index
    end
  end


private


  def list_params # strong parameters (sanitize params!)
    # params requires a key of list, and within that key, I will permit a key of name.
    params.require(:list).permit(:name)
  end

end
