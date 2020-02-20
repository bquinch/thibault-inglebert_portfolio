class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @projects = Project.all
    @message = Message.new
  end

  def components
    @projects = Project.all
  end
end
