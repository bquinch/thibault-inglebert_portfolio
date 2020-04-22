class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_project, only: %i[show delete_photo_attachment]

  def show; end

  def delete_photo_attachment
    @photo = @project.photos.find(params[:format])
    @photo.purge
    redirect_to project_path(@project), notice: 'Photo supprimée'
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
