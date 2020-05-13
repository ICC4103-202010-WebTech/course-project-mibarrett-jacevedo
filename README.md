#SUMMARY OF IMPLEMENTED FEATURES
- Created folders api and v1 and copy controllers of events and comments for postman testing of CRUD operations on them
- All controllers for this assignement only allow viwes and navigation through the webpage, do not have permission to create, update or delete records
- Created controllers for:
	*api - for events and comments controllers in api folder to inherit from
	*comments
	*events
	*mailboxes
	*messages
	*messages
	*organization
	*profiles 
- By pressing on the name of the webpage "MEET ME" the user comes back to the home page
- The navigation bar alows to navigate directly to "Events", "Mailbox", "Profile" and "log Out" options
- Inside the Events page the different events available will appear, by placing the mouse over the name of the event different options will appear, these are: "Show", "Edit" and "Destroy". Appears an option to create a "New Event" as well
	*Show - enters the event details (including organization by clicking over the name it will redirect to the organizations page), the event option dates to 'vote' from, comments and replies will be availbale for all users who can access the event to see and create 
	*Edit - this option is available for the event creator and the system administrator 
	*Destroy - this will be an option available to the event creator, organization administrator and the system administrator
	*New Event - option available to all users for them to create a new event, by clicking it will redirect the user to a forum to create a new event 
- Once in the organizations page there will be an option to see all organizations available to the system administrator to perform CRUD operations on them
- Inside the Mailbox page the user logged in will be able to see its messages  with the option to "Show" to view a specific message and the "Destroy" option to delete the message
- Inside the Profile page it will show the details of the users profile with option to "Edit", so the user may update or delete its profile
- The Log Out page takes the user the main page logged out, where the options to "log In" and "Sign Up" appear for the user to identify itself 
- Inside the Profile there is an option meant for the system administrator to see all users ativity and perform CRUD operations on them
- In the footer part of the page appears contact info for all users to see

- The following dependencies were established on delete actions:
	*

#POSTMAN
Link to postman actions: https://www.getpostman.com/collections/7b8e6dfbfc2501664af7