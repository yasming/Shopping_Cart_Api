Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
      
    post '/auth/login', to: 'authentication#login';

    resources :carts, :only => [:index, :update, :create];
    post '/carts/applycoupon', to: 'carts#apply_coupon';

    # put '/cart', controller: 'shopping_cart', action: 'update';
    # get '/survivors/reports', controller: 'survivors', action: 'reports';

  end
end