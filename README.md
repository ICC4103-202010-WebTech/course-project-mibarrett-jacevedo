#SUMMARY OF IMPLEMENTED FEATURES
###Initial setup conditions
In `app/models/event` there is a function placed betweeen comments which needs to be commented before running `rake db:seed` command. Otherwise the database won't fill with initial data for the app to show its features.

###App Walk-through for `User`
- The application counts with devise for registration and user log in and out.
- When a new user `signs up` the navbar will only display the new users `Mailbox`, `Profile` and `Log Out` options.
- A new users profile is automatically created when the user is registered filling its name with its username, it is strongly suggested that the user changes this fields by editing its profile.
    * Inside the edit fields the user will be able to change all of the fields add a profile picture and change its `password` if wanted.
- In order to be able to be an active participant inside the app the new user must `Join an Organization` already existing or `Create a new Organization`. 
    * User are not allowed to invite other users because they cant participate in more than one organization at a time.
- Once the user has joined an organization the navigation bar will also show `Upcoming Events` for the current organization and an `Events` page which shows all events the user has craeted, is a guest of inside the organization o are public inside the organization.
- For all events created by the user the app provides the possibility 


###App Walk-through for `Administrator`
- System administrators use a special route to enter the app, in the url they need to write 

-SOLO SE PUEDE CREAR EVENTOS SI PERTENECES A UNA ORGANIZACION
- profile se crae solo hay que editar los datos despues


- Created folder admin and copy controller of organization for testing of CRUD operations on them. This can be found under app/controllers
- Implemented search engine in the app that allows:
- General search
  -Search user (name or username).
  -Search organization.
  -Search event by substring in title / description.
  -Search event by creator.
  -Search event by organization.

- Controllers in this assignement are able to perform CRUD operations
- Created controllers for:
  * event guests
  * event option
  * events organization
  * user organization

- Bootstrap features where implemented to the page to make its aesthetics have better looks
- Pictures may be uploaded with implementation of active storage for profiles, events and organizations
- Editing of comments, events, profile, organization is allowed
- Creating events, organizations and messages


Pending Features
- We were unable to complete the totality of the CRUD operations for all of the models

