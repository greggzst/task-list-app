class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
  end

  def new
    @task = Task.new
  end

  def get_done
  end

  private
    def task_params
      params.require(:task).permit(:name, :done)
    end
end
