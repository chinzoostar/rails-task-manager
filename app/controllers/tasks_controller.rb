class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path(@task)
  end

  # def edit
  # end

  def update
    @task = set_task
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end

  def destroy
    @task = set_task
    @task.destroy
    redirect_to tasks_path(@task)
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
