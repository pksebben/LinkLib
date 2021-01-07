{
    "anchor": 208842727,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/097edbae0d41f8a5149c6ada6fd5c4941e572159?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>Writing secrets to disk is something I'd recommend avoiding in general. It means you need to treat access to the filesystem, including backups, as another attack vector where secrets can be leaked and used to compromise accounts. Environment variables and unlinked memory-mapped files are better alternatives, and with Summon you can use either strategy.</p>",
            "content_type": "text/html",
            "display_recipient": "devops",
            "flags": [
                "read",
                "historical"
            ],
            "id": 208840579,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 32939,
            "sender_email": "rprior@protonmail.com",
            "sender_full_name": "Ryan Prior (he) (F1'19)",
            "sender_id": 234256,
            "sender_realm_str": "recurse",
            "stream_id": 25432,
            "subject": "Flask & credential files",
            "submessages": [],
            "timestamp": 1599059991,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/33de48db54cb67ad74fa1b8991b6e790a7941300?x=x&version=4",
            "client": "ZulipElectron",
            "content": "<p>yeah, i see your point if your backups only work at the granularity of filesystems and not some serialized database dump.</p>",
            "content_type": "text/html",
            "display_recipient": "devops",
            "flags": [
                "read",
                "historical"
            ],
            "id": 208842727,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 32939,
            "sender_email": "liu.brandon@gmail.com",
            "sender_full_name": "Brandon Liu (SP2'18)",
            "sender_id": 111910,
            "sender_realm_str": "recurse",
            "stream_id": 25432,
            "subject": "Flask & credential files",
            "submessages": [],
            "timestamp": 1599060699,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
