{
    "anchor": 217407962,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/c52592d0bef9f45c5f179c6c215ace4e6c061b64?x=x&version=3",
            "client": "website",
            "content": "<p><span class=\"user-mention\" data-user-id=\"360768\">@Kelly Foulk (she) (W1'20)</span> <span class=\"user-mention\" data-user-id=\"315058\">@Justin Holzmann (he) (S2'20)</span> Here's my solution for <a href=\"https://leetcode.com/problems/minimum-cost-for-tickets\">Minimum Cost for Tickets</a>. This is O(365), and I agree with Justin's idea that we should be able to get in done in O(days) instead, but I was having too much trouble with that so I did it the long way. The padding on the left of the dp array is just so I can be lazy with indices when taking the min later.</p>\n<div class=\"spoiler-block\"><div class=\"spoiler-header\">\n</div><div class=\"spoiler-content\" aria-hidden=\"true\">\n<div class=\"codehilite\" data-code-language=\"Python\"><pre><span></span><code><span class=\"k\">class</span> <span class=\"nc\">Solution</span><span class=\"p\">:</span>\n    <span class=\"k\">def</span> <span class=\"nf\">mincostTickets</span><span class=\"p\">(</span><span class=\"bp\">self</span><span class=\"p\">,</span> <span class=\"n\">days</span><span class=\"p\">:</span> <span class=\"n\">List</span><span class=\"p\">[</span><span class=\"nb\">int</span><span class=\"p\">],</span> <span class=\"n\">costs</span><span class=\"p\">:</span> <span class=\"n\">List</span><span class=\"p\">[</span><span class=\"nb\">int</span><span class=\"p\">])</span> <span class=\"o\">-&gt;</span> <span class=\"nb\">int</span><span class=\"p\">:</span>\n        <span class=\"k\">if</span> <span class=\"ow\">not</span> <span class=\"n\">days</span><span class=\"p\">:</span>\n            <span class=\"k\">return</span> <span class=\"mi\">0</span>\n\n        <span class=\"n\">dp</span> <span class=\"o\">=</span> <span class=\"p\">[</span><span class=\"mi\">0</span><span class=\"p\">]</span><span class=\"o\">*</span><span class=\"mi\">30</span>\n        <span class=\"n\">idx</span> <span class=\"o\">=</span> <span class=\"mi\">0</span>\n        <span class=\"n\">day</span> <span class=\"o\">=</span> <span class=\"n\">days</span><span class=\"p\">[</span><span class=\"n\">idx</span><span class=\"p\">]</span>\n        <span class=\"n\">n</span> <span class=\"o\">=</span> <span class=\"nb\">len</span><span class=\"p\">(</span><span class=\"n\">days</span><span class=\"p\">)</span>\n\n        <span class=\"k\">for</span> <span class=\"n\">d</span> <span class=\"ow\">in</span> <span class=\"nb\">range</span><span class=\"p\">(</span><span class=\"mi\">366</span><span class=\"p\">):</span>\n            <span class=\"k\">if</span> <span class=\"n\">d</span> <span class=\"o\">!=</span> <span class=\"n\">day</span><span class=\"p\">:</span>\n                <span class=\"n\">dp</span><span class=\"o\">.</span><span class=\"n\">append</span><span class=\"p\">(</span><span class=\"n\">dp</span><span class=\"p\">[</span><span class=\"o\">-</span><span class=\"mi\">1</span><span class=\"p\">])</span>\n            <span class=\"k\">else</span><span class=\"p\">:</span>\n                <span class=\"n\">travcost</span> <span class=\"o\">=</span> <span class=\"nb\">min</span><span class=\"p\">(</span><span class=\"n\">costs</span><span class=\"p\">[</span><span class=\"mi\">0</span><span class=\"p\">]</span><span class=\"o\">+</span><span class=\"n\">dp</span><span class=\"p\">[</span><span class=\"o\">-</span><span class=\"mi\">1</span><span class=\"p\">],</span> <span class=\"n\">costs</span><span class=\"p\">[</span><span class=\"mi\">1</span><span class=\"p\">]</span><span class=\"o\">+</span><span class=\"n\">dp</span><span class=\"p\">[</span><span class=\"o\">-</span><span class=\"mi\">7</span><span class=\"p\">],</span> <span class=\"n\">costs</span><span class=\"p\">[</span><span class=\"mi\">2</span><span class=\"p\">]</span><span class=\"o\">+</span><span class=\"n\">dp</span><span class=\"p\">[</span><span class=\"o\">-</span><span class=\"mi\">30</span><span class=\"p\">])</span>\n                <span class=\"n\">dp</span><span class=\"o\">.</span><span class=\"n\">append</span><span class=\"p\">(</span><span class=\"n\">travcost</span><span class=\"p\">)</span>\n                <span class=\"n\">idx</span> <span class=\"o\">+=</span> <span class=\"mi\">1</span>\n                <span class=\"k\">if</span> <span class=\"n\">idx</span> <span class=\"o\">==</span> <span class=\"n\">n</span><span class=\"p\">:</span>\n                    <span class=\"k\">break</span>\n                <span class=\"n\">day</span> <span class=\"o\">=</span> <span class=\"n\">days</span><span class=\"p\">[</span><span class=\"n\">idx</span><span class=\"p\">]</span>\n            <span class=\"c1\">#print(dp[30:])</span>\n\n        <span class=\"k\">return</span> <span class=\"n\">dp</span><span class=\"p\">[</span><span class=\"o\">-</span><span class=\"mi\">1</span><span class=\"p\">]</span>\n</code></pre></div>\n</div></div>",
            "content_type": "text/html",
            "display_recipient": "Daily LeetCode",
            "flags": [
                "read",
                "historical"
            ],
            "id": 217320768,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 543319,
            "sender_email": "bud.coulson@gmail.com",
            "sender_full_name": "Bud B Coulson (he) (F2'20)",
            "sender_id": 341026,
            "sender_realm_str": "recurse",
            "stream_id": 256561,
            "subject": "Solutions",
            "submessages": [],
            "timestamp": 1605815143,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/c52592d0bef9f45c5f179c6c215ace4e6c061b64?x=x&version=3",
            "client": "website",
            "content": "<p>I won't be around for LeetCode today due to the overlap with the Art and Music show. If anyone is planning on attending the LeetCode session, let me know and I can provide the Zoom account info.</p>",
            "content_type": "text/html",
            "display_recipient": "Daily LeetCode",
            "flags": [
                "read",
                "historical"
            ],
            "id": 217407962,
            "is_me_message": false,
            "last_edit_timestamp": 1605885121,
            "reactions": [],
            "recipient_id": 543319,
            "sender_email": "bud.coulson@gmail.com",
            "sender_full_name": "Bud B Coulson (he) (F2'20)",
            "sender_id": 341026,
            "sender_realm_str": "recurse",
            "stream_id": 256561,
            "subject": "General",
            "submessages": [],
            "timestamp": 1605882879,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
