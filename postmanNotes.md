#POSTMAN
-just like Chrome or Safari or Edge, POSTMANT is an app browser.
-POSTMAN is an in app browser that allows you to test your API routes.
-You can send any request you want to in POSTMAN, can't do the same in a browser.
-In a browser client, you can only send GET requests. When you type in a URL and hit enter, that is always a GET request.
-To get an index route, you should send a GET request to, http://localhost:3000/sandwhiches
the following json should be available through this GET request route:
[
{
"id": 1,
"name": "Turkey",
"rating": 5,
"created_at": "2021-03-28T04:56:59.548Z",
"updated_at": "2021-03-28T04:56:59.548Z"
},
{
"id": 2,
"name": "BLT",
"rating": 4,
"created_at": "2021-03-28T04:56:59.554Z",
"updated_at": "2021-03-28T04:56:59.554Z"
},
{
"id": 3,
"name": "Roastbeef",
"rating": 3,
"created_at": "2021-03-28T04:56:59.559Z",
"updated_at": "2021-03-28T04:56:59.559Z"
},
{
"id": 4,
"name": "Ham",
"rating": 2,
"created_at": "2021-03-28T04:56:59.563Z",
"updated_at": "2021-03-28T04:56:59.563Z"
},
{
"id": 5,
"name": "Reuben",
"rating": 5,
"created_at": "2021-03-28T04:56:59.567Z",
"updated_at": "2021-03-28T04:56:59.567Z"
}
]

#debugging
def update # /sanwiches/:id PATCH - PUT
byebug
end

Started PATCH "/sandwiches/1" for ::1 at 2021-03-28 15:50:44 -0600
(0.1ms) SELECT sqlite*version(*)
Processing by SandwichesController#update as \_/\*
Parameters: {"user"=>{"username"=>"brandon2", "password"=>"[FILTERED]"}, "id"=>"1", "sandwich"=>{}}
Return value is: nil

[6, 15] in /Users/scottsinger/Desktop/dev-playground/ruby-on-rails-projects/rails-postman-practice/postman-practice/app/controllers/sandwiches_controller.rb
6: @sandwiches = Sandwich.all
7:
8: render json: @sandwiches
9: end
10:
11: def update
12: # /sanwiches/:id PATCH - PUT
13: byebug
=> 14: end
15: end
(byebug)

(byebug) params
<ActionController::Parameters {"user"=>{"username"=>"brandon2", "password"=>"brandon2"}, "controller"=>"sandwiches", "action"=>"update", "id"=>"1", "sandwich"=>{}} permitted: false>

(byebug) Sandwich.find(params[:id])
Sandwich Load (0.5ms) SELECT "sandwiches".\* FROM "sandwiches" WHERE "sandwiches"."id" = ? LIMIT ? [["id", 1], ["LIMIT", 1]]
↳ (byebug):1:in `update'
#<Sandwich id: 1, name: "Turkey", rating: 5, created_at: "2021-03-28 04:56:59", updated_at: "2021-03-28 04:56:59">

-The request body holds whatever information is being sent with the request.

A Request has 3 parts to it:

1. Method of what the request is: GET, PUT, PATCH, POST, DELETE
2. Headers: any information about the request, like content type = application json.
3. BODY: the information you are sending about the request.

-If you are saying you sent application JSON data in the header, than
you actually need to send that in the body of the request.

PATCH: http://localhost:3000/sandwiches/3

-the request body holds whatever information is being sent about the request.
-eventually be someones user input that we send as the request body,
-In POSTMAN, you skip the user input part and you just have a body, that we will pass raw JSON.

-   JSON the keys need to be strings.

#Updating a Sandwiches rating with POSTMAN
PATCH: http://localhost:3000/sandwiches/1

BODY-raw-JSON
{
"rating": 3
}

{
"id": 1,
"rating": 3,
"name": "Turkey",
"created_at": "2021-03-28T04:56:59.548Z",
"updated_at": "2021-03-28T23:11:43.335Z"
}
