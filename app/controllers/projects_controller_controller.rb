class ProjectsControllerController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_project, only: %i[show edit update destroy]
  def index
    @projects = Project.all
  end

  def show; end

  def new
    @project = Project.new
  end

  def edit; end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project), notice: "Project updated"
    else
      render :show, notice: "Couldn't update"
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Your project has been deleted"
  end

  private

  def project_params
    params.require('project').permit(:category, :description, :client, :creation, :photos [])
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
