Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  # root "articles#index"

  # Rota Professor
  namespace 'api' do
    namespace 'v1' do
      scope 'teachers' do
        get 'index', to: 'teachers#index'
        get 'show/:id', to: 'teachers#show'
        post 'create', to: 'teachers#create'
        patch 'update/:id', to: 'teachers#update'
        delete 'delete/:id', to: 'teachers#delete'
      end
    end
  end

  #Rota Aluno
  namespace 'api' do
    namespace 'v1' do
      scope 'students' do
        get 'index', to: 'students#index'
        get 'show/:id', to: 'students#show'
        post 'create', to: 'students#create'
        patch 'update/:id', to: 'students#update'
        delete 'delete/:id', to: 'students#delete'
      end
    end
  end

  #Rota Linguagem
  namespace 'api' do
    namespace 'v1' do
      scope 'linguages' do
        get 'index', to: 'linguages#index'
        post 'create', to: 'linguages#create'
        delete 'delete/:id', to: 'linguages#delete'
      end
    end
  end

end
