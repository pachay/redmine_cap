Redmine::Plugin.register :redmine_cap do
  name 'Redmine Cap plugin'
  author 'Andrey Pachay'
  description 'This is a plugin allow Redmine to start cap tasks'
  version '0.0.1'
  url 'http://github.com/pachay/redmine_cap'
  author_url 'http://github.com/pachay'
  project_module :redmine_cap do
    permission :redmine_cap_index, :cap => [:index, :build, :deploy, :rollback]
  end
  menu :project_menu, :redmine_cap, { :controller => 'cap', :action => 'index' }, :caption => 'Синхронизация', :after => :repository, :param => :project_id
end
