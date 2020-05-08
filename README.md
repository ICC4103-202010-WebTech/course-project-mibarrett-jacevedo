#MODEL LAYER FUNCTIONALITY AND BEHAVIOR

QUERIES

1.Query 1 - Get all events created by certain user

Event.select(:title).where("user_id = 1") 
-----------------
2.Query 2 - Get all users belonging to an organization

User.joins(:organization_users).select(:full_name).where("organization_id = 1")
-----------------
3.Query 3 - Get all public events in an organization

Event.joins(:event_organizations).select(:title).where("organization_id = 1 AND priv_or_pub = 1")
-----------------
4.Query 4 -  Get all private events in an organization

Event.joins(:event_organizations).select(:title).where("organization_id = 1 AND priv_or_pub = 2")
-----------------
5.Query 5 - Get all guests that have been invited to a certain event

User.joins(:event_guests).select(:full_name).where("event_id = 1")
-----------------
6.Query 6 - Get all guests that have voted for a date option in a certain event

User.joins(:event_votes).select(:full_name).where("event_id = 1 AND day= 1")
-----------------
7.Query 7 - Get all comments written by users on a specific event

Comment.select(:message).where("event_id = 1 AND user_id = 1") 
-----------------
8.Query 8 - Get all comments written by a specific user on all events

Comment.select(:message).where("user_id = 2") 
-----------------
9.Query 9 - Get all users with administrative privileges in an organization

User.find_by_sql("SELECT full_name FROM users INNER JOIN organization_users ON users.id=organization_users.user_id INNER JOIN organizations ON organization_users.user_id=organizations.user_id WHERE organizations.id=1")
-----------------
10.Query 10 - Get all users with administrative privileges in the system

User.select(:full_name).where("role = 2") 
-----------------
VALIDATIONS

11.validates :username, :email, presence:true
validates :username, uniqueness:true
-----------------
12.validates :email, format:/\w+@\w+\.{1}[a-zA-Z]{2,}/

FUNCTIONALITY

13.Explain what should happen model-wise if an event is deleted and guests have already cast votes. 
- If an event is deleted it will be destroyed, removing any dependencies that come with it. So, since we have a model named EventVote, 
	all records related to the destroyed event will be removed from the table event_vote. 
-----------------
14.Explain what should happen model-wise if an organization is deleted and events have been already created within the organization.
- If an organization is deleted it will be destroyed, removing any dependencies that come with it. So, since we have a model named EventOrganization, 
	all records related to the destroyed organization will be removed from the table event_organization.
-----------------
15.Explain what should happen model-wise if a user is deleted and the user has already created organizations, events and/or comments. 
- If a user is deleted it will be destroyed therefore removing all dependencies. Since our models Organization, Event and Comment have dependencies, 
	or in other words belongs_to association, every record corresponding to the user destroyed will be destroyed in those tables.
-----------------

* Postman link: https://www.getpostman.com/collections/7b8e6dfbfc2501664af7