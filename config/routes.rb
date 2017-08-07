Rails.application.routes.draw do
  get  'answer', to: 'question#answer'

  get 'ask', to: 'question#ask'

  root to: 'question#ask'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
