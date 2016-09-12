### Sign up Api

POST /locomotive/api/v3/my_account.json

request= 
{
 "account":{
            "email": "jack@gmail.com",
	    "name" :"JackDoe",
	    "password": "easyone",
	    "password_confirmation": "easyone"
	   }
}

response = {"_id":"5650f0a087f6436cbc000000","created_at":"2015-11-21T22:30:56Z","updated_at":"2015-11-21T22:30:56Z","name":"Jack    Doe","email":"jack@doe.net","locale":"en","api_key":"92f2e03b57b3f31f485ecf4d99bc94ea20eee862","super_admin":false,"local_admin":false}