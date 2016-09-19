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

    # Create Content Entries for given model
    #
    #  POST http://localhost:3000/locomotive/handle/api/v3/content_types/projects/entries.json
    #
    #  REQUEST:
    #    {
    #      "auth_token": "Wx6h9cyEsuut3gugjQxN",
    #      "content_entry": {"name": "Hello world"
    #       }
    #    }
    #  RESPONSE:
    #    {"_id":"5650f0a287f6436cbc00000a","created_at":"2015-11-21T22:30:58Z","updated_at":"2015-11-21T22:30:58Z","_slug":"lorem-ipsum","content_type_slug":"articles","_label":"Lorem
    #     ipsum","_position":1,"_visible":true,"seo_title":null,"meta_keywords":null,"meta_description":null,"title":"Lorem
    #      ipsum"}
    # ---
    def create;end

    # Update Content Entries for given model
    #
    #  PUT /locomotive/sample/api/v3/content_types/articles/entries/random-title.json
    #
    #  REQUEST:
    #    {
    #      "auth_token": "Wx6h9cyEsuut3gugjQxN",
    #      "content_entry": {"name": "Hello world"
    #       }
    #    }
    #  RESPONSE:
    #     {"_id":"5650f0a487f6436cbc00001f","created_at":"2015-11-21T22:31:00Z","updated_at":"2015-11-21T22:31:00Z","_slug":"random-title","content_type_slug":"articles","_label":"Random
    #         title!","_position":0,"_visible":true,"seo_title":null,"meta_keywords":null,"meta_description":null,"title":"Random
    #         title!"}
    # ---
    def update;end

    # Delete a content entry
    #
    #  Delete http://localhost:3000/locomotive/sample/api/v3/content_types/articles/entries/hello-world.json?auth_token=E2aoXzMxkFsLnCcmCcc_
    #
    # REQUEST: ""
    #
    # RESPONSE:
    #   {"_id":"5650f0a387f6436cbc000013","created_at":"2015-11-21T22:30:59Z","updated_at":"2015-11-21T22:30:59Z","_slug":"hello-world","content_type_slug":"articles","_label":"Hello
    #      world","_position":0,"_visible":true,"seo_title":null,"meta_keywords":null,"meta_description":null,"title":"Hello
    #      world"}
    # ---
    def delete;end

    # GET  current Site
    #
    #   Get http://localhost:3000/locomotive/sample/api/v3/current_site.json?auth_token=E2aoXzMxkFsLnCcmCcc_
    #
    # REQUEST: ""
    #
    # RESPONSE:
    #    {"_id":"5650f08c87f6436c94000006","created_at":"2015-11-21T22:30:36Z","updated_at":"2015-11-21T22:31:02Z","name":"John
    #     Doe","handle":"sample","seo_title":null,"meta_keywords":null,"meta_description":null,"robots_txt":null,"cache_enabled":false,"locales":["en"],"domains":["sample.example.com"],"memberships":[{"_id":"5650f08c87f6436c94000009","created_at":null,"updated_at":null,"role":"admin","account_id":"5650f08c87f6436c94000000","name":"John
    #      Doe","role_name":"Administrator","email":"admin@locomotivecms.com"}],"timezone":"UTC","picture_url":null,"content_version":1448145062,"template_version":1448145061,"picture_thumbnail_url":null,"preview_url":"http://localhost:3000/locomotive/sample/preview","sign_in_url":"http://localhost:3000/locomotive/sign_in"}
    # ---
    def show;end
  end
end


