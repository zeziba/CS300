class ProjectController < ApplicationController
   def list
    @projects = Project.all
   end
   
   def show
    @project = Project.find(params[:id])
   end
   
   def new
    @project = Project.new
    @user = User.all
   end
   
   def edit
    @project = Project.find(params[:id])
   end
   
   def delete
    Project.find(params[:id]).destroy
    redirect_to :action => 'list'
   end
end
