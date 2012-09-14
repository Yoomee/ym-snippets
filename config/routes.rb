Rails.application.routes.draw do

  resources :snippets, :only => [:index, :edit, :update], :controller => "YmSnippets::Snippets", :as => :snippets

end
