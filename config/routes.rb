Rails.application.routes.draw do
 
  resources :arquivos
  resources :professores
  resources :nucleos
  resources :provas
  resources :photos
  resources :galeries
  get 'site/index'

  get 'site/equipe'

  get 'site/historia'

  get 'site/estrutura'

  get 'site/infantil'

  get 'site/fundamental_I'

  get 'site/fundamental_II'

  get 'site/medio'

  get 'site/projetos'

  get 'site/egressos'

  get 'site/calendario'

  get 'site/provas'
  post 'site/provas'

  get 'site/humanas'

  get 'site/linguas'

  get 'site/matematica'

  get 'site/biologicas'

  get 'site/natureza'

  get 'site/redacao'

  get 'site/noticias'
  
  get 'site/noticia_show'
  
  post 'site/noticia_show'

  get 'site/galeria'
  get 'site/galeria_show'
  post 'site/galeria_show'

  get 'site/contato'
  post 'site/professores'
  get 'site/professores'
  post 'site/arquivos'
  get 'site/arquivos'
  post 'site/testes'
  get 'site/testes'

  get 'site/pre_matricula'
  post 'site/pre_matricula'
  get 'site/pre_matricula_post'
  post 'site/pre_matricula_post'
  post 'site/projetos_show'
  get 'site/projetos_show'
  resources :acontecimentos
  resources :news
  resources :egressos
  resources :projetos
  resources :estruturas
  resources :calendarios
  resources :equipes
  resources :coladoradores
  resources :sliders
  get 'teste/home'

  devise_for :users
  get 'dashboard/home'
  root :to => 'site#index'

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
