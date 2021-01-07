{
    "anchor": 197008144,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/aabd3f5b0d85a5cd43367315223e784a0b18b740?x=x&version=2",
            "client": "website",
            "content": "<p>I don't know Go, so I can't fully understand the context, but I think functors are a red herring here. A functor is a function from module(s) to another module, but <code>Node</code> in your code is a module <em>type</em>. While you've tried to define <code>Statement</code> by calling <code>Node</code> as if it were a functor, I would expect that this would not compile. Instead, it seems like your intention is to say that <code>Statement</code> has the module type <code>Node</code>. You can do that via the following:</p>\n<div class=\"codehilite\"><pre><span></span><code><span class=\"k\">module</span> <span class=\"nc\">Statement</span> <span class=\"o\">:</span> <span class=\"nc\">Node</span> <span class=\"o\">=</span> <span class=\"k\">struct</span>\n    <span class=\"k\">type</span> <span class=\"n\">t</span> <span class=\"o\">=</span> <span class=\"nn\">Token</span><span class=\"p\">.</span><span class=\"n\">token</span>\n    <span class=\"k\">let</span> <span class=\"n\">token_literal</span> <span class=\"n\">t</span> <span class=\"o\">=</span> <span class=\"nn\">Token</span><span class=\"p\">.</span><span class=\"n\">token_to_string</span> <span class=\"n\">t</span>\n<span class=\"k\">end</span>\n</code></pre></div>\n\n\n<p>As for lists of modules, you could certainly do that. This language feature is called \"first-class modules\", because it allows you to use modules just like you use other values such as ints or strings. The syntax would look like this:</p>\n<div class=\"codehilite\"><pre><span></span><code><span class=\"k\">let</span> <span class=\"n\">module_list</span> <span class=\"o\">:</span> <span class=\"o\">(</span><span class=\"k\">module</span> <span class=\"nc\">Node</span><span class=\"o\">)</span> <span class=\"kt\">list</span> <span class=\"o\">=</span> <span class=\"o\">[</span> <span class=\"o\">(</span><span class=\"k\">module</span> <span class=\"nc\">Statement</span><span class=\"o\">)</span> <span class=\"o\">]</span>\n</code></pre></div>\n\n\n<p>But of course that example is hardly comprehensive. You can find a book chapter on the subject <a href=\"https://dev.realworldocaml.org/first-class-modules.html\" title=\"https://dev.realworldocaml.org/first-class-modules.html\">here</a>.</p>",
            "content_type": "text/html",
            "display_recipient": "ocaml",
            "flags": [
                "read",
                "historical"
            ],
            "id": 197001110,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 25750,
            "sender_email": "levimroth@gmail.com",
            "sender_full_name": "Levi Roth (he) (W2'18)",
            "sender_id": 105051,
            "sender_realm_str": "recurse",
            "stream_id": 21787,
            "subject": "Functors? Interfaces? Modules?",
            "submessages": [],
            "timestamp": 1589043799,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/c6a4682e6a46285de64c97c77b771481?d=identicon&version=1",
            "client": "website",
            "content": "<p>Also, I think I'd just  not try to subclass in this case. If I needed to attach metadata to everything, I'd wrap in a record, otherwise I'd just have a single type with all nodes inside.</p>\n<p>Something like:</p>\n<div class=\"codehilite\"><pre><span></span><code>type node =\n   | Statement node\n   | Expr node*node\n   | ....\n\nlet token_literal (n : node) = &quot;&quot;\n</code></pre></div>\n\n\n<p>or</p>\n<div class=\"codehilite\"><pre><span></span><code>type node = {\n    file : string;\n    line : int;\n    guts : nodeguts;\n}\nand nodeguts =\n   | Statement node\n   | Expr node*node\n   | ....\n\nlet token_literal (n : node) = &quot;&quot;\n</code></pre></div>",
            "content_type": "text/html",
            "display_recipient": "ocaml",
            "flags": [
                "read",
                "historical"
            ],
            "id": 197008144,
            "is_me_message": false,
            "last_edit_timestamp": 1589052736,
            "reactions": [
                {
                    "emoji_code": "1f44d",
                    "emoji_name": "+1",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "levimroth@gmail.com",
                        "full_name": "Levi Roth (he) (W2'18)",
                        "id": 105051
                    },
                    "user_id": 105051
                }
            ],
            "recipient_id": 25750,
            "sender_email": "ori@eigenstate.org",
            "sender_full_name": "Ori Dean Bernstein (he) (W2'20)",
            "sender_id": 255045,
            "sender_realm_str": "recurse",
            "stream_id": 21787,
            "subject": "Functors? Interfaces? Modules?",
            "submessages": [],
            "timestamp": 1589052376,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
