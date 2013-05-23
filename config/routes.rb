AngularCasts::Application.routes.draw do
  scope :api do
    get "/screencasts(.:format)" => "screencasts#index"
    get "/screencasts/:id(.:format)" => "screencasts#show"
  end
  root to: "home#index"
end
