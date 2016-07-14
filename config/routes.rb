Rails.application.routes.draw do
    resources :chore_lists do
        resources :chore_items 
    end
    
    resources :kids, except: [:new]
    
    get '/your_kids', to: 'kids#index'
    
    get '/register_kid', to: 'kids#new'
    # What the main link rerouts to
    root "chore_lists#index"
end
