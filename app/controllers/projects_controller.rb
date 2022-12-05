class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @project = Project.first
  end
end
