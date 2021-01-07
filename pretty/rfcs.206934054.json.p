{
    "anchor": 206934054,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/620d0eb7fcb87b272b387cf33e4ed314?d=identicon&version=1",
            "client": "ZulipElectron",
            "content": "<p><span class=\"user-mention\" data-user-id=\"315317\">@Andrew Louis (he) (S2'20)</span> found the answer to your Q (What happens when the multipart boundary is inside the content stream?)</p>\n<blockquote>\n<p>Since the hyphen character (\"-\") is represented as itself in the Quoted-Printable encoding, care must be taken, when encapsulating a quoted-printable encoded body in a multipart entity, to ensure that the encapsulation boundary does not appear anywhere in the encoded body.  (A good strategy is to choose a boundary that includes a character sequence such as \"=_\" which can never appear in a quoted- printable body.</p>\n</blockquote>\n<ul>\n<li><a href=\"https://tools.ietf.org/html/rfc1521\">RFC 1521</a></li>\n</ul>",
            "content_type": "text/html",
            "display_recipient": "rfcs",
            "flags": [
                "read",
                "historical"
            ],
            "id": 206490149,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 518985,
            "sender_email": "me@captnemo.in",
            "sender_full_name": "Nemo (he) (S1'20)",
            "sender_id": 301256,
            "sender_realm_str": "recurse",
            "stream_id": 250350,
            "subject": "multipart-boundary-inside-body",
            "submessages": [],
            "timestamp": 1597081355,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/620d0eb7fcb87b272b387cf33e4ed314?d=identicon&version=1",
            "client": "ZulipElectron",
            "content": "<p>I think <span class=\"user-mention\" data-user-id=\"5875\">@Max Veytsman (he) (S1'20)</span> asked this on the last presentation I gave: What happens when you send a multipart response to a browser, and can you use it alongside <code>cid/mid</code> URL schemes?</p>\n<p>I tried it out, and the answer is a solid no. A few internet sources claim that Firefox supports limited <code>multipart</code>, picking and rendering the first block with <code>text/html</code>, but I couldn't get it to work. All possible options resulted in a download-prompt.</p>\n<p>The <code>CID/MID</code> URL schemes do not seem to have an implementation in any browser, and sadly the RFC itself is too email focused for this to ever get implemented.</p>\n<p>The one interesting <code>multipart</code> variant that does seem to work on some browsers was <code>multipart/x-mixed-replace</code>, which was an oldschool technique to stream updates (kinda like server-sent-events), by continously updating the content over a stream. Each boundary creates a new updated version. The technique is fairly old, and <a href=\"https://blog.dubbelboer.com/2012/01/08/x-mixed-replace.html\">well documented (2012)</a>, but you should juse use SSE today.</p>",
            "content_type": "text/html",
            "display_recipient": "rfcs",
            "flags": [
                "read",
                "historical"
            ],
            "id": 206934054,
            "is_me_message": false,
            "last_edit_timestamp": 1597414937,
            "reactions": [],
            "recipient_id": 518985,
            "sender_email": "me@captnemo.in",
            "sender_full_name": "Nemo (he) (S1'20)",
            "sender_id": 301256,
            "sender_realm_str": "recurse",
            "stream_id": 250350,
            "subject": "multipart-browser-response",
            "submessages": [],
            "timestamp": 1597414857,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
