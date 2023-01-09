class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
   list = List.new(list_parmars)
   list.save
   redirect_to '/books'　
  end

  def index
  end

  def show
  end

  def edit
  end
end
