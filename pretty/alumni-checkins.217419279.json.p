{
    "anchor": 217419279,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/f3e838bb3578a1bfb7d808f17602e4456f954f4f?x=x&version=3",
            "client": "website",
            "content": "<p>Only two more chapters to go on rendering spheres. Rendering in One Weekend is a very optimistic title for this! I'm the loving the from scratch, implement the physics and get results of it all. It's been a good refresher on rust and a chance to figure out a few things I've forgotten or never gotten my head around. I'm hating hunting tiny typos in formulae. I lost an hour yesterday hunting <code>*</code> instead of <code>\\</code>.<br>\nI'm really curious about how to lighting in ray tracing, and looking forward to learning more. It seems that there's a fundamental problem that we're always computing P(Light|Ray) (probably of light at a point, given a ray) and not P(Ray|Light) and I don't know if  things are properly symmetrical (especially in the case of rough surfaces.) I'm hoping to have a chance to investigate this.<br>\nIn the meantime, I've tried putting in the the simplest lighting model with the highest quality render yet and I love the result. Without just diffuse lighting the spheres look far too flat, but this makes everything pop. The overly simple light model does give too small shadows and too big reflections/images of the light - but I'm happy for a first thought!</p>\n<p>Diffuse light:<br>\n<a href=\"/user_uploads/13/sN_SjOtOEQWTYxc1MS0RFdEw/scene.png\">scene.png</a></p>\n<div class=\"message_inline_image\"><a href=\"/user_uploads/13/sN_SjOtOEQWTYxc1MS0RFdEw/scene.png\" title=\"scene.png\"><img src=\"/user_uploads/13/sN_SjOtOEQWTYxc1MS0RFdEw/scene.png\"></a></div><p>Directional light:<br>\n<a href=\"/user_uploads/13/stetEnDTrE4rypzsA_-PGfOf/shadows.png\">shadows.png</a></p>\n<div class=\"message_inline_image\"><a href=\"/user_uploads/13/stetEnDTrE4rypzsA_-PGfOf/shadows.png\" title=\"shadows.png\"><img src=\"/user_uploads/13/stetEnDTrE4rypzsA_-PGfOf/shadows.png\"></a></div>",
            "content_type": "text/html",
            "display_recipient": "alumni-checkins",
            "flags": [
                "read",
                "historical"
            ],
            "id": 217395918,
            "is_me_message": false,
            "last_edit_timestamp": 1605876492,
            "reactions": [
                {
                    "emoji_code": "2764",
                    "emoji_name": "heart",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "pattersoncharlesl@gmail.com",
                        "full_name": "Charlie Patterson (he) (SP2'20)",
                        "id": 279703
                    },
                    "user_id": 279703
                },
                {
                    "emoji_code": "2764",
                    "emoji_name": "heart",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "vmehta94@gmail.com",
                        "full_name": "Vinayak Mehta (he) (F1'20)",
                        "id": 327359
                    },
                    "user_id": 327359
                },
                {
                    "emoji_code": "2764",
                    "emoji_name": "heart",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "weirdmailid@gmail.com",
                        "full_name": "Yasharth Choudhary (he) (W1'20)",
                        "id": 360487
                    },
                    "user_id": 360487
                },
                {
                    "emoji_code": "2764",
                    "emoji_name": "heart",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "arndtschnabel@freenet.de",
                        "full_name": "Arndt Schnabel (F2'18)",
                        "id": 129989
                    },
                    "user_id": 129989
                }
            ],
            "recipient_id": 41651,
            "sender_email": "adam@cthulahoops.org",
            "sender_full_name": "Adam Kelly (they/he) (S1'20)",
            "sender_id": 301014,
            "sender_realm_str": "recurse",
            "stream_id": 27333,
            "subject": "Adam Kelly",
            "submessages": [],
            "timestamp": 1605876324,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/c2004dab6a5b7f7ddfca0ea3dcf1b312cf28113d?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>The job search continues! In the meantime, been having some fun with docker-compose and flask\u2014took a take home coding challenge for one of my interviews and spruced it up a bit. I've added some tests that run when I push to the repo using Github Actions. Pretty cool that you can spin up a multi-container environment and run tests in a docker container using actions. Project is <a href=\"https://github.com/clpatterson/mta_tracker\">here</a>. Code for the workflow is below. Downside is it takes 2.5 mins to run the workflow, but I can probably speed that up by using this <a href=\"https://github.com/marketplace/actions/docker-layer-caching\">caching action</a>.</p>\n<div class=\"codehilite\" data-code-language=\"YAML\"><pre><span></span><code><span class=\"nt\">name</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">integration-tests</span>\n<span class=\"nt\">on</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">push</span>\n<span class=\"nt\">jobs</span><span class=\"p\">:</span>\n  <span class=\"nt\">test</span><span class=\"p\">:</span>\n    <span class=\"nt\">runs-on</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">ubuntu-latest</span>\n    <span class=\"nt\">steps</span><span class=\"p\">:</span>\n      <span class=\"p p-Indicator\">-</span> <span class=\"nt\">name</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">Get repo</span>\n        <span class=\"nt\">uses</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">actions/checkout@v2</span>\n      <span class=\"p p-Indicator\">-</span> <span class=\"nt\">name</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">Make envfile</span>\n        <span class=\"nt\">uses</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">SpicyPizza/create-envfile@v1</span>\n        <span class=\"nt\">with</span><span class=\"p\">:</span>\n            <span class=\"nt\">envkey_COMPOSE_PROJECT_NAME</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">mta_tracker</span>\n            <span class=\"nt\">envkey_POSTGRES_USER</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">${{ secrets.POSTGRES_USER }}</span>\n            <span class=\"nt\">envkey_POSTGRES_PASSWORD</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">${{ secrets.POSTGRES_PASSWORD }}</span>\n            <span class=\"nt\">envkey_PYTHONUNBUFFERED</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">true</span>\n            <span class=\"nt\">file_name</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">.env</span>\n      <span class=\"p p-Indicator\">-</span> <span class=\"nt\">name</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">Build app</span>\n        <span class=\"nt\">run</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">docker-compose up -d</span>\n      <span class=\"p p-Indicator\">-</span> <span class=\"nt\">name</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">Create and seed db</span>\n        <span class=\"nt\">run</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">docker-compose exec -T api mta_tracker db reset</span>\n      <span class=\"p p-Indicator\">-</span> <span class=\"nt\">name</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">Run tests</span>\n        <span class=\"nt\">run</span><span class=\"p\">:</span> <span class=\"l l-Scalar l-Scalar-Plain\">docker-compose exec -T api py.test mta_tracker/tests</span>\n</code></pre></div>",
            "content_type": "text/html",
            "display_recipient": "alumni-checkins",
            "flags": [
                "read",
                "historical"
            ],
            "id": 217419279,
            "is_me_message": false,
            "last_edit_timestamp": 1605887957,
            "reactions": [],
            "recipient_id": 41651,
            "sender_email": "pattersoncharlesl@gmail.com",
            "sender_full_name": "Charlie Patterson (he) (SP2'20)",
            "sender_id": 279703,
            "sender_realm_str": "recurse",
            "stream_id": 27333,
            "subject": "Charlie Patterson",
            "submessages": [],
            "timestamp": 1605887865,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
