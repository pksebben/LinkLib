{
    "anchor": 214192990,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ce34e0268627e8c6c415781546608fa2f7a98de5?x=x&version=4",
            "client": "website",
            "content": "<p><span class=\"user-mention\" data-user-id=\"327414\">@Dan Miller (he) (F1'20)</span> How are you generating the stack traces? Gdb does a pretty good job of it. On most machines I have seen 'stack' is implemented as a script which calls gdb to dump a stack trace. If you want something inside of your code you can call gdb or pstack from your crash-handler, in a separate process. This is a handy solution which I have used at work. At work we use Google's breakpad library, but it doesn't work in 100% of cases.</p>",
            "content_type": "text/html",
            "display_recipient": "C++",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214192429,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 30232,
            "sender_email": "debamitro@gmail.com",
            "sender_full_name": "Debamitro Chakraborti (he) (m6'20)",
            "sender_id": 125284,
            "sender_realm_str": "recurse",
            "stream_id": 24319,
            "subject": "error tracking",
            "submessages": [],
            "timestamp": 1603375846,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/4ca492e9d3c12616bdd949e4acdd86eee90766a6?x=x&version=4",
            "client": "ZulipElectron",
            "content": "<p>Good question ... the C++ processes that we run are actually headless Firefox. It looks like I should do some research in to how these processes are currently printing stack traces to the logs, then from there I can figure out which tools are best suited for reading it.</p>",
            "content_type": "text/html",
            "display_recipient": "C++",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214192990,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 30232,
            "sender_email": "dan@dmiller.dev",
            "sender_full_name": "Dan Miller (he) (F1'20)",
            "sender_id": 327414,
            "sender_realm_str": "recurse",
            "stream_id": 24319,
            "subject": "error tracking",
            "submessages": [],
            "timestamp": 1603376085,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
