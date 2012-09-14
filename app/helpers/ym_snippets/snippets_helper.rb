module YmSnippets::SnippetsHelper

  def edit_snippet_link(slug, options={})
    options.reverse_merge!(:link_text => "edit")
    snippet = YmSnippets::Snippet.find_or_create_by_slug(slug)
    link_to(options[:link_text], edit_snippet_path(snippet), options)
  end
  
  def snippet_text(slug)
    YmSnippets::Snippet.find_or_create_by_slug(slug).to_s
  end

end