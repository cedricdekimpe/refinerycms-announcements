::Refinery::Application.routes.draw do
  resources :announcements, :only => [:index, :show] do
    collection do
      get :sitemap
    end
  end

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :announcements, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
