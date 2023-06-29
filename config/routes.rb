Rails.application.routes.draw do
  root "grid#attendance"
  get 'grid/attendance'
  post 'grid/update_attendance'
  get 'grid/summary', to: 'grid#summary', as: 'grid_summary'
  delete 'grid/delete_item/:contrib_id', to: 'grid#delete_item', as: 'grid_delete_item'
end
