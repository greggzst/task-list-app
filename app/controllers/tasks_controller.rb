class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks.to_json(:except => [:id ,:created_at, :updated_at]) 
  end

  def create
  end

  def get_done
  end

  private
    def task_params
      params.require(:task).permit(:name, :done)
    end
end
