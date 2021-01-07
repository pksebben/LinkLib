{
    "anchor": 217469796,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/f59b1bd52e790e176d04d3610ea3ada8?d=identicon&version=1",
            "client": "website",
            "content": "<p>This would be awesome!  An API to build apps like what Wesley made would be a lot of fun to play with!</p>\n<p>Dunno if there'd be a way to do this that isn't a massive security vulnerability, but it'd be neat if we had the ability to create \"game rooms\" (similar to the current audio room system) that we could attach a chunk of JavaScript to, and when someone enters the game room they'd have the option to download and run the JavaScript, which would then interact with the virtual RC API.  The script could alter the way the user's controls work (i.e. maybe now WASD don't move your avatar, but manipulate blocks within the room instead), and the API would allow for manipulation of blocks within the room regardless of avatar position, and maybe also defining/reading/writing variables stored invisibly on the virtualRC server (though using blocks &amp; text in a clever way to store data like Wesley did could be more fun).  And if latency is an issue for the game, maybe there could be an option to establish webRTC connections between all the users in a room.</p>\n<p>Also, maybe there could be an option to replace the area of tiles covered by a gameroom with a canvas element, and the canvas is filled according to a queue of limited instructions (i.e. filled rectangles and circles, text, maybe some shapes defined by moveTo/LineTo and some simple gradients?)?  The size of the instruction queue that populates the canvas could be limited (so you can't have a canvas so complicated that it'd be a performance drag for anyone within view of it in virtual RC), or you could have the canvas be invisible to anyone not in the game room.  This would allow for some cool interactive art applications, or games where you want visuals that aren't constrained to blocks &amp; text/emojis.</p>\n<p>Alternatively, maybe add a new \"game\" type of block, created by hitting T?  When you create the block, you could paste in a chunk of JavaScript (again, if this can be done securely somehow), and then interacting with the block afterwards will make a pop-up element appear that's populated by the pasted JavaScript (so the popup could be filled with text, or a more fancy HTML interface, or a canvas), and it can establish a webRTC connection between you and anyone else interacting with that game block.  Or maybe a simpler version of this could just be a link to an external page with a multiplayer game, with the option to add parameters to the url to streamline joining a game (i.e. a security token, your name, etc)?</p>\n<p>Also, liking the idea of having an infinite (or significantly larger) grid.  Maybe there could be teleporter blocks too, that could send you to specific coordinates.</p>",
            "content_type": "text/html",
            "display_recipient": "397 Bridge",
            "flags": [
                "read"
            ],
            "id": 217469534,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 20330,
            "sender_email": "adeshar00@gmail.com",
            "sender_full_name": "Andrew Desharnais (he) (W1'20)",
            "sender_id": 8863,
            "sender_realm_str": "recurse",
            "stream_id": 19042,
            "subject": "Should we build an API for Virtual RC?",
            "submessages": [],
            "timestamp": 1605913308,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/f59b1bd52e790e176d04d3610ea3ada8?d=identicon&version=1",
            "client": "website",
            "content": "<p>Oooh and what if there was a way to have asymetric visual information within game areas?  Like for making Battleship-esque games: blocks that show a ? to some users, but text or color to users allowed to see those blocks?</p>",
            "content_type": "text/html",
            "display_recipient": "397 Bridge",
            "flags": [
                "read"
            ],
            "id": 217469796,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 20330,
            "sender_email": "adeshar00@gmail.com",
            "sender_full_name": "Andrew Desharnais (he) (W1'20)",
            "sender_id": 8863,
            "sender_realm_str": "recurse",
            "stream_id": 19042,
            "subject": "Should we build an API for Virtual RC?",
            "submessages": [],
            "timestamp": 1605913466,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
