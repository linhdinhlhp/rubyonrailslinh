Rails.application.routes.draw do
    
  resources :book_reviews
  get 'users/show'
  get 'static_pages/home'
  root 'static_pages#home'
  
  devise_for :users
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  class CreateBookReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :book_reviews do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :review

      t.timestamps
    end
  end
end
  
end
