{
    "anchor": 203048303,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/620d0eb7fcb87b272b387cf33e4ed314?d=identicon&version=1",
            "client": "ZulipElectron",
            "content": "<p>I'm not very happy with this, since this results in a stupid edge case where the let keyword is parsed before the let statement is opened, and I have to deal with it.</p>\n<p>If I get time, I'd like to improve on the following:</p>\n<ul>\n<li>[ ] Create a proper <code>Any</code> class, and use that. I attempted this a bit, but didn't get too far</li>\n<li>[ ] Remove the MatchDict implementation, it isn't nice, replace it with Any</li>\n<li>[ ] Implement ZeroOrMany and ZeroOrOne as classes, and define their behaviour within the Compile method</li>\n<li>[ ] Write a BNF to the pythonic-flavored-grammar (what I've described above) convertor.</li>\n<li>[ ] Better exceptions and forceful errors, instead of failing quietely. If the parser expects an atom, and doesn't find it - it should error out</li>\n</ul>\n<p>I could have made this a lot easier by allowing \"rewind\" and dealing with the entire list of tokens as a list (so I could do tokens[current-1] for eg), but I was trying to avoid that so I could focus on writing a _real parser_. Still not sure if that was a good idea.</p>",
            "content_type": "text/html",
            "display_recipient": "nand2tetris",
            "flags": [
                "read",
                "historical"
            ],
            "id": 203048082,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 22688,
            "sender_email": "me@captnemo.in",
            "sender_full_name": "Nemo (he) (S1'20)",
            "sender_id": 301256,
            "sender_realm_str": "recurse",
            "stream_id": 20312,
            "subject": "progress-checkins",
            "submessages": [],
            "timestamp": 1594074462,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/620d0eb7fcb87b272b387cf33e4ed314?d=identicon&version=1",
            "client": "ZulipElectron",
            "content": "<p>The <a href=\"https://github.com/captn3m0/nand2tetris/blob/master/compiler/engine.py\">parser code is here</a>, and <a href=\"https://github.com/captn3m0/nand2tetris/blob/master/compiler/grammar.py\">here is the grammar file</a>.</p>",
            "content_type": "text/html",
            "display_recipient": "nand2tetris",
            "flags": [
                "read",
                "historical"
            ],
            "id": 203048303,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 22688,
            "sender_email": "me@captnemo.in",
            "sender_full_name": "Nemo (he) (S1'20)",
            "sender_id": 301256,
            "sender_realm_str": "recurse",
            "stream_id": 20312,
            "subject": "progress-checkins",
            "submessages": [],
            "timestamp": 1594074605,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
