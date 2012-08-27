# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

match "/projects/:project_id/cap" => "cap#index"
match "/projects/:project_id/:controller/:action"
