class YmSnippets::SnippetsController < ApplicationController
  
  def edit
    @snippet = YmSnippets::Snippet.find(params[:id])
    session[:snippet_return_to] = request.referer
  end
  
  def update
    @snippet = YmSnippets::Snippet.find(params[:id])
    @snippet.update_attributes(params[:snippet])
    
    if @snippet.save
      redirect_to session[:snippet_return_to]
    else
      render :action => :edit
    end
  end
  
end