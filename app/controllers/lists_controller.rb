class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
    # was the controller able to get the lists from the DB?
    # render 'lists/index.html.erb'
  end

  def show
    @list = List.find(params[:id])
    # params is a hash and has all the data that is passed by the user
            # /lists/:id
  end

  def create
    raise list_params.inspect
    @list = List.new(params[:list])
    @list.save

    redirect_to list_url(@list)
  end


private


  def list_params # strong parameters (sanitize params!)
    # params requires a key of list, and within that key, I will permit a key of name.
    params.require(:list).permit(:name)
  end

end
