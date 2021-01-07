{
    "anchor": 189450565,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/442d5e64eb80a7ad704bcf4b48daa82e1355d641?x=x&version=2",
            "client": "ZulipMobile",
            "content": "<p>If y'all are here, you can find me an an orange Hawaiian shirt!</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 167904167,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 106755,
            "sender_email": "brunerson@gmail.com",
            "sender_full_name": "Amelia Rimera Binotti Riely (F2'17)",
            "sender_id": 102006,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Brooklyn Kotlin June 11",
            "submessages": [],
            "timestamp": 1560300045,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/a0dee7b2f79915213075f1ca226224764407ad4d?x=x&version=4",
            "client": "website",
            "content": "<p>Closing the loop on my little note, dependency packaging is pretty simple to understand once you've had to publish an artifact that isn't standard java -- along with your build artifact (a jar file, or in my case an android archive (aar)), you need to publish a pom file that describes your dependencies. Instead of shipping your library and all its transitive dependencies in one blob, you ship just your class files and one level of dependencies underneath you. </p>\n<p>This gives the build system (I only am familiar with gradle) the opportunity to do dependency resolution: Given a set of dependencies that may depend on different versions of the same library, which version do you choose? The default answer is the greater, though if those projects introduce a breaking change you're in trouble -- one library was compiled against the old version, and either you are missing the symbol at runtime (NoClassDefFoundError) or worse, the class was changed in a way that one library didn't expect.</p>\n<p>The IDE is still a disappointing black box, but it is reliable enough that I haven't seriously used <a href=\"https://github.com/fwcd/kotlin-language-server\" target=\"_blank\" title=\"https://github.com/fwcd/kotlin-language-server\">https://github.com/fwcd/kotlin-language-server</a>.</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 189450565,
            "is_me_message": false,
            "last_edit_timestamp": 1583101481,
            "reactions": [],
            "recipient_id": 106755,
            "sender_email": "ajarara94@gmail.com",
            "sender_full_name": "Ahmad Jarara (S2'17)",
            "sender_id": 101400,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Kotlin in Spring 1 2019?",
            "submessages": [],
            "timestamp": 1583101462,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
