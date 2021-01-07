{
    "anchor": 214241017,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/81c6c8040fc0263607edd05c09dacf6b?d=identicon&version=1",
            "client": "ZulipElectron",
            "content": "<p>I always end up with some huge, twisted script to invoke qemu just right, and then have a recompile script that builds the kernel, and tells qemu to boot exactly that one (<code>-kernel</code>).</p>",
            "content_type": "text/html",
            "display_recipient": "linux kernel",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214199811,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 25277,
            "sender_email": "julian@cipht.net",
            "sender_full_name": "Julian Squires (he) (F2'17)",
            "sender_id": 101992,
            "sender_realm_str": "recurse",
            "stream_id": 21608,
            "subject": "Kernel dev setup",
            "submessages": [],
            "timestamp": 1603378954,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/7f89b22589ca6f3490f8a75591a699adc0e02fcc?x=x&version=1",
            "client": "website",
            "content": "<p>Thanks for the tips! I've got the grub prompt working now, but had to change a couple additional settings too:</p>\n<div class=\"codehilite\"><pre><span></span><code>GRUB_CMDLINE_LINUX=&quot;console=ttyS0&quot;\nGRUB_TERMINAL=&quot;console serial&quot;\n</code></pre></div>",
            "content_type": "text/html",
            "display_recipient": "linux kernel",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214241017,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f389",
                    "emoji_name": "tada",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "me@captnemo.in",
                        "full_name": "Nemo (he) (S1'20)",
                        "id": 301256
                    },
                    "user_id": 301256
                },
                {
                    "emoji_code": "1f389",
                    "emoji_name": "tada",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "danielmccrevan@gmail.com",
                        "full_name": "Daniel McCrevan (he) (F1'20)",
                        "id": 327388
                    },
                    "user_id": 327388
                }
            ],
            "recipient_id": 25277,
            "sender_email": "ark.email@gmail.com",
            "sender_full_name": "Adam Bratschi-Kaye (he) (SP1'17)",
            "sender_id": 100532,
            "sender_realm_str": "recurse",
            "stream_id": 21608,
            "subject": "Kernel dev setup",
            "submessages": [],
            "timestamp": 1603396909,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
