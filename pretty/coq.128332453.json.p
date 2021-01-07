{
    "anchor": 128332453,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/9b59a59f24058e465d934bdafce39c4a?d=identicon&version=1",
            "client": "website",
            "content": "<p>Yes thanks Adam!  One thing that got me interested in Coq was this paper:</p>\n<p><a href=\"https://www.microsoft.com/en-us/research/publication/coq-worlds-best-macro-assembler/\" target=\"_blank\" title=\"https://www.microsoft.com/en-us/research/publication/coq-worlds-best-macro-assembler/\">https://www.microsoft.com/en-us/research/publication/coq-worlds-best-macro-assembler/</a></p>\n<p>I'm not sure how they model these things in Coq, but I'm now at least a little closer to understanding :)  The page that Henry linked was useful.</p>\n<hr>\n<p>I also  wonder how Coq differs from TLA + ?  Leslie Lamport recently won a Turing Award for this line of work, and it is apparently used by Amazon for verifying distributed systems:</p>\n<p><a href=\"https://en.wikipedia.org/wiki/TLA%2B\" target=\"_blank\" title=\"https://en.wikipedia.org/wiki/TLA%2B\">https://en.wikipedia.org/wiki/TLA%2B</a></p>\n<p><a href=\"http://lamport.azurewebsites.net/tla/amazon.html\" target=\"_blank\" title=\"http://lamport.azurewebsites.net/tla/amazon.html\">http://lamport.azurewebsites.net/tla/amazon.html</a></p>\n<p>My guess would be that TLA+ is a more specific type of logic, and so it's probably easier to \"build your way up\" to the semantics of certain practical systems (thought it may be inappropriate for others).  Coq seems like it is very powerful but also very low level ?</p>\n<p>I also heard some good things about Alloy, which is supposed to be a \"lightweight\" way of formal methods?</p>\n<p><a href=\"https://en.wikipedia.org/wiki/Alloy_(specification_language)\" target=\"_blank\" title=\"https://en.wikipedia.org/wiki/Alloy_(specification_language)\">https://en.wikipedia.org/wiki/Alloy_(specification_language)</a></p>",
            "content_type": "text/html",
            "display_recipient": "coq",
            "flags": [
                "read",
                "historical"
            ],
            "id": 128328862,
            "is_me_message": false,
            "last_edit_timestamp": 1529443077,
            "reactions": [],
            "recipient_id": 32275,
            "sender_email": "andychup@gmail.com",
            "sender_full_name": "Andy Chu (S1'18)",
            "sender_id": 116399,
            "sender_realm_str": "recurse",
            "stream_id": 25313,
            "subject": "introductory workshop",
            "submessages": [],
            "timestamp": 1529443021,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/8260829a7479dd27047312816718afaed99f3fd1?x=x&version=1",
            "client": "website",
            "content": "<p>Yes, TLA+ is more specific, and so it is easier to talk about systems which it describes well. Like Alloy, it uses model checking, and so it can find counterexamples, but it can't prove things (you only get evidence that something is true). Coq, on the other hand, can prove things in a positive sense. Coq is \"low level\" in the sense that the trusted core is very small but very expressive, so you can build just about everything from scratch. That doesn't mean you have to personally do it; there are many libraries of useful theorems. But it's kind of nice to see the building from scratch, as Software Foundations shows you.</p>\n<p>Alloy is a lot of fun to use. The language is interesting and expressive.</p>\n<p>I'm coming in on Thursday morning to chat with <span class=\"user-mention\" data-user-id=\"111960\">@Adam Palay (SP2'18)</span> , so if anyone else wants to talk about Coq or related topics, I'm available.</p>",
            "content_type": "text/html",
            "display_recipient": "coq",
            "flags": [
                "read",
                "historical"
            ],
            "id": 128332453,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f44d",
                    "emoji_name": "thumbs_up",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "andychup@gmail.com",
                        "full_name": "Andy Chu (S1'18)",
                        "id": 116399
                    },
                    "user_id": 116399
                }
            ],
            "recipient_id": 32275,
            "sender_email": "plragde@uwaterloo.ca",
            "sender_full_name": "Prabhakar Ragde (he)",
            "sender_id": 8655,
            "sender_realm_str": "recurse",
            "stream_id": 25313,
            "subject": "introductory workshop",
            "submessages": [],
            "timestamp": 1529447843,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
