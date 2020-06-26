#SUMMARY OF IMPLEMENTED FEATURES
###Initial setup conditions
In `app/models/event` there is a function placed betweeen comments which needs to be commented before running `rake db:seed` command. Otherwise the database won't fill with initial data for the app to show its features.

###App Walk-through for `User`
- A page with the option to sign in or sign up is diplayed, where sign in will render devise's sign in form and sign up devise's sign un form
- The sign in form asks for email and password, with an option to recover password if forgotten. 
- The sign up form asks for email, username, password, password confirmation and a link to see Terms of Use and Terms of Service
- When a new user `signs up` the navbar will only display the new users `Mailbox`, `Profile` and `Log Out` options.
- A new profile is automatically created for the user when the user is registered filling its name with its username,a default bio and a defult photo, it is strongly suggested that the user changes this fields by editing its profile.
    * Inside the edit fields the user will be able to change all of the fields add a profile picture and change its `password` if wanted.
- In order to be able to be an active participant inside the app the new user must `Join an Organization` already existing or `Create a new Organization`. 
    * User are not allowed to invite other users because they cant participate in more than one organization at a time.
    * After registration it will redirect to a page to Join an exisiting organization or create a new organization
- Once the user has joined an organization the home page bar will show `Upcoming Events` for his/her organization and in the nav bar "Users" to see other users and `Events` page which shows all events the user has created, where the user is a guest of the event belonging to his/her organization or event that are public belonging to the organization.
- For all events created by the user the app provides the possibility to perform crud operations
- If the user is a guest, then a button to vote for an event date will appear in the event#show
- If the user is the creator, then it can add participants to the event
- A user can view all organizations
- The user can perform crud operations on comments created by him/her
- A user can send messages to other users through their mailbox
- A user can visit other user's profile
- The user can perform crud operations on his/her own profile


###App Walk-through for `Administrator`
- System administrators use a special route to enter the app, in the url they need to write "localhost:3000/administrators/sign_in" to sign into an exisiting account or "localhost:3000/administrators/sign_up" to create a new account
- The forms are the same as the ones described for the users
- System administrators dont have a profile or a mailbox, so those options are not available in the nav bar
- They have access to all links regarding "View", "Edit" and "Destroy"
- They can add participants to any event



###Implemented search engine in the app that allows:
   * To search users, use search bar in the profiles#index
  	-Search user (name or username).
   * To search organizations, use search bar in organizations#index
   * To search events, use search bar in the events#index
  	-Search event by substring in title / description.
  	-Search event by creator.
  	-Search event by organization.

###Important Information
- A user can only create events if it belongs to an organization
- Implemented devise
- Implemented cancancan


Pending Features
- We were unable to complete the totality of the CRUD operations for all of the models

