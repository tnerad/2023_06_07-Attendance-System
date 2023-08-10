Rails.application.routes.draw do
  devise_for :accounts

  root "grid#index"
  get 'grid/index'

  get 'grid/attendance'
  post 'grid/update_attendance'

  get 'grid/summary', to: 'grid#summary', as: 'grid_summary'
  delete 'grid/delete_item/:contrib_id', to: 'grid#delete_item', as: 'grid_delete_item'

  get 'grid/classroom', to: 'grid#classroom', as: 'grid_classroom'
  post 'grid/add_new_student'
  get 'grid/edit_student/:id', to: 'grid#edit_student', as: 'grid_edit_student'
  patch 'grid/update_student/:id', to: 'grid#update_student', as: 'grid_update_student'
  delete 'grid/delete_student/:student_id', to: 'grid#delete_student', as: 'grid_delete_student'

  get 'grid/:id/total_attendance', to: 'grid#total_attendance', as: 'grid_total_attendance'
end
