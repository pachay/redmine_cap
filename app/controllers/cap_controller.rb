class CapController < ApplicationController
  unloadable


  def deploy
    @project = Project.find(params[:project_id])
    @result = `/srv/admin/bin/cap.sh #{@project.identifier.to_s} ailove:factory_deploy 2>&1`
  end

  def rollback
    @project = Project.find(params[:project_id])
    @result = `/srv/admin/bin/cap.sh #{@project.identifier.to_s} ailove:factory_rollback 2>&1`
  end

  def build
    @project = Project.find(params[:project_id])
    @result = `/srv/admin/bin/cap.sh #{@project.identifier.to_s} ailove:factory_build 2>&1`
  end

  def index
    @project = Project.find(params[:project_id])
    @jenkins_widget = `/usr/bin/curl -n http://test.ailove.ru:8080/view/Experimental/job/#{@project.identifier.to_s}/jswidgets/health?skipDescription=true`
  end
end
