{
    "anchor": 28681688,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/d84e3106fff0d257cc5a95ca9ea44405?d=identicon&version=1",
            "client": "website",
            "content": "<p>in any case, the first step is to change the definition of unions so that the variants are a list of types, rather than a list of name/type pairs.</p>",
            "content_type": "text/html",
            "display_recipient": "ploy",
            "flags": [
                "read",
                "historical"
            ],
            "id": 25753597,
            "is_me_message": false,
            "last_edit_timestamp": 1407170445,
            "reactions": [],
            "recipient_id": 35468,
            "sender_email": "george.w.king@gmail.com",
            "sender_full_name": "George King (he) (S'13)",
            "sender_id": 2153,
            "sender_realm_str": "recurse",
            "stream_id": 26007,
            "subject": "type system",
            "submessages": [],
            "timestamp": 1407162624,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/d84e3106fff0d257cc5a95ca9ea44405?d=identicon&version=1",
            "client": "website",
            "content": "<p>My macro expander currently does 'pre-order expansion' in the sense that for a syntax tree with nested macro expansions, the outer macro is expanded first, and then the returned syntax is traversed for further (possibly immediate or deeper) expansion. I am under the impression that this is what lisps generally do, but I may be wrong (I did some research and asking around quite a while ago).</p>\n<p>Has anyone run into cases where you needed post-order expansion? Do you just call macroexpand inside of the macro? I have a situation where I want to modify the syntax argument post-expansion; my first thought was that macros could defined with a pre- or post-expand property, but now i wonder if exposing macroexpand would be sufficient.</p>",
            "content_type": "text/html",
            "display_recipient": "ploy",
            "flags": [
                "read",
                "historical"
            ],
            "id": 28681688,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 35468,
            "sender_email": "george.w.king@gmail.com",
            "sender_full_name": "George King (he) (S'13)",
            "sender_id": 2153,
            "sender_realm_str": "recurse",
            "stream_id": 26007,
            "subject": "macro expansion order",
            "submessages": [],
            "timestamp": 1412527899,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
