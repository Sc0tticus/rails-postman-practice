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

Order of Rails Commands: 0) rails new project-name --api

1. rails g resource Sandwich name rating:integer
   -using the resource command will give you all of the RESTful routes and the controller.
