Rails.application.routes.draw do
    resources :chore_lists do
    end
    
    resources :kids do
        resources :chore_items do
            member do
                patch :complete  
            end
        end
    end
    
    
    # What the main link rerouts to
    root "kids#index"
end
