{
    "anchor": 215277457,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/8f3e3f13689ac077fe4ae537e33bde345a57cb22?x=x&version=2",
            "client": "website",
            "content": "<p>I like magit, but it's slower than the terminal, noticably so</p>",
            "content_type": "text/html",
            "display_recipient": "unix commands",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214267345,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 23402,
            "sender_email": "recurse@ardent.nebcorp.com",
            "sender_full_name": "Joe Ardent (he) (SP1'17)",
            "sender_id": 9097,
            "sender_realm_str": "recurse",
            "stream_id": 20565,
            "subject": "gitui",
            "submessages": [],
            "timestamp": 1603418976,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/5d6a7a4735c43e9dae0e3f9ef82919706728452a?x=x&version=3",
            "client": "website",
            "content": "<p><a href=\"http://www.videlibri.de/xidel.html\"><code>xidel</code></a> is a tool that lets you write filter/map esque statements over html (sort of like <a href=\"https://stedolan.github.io/jq/\"><code>jq</code></a> for html, and it also supports json and some other formats). it's pretty clunky, but also very useful, here's a way to rewrite <code>&lt;img&gt;</code> tags to be <code>&lt;picture&gt;</code> tags that have both a webp and original source:</p>\n<div class=\"codehilite\" data-code-language=\"Bash\"><pre><span></span><code>xidel --silent --html - --xquery <span class=\"s1\">'transform(/, function($e) {</span>\n<span class=\"s1\">    $e / (if (name() = \"img\") then</span>\n<span class=\"s1\">        &lt;picture&gt;</span>\n<span class=\"s1\">            {(if (ends-with(@src, \".jpg\") or ends-with(@src, \".jpeg\")) then</span>\n<span class=\"s1\">                &lt;source type=\"image/webp\" srcset=\"{replace(@src, \"(jpg|jpeg)$\", \"webp\")}\"/&gt;</span>\n<span class=\"s1\">            else ())}</span>\n<span class=\"s1\">            {(if (ends-with(@src, \".jpg\") or ends-with(@src, \".jpeg\")) then</span>\n<span class=\"s1\">                &lt;source type=\"image/jpeg\" srcset=\"{@src}\"/&gt;</span>\n<span class=\"s1\">            else ())}</span>\n<span class=\"s1\">            {(if (ends-with(@src, \".png\")) then</span>\n<span class=\"s1\">                &lt;source type=\"image/webp\" srcset=\"{replace(@src, \"png$\", \"webp\")}\"/&gt;</span>\n<span class=\"s1\">            else ())}</span>\n<span class=\"s1\">            {(if (ends-with(@src, \".png\")) then</span>\n<span class=\"s1\">                &lt;source type=\"image/png\" srcset=\"{@src}\"/&gt;</span>\n<span class=\"s1\">            else ())}</span>\n<span class=\"s1\">               {.}</span>\n<span class=\"s1\">           &lt;/picture&gt;</span>\n<span class=\"s1\">         else .)</span>\n<span class=\"s1\">})'</span>\n</code></pre></div>",
            "content_type": "text/html",
            "display_recipient": "unix commands",
            "flags": [
                "read",
                "historical"
            ],
            "id": 215277457,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f53a",
                    "emoji_name": "red_triangle_up",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "rprior@protonmail.com",
                        "full_name": "Ryan Prior (he) (F1'19)",
                        "id": 234256
                    },
                    "user_id": 234256
                }
            ],
            "recipient_id": 23402,
            "sender_email": "me@wesleyac.com",
            "sender_full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
            "sender_id": 101330,
            "sender_realm_str": "recurse",
            "stream_id": 20565,
            "subject": "xidel",
            "submessages": [],
            "timestamp": 1604289434,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
