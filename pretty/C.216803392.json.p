{
    "anchor": 216803392,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/c6a4682e6a46285de64c97c77b771481?d=identicon&version=1",
            "client": "website",
            "content": "<blockquote>\n<p>What's more is that I have a for loop that never terminates, even though it's of the form for (int i = 0; i &lt; 10; i++). Trying to printf the value of i causes a segfault as well. printf in other parts of the program does not segfault.</p>\n</blockquote>\n<p>Printf uses the stdlib, so if you're not initializing the stdlib, you're going to get crashes. I'm surprised it works in other parts of the program. But if you <em>are</em> initializing the stdlib, what could be happening is that you're smashing the stack.</p>",
            "content_type": "text/html",
            "display_recipient": "C",
            "flags": [
                "read",
                "historical"
            ],
            "id": 216803390,
            "is_me_message": false,
            "last_edit_timestamp": 1605461220,
            "reactions": [],
            "recipient_id": 22639,
            "sender_email": "ori@eigenstate.org",
            "sender_full_name": "Ori Dean Bernstein (he) (W2'20)",
            "sender_id": 255045,
            "sender_realm_str": "recurse",
            "stream_id": 20283,
            "subject": "Inline asm clobbers registers?",
            "submessages": [],
            "timestamp": 1605461167,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/c6a4682e6a46285de64c97c77b771481?d=identicon&version=1",
            "client": "website",
            "content": "<p>happy to help out.</p>",
            "content_type": "text/html",
            "display_recipient": "C",
            "flags": [
                "read",
                "historical"
            ],
            "id": 216803392,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 22639,
            "sender_email": "ori@eigenstate.org",
            "sender_full_name": "Ori Dean Bernstein (he) (W2'20)",
            "sender_id": 255045,
            "sender_realm_str": "recurse",
            "stream_id": 20283,
            "subject": "Inline asm clobbers registers?",
            "submessages": [],
            "timestamp": 1605461174,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
