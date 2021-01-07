{
    "anchor": 213457066,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/81c6c8040fc0263607edd05c09dacf6b?d=identicon&version=1",
            "client": "ZulipElectron",
            "content": "<p>Related to xv6, <a href=\"http://privat.hgesser.com/ulix/\">Ulix</a> is an OS written as a literate program; this can be useful for another thing to read.</p>\n<p>WRT what Wesley mentioned about booting, I have to concur; I think a _lot_ of people end up only learning the arcana of the x86 boot process and usually abandoning their toy OS long before they get to the really interesting stuff: scheduling, memory management, device drivers, and IO.  On the other hand, it's historically interesting to know about stuff like the A20 gate, and early x86 memory models.  But you probably want to get to the more interesting stuff, like setting up page tables and interrupt vectors, quickly.</p>\n<p>Unless you have a particular attachment to x86, might be worth considering other architectures, which are often simpler and less crufty.  Anything you can run with qemu or a similar emulator is probably fair game.  Oh yeah, and you almost certainly want to use an emulator most of the time, since the iteration time of repeatedly booting a real machine is usually much more painful.  (And you can cheat and look at how qemu implements the other side of a hardware device; very useful for implementing your ethernet driver, for example.)</p>\n<p>OSes can kind of sprawl forever so you might want to make some explicit simplifying choices/boundaries on what you want to implement, like, \"I want to focus on scheduling and the process model and not worry about the file system\" (or the reverse).  Some things like FS implementations and even drivers can probably be swiped from other hobbyist OSes if some of their choices are close enough to your own.</p>",
            "content_type": "text/html",
            "display_recipient": "os",
            "flags": [
                "read",
                "historical"
            ],
            "id": 212694149,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "14181",
                    "emoji_name": "thank-you-word",
                    "reaction_type": "realm_emoji",
                    "user": {
                        "email": "c@chirag.io",
                        "full_name": "Chirag Dav\u00e9 (he) (F1'19)",
                        "id": 234049
                    },
                    "user_id": 234049
                },
                {
                    "emoji_code": "14181",
                    "emoji_name": "thank-you-word",
                    "reaction_type": "realm_emoji",
                    "user": {
                        "email": "ori@eigenstate.org",
                        "full_name": "Ori Dean Bernstein (he) (W2'20)",
                        "id": 255045
                    },
                    "user_id": 255045
                },
                {
                    "emoji_code": "14181",
                    "emoji_name": "thank-you-word",
                    "reaction_type": "realm_emoji",
                    "user": {
                        "email": "bradyf@hey.com",
                        "full_name": "Brady Fontenot (he) (F2'20)",
                        "id": 342266
                    },
                    "user_id": 342266
                },
                {
                    "emoji_code": "14181",
                    "emoji_name": "thank-you-word",
                    "reaction_type": "realm_emoji",
                    "user": {
                        "email": "finartcialist@gmail.com",
                        "full_name": "Edith Viau (she) (F2'20)",
                        "id": 341049
                    },
                    "user_id": 341049
                }
            ],
            "recipient_id": 37095,
            "sender_email": "julian@cipht.net",
            "sender_full_name": "Julian Squires (he) (F2'17)",
            "sender_id": 101992,
            "sender_realm_str": "recurse",
            "stream_id": 26244,
            "subject": "resource to build a small OS ?",
            "submessages": [],
            "timestamp": 1602165904,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/1588fc084a150438206141abca2a434daa4c8fa5?x=x&version=2",
            "client": "website",
            "content": "<p>Victory!!! I got the first step of the <a href=\"https://www.cl.cam.ac.uk/projects/raspberrypi/tutorials/os/ok01.html\">cambridge tutorial</a> running on my RPi <span aria-label=\"tada\" class=\"emoji emoji-1f389\" role=\"img\" title=\"tada\">:tada:</span>  (I was not sure that I had the right model for that tutorial ? And apparently I do!) </p>\n<p>My plan is to work on that tutorial first, and see how things are afterwards - I am sure many of the resources that were shared in this thread will be helpful. I might write notes as I go and compile them at some point - will post here or in checkins when I do so.</p>\n<p>Thanks again!</p>",
            "content_type": "text/html",
            "display_recipient": "os",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213457066,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f389",
                    "emoji_name": "tada",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "gs051095@gmail.com",
                        "full_name": "Gargi Sharma (she/they) (SP1'19)",
                        "id": 203533
                    },
                    "user_id": 203533
                },
                {
                    "emoji_code": "1f389",
                    "emoji_name": "tada",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "julian@cipht.net",
                        "full_name": "Julian Squires (he) (F2'17)",
                        "id": 101992
                    },
                    "user_id": 101992
                }
            ],
            "recipient_id": 37095,
            "sender_email": "finartcialist@gmail.com",
            "sender_full_name": "Edith Viau (she) (F2'20)",
            "sender_id": 341049,
            "sender_realm_str": "recurse",
            "stream_id": 26244,
            "subject": "resource to build a small OS ?",
            "submessages": [],
            "timestamp": 1602781787,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
