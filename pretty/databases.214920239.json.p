{
    "anchor": 214920239,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/e3320e126276138a2347efd87ca2a61bd1ab4016?x=x&version=2",
            "client": "website",
            "content": "<p>That seems nice and simple. Does the system need to support editing messages (and does the edit history need to be viewable)? Does it need to support visibility toggling (e.g. draft vs published)?</p>",
            "content_type": "text/html",
            "display_recipient": "databases",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214837820,
            "is_me_message": false,
            "last_edit_timestamp": 1603892851,
            "reactions": [],
            "recipient_id": 41342,
            "sender_email": "dwinston@alum.mit.edu",
            "sender_full_name": "Donny Winston (he) (W1'19)",
            "sender_id": 246979,
            "sender_realm_str": "recurse",
            "stream_id": 27213,
            "subject": "schema for messaging among users",
            "submessages": [],
            "timestamp": 1603892824,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/6485c74622306264ff53449c6f0ca540?d=identicon&version=1",
            "client": "website",
            "content": "<p>For one-to-one messaging only, that'll work nicely! You could also do a table of <code>messageID, timestamp, text</code> and another table of user_messages  like <code>messageID, userID</code> where role is sender or recipient. It's kind of cute because you don't need to do one search for recipient and another for sender, but it's less cute when you want to find messages between A and B and you need to find all messages such that both (messageID, A) and (messageID, B) exists. Kind of nice for \"most recent messages that involved you\", though.</p>\n<p>You could also say that messages belong to groups: groups have participants and groups have messages. The one-to-one messaging case turns into a group with two participants. This is probably the one I'd go for, mostly because it has a bunch of nice symmetries and I think most of the likely queries turn out pretty nicely.</p>",
            "content_type": "text/html",
            "display_recipient": "databases",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214920239,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 41342,
            "sender_email": "iain@mccoy.id.au",
            "sender_full_name": "Iain McCoy (he) (SP2'17)",
            "sender_id": 100806,
            "sender_realm_str": "recurse",
            "stream_id": 27213,
            "subject": "schema for messaging among users",
            "submessages": [],
            "timestamp": 1603938780,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
