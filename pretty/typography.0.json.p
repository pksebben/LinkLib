{
    "anchor": 0,
    "found_anchor": false,
    "found_newest": true,
    "found_oldest": true,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/1000/9fd9de59f964f6e3af477006ddd0116211347010?x=x&version=2",
            "client": "Internal",
            "content": "<p>Stream created by <span class=\"user-mention silent\" data-user-id=\"101330\">Wesley Aptekar-Cassels (they) (m5'19)</span>.</p>",
            "content_type": "text/html",
            "display_recipient": "typography",
            "flags": [
                "read",
                "historical"
            ],
            "id": 203802703,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 510659,
            "sender_email": "notification-bot@zulip.com",
            "sender_full_name": "Notification Bot",
            "sender_id": 100006,
            "sender_realm_str": "zulipcore",
            "stream_id": 247582,
            "subject": "stream events",
            "submessages": [],
            "timestamp": 1594708608,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/5d6a7a4735c43e9dae0e3f9ef82919706728452a?x=x&version=3",
            "client": "website",
            "content": "<p>(subscribed everyone from <a class=\"stream\" data-stream-id=\"26843\" href=\"/#narrow/stream/26843-design\">#design</a> and <a class=\"stream\" data-stream-id=\"26433\" href=\"/#narrow/stream/26433-visual-design\">#visual design</a>, feel free to unsubscribe if you're not interested)</p>",
            "content_type": "text/html",
            "display_recipient": "typography",
            "flags": [
                "read",
                "historical"
            ],
            "id": 203802731,
            "is_me_message": false,
            "last_edit_timestamp": 1594709254,
            "reactions": [],
            "recipient_id": 510659,
            "sender_email": "me@wesleyac.com",
            "sender_full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
            "sender_id": 101330,
            "sender_realm_str": "recurse",
            "stream_id": 247582,
            "subject": "stream events",
            "submessages": [],
            "timestamp": 1594708671,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/5d6a7a4735c43e9dae0e3f9ef82919706728452a?x=x&version=3",
            "client": "website",
            "content": "<p>i'm pretty annoyed that:</p>\n<ol>\n<li>in the year 2020, there's still no way to get a good looking underline with css (except on safari, where they're pretty good looking by default)</li>\n<li>typographical advice for underlines is basically \"don't use them,\" which i think makes sense in print, but makes less sense on the web, where using anything other than an underline to represent a link is very strange.</li>\n</ol>\n<p>specifically, i've been working on some improvements to the underlines in <a href=\"https://github.com/edwardtufte/tufte-css/pull/155\">tufte-css</a>, which uses the approach of a linear gradient background to draw the underline, and text-shadow to clear space around descenders. this is pretty clunky, though \u2014 i'm annoyed that there appears to be no good way to avoid this problem:</p>\n<p><a href=\"/user_uploads/13/xmtJw5xoHv6awncors-rCxVD/underline_sads.jpeg\">underline_sads.jpeg</a> </p>\n<div class=\"message_inline_image\"><a href=\"/user_uploads/13/xmtJw5xoHv6awncors-rCxVD/underline_sads.jpeg\" title=\"underline_sads.jpeg\"><img src=\"/user_uploads/13/xmtJw5xoHv6awncors-rCxVD/underline_sads.jpeg\"></a></div><p>the other thing that i've been thinking about is how to handle underlines with quotes \u2014 i turned this: <a href=\"/user_uploads/13/KVacQi2ninAEHi9Ox3cHCcUD/2020-07-14-024421_355x32_scrot.png\">.</a> </p>\n<div class=\"message_inline_image\"><a href=\"/user_uploads/13/KVacQi2ninAEHi9Ox3cHCcUD/2020-07-14-024421_355x32_scrot.png\" title=\".\"><img src=\"/user_uploads/13/KVacQi2ninAEHi9Ox3cHCcUD/2020-07-14-024421_355x32_scrot.png\"></a></div><p>into this: <a href=\"/user_uploads/13/_oqmwGWPtiCpEzduQPS3nkT5/2020-07-14-024346_364x33_scrot.png\">.</a> </p>\n<div class=\"message_inline_image\"><a href=\"/user_uploads/13/_oqmwGWPtiCpEzduQPS3nkT5/2020-07-14-024346_364x33_scrot.png\" title=\".\"><img src=\"/user_uploads/13/_oqmwGWPtiCpEzduQPS3nkT5/2020-07-14-024346_364x33_scrot.png\"></a></div><p>but i'm sad that this can't be automatic.</p>\n<p>i think an underline font could fix many of these things (font shaping is very powerful), but that adds a lot of download size for a really simple thing :/</p>",
            "content_type": "text/html",
            "display_recipient": "typography",
            "flags": [
                "read",
                "historical"
            ],
            "id": 203803150,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 510659,
            "sender_email": "me@wesleyac.com",
            "sender_full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
            "sender_id": 101330,
            "sender_realm_str": "recurse",
            "stream_id": 247582,
            "subject": "underlines",
            "submessages": [],
            "timestamp": 1594709160,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/55ddf2ec93de8a2a31a0f99d0e874ff9?d=identicon&version=1",
            "client": "website",
            "content": "<blockquote>\n<p>a really simple thing</p>\n</blockquote>\n<p>ah yes, the simple matter of typography, an aesthetic pursuit for those who've finished the simple matter of <a href=\"https://gankra.github.io/blah/text-hates-you/\">text rendering</a> early and want to add a bit of polish = )</p>",
            "content_type": "text/html",
            "display_recipient": "typography",
            "flags": [
                "read",
                "historical"
            ],
            "id": 203811616,
            "is_me_message": false,
            "last_edit_timestamp": 1594716878,
            "reactions": [
                {
                    "emoji_code": "1f643",
                    "emoji_name": "upside_down",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "nathanisom27@gmail.com",
                        "full_name": "Nathan Isom (he) (W2'20)",
                        "id": 255190
                    },
                    "user_id": 255190
                },
                {
                    "emoji_code": "1f643",
                    "emoji_name": "upside_down",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "me@wesleyac.com",
                        "full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
                        "id": 101330
                    },
                    "user_id": 101330
                }
            ],
            "recipient_id": 510659,
            "sender_email": "kevin@keminglabs.com",
            "sender_full_name": "Kevin Lynagh (he)",
            "sender_id": 2172,
            "sender_realm_str": "recurse",
            "stream_id": 247582,
            "subject": "underlines",
            "submessages": [],
            "timestamp": 1594716863,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/5d6a7a4735c43e9dae0e3f9ef82919706728452a?x=x&version=3",
            "client": "website",
            "content": "<p>today's experiment was adjusting kerning of individual letters on the web:</p>\n<p><a href=\"/user_uploads/13/QumOVk6QwMQlVj98FuXreQw2/notebook_kerning_before.png\">before</a> <br>\n<a href=\"/user_uploads/13/q5Kisx2GafN4AZz2BwaN3d2m/notebook_kerning_after.png\">after</a></p>\n<div class=\"message_inline_image\"><a href=\"/user_uploads/13/QumOVk6QwMQlVj98FuXreQw2/notebook_kerning_before.png\" title=\"before\"><img src=\"/user_uploads/13/QumOVk6QwMQlVj98FuXreQw2/notebook_kerning_before.png\"></a></div><div class=\"message_inline_image\"><a href=\"/user_uploads/13/q5Kisx2GafN4AZz2BwaN3d2m/notebook_kerning_after.png\" title=\"after\"><img src=\"/user_uploads/13/q5Kisx2GafN4AZz2BwaN3d2m/notebook_kerning_after.png\"></a></div><p>this is done by putting the <code>W</code> and <code>\u2019</code> in <code>&lt;span&gt;</code>s, and adjusting the <code>letter-spacing</code>, <code>line-height</code>, and <code>vertical-align</code> until they look right.</p>\n<p>this is definitely hacky, but does work, so \u00af\\_(\u30c4)_/\u00af</p>\n<p>i wasn't sure exactly what to do with the apostrophe \u2014 it looked a little bit too high by default, so i lowered it a bit, but i don't know if that's really \"correct.\" I looked at some examples in other text and they looked lower than the default, so i went ahead and lowered it.</p>",
            "content_type": "text/html",
            "display_recipient": "typography",
            "flags": [
                "read",
                "historical"
            ],
            "id": 203920169,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "2728",
                    "emoji_name": "sparkles",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "theilonabrand@gmail.com",
                        "full_name": "Ilona Brand (they) (F1'15)",
                        "id": 8482
                    },
                    "user_id": 8482
                },
                {
                    "emoji_code": "2764",
                    "emoji_name": "heart",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "annie.cherk@gmail.com",
                        "full_name": "Annie Cherkaev (she/they) (m4'18)",
                        "id": 9502
                    },
                    "user_id": 9502
                },
                {
                    "emoji_code": "2728",
                    "emoji_name": "sparkles",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "quinnbatten@gmail.com",
                        "full_name": "Quinn Batten (he) (F1'18)",
                        "id": 125112
                    },
                    "user_id": 125112
                },
                {
                    "emoji_code": "1f4cf",
                    "emoji_name": "ruler",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "rprior@protonmail.com",
                        "full_name": "Ryan Prior (he) (F1'19)",
                        "id": 234256
                    },
                    "user_id": 234256
                },
                {
                    "emoji_code": "1f4cf",
                    "emoji_name": "ruler",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "sebastian@morr.cc",
                        "full_name": "blinry (they) (SP2'19)",
                        "id": 215296
                    },
                    "user_id": 215296
                },
                {
                    "emoji_code": "2728",
                    "emoji_name": "sparkles",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "sebastian@morr.cc",
                        "full_name": "blinry (they) (SP2'19)",
                        "id": 215296
                    },
                    "user_id": 215296
                }
            ],
            "recipient_id": 510659,
            "sender_email": "me@wesleyac.com",
            "sender_full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
            "sender_id": 101330,
            "sender_realm_str": "recurse",
            "stream_id": 247582,
            "subject": "kerning on the web",
            "submessages": [],
            "timestamp": 1594793955,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/da27a2081fcf44c802c1806cdb5bb881310dfe7c?x=x&version=5",
            "client": "website",
            "content": "<p>Careful Wesley, you are very close to starting to think about designing your own typeface...</p>",
            "content_type": "text/html",
            "display_recipient": "typography",
            "flags": [
                "read",
                "historical"
            ],
            "id": 204027346,
            "is_me_message": false,
            "last_edit_timestamp": 1594856723,
            "reactions": [],
            "recipient_id": 510659,
            "sender_email": "ad@lamarque.fr",
            "sender_full_name": "Adrien Lamarque (they/he) (S1'16)",
            "sender_id": 9335,
            "sender_realm_str": "recurse",
            "stream_id": 247582,
            "subject": "kerning on the web",
            "submessages": [],
            "timestamp": 1594856703,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/5d6a7a4735c43e9dae0e3f9ef82919706728452a?x=x&version=3",
            "client": "website",
            "content": "<p>oh, i've started thinking about it already, i'll really be worrying once i start working on it :p</p>",
            "content_type": "text/html",
            "display_recipient": "typography",
            "flags": [
                "read",
                "historical"
            ],
            "id": 204027997,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 510659,
            "sender_email": "me@wesleyac.com",
            "sender_full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
            "sender_id": 101330,
            "sender_realm_str": "recurse",
            "stream_id": 247582,
            "subject": "kerning on the web",
            "submessages": [],
            "timestamp": 1594857187,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/aa00aab2a15eb677ff74f7abf5e2519cdcef19da?x=x&version=2",
            "client": "website",
            "content": "<p>I wandered a short ways down that path a long time ago. Frequently tempted to try and go further</p>",
            "content_type": "text/html",
            "display_recipient": "typography",
            "flags": [
                "read",
                "historical"
            ],
            "id": 204028106,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 510659,
            "sender_email": "b.toma.morris@gmail.com",
            "sender_full_name": "Toma Morris (they) (m5'20)",
            "sender_id": 314654,
            "sender_realm_str": "recurse",
            "stream_id": 247582,
            "subject": "kerning on the web",
            "submessages": [],
            "timestamp": 1594857267,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/aa00aab2a15eb677ff74f7abf5e2519cdcef19da?x=x&version=2",
            "client": "website",
            "content": "<p>My dad asked me what kerning is once while I was reading a typography book. I said \"You work in a government building, I'm not going to tell you because if I do it'll make you mad every time you go to work\"</p>",
            "content_type": "text/html",
            "display_recipient": "typography",
            "flags": [
                "read",
                "historical"
            ],
            "id": 204028193,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f602",
                    "emoji_name": "joy",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "theilonabrand@gmail.com",
                        "full_name": "Ilona Brand (they) (F1'15)",
                        "id": 8482
                    },
                    "user_id": 8482
                },
                {
                    "emoji_code": "1f602",
                    "emoji_name": "joy",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "ad@lamarque.fr",
                        "full_name": "Adrien Lamarque (they/he) (S1'16)",
                        "id": 9335
                    },
                    "user_id": 9335
                },
                {
                    "emoji_code": "1f602",
                    "emoji_name": "joy",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "me@wesleyac.com",
                        "full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
                        "id": 101330
                    },
                    "user_id": 101330
                }
            ],
            "recipient_id": 510659,
            "sender_email": "b.toma.morris@gmail.com",
            "sender_full_name": "Toma Morris (they) (m5'20)",
            "sender_id": 314654,
            "sender_realm_str": "recurse",
            "stream_id": 247582,
            "subject": "kerning on the web",
            "submessages": [],
            "timestamp": 1594857351,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/5d6a7a4735c43e9dae0e3f9ef82919706728452a?x=x&version=3",
            "client": "website",
            "content": "<p><a href=\"https://www.youtube.com/playlist?list=PLcNA74tz9QNL45RbC3iKtcQKXg1bi_EAE\">an interesting video series</a></p>",
            "content_type": "text/html",
            "display_recipient": "typography",
            "flags": [
                "read",
                "historical"
            ],
            "id": 204047416,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 510659,
            "sender_email": "me@wesleyac.com",
            "sender_full_name": "Wesley Aptekar-Cassels (they) (m8'20)",
            "sender_id": 101330,
            "sender_realm_str": "recurse",
            "stream_id": 247582,
            "subject": "a history of the latin alphabet",
            "submessages": [],
            "timestamp": 1594878147,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
