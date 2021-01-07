{
    "anchor": 213667593,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/81c6c8040fc0263607edd05c09dacf6b?d=identicon&version=1",
            "client": "website",
            "content": "<p>BTW, the other day I realized (and maybe this has been obvious to others, but it was a surprise to me) that you can write <code>branch</code> (and even more impractically, <code>?branch</code>) with return stack manipulation.  That of course reminded me of this thread again, because I should have realized it when I first read this thread.</p>\n<div class=\"codehilite\"><pre><span></span><code>: branch r&gt; @ &gt;r ;\n\n: ?branch\n  r@ @ over and \\ true case\n  r&gt; 1+ rot not and \\ false case\n  or &gt;r ;\n</code></pre></div>",
            "content_type": "text/html",
            "display_recipient": "forth",
            "flags": [
                "read",
                "historical"
            ],
            "id": 196183852,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 103267,
            "sender_email": "julian@cipht.net",
            "sender_full_name": "Julian Squires (he) (F2'17)",
            "sender_id": 101992,
            "sender_realm_str": "recurse",
            "stream_id": 100727,
            "subject": "return stack tricks",
            "submessages": [],
            "timestamp": 1588601060,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/5d6a7a4735c43e9dae0e3f9ef82919706728452a?x=x&version=3",
            "client": "website",
            "content": "<p>does anyone have good reads on design tradeoffs in stack-based VMs? i'm curious what \"typical\" bytecode ISAs look like, and what the tradeoffs are in their design and use. also happy to get recommendations for simple ISAs to read up on.</p>",
            "content_type": "text/html",
            "display_recipient": "forth",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213667593,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 103267,
            "sender_email": "me@wesleyac.com",
            "sender_full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
            "sender_id": 101330,
            "sender_realm_str": "recurse",
            "stream_id": 100727,
            "subject": "vm design",
            "submessages": [],
            "timestamp": 1602963675,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
