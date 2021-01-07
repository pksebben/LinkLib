{
    "anchor": 216305613,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/b4b9e2320f242abf40bf5391ee07269f?d=identicon&version=1",
            "client": "website",
            "content": "<p><span class=\"user-mention\" data-user-id=\"928\">@Sidney San Mart\u00edn (W'12)</span> I can put that together tonight. Thanks!</p>",
            "content_type": "text/html",
            "display_recipient": "swift",
            "flags": [
                "read",
                "historical"
            ],
            "id": 216245859,
            "is_me_message": false,
            "last_edit_timestamp": 1605029871,
            "reactions": [],
            "recipient_id": 34078,
            "sender_email": "dave@recurse.com",
            "sender_full_name": "David Albert (he)",
            "sender_id": 810,
            "sender_realm_str": "recurse",
            "stream_id": 25675,
            "subject": "nsoutlineview source list margins",
            "submessages": [],
            "timestamp": 1605029862,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/b4b9e2320f242abf40bf5391ee07269f?d=identicon&version=1",
            "client": "website",
            "content": "<p><span class=\"user-mention\" data-user-id=\"928\">@Sidney San Mart\u00edn (W'12)</span> here are two sample projects, both with no SwiftUI. The issue is reproducible with just AppKit:</p>\n<ul>\n<li><a href=\"https://github.com/davidbalbert/SourceListExampleFromNib\">Working, using a NIB</a></li>\n<li><a href=\"https://github.com/davidbalbert/ProgrammaticSourceListExample\">Problematic, programmatic</a></li>\n</ul>\n<p>All the data source and delegate code for the outline view is the same in both examples with the exception of <code>outlineView(_:,viewFor:,item:)</code>.</p>\n<p>One obvious difference: even though my goal is to create an outline view without a scroll view, there's no easy way to add an NSOutlineView to a NIB without an NSScrollView, so the first example has a scroll view. The padding that the Show/Hide button contains is just the right amount of space to fit the vertical scroller, so I thought perhaps it was the presence of the enclosing scroll view that caused the outline view to change the constraint. I tried embedding the outline view in a scroll view in the programmatic example (code not included) to see if the outline view would add the margin. It didn't seem to, but it's possible I didn't hook things up right.</p>",
            "content_type": "text/html",
            "display_recipient": "swift",
            "flags": [
                "read",
                "historical"
            ],
            "id": 216305613,
            "is_me_message": false,
            "last_edit_timestamp": 1605067455,
            "reactions": [],
            "recipient_id": 34078,
            "sender_email": "dave@recurse.com",
            "sender_full_name": "David Albert (he)",
            "sender_id": 810,
            "sender_realm_str": "recurse",
            "stream_id": 25675,
            "subject": "nsoutlineview source list margins",
            "submessages": [],
            "timestamp": 1605067298,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
