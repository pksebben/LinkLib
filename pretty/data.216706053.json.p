{
    "anchor": 216706053,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/c6a4682e6a46285de64c97c77b771481?d=identicon&version=1",
            "client": "website",
            "content": "<p>done in the traditional HALF SCREAM of the SQL proGRAMMER.</p>",
            "content_type": "text/html",
            "display_recipient": "data",
            "flags": [
                "read"
            ],
            "id": 216632028,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f923",
                    "emoji_name": "rolling_on_the_floor_laughing",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "aditya.athalye@gmail.com",
                        "full_name": "Aditya Athalye (he) (SP1'20)",
                        "id": 263547
                    },
                    "user_id": 263547
                },
                {
                    "emoji_code": "1f923",
                    "emoji_name": "rolling_on_the_floor_laughing",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "shae.erisson@gmail.com",
                        "full_name": "Shae Matijs Erisson (he) (F1'19)",
                        "id": 221819
                    },
                    "user_id": 221819
                },
                {
                    "emoji_code": "1f923",
                    "emoji_name": "rolling_on_the_floor_laughing",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "finartcialist@gmail.com",
                        "full_name": "Edith Viau (she) (F2'20)",
                        "id": 341049
                    },
                    "user_id": 341049
                }
            ],
            "recipient_id": 24425,
            "sender_email": "ori@eigenstate.org",
            "sender_full_name": "Ori Dean Bernstein (he) (W2'20)",
            "sender_id": 255045,
            "sender_realm_str": "recurse",
            "stream_id": 21138,
            "subject": "SQL",
            "submessages": [],
            "timestamp": 1605283492,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/692e4b98820a7c9bd5fe6c17408346c6e7f67c6b?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>Following up to some of the comments here! </p>\n<p>I decided I want to take <span class=\"user-mention\" data-user-id=\"246979\">@Donny Winston (he) (W1'19)</span> 's advice and migrate my pickled data to a SQLite file. </p>\n<p>I also realized thanks to  <span class=\"user-mention\" data-user-id=\"277193\">@Unnati Niraj Patel (she) (S2'20)</span> that when my data loads from craigslist (<a href=\"https://pypi.org/project/python-craigslist/\">using this package</a>) there are some edge cases in the numeric columns that motivated the author to return the # bedrooms and bathrooms as strings. </p>\n<p>Retyping of this nature really ought to be handled by a dedicated ETL script, rather than handled during the model training runtime. The database should really be the highest-fidelity it can be at that point in the stream.</p>\n<p>One thing I am curious about is the JSON data stored in one of the columns of my dataframe. Pandas handles indexing JSON columns seamlessly, but if I were to store JSON in a SQL column, I should be able to use json.loads(string) to load and manipulate the JSON in pandas? Assuming the answer is yes, and that will factor into some ETL design decisions.</p>\n<p>Wish me luck!!!</p>",
            "content_type": "text/html",
            "display_recipient": "data",
            "flags": [
                "read"
            ],
            "id": 216706053,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f340",
                    "emoji_name": "lucky",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "code@saul.pw",
                        "full_name": "Saul Pwanson (SP2'17)",
                        "id": 100791
                    },
                    "user_id": 100791
                },
                {
                    "emoji_code": "1f340",
                    "emoji_name": "lucky",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "dwinston@alum.mit.edu",
                        "full_name": "Donny Winston (he) (W1'19)",
                        "id": 246979
                    },
                    "user_id": 246979
                }
            ],
            "recipient_id": 24425,
            "sender_email": "azhadsyed17@gmail.com",
            "sender_full_name": "Azhad Syed (he) (W1'20)",
            "sender_id": 363087,
            "sender_realm_str": "recurse",
            "stream_id": 21138,
            "subject": "do i need a database?",
            "submessages": [],
            "timestamp": 1605328934,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
