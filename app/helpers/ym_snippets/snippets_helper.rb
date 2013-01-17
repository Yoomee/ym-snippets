module YmSnippets::SnippetsHelper

  def edit_snippet_link(slug, options={})
    options.reverse_merge!(:link_text => "edit")
    snippet = YmSnippets::Snippet.find_or_create_by_slug(slug)
    link_to(options[:link_text], edit_snippet_path(snippet), options) if can?(:edit, snippet)
  end
  
  def snippet_text(slug,text=nil)
    snippet = YmSnippets::Snippet.find_or_initialize_by_slug(slug)
    if snippet.new_record?
      snippet.text = text
      snippet.save
    end
    snippet.to_s
  end

end