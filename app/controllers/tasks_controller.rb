class TasksController < ApplicationController

def new
  #@task = Task.new
end

def create
  @task = Task.create(integer: params[:integer])
  if      @task.save
 

nums = [*(1..@task.integer)]              
@even = nums.reject { |num| num.odd? }
    #debugger
  else
    render 'new'
  end
end

def task_params
  params.require(:task).permit(:integer)
end


end
