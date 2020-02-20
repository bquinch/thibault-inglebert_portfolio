class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @projects = Project.all.order('priority desc')
    @message = Message.new
  end

  def components
    @projects = Project.all.order('priority desc')
  end
end
