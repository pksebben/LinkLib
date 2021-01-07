{
    "anchor": 121758936,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ff7f41de2091a8d3f5ff0a0722bdeda1ab87faa3?x=x&version=2",
            "client": "website",
            "content": "<p>I've ended up with this:</p>\n<div class=\"codehilite\"><pre><span></span><span class=\"kr\">function</span> <span class=\"nf\">coord_split</span><span class=\"p\">(</span><span class=\"n\">s</span><span class=\"p\">)</span>\n    <span class=\"kd\">local</span> <span class=\"n\">comma_index</span> <span class=\"o\">=</span> <span class=\"o\">-</span><span class=\"mi\">1</span>\n    <span class=\"kr\">for</span> <span class=\"n\">i</span><span class=\"o\">=</span><span class=\"mi\">1</span><span class=\"p\">,</span><span class=\"o\">#</span><span class=\"n\">s</span> <span class=\"kr\">do</span>\n        <span class=\"n\">c</span> <span class=\"o\">=</span> <span class=\"n\">sub</span><span class=\"p\">(</span><span class=\"n\">s</span><span class=\"p\">,</span> <span class=\"n\">i</span><span class=\"p\">,</span> <span class=\"n\">i</span><span class=\"p\">)</span>\n        <span class=\"kr\">if</span> <span class=\"n\">c</span> <span class=\"o\">==</span> <span class=\"s2\">&quot;,&quot;</span> <span class=\"kr\">then</span>\n            <span class=\"n\">comma_index</span> <span class=\"o\">=</span> <span class=\"n\">i</span>\n        <span class=\"kr\">end</span>\n    <span class=\"kr\">end</span>\n    <span class=\"n\">x</span> <span class=\"o\">=</span> <span class=\"n\">tonum</span><span class=\"p\">(</span><span class=\"n\">sub</span><span class=\"p\">(</span><span class=\"n\">s</span><span class=\"p\">,</span> <span class=\"mi\">1</span><span class=\"p\">,</span> <span class=\"n\">comma_index</span><span class=\"o\">-</span><span class=\"mi\">1</span><span class=\"p\">))</span>\n    <span class=\"n\">y</span> <span class=\"o\">=</span> <span class=\"n\">tonum</span><span class=\"p\">(</span><span class=\"n\">sub</span><span class=\"p\">(</span><span class=\"n\">s</span><span class=\"p\">,</span> <span class=\"n\">comma_index</span><span class=\"o\">+</span><span class=\"mi\">1</span><span class=\"p\">))</span>\n    <span class=\"kr\">return</span> <span class=\"p\">{</span><span class=\"n\">x</span><span class=\"o\">=</span><span class=\"n\">x</span><span class=\"p\">,</span> <span class=\"n\">y</span><span class=\"o\">=</span><span class=\"n\">y</span><span class=\"p\">}</span>\n<span class=\"kr\">end</span>\n</pre></div>\n\n\n<p>.. but it's a bit gross</p>",
            "content_type": "text/html",
            "display_recipient": "fantasy-consoles",
            "flags": [
                "read",
                "historical"
            ],
            "id": 121639631,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 111260,
            "sender_email": "jroutley@gmail.com",
            "sender_full_name": "James Routley (S1'17)",
            "sender_id": 101082,
            "sender_realm_str": "recurse",
            "stream_id": 105020,
            "subject": "Compound table key in pico-8 lua",
            "submessages": [],
            "timestamp": 1517082964,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/b178aec560cd9d3b78c361083c2cfd08ecaa2da7?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p><span class=\"user-mention\" data-user-email=\"jroutley@gmail.com\" data-user-id=\"101082\">@James Routley (S1'17)</span> I don't know if this is still relevant, but I'd probably choose to either<br>\n1. store the game items in a two-dimensional array<br>\n2. have each item track its own coordinates and eat the linear-time lookup of game item by coordinate<br>\n3. if either the width or height are fixed, store the coordinate in a single number, e.g. x=flr(n/8) &amp; y=n%8</p>",
            "content_type": "text/html",
            "display_recipient": "fantasy-consoles",
            "flags": [
                "read",
                "historical"
            ],
            "id": 121758936,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 111260,
            "sender_email": "bridgs.dev@gmail.com",
            "sender_full_name": "Ayla Myers (she) (W1'17)",
            "sender_id": 103061,
            "sender_realm_str": "recurse",
            "stream_id": 105020,
            "subject": "Compound table key in pico-8 lua",
            "submessages": [],
            "timestamp": 1517271880,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
