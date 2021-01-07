{
    "anchor": 210804859,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/0aac726e8ce27b55809824e7f6de77e7?d=identicon&version=1",
            "client": "website",
            "content": "<p><code>var p = &amp;Person{...}</code> is equivalent to <code>const tmp = Person{...}; var p = &amp;tmp;</code>. Since tmp is const, the pointer must also be const. You can just do <code>var p = Person{...}</code> and later <code>handleField(fieldNum, &amp;p, field)</code>.</p>\n<p>Also, in the function above you are creating each <code>Person</code> on the stack and then storing pointers to that stack location, which will disappear as soon as the function exits. Heap allocation is not automatic in languages like zig and c, you have to explicitly ask for it. You probably want something more like:</p>\n<div class=\"codehilite\"><pre><span></span><code><span class=\"c1\">// allocate some space on the heap</span>\n<span class=\"n\">p</span><span class=\"p\">.</span><span class=\"n\">mother</span><span class=\"w\"> </span><span class=\"o\">=</span><span class=\"w\"> </span><span class=\"n\">a</span><span class=\"p\">.</span><span class=\"n\">create</span><span class=\"p\">(</span><span class=\"n\">Person</span><span class=\"p\">)</span><span class=\"w\"> </span><span class=\"k\">catch</span><span class=\"w\"> </span><span class=\"nb\">@panic</span><span class=\"p\">(</span><span class=\"s\">&quot;Out of memory&quot;</span><span class=\"p\">);</span><span class=\"w\"></span>\n<span class=\"c1\">// write to the newly allocated space</span>\n<span class=\"n\">p</span><span class=\"p\">.</span><span class=\"n\">mother</span><span class=\"p\">.</span><span class=\"o\">*</span><span class=\"w\"> </span><span class=\"o\">=</span><span class=\"w\"> </span><span class=\"n\">Person</span><span class=\"p\">{...};</span><span class=\"w\"></span>\n</code></pre></div>",
            "content_type": "text/html",
            "display_recipient": "zig",
            "flags": [
                "read",
                "historical"
            ],
            "id": 210630145,
            "is_me_message": false,
            "last_edit_timestamp": 1600544346,
            "reactions": [],
            "recipient_id": 111261,
            "sender_email": "jamie@scattered-thoughts.net",
            "sender_full_name": "Jamie Brandon (he) (W1'20)",
            "sender_id": 863,
            "sender_realm_str": "recurse",
            "stream_id": 105021,
            "subject": "How to un-const something?",
            "submessages": [],
            "timestamp": 1600542241,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/4ca492e9d3c12616bdd949e4acdd86eee90766a6?x=x&version=4",
            "client": "ZulipElectron",
            "content": "<p>This totally worked, thank you for the explanation!</p>",
            "content_type": "text/html",
            "display_recipient": "zig",
            "flags": [
                "read",
                "historical"
            ],
            "id": 210804859,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 111261,
            "sender_email": "dan@dmiller.dev",
            "sender_full_name": "Dan Miller (he) (F1'20)",
            "sender_id": 327414,
            "sender_realm_str": "recurse",
            "stream_id": 105021,
            "subject": "How to un-const something?",
            "submessages": [],
            "timestamp": 1600725018,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
