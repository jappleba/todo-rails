class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def create
    todo = Todo.create(todo_params)
    redirect_to root_path
  end

  def show
    @todo = Todo.find(params[:id])
    # binding.pry
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to root_path
  end



  private
  def todo_params
    params.require(:todo).permit(:content)
  end

end
