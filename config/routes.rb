Rails.application.routes.draw do
  resources :employees do
      #../employees/highest_salary
      collection do
          get "highest_salary"
      end
      #../employee/:id/full_salary
      member do
          get "full_salary"
      end
      #../employees/over_20k
      collection do
          get "over_20k"
      end
      
#    collection do
#        get "highest_salary"
#    end  
#      #../employee/:id/full_salary
#    member do
#        get "full_salary"
#    end
  end
    
    
#  get 'patients/show'
#
#  get 'patients/new'
#
#  get 'patients/create'
    
    #przy powyższych getach nie mamy id przy patients a przy resources mamy tak:
#    patients    POST /patients(.:format)     patients#create
#    new_patient GET  /patients/new(.:format) patients#new
#    patient     GET  /patients/:id(.:format) patients#show


    resources :patients, only: [:show, :new, :create]
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
