class CapController < ApplicationController
  unloadable

  def deploy
    @project = Project.find(params[:project_id])
    @result = `/srv/admin/bin/cap.sh #{@project.identifier.to_s} ailove:factory_deploy 2>&1`
  end

  def deploy_to_test
    @project = Project.find(params[:project_id])
    @result = `/srv/admin/bin/copydb-pro2dev.sh #{@project.identifier.to_s}` + "\n" +`/srv/admin/bin/symfony-migrate.sh #{@project.identifier.to_s}`
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
  end
end
