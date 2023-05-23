class TasksController < ApplicationController
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
    @task = Task.new(title: params[:task][:title], details: params[:task][:details],
                     completed: params[:task][:completed])
    @task.save
    redirect_to task_path(@task)
  end
end
