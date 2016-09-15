module ApiDocs
  class SiteApiDoc

    # Get all sites for a user
    #
    #  GET /locomotive/api/v3/sites.json?auth_token=rXvisbubFTXk-ysqJHV_
    #
    # REQUEST: ""
    #
    # RESPONSE:
    #   [
    #    {
    #     "_id": "57ceb4712980d3eb1122361c",
    #     "created_at": "2016-09-06T12:20:01Z",
    #     "updated_at": "2016-09-07T06:09:10Z",
    #     "name": "Portfolio",
    #     "handle": "parched-pond-4169",
    #     "seo_title": "",
    #     "meta_keywords": "",
    #     "meta_description": "",
    #     "robots_txt": "",
    #     "cache_enabled": false,
    #     "private_access": false,
    #     "is_theme": false,
    #     "theme_name": ""},
    #   {}]
    # ---
    def index;end

    # Create a site
    #
    #  POST /locomotive/api/v3/sites.json
    #
    # REQUEST:
    #   { "site": {
    #      "handle": "abc",
    #      "name": "api_site" }
    #   }
    #
    # RESPONSE:
    #   {
    #     "_id": "57d9702c2980d357db753347",
    #     "created_at": "2016-09-14T15:43:40Z",
    #     "updated_at": "2016-09-14T15:43:41Z",
    #     "name": "api_site",
    #     "handle": "abc",
    #     "seo_title": null,
    #     "meta_keywords": null,
    #     "meta_description": null,
    #     "robots_txt": null,
    #     "cache_enabled": false,
    #     "private_access": false,
    #     "is_theme": false,
    #     "theme_name": ""}
    # ---
    def create;end

    # Delete a site
    #
    #  Delete /locomotive/api/v3/sites/5650f0a487f6436cbc000028.json?auth_token=E2aoXzMxkFsLnCcmCcc_
    #
    # REQUEST: ""
    #
    # RESPONSE:
    #   {"_id":"5650f0a487f6436cbc000028","created_at":"2015-11-21T22:31:00Z","updated_at":"2015-11-21T22:31:00Z","name":"Acme","handle":"lush-dawn-5649","seo_title":null,"meta_keywords":null,"meta_description":null,"robots_txt":null,"cache_enabled":false,"locales":["en"],"domains":[],"memberships":[{"_id":"5650f0a487f6436cbc000029","created_at":null,"updated_at":null,"role":"admin","account_id":"5650f08c87f6436c94000000","name":"John
    #     Doe","role_name":"Administrator","email":"admin@locomotivecms.com"}],"timezone":"UTC","picture_url":null,"content_version":0,"template_version":1448145060,"picture_thumbnail_url":null,"preview_url":"http://localhost:3000/locomotive/lush-dawn-5649/preview","sign_in_url":"http://localhost:3000/locomotive/sign_in"}
    # ---
    def delete;end
  end
end


