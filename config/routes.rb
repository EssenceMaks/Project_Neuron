Rails.application.routes.draw do
  

  devise_for :users
  #, path_names: { show: "soul"},only: [:show, :edit, :update, :index]
  resources :souls do#, path_names: { edit: "soul", update: "soul" }, only: [:show, :edit, :update, :index]
    resources :projects do
      member do
        get "like", to: "projects#upvote"
        get "dislike", to: "projects#downvote"
      end
      resources :projcomments
    end
    resources :purposes do
      member do
        get "like", to: "purposes#upvote"
        get "dislike", to: "purposes#downvote"
      end
      resources :purpcomments
    end
    resources :quotations do
      member do
        get "like", to: "quotations#upvote"
        get "dislike", to: "quotations#downvote"
      end
      resources :quotycomments
    end
    resources :articles do
      member do
        get "like", to: "articles#upvote"
        get "dislike", to: "articles#downvote"
      end
      resources :artcomments
    end
    resources :wishes do
      member do
        get "like", to: "wishes#upvote"
        get "dislike", to: "wishes#downvote"
      end
      resources :wishcomments
    end
    resources :hobbies do
      member do
        get "like", to: "hobbies#upvote"
        get "dislike", to: "hobbies#downvote"
      end
      resources :hobcomments
    end
    resources :experiences
    resources :resumes 
  end

  root "resumes#all_resumes"
  get 'soul_resumes', to: 'resumes#show'
  #get 'new_suit', to: 'resumes#new' #new_soul_resume

  get 'home', to: 'souls#home'
  get 'cabinet', to: 'souls#cabinet'
  get 'organizer', to: 'souls#organizer'
  get 'all_resumes', to: 'resumes#all_resumes'
  get 'resumes', to: 'resumes#all_resumes'




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
