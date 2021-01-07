{
    "anchor": 158907678,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/885b8afeb10339344e0d2a1c588f78e26734013c?x=x&version=1",
            "client": "website",
            "content": "<p>Yeah so there are probably two things here:<br>\n - you want your psysh bootstrap to load the class autoloader; and<br>\n - you need to make sure your <a href=\"http://php.net/manual/en/ini.core.php#ini.include-path\" target=\"_blank\" title=\"http://php.net/manual/en/ini.core.php#ini.include-path\">include_path is</a> set such that the autoloader can find the right files; this might be set in the php.ini used in the web context (and might be different to cli/php.ini); or it might be set by .htaccess or with a web server directive.</p>",
            "content_type": "text/html",
            "display_recipient": "php",
            "flags": [
                "read",
                "historical"
            ],
            "id": 158487637,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f44d",
                    "emoji_name": "+1",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "mattg@leema.org",
                        "full_name": "Matthew Graham (he) (F1'18)",
                        "id": 125276
                    },
                    "user_id": 125276
                }
            ],
            "recipient_id": 50022,
            "sender_email": "recurse@mjec.net",
            "sender_full_name": "Michael Cordover (SP2'16)",
            "sender_id": 9237,
            "sender_realm_str": "recurse",
            "stream_id": 32736,
            "subject": "psysh setup",
            "submessages": [],
            "timestamp": 1550101674,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/7844217c687705d856e80aa92d5961bbbb3fa837?x=x&version=3",
            "client": "website",
            "content": "<p>ah <span class=\"user-mention\" data-user-id=\"9237\">@Michael Cordover (SP2'16)</span> that all sounds really likely</p>",
            "content_type": "text/html",
            "display_recipient": "php",
            "flags": [
                "read",
                "historical"
            ],
            "id": 158907678,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 50022,
            "sender_email": "theilonabrand@gmail.com",
            "sender_full_name": "Ilona Brand (they) (F1'15)",
            "sender_id": 8482,
            "sender_realm_str": "recurse",
            "stream_id": 32736,
            "subject": "psysh setup",
            "submessages": [],
            "timestamp": 1550602209,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
