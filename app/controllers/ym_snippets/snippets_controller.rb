class YmSnippets::SnippetsController < ApplicationController
  load_and_authorize_resource
  
  def edit
    session[:snippet_return_to] = request.referer
  end
  
  def index
    @snippets = YmSnippets::Snippet.order(:slug)
  end
  
  def update
    @snippet.update_attributes(params[:snippet])
    if @snippet.save
      redirect_to session[:snippet_return_to]
    else
      render :action => :edit
    end
  end
  
end