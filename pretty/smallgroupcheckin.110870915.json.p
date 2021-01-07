{
    "anchor": 110870915,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/a6a0ff0a4a9a86ae7bc4524453d439bd?d=identicon&version=1",
            "client": "website",
            "content": "<p>Yeah, I did see the thing about the kill switch! I have no idea why it got put in... But good on the guy who registered the domain and killed the virus!</p>",
            "content_type": "text/html",
            "display_recipient": "small group checkin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 110833627,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 103624,
            "sender_email": "annie.cherk@gmail.com",
            "sender_full_name": "Annie Cherkaev (she/they) (m4'18)",
            "sender_id": 9502,
            "sender_realm_str": "recurse",
            "stream_id": 100810,
            "subject": "Saturday 5/13",
            "submessages": [],
            "timestamp": 1494822190,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/719bfb1c4c0234d9526cc67dfce695a1808eaaea?x=x&version=1",
            "client": "website",
            "content": "<p>Ah, so what I meant by that was, information transmitted over http doesn't have any encoding; it's just raw binary. In the case of bencoding, the encoding used by bittorrent, things that are text fields are ascii encoded. But, when I was calling the .text() method on the http response I was getting, my http library was assuming I wanted utf-8, despite the response not being utf-8. The actual non-standard part of the response was the ip address, which was encoded as 6 bytes; 4 being the numbers of the ip address and 2 being the port. I'm actually not positive what the non-standard character was...the range of numbers in ip address is 0-255, which all fall within utf-8. I'll double check to try to figure out what exactly went wrong and report back, I kind of glossed over it once I fixed it.</p>",
            "content_type": "text/html",
            "display_recipient": "small group checkin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 110870915,
            "is_me_message": false,
            "last_edit_timestamp": 1494897758,
            "reactions": [],
            "recipient_id": 103624,
            "sender_email": "me@danielputtick.com",
            "sender_full_name": "Dan Puttick (he) (W2'20)",
            "sender_id": 9489,
            "sender_realm_str": "recurse",
            "stream_id": 100810,
            "subject": "Saturday 5/13",
            "submessages": [],
            "timestamp": 1494897736,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
