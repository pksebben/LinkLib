{
    "anchor": 214887969,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/5d6a7a4735c43e9dae0e3f9ef82919706728452a?x=x&version=3",
            "client": "website",
            "content": "<p>i have a <code>shell.nix</code> file. i want to have a npm package installed when i <code>nix-shell</code>, so that i can use the binary it provides on the command line. what is the easiest way to do this? <a href=\"https://github.com/svanderburg/node2nix\">node2nix</a> seems like maybe the way to go, but i can't find an example of using nix-shell, and the docs look somewhat complicated...</p>",
            "content_type": "text/html",
            "display_recipient": "nix",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214887177,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 103227,
            "sender_email": "me@wesleyac.com",
            "sender_full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
            "sender_id": 101330,
            "sender_realm_str": "recurse",
            "stream_id": 100724,
            "subject": "npm binaries and nix-shell",
            "submessages": [],
            "timestamp": 1603913804,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/5d6a7a4735c43e9dae0e3f9ef82919706728452a?x=x&version=3",
            "client": "website",
            "content": "<p>ah, <a href=\"https://github.com/uniphil/nix-for-devs#nodejs\">this</a> worked. a bit annoyed that i have to have a <code>package.json</code> and a <code>package-lock.json</code>, but so be it...</p>",
            "content_type": "text/html",
            "display_recipient": "nix",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214887969,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 103227,
            "sender_email": "me@wesleyac.com",
            "sender_full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
            "sender_id": 101330,
            "sender_realm_str": "recurse",
            "stream_id": 100724,
            "subject": "npm binaries and nix-shell",
            "submessages": [],
            "timestamp": 1603914283,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
