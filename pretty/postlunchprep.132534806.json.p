{
    "anchor": 132534806,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/9db659ff05e341e3f6051dbe00d536334e384c05?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>You'll also want to create a recurring M-F event for this new PLP batch. I'd manually delete 4th of July since it's probably going to be a light day.</p>",
            "content_type": "text/html",
            "display_recipient": "post lunch prep",
            "flags": [
                "read",
                "historical"
            ],
            "id": 129002407,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 143876,
            "sender_email": "stevenli42@gmail.com",
            "sender_full_name": "Steven Li (he) (SP2'18)",
            "sender_id": 112084,
            "sender_realm_str": "recurse",
            "stream_id": 122972,
            "subject": "Summer 1s taking on PLP",
            "submessages": [],
            "timestamp": 1530591899,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/fab1c8c51d45fa5e04d9f0d4e4421a8247b86d58?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<div class=\"codehilite\"><pre><span></span>/**\n * Definition for a binary tree node.\n * function TreeNode(val) {\n *     this.val = val;\n *     this.left = this.right = null;\n * }\n */\n/**\n * @param {TreeNode} root1\n * @param {TreeNode} root2\n * @return {boolean}\n */\n\nconst visitSubtree = (node) =&gt; {\n    const leaves = []\n    const recursiveVisitSubtree = (node) =&gt; {\n        if (!node.left &amp;&amp; !node.right) {\n            leaves.push(node);\n            return;\n        }\n        recursiveVisitSubtree(node.left);\n        recursiveVisitSubtree(node.right);\n    }\n    recursiveVisitSubtree(node);\n    return leaves;\n}\n\nconst leafSimilar = (root1, root2) =&gt; {\n\n};\n</pre></div>",
            "content_type": "text/html",
            "display_recipient": "post lunch prep",
            "flags": [
                "read",
                "historical"
            ],
            "id": 132534806,
            "is_me_message": false,
            "last_edit_timestamp": 1534877439,
            "reactions": [],
            "recipient_id": 143876,
            "sender_email": "oscardub@gmail.com",
            "sender_full_name": "Oscar Dub (he) (F1'18)",
            "sender_id": 125392,
            "sender_realm_str": "recurse",
            "stream_id": 122972,
            "subject": "21 August",
            "submessages": [],
            "timestamp": 1534877422,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
