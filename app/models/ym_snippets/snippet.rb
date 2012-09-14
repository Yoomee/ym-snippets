class YmSnippets::Snippet < ActiveRecord::Base

  self.table_name = "ym_snippets_snippets"
  
  validates :slug, :presence => true

  def to_s
    text
  end
  
end