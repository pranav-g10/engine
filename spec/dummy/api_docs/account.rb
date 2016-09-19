module ApiDocs
  class AccountApiDoc
    # Sign Up, Create a new locomotive account
    #
    #  POST /locomotive/api/v3/my_account.json
    #
    # REQUEST:
    #   { "account":{
    #       "email": "jaack@gmail.com",
    #       "name" :"JackDoe",
    #       "password": "easyone",
    #       "password_confirmation": "easyone"
    #   } }
    #
    #
    # RESPONSE:
    #   {"_id":"5650f0a087f6436cbc000000",
    #    "created_at":"2015-11-21T22:30:56Z",
    #    "updated_at":"2015-11-21T22:30:56Z",
    #    "name":"Jack Doe","email":"jack@doe.net",
    #    "locale":"en",
    #    "api_key":"92f2e03b57b3f31f485ecf4d99bc94ea20eee862",
    #    "super_admin":false,
    #    "local_admin":false }
    # ---
    def create;end

    # Sign In
    #
    #  POST /locomotive/api/v3/tokens.json
    #
    # REQUEST:
    #   { "email": "jack@gmail.com",
    #     "password": "easyone" }
    #
    # RESPONSE:
    #   { "token":"E2aoXzMxkFsLnCcmCcc_" }
    # ---
    def login;end

    # Update a locomotive account
    #
    #  PUT /locomotive/api/v3/my_account.json
    #
    # REQUEST:
    #   { "account":
    #     { "email": "jack@gmail.com",
    #       "name" :"JackDoe",
    #       "auth_token": "E2aoXzMxkFsLnCcmCcc_" }
    #     }
    #
    # RESPONSE:
    #   {"_id":"5650f08c87f6436c94000000",
    #    "created_at":"2015-11-21T22:30:36Z",
    #    "updated_at":"2015-11-21T22:30:57Z",
    #    "name":"John Doe",
    #    "email":"admin@locomotivecms.com",
    #    "locale":"en",
    #     "api_key":"d49cd50f6f0d2b163f48fc73cb249f0244c37074",
    #     "super_admin":false,
    #     "local_admin":true}
    # ---
    def update; end

    # Get locomotive account
    #
    #  GET /locomotive/api/v3/my_account.json?auth_token=E2aoXzMxkFsLnCcmCcc_
    #
    # REQUEST: ""
    #
    # RESPONSE:
    #   {"_id":"5650f08c87f6436c94000000",
    #    "created_at":"2015-11-21T22:30:36Z",
    #    "updated_at":"2015-11-21T22:30:57Z",
    #    "name":"John Doe",
    #    "email":"admin@locomotivecms.com",
    #    "locale":"en",
    #     "api_key":"d49cd50f6f0d2b163f48fc73cb249f0244c37074",
    #     "super_admin":false,
    #     "local_admin":true}
    # ---
    def show;end
  end
end

    
