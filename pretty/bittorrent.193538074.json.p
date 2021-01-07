{
    "anchor": 193538074,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ab7ac8d0421135a2615ee68497efe480de3a293b?x=x&version=1",
            "client": "website",
            "content": "<p>I'm having trouble make it look nice in zulip...</p>\n<div class=\"codehilite\"><pre><span></span>        // pieceInFile returns the data to be written on a file, and it&#39;s offset\n        func pieceInFile(piece *Piece, file *TorrentFile, pieceSize int64) (bool, []byte, int64) {\n            pieceLower := int64(piece.index) * pieceSize\n            pieceUpper := int64(piece.index+1) * pieceSize\n            fileUpper := file.PreceedingTotal + file.Length\n            if pieceLower &gt; fileUpper || pieceUpper &lt; file.PreceedingTotal {\n                // NOTE: Some files aren&#39;t in the &#39;write&#39; space\n                return false, nil, 0\n            }\n\n            offset := max(0, pieceLower-file.PreceedingTotal)\n            lower := abs(min(0, pieceLower-file.PreceedingTotal))\n            upper := min(file.Length-offset+lower, piece.size)\n            if upper == lower {\n                return false, nil, 0\n            }\n            logger.Println(lower, upper)\n            return true, piece.data[lower:upper], offset\n        }\n</pre></div>",
            "content_type": "text/html",
            "display_recipient": "bittorrent",
            "flags": [
                "read",
                "historical"
            ],
            "id": 104153907,
            "is_me_message": false,
            "last_edit_timestamp": 1480697677,
            "reactions": [],
            "recipient_id": 25233,
            "sender_email": "fenimoreplove@gmail.com",
            "sender_full_name": "Fenimore Love (he) (F2'16)",
            "sender_id": 100182,
            "sender_realm_str": "recurse",
            "stream_id": 21588,
            "subject": "writing to multiple files",
            "submessages": [],
            "timestamp": 1480697583,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/423a5327ed896db2dfd052de561709d0e6ae2689?x=x&version=1",
            "client": "website",
            "content": "<p>This stream looks a little dead, but I thought I would post here anyways. I just finished the first version of a project called Intermodal, which for now is a command line <code>.torrent</code> file creator. More info here! <a href=\"#narrow/stream/20305-rust/topic/First.20release.20of.20Intermodal!/near/193537873\" title=\"#narrow/stream/20305-rust/topic/First.20release.20of.20Intermodal!/near/193537873\">https://recurse.zulipchat.com/#narrow/stream/20305-rust/topic/First.20release.20of.20Intermodal!/near/193537873</a></p>",
            "content_type": "text/html",
            "display_recipient": "bittorrent",
            "flags": [
                "read",
                "historical"
            ],
            "id": 193538074,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f389",
                    "emoji_name": "tada",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "mccartykim@zoho.com",
                        "full_name": "Kimberly Michelle McCarty (W1'17)",
                        "id": 101726
                    },
                    "user_id": 101726
                },
                {
                    "emoji_code": "1f389",
                    "emoji_name": "tada",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "marie.clemessy@gmail.com",
                        "full_name": "Marie Charlotte-Amalie Clemessy (she) (W1'14)",
                        "id": 6914
                    },
                    "user_id": 6914
                }
            ],
            "recipient_id": 25233,
            "sender_email": "casey@rodarmor.com",
            "sender_full_name": "Casey Rodarmor (SP2'18)",
            "sender_id": 6935,
            "sender_realm_str": "recurse",
            "stream_id": 21588,
            "subject": "Intermodal",
            "submessages": [],
            "timestamp": 1586494256,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
