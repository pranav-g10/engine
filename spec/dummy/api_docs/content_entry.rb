module ApiDocs
  class ContentEntryApiDoc
  # Get Content Entries for given model
  #
  #  GET http://localhost:3000/locomotive/handle/api/v3/content_types/projects/entries.json?auth_token=KP9EDnCYFRTGXdbaDyhi
  #
  #  REQUEST:
  #  RESPONSE:
  #   {"_id":"5650f0a287f6436cbc000007","created_at":"2015-11-21T22:30:58Z","updated_at":"2015-11-21T22:30:58Z","_slug":"hello-world","content_type_slug":"articles","_label":"Hello
  #   world","_position":0,"_visible":true,"seo_title":null,"meta_keywords":null,"meta_description":null,"title":"Hello
  #   world"},{"_id":"5650f0a287f6436cbc00000a","created_at":"2015-11-21T22:30:58Z","updated_at":"2015-11-21T22:30:58Z","_slug":"lorem-ipsum","content_type_slug":"articles","_label":"Lorem
  #   ipsum","_position":1,"_visible":true,"seo_title":null,"meta_keywords":null,"meta_description":null,"title":"Lorem
  #   ipsum"}
  # ---
  def index;end


  end
end


