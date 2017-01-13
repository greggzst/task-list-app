class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks.to_json 
  end

  def new
  end

  def create
  end

  def get_done
  end
end
