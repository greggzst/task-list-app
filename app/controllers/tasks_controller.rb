class TasksController < ApplicationController
  before_action :set_task, only: [:get_done, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to root_url }
        format.js
      else
        format.html { redirect_to root_url }
        format.json {render json: @task.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to root_path, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def get_done
    @task.update_attribute(:done, true)
  end

  private
    def task_params
      params.require(:task).permit(:name, :done)
    end

    def set_task
      @task = Task.find(params[:id])
    end
end
