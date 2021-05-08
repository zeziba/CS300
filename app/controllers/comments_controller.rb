class CommentsController < ApplicationController
    def create
        @project = Project.find(params[:project_id])
            @comment = @project.comments.create(params[:comment].permit(:name, :comment))
        redirect_to @project 
    end
  
    def destroy
        @project = Project.find(params[:project_id])
        @comment = @project.comments.find(params[:id])
        @comment.destroy
        redirect_to @project
    end
end
