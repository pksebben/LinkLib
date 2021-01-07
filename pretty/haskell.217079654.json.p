{
    "anchor": 217079654,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/1a1cc60eecad744fd10abfc2700760d0b4397252?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>(I've elided some imports) Instead when I try this, or something similar invoking <code>SCons</code> / <code>SNil</code>, I get:</p>\n<div class=\"codehilite\"><pre><span></span><code>*Main&gt; :t STrue\nSTrue :: SBool &#39;True\n*Main&gt; :t SNil\n\n&lt;interactive&gt;:1:1: error: Data constructor not in scope: SNil\n*Main&gt; :t SCons\n\n&lt;interactive&gt;:1:1: error: Data constructor not in scope: SCons\n</code></pre></div>",
            "content_type": "text/html",
            "display_recipient": "haskell",
            "flags": [
                "read",
                "historical"
            ],
            "id": 217079485,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 22667,
            "sender_email": "fivehmay@gmail.com",
            "sender_full_name": "Jaime Luis Piedra (he) (W1'20)",
            "sender_id": 361613,
            "sender_realm_str": "recurse",
            "stream_id": 20298,
            "subject": "singletons tutorial",
            "submessages": [],
            "timestamp": 1605657245,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/1a1cc60eecad744fd10abfc2700760d0b4397252?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>Oh. I forgot to import <code>Data.Singletons.Prelude.List</code>, once I do that everything works fine. (<code>SCons</code> / <code>SNil</code> / etc. must have been re-factored out into a separate module since this tutorial was written.) Thanks anyhow!</p>",
            "content_type": "text/html",
            "display_recipient": "haskell",
            "flags": [
                "read",
                "historical"
            ],
            "id": 217079654,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 22667,
            "sender_email": "fivehmay@gmail.com",
            "sender_full_name": "Jaime Luis Piedra (he) (W1'20)",
            "sender_id": 361613,
            "sender_realm_str": "recurse",
            "stream_id": 20298,
            "subject": "singletons tutorial",
            "submessages": [],
            "timestamp": 1605657386,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
