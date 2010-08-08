require 'thinking_sphinx'

module SphinxSearch
  module PageExtensions
   
   def self.included(base)
     base.define_index do
       set_property :delta => true, :group_concat_max_len => SphinxSearch.content_length || 8.kilobytes
       set_property :field_weights => { 'title' => 100 }
       indexes title, parts.content
       has updated_at, status_id, virtual, class_name
     end

   end
    
  end
end