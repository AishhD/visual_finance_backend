Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# not used yet
  namespace :api do
    namespace :v1 do
      resources :accounts, only: [:index, :show]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :answers, only: [:index, :show]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :budgets, only: [:index, :show]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :national_budgets, only: [:index, :show]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :options_controller, only: [:index, :show]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :questions, only: [:index, :show]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :saving_types, only: [:index, :show]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :spending_categories, only: [:index, :show]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :spending_targets, only: [:index, :show]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
    end
  end

end
