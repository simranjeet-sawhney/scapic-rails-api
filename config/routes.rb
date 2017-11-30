Rails.application.routes.draw do

  match 'list-of-models/:page_no'  => 'categories#category_item_map', :via => [:get]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
