{
    "anchor": 215485748,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/82f4e863024eead677cc6212bd0c9499cd32cffc?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>I'm also confused about what you want, should this element always be visible? It seems like you have elements in the bottom right corner currently, is what you're describing different?</p>\n<p>What you may be looking for is an absolute positioned element inside a relative positioned element. If you don't give the relative positioned element any extra instructions it shouldn't change how it appears, but the absolute positioned element will be positioned within the relative positioned element, so top: 0 will be at the top of the relative positioned element, not the top of the screen.</p>",
            "content_type": "text/html",
            "display_recipient": "css",
            "flags": [
                "read",
                "historical"
            ],
            "id": 215467514,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "15928",
                    "emoji_name": "this",
                    "reaction_type": "realm_emoji",
                    "user": {
                        "email": "allie.jones@gmail.com",
                        "full_name": "Allie Jones (she/they) (W'13)",
                        "id": 821
                    },
                    "user_id": 821
                },
                {
                    "emoji_code": "2795",
                    "emoji_name": "plus",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "jimmy@skelios.com",
                        "full_name": "James Byess (he) (F1'19)",
                        "id": 234072
                    },
                    "user_id": 234072
                }
            ],
            "recipient_id": 40169,
            "sender_email": "pjpweaver@gmail.com",
            "sender_full_name": "Patrick Weaver (he) (F1'20)",
            "sender_id": 327664,
            "sender_realm_str": "recurse",
            "stream_id": 26965,
            "subject": "positioning an element at the bottom corner of the page",
            "submessages": [],
            "timestamp": 1604417046,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/5d6a7a4735c43e9dae0e3f9ef82919706728452a?x=x&version=3",
            "client": "website",
            "content": "<p>i added those elements after writing this, but they're not the only thing i want. the other thin i want is to have a element that is hidden normally, but will show when the use clicks something, which will expand upwards when it is shown (keeping the page the same height). the thing that I have does not allow me to do this.</p>\n<p>i'll try and absolute inside a relative and see how that works :)</p>",
            "content_type": "text/html",
            "display_recipient": "css",
            "flags": [
                "read",
                "historical"
            ],
            "id": 215485748,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 40169,
            "sender_email": "me@wesleyac.com",
            "sender_full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
            "sender_id": 101330,
            "sender_realm_str": "recurse",
            "stream_id": 26965,
            "subject": "positioning an element at the bottom corner of the page",
            "submessages": [],
            "timestamp": 1604424716,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
