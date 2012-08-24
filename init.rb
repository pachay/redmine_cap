Redmine::Plugin.register :redmine_cap do
  name 'Redmine Cap plugin'
  author 'Andrey Pachay'
  description 'This is a plugin allow Redmine to start cap tasks'
  version '0.0.1'
  url 'http://github.com/pachay/redmine_cap'
  author_url 'http://github.com/pachay'
  permission :redmine_cap, { :cap => [:index, :deploy, :rollback, :build] }, :public => true
  menu :project_menu, :redmine_cap, { :controller => 'cap', :action => 'index' }, :caption => 'Deploy', :after => :repository, :param => :project_id
end
