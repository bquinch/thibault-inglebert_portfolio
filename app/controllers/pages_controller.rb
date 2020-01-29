class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @projects = Project.all
    @marketing = Project.where('category = ?', 'Marketing')
    @visual = Project.where('category = ?', 'Identité visuelle')
    @illustration = Project.where('category = ?', 'Illustration')
    @edition = Project.where('category = ?', 'Édition')
    @webdesign = Project.where('category = ?', 'Webdesign')
    @message = Message.new
  end
end
