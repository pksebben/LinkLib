{
    "anchor": 0,
    "found_anchor": false,
    "found_newest": true,
    "found_oldest": true,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/df89f9df47fb26a7205b16570a581166b81a0ea2?x=x&version=1",
            "client": "website",
            "content": "<p>I have a dataframe, df, and I want to get rid of any rows that have a column 'X' value of less than 10000.  They're not well formed.<br>\nBut this is odd:</p>\n<div class=\"codehilite\"><pre>In [48]: len(df)\nOut[48]: 1442312\n\nIn [49]: len(df[df[&#39;X&#39;] &lt; 10000])\nOut[49]: 3\n\nIn [50]: len(df[df[&#39;X&#39;] &gt;= 10000])\nOut[50]: 1440987\n</pre></div>\n\n\n<p>Maybe the rest are NaN?  Trying to figure out how to test for NaN...</p>",
            "content_type": "text/html",
            "display_recipient": "pandas",
            "flags": [
                "read",
                "historical"
            ],
            "id": 39044259,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 40963,
            "sender_email": "amber@cs.toronto.edu",
            "sender_full_name": "Amber Wilcox-O'Hearn (S1'14)",
            "sender_id": 5865,
            "sender_realm_str": "recurse",
            "stream_id": 27147,
            "subject": "wat?",
            "submessages": [],
            "timestamp": 1430763170,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/df89f9df47fb26a7205b16570a581166b81a0ea2?x=x&version=1",
            "client": "website",
            "content": "<p>Ah, ok. </p>\n<div class=\"codehilite\"><pre>In [55]: len(df.dropna(subset=[&#39;AidData Purpose Code&#39;]))\nOut[55]: 1440990\n</pre></div>\n\n\n<p>That's it.  Thanks, my rubber duckies.</p>",
            "content_type": "text/html",
            "display_recipient": "pandas",
            "flags": [
                "read",
                "historical"
            ],
            "id": 39044996,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 40963,
            "sender_email": "amber@cs.toronto.edu",
            "sender_full_name": "Amber Wilcox-O'Hearn (S1'14)",
            "sender_id": 5865,
            "sender_realm_str": "recurse",
            "stream_id": 27147,
            "subject": "wat?",
            "submessages": [],
            "timestamp": 1430763615,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/04ca5a14273f759166bbbfc15e3e400910e7a053?x=x&version=1",
            "client": "desktop app Mac 0.4.4",
            "content": "<p><img alt=\":thumbsup:\" class=\"emoji\" src=\"static/third/gemoji/images/emoji/thumbsup.png\" title=\":thumbsup:\"> <img alt=\":rubberduck:\" class=\"emoji\" src=\"https://external-content.zulipcdn.net/d6158e463fcc013bc5a6a327c1c72927c8675354/687474703a2f2f73722e70686f746f73332e666f746f7365617263682e636f6d2f627468756d622f4353502f4353503231332f6b323133353636372e6a7067\" title=\":rubberduck:\"> </p>",
            "content_type": "text/html",
            "display_recipient": "pandas",
            "flags": [
                "read",
                "historical"
            ],
            "id": 39045783,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 40963,
            "sender_email": "jdherg@gmail.com",
            "sender_full_name": "John Hergenroeder (he) (SP2'15)",
            "sender_id": 7851,
            "sender_realm_str": "recurse",
            "stream_id": 27147,
            "subject": "wat?",
            "submessages": [],
            "timestamp": 1430764651,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
