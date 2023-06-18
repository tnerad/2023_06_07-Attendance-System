Rails.application.routes.draw do
  root "grid#attendance"
  get 'grid/attendance'
  post 'grid/update_attendance'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
