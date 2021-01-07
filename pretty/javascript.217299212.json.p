{
    "anchor": 217299212,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/d16cd71b27dfd2af0f84e16276c00b61314db772?x=x&version=3",
            "client": "ZulipElectron",
            "content": "<p>maybe I'm missing something, but I'm not sure what it would mean to have a leak in the stack? when you close out a stack frame the memory gets freed and if the frame is still open it hasn't. I guess what you're saying is you have a big glob of memory and you're not sure which stack frame it comes from?</p>",
            "content_type": "text/html",
            "display_recipient": "javascript",
            "flags": [
                "read",
                "historical"
            ],
            "id": 217205076,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 20068,
            "sender_email": "to@akiva.email",
            "sender_full_name": "Akiva Leffert (he) (W2'19)",
            "sender_id": 198444,
            "sender_realm_str": "recurse",
            "stream_id": 18941,
            "subject": "Non-heap memory leak in Node",
            "submessages": [],
            "timestamp": 1605738229,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/3bafaad9cd6dacf3464235dc6c8d496f1522a022?x=x&version=2",
            "client": "website",
            "content": "<p>If it helps to illustrate, one of the things we're suspecting is a leak in our (or our dependencies') usage of require. Require cache is not in the heap. Does that make it stack? I don't know. Third option?</p>",
            "content_type": "text/html",
            "display_recipient": "javascript",
            "flags": [
                "read",
                "historical"
            ],
            "id": 217299212,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 20068,
            "sender_email": "flipactual@gmail.com",
            "sender_full_name": "Flip Stewart (they) (m6'20)",
            "sender_id": 327422,
            "sender_realm_str": "recurse",
            "stream_id": 18941,
            "subject": "Non-heap memory leak in Node",
            "submessages": [],
            "timestamp": 1605805305,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
