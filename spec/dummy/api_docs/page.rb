module ApiDocs
  class PageApiDoc

    # Get all pages
    #
    #  GET /locomotive/sample/api/v3/pages.json?auth_token=E2aoXzMxkFsLnCcmCcc_
    #
    # REQUEST: ""
    #
    # RESPONSE:
    #   [{"_id":"5650f08c87f6436c94000007","created_at":"2015-11-21T22:30:36Z","updated_at":"2015-11-21T22:30:36Z","title":"Home
    #    page","parent_id":null,"position":0,"handle":null,"depth":0,"response_type":"text/html","listed":true,"published":true,"translated_in":["en"],"cache_enabled":true,"slug":"index","fullpath":"index","localized_fullpaths":{"en":""},"redirect":false,"redirect_url":"","redirect_type":301,"templatized":false,"templatized_from_parent":false,"content_type":null,"is_layout":false,"allow_layout":true,"template":"Content
    #    of the home page","editable_elements":[],"seo_title":null,"meta_keywords":null,"meta_description":null},{"_id":"5650f08c87f6436c94000008","created_at":"2015-11-21T22:30:36Z","updated_at":"2015-11-21T22:30:36Z","title":"Page
    #    not found","parent_id":null,"position":1,"handle":null,"depth":0,"response_type":"text/html","listed":true,"published":true,"translated_in":["en"],"cache_enabled":true,"slug":"404","fullpath":"404","localized_fullpaths":{"en":"404"},"redirect":false,"redirect_url":"","redirect_type":301,"templatized":false,"templatized_from_parent":false,"content_type":null,"is_layout":false,"allow_layout":true,"template":"Content
    #    of the 404 page","editable_elements":[],"seo_title":null,"meta_keywords":null,"meta_description":null}]
    # ---
    def index;end

    # Get all full_path of pages
    #
    #   GET /locomotive/sample/api/v3/pages/fullpaths.json?auth_token=E2aoXzMxkFsLnCcmCcc_
    #
    # REQUEST: ""
    #
    # RESPONSE:
    #    [{"_id":"5650f08c87f6436c94000007","fullpath":"index"},{"_id":"5650f08c87f6436c94000008","fullpath":"404"}]
    def full_path;end

  end
end


