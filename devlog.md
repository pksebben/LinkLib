# Recurse Link Library Devlog

# New Doc

	These are the notes for the streamlined version, that focuses on providing the links.
	
## TODO

	This is a roadmap to getting the site prod-ready.  TLTODOs (Top-Level...) are the one to three major groupings of tasks that need to be dealt with.
	
### TLTODOs

	No more than three of these.  Break em down if necessary.

#### [ ] Prepare deployment tools
	 - get the virtual environment running using ansible scripts, then...
		 [X] - Get hello, world working on an nginx proxy
		 [X] - Get the site installed, and serve that instead.
		 [ ] - Migrate the DB
	 - test those scripts by pointing them at other servers.

#### [ ] Finish the site
	 - Lay out foundations for the pages that don't exist yet
	 - style them
	 - unit test all of it
	 
### Other TODOs

	These are things that need to happen, represented as a grabbag of 'stuff' - just to make it easy to put stuff in here	
	
 - If not logged in, should display a login screen
 - Deploy to gcp instance
   - Set up deployment script
 - Oauth
 - Styling
 - Run the scraper again (right before deployment)


## Features

	Do these after the site looks okay and is deployed and minimally functional

 - Autocomplete in the stream search
 - Comprehensive db searching / advanced search
 - Bot that scrapes for new links (perhaps this could just be a cron api call.  A bot would be better, though.)
 - User pages (visited links / posted comments / etc)
 - Page visting mechanics /  history manip
 - favoriting links
 - replace link urls with title tag from head requests ****

# Old Doc 

	Everything here was for the feature-bloated monstrosity that v1 was becoming, before I ran out of time and had to hit eject.

# Incomplete Features List, or, TODOs

- close / clear comment boxes on submit
- hide response on owned comments
- no more downvotes
- appropriate bubbling of upvoted content
- comment editing
- CSS fix to put things back at the top.
- Inifinite loading
- notifications / messages

# Ideas

these are things that may or may not end up seeing the light of day as an implementation.

## Advanced Search

### Advanced Search implementation

This is less a 'should' and more a 'must'.  

### Saveable filters

The idea here, is to give users a robust mechanism for filtering data.  The hope is that by providing this common filtering patterns (to exclude certain search patterns) can be established by consensus, improving the overall health of the database.

# Resources

## Tutorials

 - Oauth / login: https://realpython.com/flask-google-login/


# Grey Goo of Persistence.

What are the elements of persistent, good knowledge?

 - there's some amount of curation involved
 - there are descriptions to help people navigate
   - What if there were some way to let folks link together posts? How could this be made easy? (there needs to be some mechanism to find links within the comment page of a link and then bind them together)
   
   
# Binding links together

view history might be useful (perhaps a timer function on the client to make sure it's not a click and bail)

I'm making this way too complicated.

# Workflow for posting new content

I think that like HN this site should be focused on linking out to other stuff.  The tweak to that model is that this should funnel itself into a situation where the content looks a little like a guide or awesome list.  Tags are going to be an important mode.  The self moderation of content will be key.

## What needs to happen for this

- adding tags / creating new tags to add / merging and updating tags

perhaps we shoud have different 'types' of replies.  The default would be the most straightforward - add a comment as a conversation starter.  The other types might look like:

'describe': this will nominate the comment as a description of the content it's referencing.  If unopposed, this will pin it to the top, and also bump the content up the stack (as well as making it show up in the "has description" filter).  Description type comments also come with a 'suggest edits' feature - so others can collaborate on making the description clear and useful.

# Capitan's lawg

## Monday, March 22, 2021

Just getting back to working on the site after a hiatus.  The 'one thing at a time' to get down to right now is __getting the site to install, and testing it in a vagrant box__.

__GETTING THE SITE TO INSTALL, AND TESTING IT IN A VAGRANT BOX__.

Reading through [flask's docs on their 'default' deployment methods](https://flask.palletsprojects.com/en/1.1.x/deploying/)

also of interest, are the folks who have used ansible to automate flask deployments before.  They offer their stuff as like, "just use it", but it's ansible scripts, so the scripts themselves may make for good reading:
https://github.com/hypebeast/ansible-flask-stack
https://github.com/brennv/flask-ansible-example

SCRUM - John recommends it.  Emacs [has a package](https://melpa.org/#/org-scrum)

Tasks

Install site
	- hypebeast's ansible roles may be the way to do this, although they make me a little security nervous.  Perhaps annotating and pilfering would be more secure.  
	
	- notably, I could compare what I have currently to how they do things like configuring the reverse proxy and installing python deps.

### Friday, March 26, 2021

### Monday, April 12, 2021

Lost again.  I'm just going to follow this with some format of TODO for the next steps.  I know I had to migrate the DB.  Leave the TODO list at the end (as a NEXT)

My workflow is tough to get back into. What I would really love is some sort of init script, that transparently prints each step it's going through just so I have some kind of reminder re: what the hell I'm working on.



NEXT
---------------
TODO NEXT: migrate the db
