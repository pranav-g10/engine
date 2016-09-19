module ApiDocs
  class MembershipApiDoc

    # Get all members
    #
    #  GET /locomotive/sample/api/v3/memberships.json?auth_token=E2aoXzMxkFsLnCcmCcc_
    #
    # REQUEST: ""
    #
    # RESPONSE:
    #   [{"_id":"5650f08c87f6436c94000009","created_at":null,"updated_at":null,"role":"admin","account_id":"5650f08c87f6436c94000000","name":"John
    #     Doe","role_name":"Administrator","email":"admin@locomotivecms.com"}]
    # ---
    def index;end

    # Create a member
    #
    #  POST /locomotive/sample/api/v3/memberships.json
    #
    # REQUEST:
    #  {  "auth_token": "E2aoXzMxkFsLnCcmCcc_",
    #     "membership": { "account_email": "new_admin@locomotivecms.com",
    #                                       "membership":{"role": "Admin"}
    #                   }
    #  }
    #
    #
    # RESPONSE:
    #    {"_id":"5650f0a187f6436cbc000001","created_at":"2015-11-21T22:30:57Z","updated_at":"2015-11-21T22:30:57Z","role":"admin","account_id":"5650f08c87f6436c94000001","name":"New
    #     Admin","role_name":"Administrator","email":"new_admin@locomotivecms.com"}
    # ---
    def create;end

    # Update a member
    #
    #  PUT /locomotive/sample/api/v3/memberships/5650f0a187f6436cbc000001.json
    #
    # REQUEST:
    #  {  "auth_token": "E2aoXzMxkFsLnCcmCcc_",
    #     "membership":{"role": "Admin"}
    #
    #  }
    #
    #
    # RESPONSE:
    #    {"_id":"5650f0a187f6436cbc000001","created_at":"2015-11-21T22:30:57Z","updated_at":"2015-11-21T22:30:57Z","role":"admin","account_id":"5650f08c87f6436c94000001","name":"New
    #     Admin","role_name":"Administrator","email":"new_admin@locomotivecms.com"}
    # ---
    def update;end

    # Delete a member
    #
    #  DELETE /locomotive/sample/api/v3/memberships/5650f0a187f6436cbc000001.json?auth_token=E2aoXzMxkFsLnCcmCcc_
    #
    # REQUEST:""
    #
    #
    # RESPONSE:
    #    {"_id":"5650f0a187f6436cbc000001","created_at":"2015-11-21T22:30:57Z","updated_at":"2015-11-21T22:30:57Z","role":"admin","account_id":"5650f08c87f6436c94000001","name":"New
    #     Admin","role_name":"Administrator","email":"new_admin@locomotivecms.com"}
    # ---
    def delete;end

  end
end
