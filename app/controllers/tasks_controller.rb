class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks.to_json(:except => [:id ,:created_at, :updated_at]) 
  end

  def create
  end

  def get_done
  end
end
