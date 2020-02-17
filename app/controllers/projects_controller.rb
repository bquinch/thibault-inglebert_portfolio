class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_project, only: %i[show edit update destroy]

  def index
    @projects = Project.all
  end

  # def show; end

  def new
    @project = Project.new
  end

  def edit; end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_url(anchor: 'nav-tab')
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path, notice: "Projet modifié"
    else
      render :index, notice: "Erreur lors de la modification"
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Le projet a été supprimé"
  end

  private

  def project_params
    params.require('project').permit(
      :category,
      :description,
      :client,
      :date,
      :priority,
      photos: []
    )
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
