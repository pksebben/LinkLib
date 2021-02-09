# Recurse Link Library Devlog

# New Doc

	These are the notes for the streamlined version, that focuses on providing the links.
	
## TODO

	This is a roadmap to getting the site prod-ready.
	
 - Deploy to gcp instance
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

