CampusManager::Application.routes.draw do

  resources :lessons
  resources :courses
  resources :rooms
  resources :buildings
  resources :instructors
  resources :students
  resources :links
  resources :semesters
  
  root "courses#index"

end
