Rails.application.routes.draw do
   namespace :api do
  
    namespace :v1 do
   	post 'loginuser' , to: 'loginuser#login',as: 'api3'
    post 'loginadmin' , to: 'loginuser#loginadmin',as: 'api4'
    end
end
  get 'home/index'
  root 'home#index'
  get 'login' , to:'home#login' , as: 'login'
  get 'user/createsession/:id/:email', to: 'home#createsession', as:'createsession'
  get 'user/createsession1/:id/:email', to: 'home#createsession1', as:'createsession1'
  get 'stone', to:'home#stone', as: 'stone'
  get 'addamd', to:'home#addamd',as: 'addamd'
  get 'addmd', to:'home#addmd',as: 'addmd'
  post 'createamd',to:'home#createamd',as:'createamd'
  post 'createmd',to: 'home#createmd', as:'createmd'
  get 'admin',to:'home#admin',as: 'admin'
  get 'signout',to:'home#signout',as: 'signout'
  get 'createuser',to:'home#createuser',as:'createuser'
  post 'createuser1',to:'home#createuser1',as:'createuser1'
  get 'removemd/:id',to:'home#removemd',as: 'removemd'
  get 'removeamd/:id',to:'home#removeamd',as:'removeamd'
  get 'test',to:'home#test',as:'test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
