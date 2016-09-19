var search_data = {"index":{"searchIndex":["apidocs","accountapidoc","contententryapidoc","contenttypeapidoc","membershipapidoc","pageapidoc","siteapidoc","snippetapidoc","create()","create()","create()","create()","delete()","delete()","delete()","full_path()","index()","index()","index()","index()","index()","index()","login()","show()","show()","update()","update()","update()","readme","routes"],"longSearchIndex":["apidocs","apidocs::accountapidoc","apidocs::contententryapidoc","apidocs::contenttypeapidoc","apidocs::membershipapidoc","apidocs::pageapidoc","apidocs::siteapidoc","apidocs::snippetapidoc","apidocs::accountapidoc#create()","apidocs::contententryapidoc#create()","apidocs::membershipapidoc#create()","apidocs::siteapidoc#create()","apidocs::contententryapidoc#delete()","apidocs::membershipapidoc#delete()","apidocs::siteapidoc#delete()","apidocs::pageapidoc#full_path()","apidocs::contententryapidoc#index()","apidocs::contenttypeapidoc#index()","apidocs::membershipapidoc#index()","apidocs::pageapidoc#index()","apidocs::siteapidoc#index()","apidocs::snippetapidoc#index()","apidocs::accountapidoc#login()","apidocs::accountapidoc#show()","apidocs::contententryapidoc#show()","apidocs::accountapidoc#update()","apidocs::contententryapidoc#update()","apidocs::membershipapidoc#update()","",""],"info":[["ApiDocs","","ApiDocs.html","",""],["ApiDocs::AccountApiDoc","","ApiDocs/AccountApiDoc.html","",""],["ApiDocs::ContentEntryApiDoc","","ApiDocs/ContentEntryApiDoc.html","",""],["ApiDocs::ContentTypeApiDoc","","ApiDocs/ContentTypeApiDoc.html","",""],["ApiDocs::MembershipApiDoc","","ApiDocs/MembershipApiDoc.html","",""],["ApiDocs::PageApiDoc","","ApiDocs/PageApiDoc.html","",""],["ApiDocs::SiteApiDoc","","ApiDocs/SiteApiDoc.html","",""],["ApiDocs::SnippetApiDoc","","ApiDocs/SnippetApiDoc.html","",""],["create","ApiDocs::AccountApiDoc","ApiDocs/AccountApiDoc.html#method-i-create","()","<p>Sign Up, Create a new locomotive account\n\n<pre>POST /locomotive/api/v3/my_account.json</pre>\n<p>REQUEST:\n"],["create","ApiDocs::ContentEntryApiDoc","ApiDocs/ContentEntryApiDoc.html#method-i-create","()","<p>Create Content Entries for given model\n\n<pre>POST http://localhost:3000/locomotive/handle/api/v3/content_types/projects/entries.json ...</pre>\n"],["create","ApiDocs::MembershipApiDoc","ApiDocs/MembershipApiDoc.html#method-i-create","()","<p>Create a member\n\n<pre>POST /locomotive/sample/api/v3/memberships.json</pre>\n<p>REQUEST:\n"],["create","ApiDocs::SiteApiDoc","ApiDocs/SiteApiDoc.html#method-i-create","()","<p>Create a site\n\n<pre>POST /locomotive/api/v3/sites.json</pre>\n<p>REQUEST:\n"],["delete","ApiDocs::ContentEntryApiDoc","ApiDocs/ContentEntryApiDoc.html#method-i-delete","()","<p>Delete a content entry\n\n<pre>Delete http://localhost:3000/locomotive/sample/api/v3/content_types/articles/entries/hello-world.json?auth_token=E2aoXzMxkFsLnCcmCcc_</pre>\n"],["delete","ApiDocs::MembershipApiDoc","ApiDocs/MembershipApiDoc.html#method-i-delete","()","<p>Delete a member\n\n<pre>DELETE /locomotive/sample/api/v3/memberships/5650f0a187f6436cbc000001.json?auth_token=E2aoXzMxkFsLnCcmCcc_</pre>\n"],["delete","ApiDocs::SiteApiDoc","ApiDocs/SiteApiDoc.html#method-i-delete","()","<p>Delete a site\n\n<pre>Delete /locomotive/api/v3/sites/5650f0a487f6436cbc000028.json?auth_token=E2aoXzMxkFsLnCcmCcc_</pre>\n"],["full_path","ApiDocs::PageApiDoc","ApiDocs/PageApiDoc.html#method-i-full_path","()","<p>Get all full_path of pages\n\n<pre>GET /locomotive/sample/api/v3/pages/fullpaths.json?auth_token=E2aoXzMxkFsLnCcmCcc_</pre>\n"],["index","ApiDocs::ContentEntryApiDoc","ApiDocs/ContentEntryApiDoc.html#method-i-index","()","<p>Get Content Entries for given model\n\n<pre>GET http://localhost:3000/locomotive/handle/api/v3/content_types/projects/entries.json?auth_token=KP9EDnCYFRTGXdbaDyhi ...</pre>\n"],["index","ApiDocs::ContentTypeApiDoc","ApiDocs/ContentTypeApiDoc.html#method-i-index","()","<p>Get Content Types\n\n<pre>GET /locomotive/sample/api/v3/content_types.json?auth_token=E2aoXzMxkFsLnCcmCcc_\n\nREQUEST: ...</pre>\n"],["index","ApiDocs::MembershipApiDoc","ApiDocs/MembershipApiDoc.html#method-i-index","()","<p>Get all members\n\n<pre>GET /locomotive/sample/api/v3/memberships.json?auth_token=E2aoXzMxkFsLnCcmCcc_</pre>\n<p>REQUEST: …\n"],["index","ApiDocs::PageApiDoc","ApiDocs/PageApiDoc.html#method-i-index","()","<p>Get all pages\n\n<pre>GET /locomotive/sample/api/v3/pages.json?auth_token=E2aoXzMxkFsLnCcmCcc_</pre>\n<p>REQUEST: “” …\n"],["index","ApiDocs::SiteApiDoc","ApiDocs/SiteApiDoc.html#method-i-index","()","<p>Get all sites for a user\n\n<pre>GET /locomotive/api/v3/sites.json?auth_token=rXvisbubFTXk-ysqJHV_</pre>\n<p>REQUEST: “” …\n"],["index","ApiDocs::SnippetApiDoc","ApiDocs/SnippetApiDoc.html#method-i-index","()","<p>Get all snippets\n\n<pre>GET /locomotive/sample/api/v3/snippets.json?auth_token=E2aoXzMxkFsLnCcmCcc_</pre>\n<p>REQUEST: “” …\n"],["login","ApiDocs::AccountApiDoc","ApiDocs/AccountApiDoc.html#method-i-login","()","<p>Sign In\n\n<pre>POST /locomotive/api/v3/tokens.json</pre>\n<p>REQUEST:\n"],["show","ApiDocs::AccountApiDoc","ApiDocs/AccountApiDoc.html#method-i-show","()","<p>Get locomotive account\n\n<pre>GET /locomotive/api/v3/my_account.json?auth_token=E2aoXzMxkFsLnCcmCcc_</pre>\n<p>REQUEST: …\n"],["show","ApiDocs::ContentEntryApiDoc","ApiDocs/ContentEntryApiDoc.html#method-i-show","()","<p>GET  current Site\n\n<pre>Get http://localhost:3000/locomotive/sample/api/v3/current_site.json?auth_token=E2aoXzMxkFsLnCcmCcc_</pre>\n"],["update","ApiDocs::AccountApiDoc","ApiDocs/AccountApiDoc.html#method-i-update","()","<p>Update a locomotive account\n\n<pre>PUT /locomotive/api/v3/my_account.json</pre>\n<p>REQUEST:\n"],["update","ApiDocs::ContentEntryApiDoc","ApiDocs/ContentEntryApiDoc.html#method-i-update","()","<p>Update Content Entries for given model\n\n<pre>PUT /locomotive/sample/api/v3/content_types/articles/entries/random-title.json ...</pre>\n"],["update","ApiDocs::MembershipApiDoc","ApiDocs/MembershipApiDoc.html#method-i-update","()","<p>Update a member\n\n<pre>PUT /locomotive/sample/api/v3/memberships/5650f0a187f6436cbc000001.json</pre>\n<p>REQUEST:\n"],["README","","README_rdoc.html","","<p>NOTES\n<p>Domain: pixylz.herokuapp.com\n\n<p>HEADERS\n"],["Routes","","rdoc/Routes_rdoc.html","","<p>POST /locomotive/api/v3/my_account.json\n<p>POST /locomotive/api/v3/tokens.json\n<p>PUT /locomotive/api/v3/my_account.json …\n"]]}}