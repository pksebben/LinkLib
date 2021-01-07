{
    "anchor": 217130162,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ee5ef8c4705125cfdc43e7d1569c684c58cb518b?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<blockquote>\n<p>we can implement almost all of it as a library without touching LiveView internals! </p>\n</blockquote>\n<p>To expand upon implementation, I'm picturing something like</p>\n<div class=\"codehilite\" data-code-language=\"Elixir\"><pre><span></span><code><span class=\"kd\">defmodule</span> <span class=\"nc\">LiveEnum</span> <span class=\"k\">do</span>\n  <span class=\"kd\">defstruct</span> <span class=\"ss\">action</span><span class=\"p\">:</span> <span class=\"ss\">:none</span><span class=\"p\">,</span> <span class=\"ss\">items</span><span class=\"p\">:</span> <span class=\"p\">[]</span>\n<span class=\"k\">end</span>\n</code></pre></div>\n<p><code>create</code>, <code>append</code>, <code>prepend</code>, <code>remove</code>,  and <code>update</code> will each set the <code>action</code> and <code>items</code> accordingly. </p>\n<p><code>after_render</code> will reset the <code>action</code> back to <code>none</code> and <code>items</code> back to <code>[]</code>.</p>\n<p><code>container_for</code> makes a DIV and sets <code>phx-update</code> according the <code>action</code>, then runs the block for everything in <code>items</code>.</p>\n<p>In writing this out I realized a couple of things</p>\n<ul>\n<li>Even with our <code>phx-remove</code> doing removes here will be tricky, maybe a good sign that we can improve the design</li>\n<li>The LiveEnum will need to know the assign's name in order to do the <code>after_render</code> properly. Maybe the correct API is to not pass the whole socket in and instead do something like:</li>\n</ul>\n<div class=\"codehilite\" data-code-language=\"Elixir\"><pre><span></span><code><span class=\"kd\">def</span> <span class=\"n\">after_render</span><span class=\"p\">(</span><span class=\"n\">socket</span><span class=\"p\">)</span> <span class=\"k\">do</span>\n  <span class=\"p\">{</span><span class=\"ss\">:noreply</span><span class=\"p\">,</span> <span class=\"n\">assign</span><span class=\"p\">(</span><span class=\"n\">socket</span><span class=\"p\">,</span> <span class=\"ss\">:messages</span><span class=\"p\">,</span> <span class=\"nc\">LiveEnum</span><span class=\"o\">.</span><span class=\"n\">after_render</span><span class=\"p\">(</span><span class=\"n\">socket</span><span class=\"o\">.</span><span class=\"n\">assigns</span><span class=\"o\">.</span><span class=\"n\">messages</span><span class=\"p\">)}</span>\n<span class=\"k\">end</span>\n</code></pre></div>\n<ul>\n<li>It's natural to want to chain these together like: <code>live_enum |&gt; append(item) |&gt; remove(something_else)</code>. We need to think through the edge cases of doing multiple actions at once or error out gracefully somehow.</li>\n</ul>",
            "content_type": "text/html",
            "display_recipient": "oss at rc",
            "flags": [
                "read",
                "historical"
            ],
            "id": 217055199,
            "is_me_message": false,
            "last_edit_timestamp": 1605643593,
            "reactions": [],
            "recipient_id": 20937,
            "sender_email": "maxim@ontoillogical.com",
            "sender_full_name": "Max Veytsman (he) (S1'20)",
            "sender_id": 5875,
            "sender_realm_str": "recurse",
            "stream_id": 19393,
            "subject": "phoenix-live-view",
            "submessages": [],
            "timestamp": 1605643582,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/f3e838bb3578a1bfb7d808f17602e4456f954f4f?x=x&version=3",
            "client": "website",
            "content": "<p>This is really clever, I like it. <span aria-label=\"smile\" class=\"emoji emoji-1f642\" role=\"img\" title=\"smile\">:smile:</span> <span aria-label=\"octopus\" class=\"emoji emoji-1f419\" role=\"img\" title=\"octopus\">:octopus:</span><br>\nIt really starts to justify <code>after_render</code>as a design choice.</p>",
            "content_type": "text/html",
            "display_recipient": "oss at rc",
            "flags": [
                "read",
                "historical"
            ],
            "id": 217130162,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "2764",
                    "emoji_name": "heart",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "maxim@ontoillogical.com",
                        "full_name": "Max Veytsman (he) (S1'20)",
                        "id": 5875
                    },
                    "user_id": 5875
                }
            ],
            "recipient_id": 20937,
            "sender_email": "adam@cthulahoops.org",
            "sender_full_name": "Adam Kelly (they/he) (S1'20)",
            "sender_id": 301014,
            "sender_realm_str": "recurse",
            "stream_id": 19393,
            "subject": "phoenix-live-view",
            "submessages": [],
            "timestamp": 1605704032,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
