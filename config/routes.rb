Rails.application.routes.draw do

	get "main/home" => 'main#home', :as => :home

  #root 'main#home'

  devise_for :users, path: 'users'
	# eg. http://localhost:3000/users/sign_in
	devise_for :admins, path: 'admins'
	# eg. http://localhost:3000/admins/sign_in


	#si un administrador esta autenticado
  authenticated :admin do
    root 'main#homeAdmin'
  end

  #si un user esta autenticado
  authenticated :user do
  	root 'main#homeUser'
  end

  #si un user  NO esta autenticado
  unauthenticated :user do
    root 'main#userUnregistered'
  end

  #si un administrador NO esta autenticado
  unauthenticated :admin do
    root 'main#adminUnregistered'
  end

end
