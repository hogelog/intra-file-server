IntraFileServer::Application.routes.draw do
  root to: 'shared_files#index'

  resources :shared_files, only: %i(index show destroy) do
    member do
      get :download
    end
  end
end
