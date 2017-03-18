Rails.application.routes.draw do
  post '/radar',  to: 'radars#find_position'
end
