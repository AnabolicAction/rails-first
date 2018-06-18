Rails.application.routes.draw do
  get 'hi/index'
  #/lotto로 오면 home컨트롤러의 lotto액션으로가
  get '/lotto' => 'home#lotto'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root페이지는 home컨트롤러의 액션이다 =localhost:3000
  root 'home#index'
  get '/index' => 'home#index'
  get '/welcome/:name' =>'home#welcome'
end
