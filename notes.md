CRUD - REST methods
Create - POST
Read - GET
Update - Patch/Put
Destroy - Delete

Resource = object the API will give you in the response. Object the API can read and manipulate.
Get request points toward a resource.
Update the resource of a pirate object.

-in order to get these restful methods to work the API needs to have some routes.

HTTP-request-response-cycle: client (browser: postman) => server
-when the server gets a request, the request is in a route: GET/sandwhiches. Which action should I run ?
-What happens in the rails app in order to get something back: Rails look at the action and asks which action should I run?
-It looks at the controller, runs the action, the action is going to hit the database, which is your model.
-the model is what directly talks to the database.
-once all that information comes back to the controller from the database, the controller will output a response, which will always be JSON.

-Actions/Routes = RESTful routes. Can also create your own routes.

-You build an API so developers can hit that API and get information out.

#RESTful routes
~/.../rails-postman-practice/postman-practice // ♥ > rails routßes
Prefix Verb URI Pattern Controller#Action
sandwiches GET /sandwiches(.:format) sandwiches#index
POST /sandwiches(.:format) sandwiches#create
sandwich GET /sandwiches/:id(.:format) sandwiches#show
PATCH /sandwiches/:id(.:format) sandwiches#update
PUT /sandwiches/:id(.:format) sandwiches#update
DELETE /sandwiches/:id(.:format) sandwiches#destroy

-Explaining the above routes, if you send a GET request to the route https:localhost:8000/sandwiches, you see that the controller is sandwiches and the action is #index.
-If you send a POST request to https:localhost:8000/sandwiches the action is #create.
-REST is just a design pattern, a convention that API's follow. Not all API's follow RESTful conventions. These routes you see is what you'll see for every single one of your controllers.
-1 restful route/controller action. PATCH/PUT are different types of HTTP request that both update and do the same thing.
-PATCH updates just part of an entry.
-PUT takes a copy of our old resource, then it changes out whichever column you switched.

Order of Rails Commands: 0. rails new project-name --api

1. rails g resource Sandwich name rating:integer
   -using the resource command will give you all of the RESTful routes and the controller.
2. rails db:migrate (migrates the database so you can start creating some seeds. Head over to db/schema.rb)
3. rails db:seed
   ~/.../rails-postman-practice/postman-practice // ♥ > rails c
   Running via Spring preloader in process 21472
   Loading development environment (Rails 6.0.3.6)
   2.6.1 :001 > Sandwich.all
   (1.3ms) SELECT sqlite*version(*)
   Sandwich Load (0.5ms) SELECT "sandwiches".\_ FROM "sandwiches" LIMIT ? [["LIMIT", 11]]
   => #<ActiveRecord::Relation [#<Sandwich id: 1, name: "Turkey", rating: 5, created_at: "2021-03-28 04:56:59", updated_at: "2021-03-28 04:56:59">, #<Sandwich id: 2, name: "BLT", rating: 4, created_at: "2021-03-28 04:56:59", updated_at: "2021-03-28 04:56:59">, #<Sandwich id: 3, name: "Roastbeef", rating: 3, created_at: "2021-03-28 04:56:59", updated_at: "2021-03-28 04:56:59">, #<Sandwich id: 4, name: "Ham", rating: 2, created_at: "2021-03-28 04:56:59", updated_at: "2021-03-28 04:56:59">, #<Sandwich id: 5, name: "Reuben", rating: 5, created_at: "2021-03-28 04:56:59", updated_at: "2021-03-28 04:56:59">]>
4. rails s
