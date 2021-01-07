{
    "anchor": 0,
    "found_anchor": false,
    "found_newest": true,
    "found_oldest": true,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/1000/1cd87892343b6620726b112851f0b66cbda4a68f?x=x&version=4",
            "client": "Internal",
            "content": "<p>Welcome to <a class=\"stream\" data-stream-id=\"102327\" href=\"/#narrow/stream/kotlin\">#kotlin</a>.</p>\n<p><strong>Description</strong>: the jvm based programming language by jetbrains<br>\n<a href=\"https://kotlinlang.org/\" target=\"_blank\" title=\"https://kotlinlang.org/\">https://kotlinlang.org/</a></p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 115502063,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 106755,
            "sender_email": "welcome-bot@zulip.com",
            "sender_full_name": "Welcome Bot",
            "sender_id": 100007,
            "sender_realm_str": "zulipcore",
            "stream_id": 102327,
            "subject": "hello",
            "submessages": [],
            "timestamp": 1504659394,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/70201dad8f30b376c8e9f8ede010e43b63266850?x=x&version=6",
            "client": "website",
            "content": "<p>.</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 115502129,
            "is_me_message": false,
            "last_edit_timestamp": 1605726408,
            "reactions": [],
            "recipient_id": 106755,
            "sender_email": "stanley@zheng.nyc",
            "sender_full_name": "Stanley Zheng (they) (W1'19)",
            "sender_id": 100315,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Intellij Kotlin Edu Plugin",
            "submessages": [],
            "timestamp": 1504659544,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/a0dee7b2f79915213075f1ca226224764407ad4d?x=x&version=4",
            "client": "website",
            "content": "<p>Prettty good for exploring the std lib. I highly recommend cloning the repo: <a href=\"https://github.com/kotlin/kotlin-koans\" target=\"_blank\" title=\"https://github.com/kotlin/kotlin-koans\">https://github.com/kotlin/kotlin-koans</a> instead of going online to do it as the browser version looks pretty horrendous.</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 123519716,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 106755,
            "sender_email": "ajarara94@gmail.com",
            "sender_full_name": "Ahmad Jarara (S2'17)",
            "sender_id": 101400,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Kotlin-koans",
            "submessages": [],
            "timestamp": 1520649369,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/a0dee7b2f79915213075f1ca226224764407ad4d?x=x&version=4",
            "client": "website",
            "content": "<p>Kotlin kind of subverts the classic way of testing some java code. The easiest unit test is definitely the pattern of injecting mocks into a subject, then verifying interactions happen with a mock when certain conditions happen. That style is a little awkward in Kotlin with vals being the (usually correct) thing to reach to. </p>\n<p>If the subject under test has few dependencies then just newing the object each time for a given test is fine. But often the things that really need tests are the gigantic classes that have large dependencies. I've come up with a technique that I really like, instead of instantiating the object directly, create a fixture:</p>\n<div class=\"codehilite\"><pre><span></span><span class=\"k\">private</span> <span class=\"k\">data</span> <span class=\"k\">class</span> <span class=\"nc\">Fixture</span><span class=\"p\">(</span>\n    <span class=\"k\">val</span> <span class=\"py\">dep1</span><span class=\"p\">:</span> <span class=\"n\">CookieManager</span> <span class=\"p\">=</span> <span class=\"n\">mock</span><span class=\"p\">(),</span>\n    <span class=\"k\">val</span> <span class=\"py\">dep2</span><span class=\"p\">:</span> <span class=\"n\">Runtime</span> <span class=\"p\">=</span> <span class=\"n\">mock</span><span class=\"p\">(),</span>\n    <span class=\"k\">val</span> <span class=\"py\">dep3</span><span class=\"p\">:</span> <span class=\"n\">Logger</span> <span class=\"p\">=</span> <span class=\"n\">mock</span><span class=\"p\">()</span>\n\n    <span class=\"k\">val</span> <span class=\"py\">subjectUnderTest</span> <span class=\"p\">=</span> <span class=\"n\">CookieGobbler</span><span class=\"p\">(</span><span class=\"n\">dep1</span><span class=\"p\">,</span> <span class=\"n\">dep2</span><span class=\"p\">,</span> <span class=\"n\">dep3</span><span class=\"p\">)</span>\n<span class=\"p\">)</span>\n\n<span class=\"c1\">// then in a test:</span>\n<span class=\"n\">@Test</span>\n<span class=\"k\">fun</span> <span class=\"err\">`</span><span class=\"nf\">gobbles</span> <span class=\"n\">cookies</span><span class=\"err\">`</span><span class=\"p\">()</span> <span class=\"p\">{</span>\n    <span class=\"k\">val</span> <span class=\"py\">fx</span> <span class=\"p\">=</span> <span class=\"n\">Fixture</span><span class=\"p\">()</span>\n\n    <span class=\"n\">fx</span><span class=\"p\">.</span><span class=\"n\">subjectUnderTest</span><span class=\"p\">.</span><span class=\"n\">gobble</span><span class=\"p\">()</span>\n\n    <span class=\"n\">verify</span><span class=\"p\">(</span><span class=\"n\">fx</span><span class=\"p\">.</span><span class=\"n\">dep1</span><span class=\"p\">).</span><span class=\"n\">sync</span><span class=\"p\">()</span>\n<span class=\"p\">}</span>\n\n<span class=\"c1\">// mocks are low lying fruit, but now we can just as easily inject a real implementation</span>\n<span class=\"n\">@Test</span>\n<span class=\"k\">fun</span> <span class=\"err\">`</span><span class=\"nf\">saves</span> <span class=\"n\">cookies</span><span class=\"err\">`</span><span class=\"p\">()</span> <span class=\"p\">{</span>\n    <span class=\"k\">val</span> <span class=\"py\">cookieManager</span> <span class=\"p\">=</span> <span class=\"n\">CookieManager</span><span class=\"p\">()</span>\n    <span class=\"k\">val</span> <span class=\"py\">fx</span> <span class=\"p\">=</span> <span class=\"n\">Fixture</span><span class=\"p\">(</span><span class=\"n\">dep2</span> <span class=\"p\">=</span> <span class=\"n\">cookieManager</span><span class=\"p\">)</span>\n\n    <span class=\"n\">fx</span><span class=\"p\">.</span><span class=\"n\">subjectUnderTest</span><span class=\"p\">.</span><span class=\"n\">put</span><span class=\"p\">(</span><span class=\"s\">&quot;cookie&quot;</span><span class=\"p\">,</span> <span class=\"s\">&quot;monster&quot;</span><span class=\"p\">)</span>\n\n    <span class=\"n\">assertThat</span><span class=\"p\">(</span><span class=\"n\">cookieManager</span><span class=\"p\">.</span><span class=\"k\">get</span><span class=\"p\">(</span><span class=\"s\">&quot;cookie&quot;</span><span class=\"p\">)).</span><span class=\"n\">isEqualTo</span><span class=\"p\">(</span><span class=\"s\">&quot;monster&quot;</span><span class=\"p\">)</span>\n<span class=\"p\">}</span>\n</pre></div>\n\n\n<p>I like this pattern a lot, especially because it's easy to do something like this:</p>\n<div class=\"codehilite\"><pre><span></span><span class=\"k\">private</span> <span class=\"k\">data</span> <span class=\"k\">class</span> <span class=\"nc\">Fixture</span><span class=\"p\">(</span>\n    <span class=\"k\">val</span> <span class=\"py\">output</span> <span class=\"p\">=</span>  <span class=\"s\">&quot;Words&quot;</span><span class=\"p\">,</span>\n    <span class=\"k\">val</span> <span class=\"py\">reader</span><span class=\"p\">:</span> <span class=\"n\">InputStream</span>  <span class=\"p\">=</span> <span class=\"n\">mock</span> <span class=\"p\">{</span> <span class=\"n\">on</span> <span class=\"p\">{</span> <span class=\"n\">read</span> <span class=\"p\">}</span> <span class=\"n\">doReturn</span> <span class=\"n\">output</span> <span class=\"p\">}</span> <span class=\"p\">,</span>\n\n    <span class=\"k\">val</span> <span class=\"py\">subjectUnderTest</span> <span class=\"p\">=</span> <span class=\"n\">DelegatingReader</span><span class=\"p\">(</span><span class=\"n\">reader</span><span class=\"p\">)</span>\n<span class=\"p\">}</span>\n\n<span class=\"n\">@Test</span>\n<span class=\"k\">fun</span> <span class=\"err\">`</span><span class=\"nf\">delegating</span> <span class=\"n\">reader</span> <span class=\"n\">handles</span> <span class=\"n\">the</span> <span class=\"n\">empty</span> <span class=\"n\">string</span><span class=\"err\">`</span><span class=\"p\">()</span> <span class=\"p\">{</span>\n    <span class=\"k\">val</span> <span class=\"py\">empty</span> <span class=\"p\">=</span> <span class=\"s\">&quot;&quot;</span>\n    <span class=\"k\">val</span> <span class=\"py\">fx</span> <span class=\"p\">=</span> <span class=\"n\">Fixture</span><span class=\"p\">(</span><span class=\"n\">output</span> <span class=\"p\">=</span> <span class=\"n\">empty</span><span class=\"p\">)</span>\n\n     <span class=\"n\">assertThat</span><span class=\"p\">(</span><span class=\"n\">fx</span><span class=\"p\">.</span><span class=\"n\">subjectUnderTest</span><span class=\"p\">.</span><span class=\"n\">read</span><span class=\"p\">()).</span><span class=\"n\">isEqualTo</span><span class=\"p\">(</span><span class=\"n\">empty</span><span class=\"p\">)</span>\n<span class=\"p\">}</span>\n<span class=\"n\">Very</span> <span class=\"n\">neat</span> <span class=\"n\">IMO</span>\n</pre></div>\n\n\n<p>And parameterize output to be whatever you want. If you can arrange your dependencies topologically (which if you're using any DI library you should be able to) then this is a concise and expressive way to get very configurable test harnesses.</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 126953628,
            "is_me_message": false,
            "last_edit_timestamp": 1527036545,
            "reactions": [],
            "recipient_id": 106755,
            "sender_email": "ajarara94@gmail.com",
            "sender_full_name": "Ahmad Jarara (S2'17)",
            "sender_id": 101400,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Testing",
            "submessages": [],
            "timestamp": 1527036525,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/a0dee7b2f79915213075f1ca226224764407ad4d?x=x&version=4",
            "client": "website",
            "content": "<p>I'm feeling less and less like mocking is the correct way to go.</p>\n<p>If a method on a class performs a query, (and that query does no IO) then the whole dependency tree necessary for making that query should be injected?</p>\n<p>Or shouldn't it? This is independent of kotlin, but it's relevant to this post.</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 130184282,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 106755,
            "sender_email": "ajarara94@gmail.com",
            "sender_full_name": "Ahmad Jarara (S2'17)",
            "sender_id": 101400,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Testing",
            "submessages": [],
            "timestamp": 1532396321,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/a0dee7b2f79915213075f1ca226224764407ad4d?x=x&version=4",
            "client": "website",
            "content": "<p>at work we're slowly moving to functional programming with kotlin, very exciting!</p>\n<p>This has code stop caring about dependency injection and hidden state, which kind of alleviates this. It explains a little bit why no one here or at work was excited about this (beyond extension function use here), mocks are too clinical.</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 154388460,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 106755,
            "sender_email": "ajarara94@gmail.com",
            "sender_full_name": "Ahmad Jarara (S2'17)",
            "sender_id": 101400,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Testing",
            "submessages": [],
            "timestamp": 1546576610,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/6b5fe2f87b37afbbfe2a6aa4a84b7f97ebd6679f?x=x&version=2",
            "client": "website",
            "content": "<p>Hi there!  I will be at RC for the Spring 1 batch.  I worked a little with Kotlin at my last job, and I'd be interested in working with it more at RC.  However, I don't have a clear-cut idea for what kind of project I'd like to work on.  Would anyone else be interested in collaborating on a Kotlin project during Spring 1?  (Alternatively, if any alumni have recommendations for Kotlin projects or resources that are good for beginners, please give a shout!)</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 158384689,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 106755,
            "sender_email": "eileenm@gmail.com",
            "sender_full_name": "Eileen McFarland (she) (SP1'19)",
            "sender_id": 203637,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Kotlin in Spring 1 2019?",
            "submessages": [],
            "timestamp": 1550003188,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/a0dee7b2f79915213075f1ca226224764407ad4d?x=x&version=4",
            "client": "website",
            "content": "<p><span class=\"user-mention\" data-user-id=\"203637\">@Eileen McFarland (SP1'19)</span> was your last job app development, and are you interested in pushing that? If so, I'd ask in <a class=\"stream\" data-stream-id=\"25710\" href=\"/#narrow/stream/25710-android\">#android</a>, since that has more active people. Though, Kotlin on the server is absolutely possible (just like any JVM app), browser apps as well, desktop applications less so.</p>\n<p>IMO I'm not so enthusiastic about Kotlin as a personal project platform unless you have a problem you want to solve, there's a couple critical places that are still black boxy to me (the IDE, dependency packaging). But if you're not interested in those and just want to get going with android development I couldn't recommend it enough.</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 158832081,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 106755,
            "sender_email": "ajarara94@gmail.com",
            "sender_full_name": "Ahmad Jarara (S2'17)",
            "sender_id": 101400,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Kotlin in Spring 1 2019?",
            "submessages": [],
            "timestamp": 1550527588,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/6b5fe2f87b37afbbfe2a6aa4a84b7f97ebd6679f?x=x&version=2",
            "client": "website",
            "content": "<p>Thanks for the input!</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 158833344,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f44d",
                    "emoji_name": "+1",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "ajarara94@gmail.com",
                        "full_name": "Ahmad Jarara (S2'17)",
                        "id": 101400
                    },
                    "user_id": 101400
                }
            ],
            "recipient_id": 106755,
            "sender_email": "eileenm@gmail.com",
            "sender_full_name": "Eileen McFarland (she) (SP1'19)",
            "sender_id": 203637,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Kotlin in Spring 1 2019?",
            "submessages": [],
            "timestamp": 1550528771,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/442d5e64eb80a7ad704bcf4b48daa82e1355d641?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>I'm going to this at Etsy June 11. Come if you're interested! <a href=\"https://www.meetup.com/Brooklyn-Kotlin/events/261514280/\" target=\"_blank\" title=\"https://www.meetup.com/Brooklyn-Kotlin/events/261514280/\">https://www.meetup.com/Brooklyn-Kotlin/events/261514280/</a></p>\n<p>A former coworker runs it. It's a nice small meetup that feels safe to me and seems like it could be a good place to try giving a talk in the future.</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 167206195,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "9129",
                    "emoji_name": "animatedoctopus",
                    "reaction_type": "realm_emoji",
                    "user": {
                        "email": "jaryn.colbert@gmail.com",
                        "full_name": "Jaryn Colbert (she) (S1'19)",
                        "id": 203871
                    },
                    "user_id": 203871
                }
            ],
            "recipient_id": 106755,
            "sender_email": "brunerson@gmail.com",
            "sender_full_name": "Amelia Rimera Binotti Riely (F2'17)",
            "sender_id": 102006,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Brooklyn Kotlin June 11",
            "submessages": [],
            "timestamp": 1559578749,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/05d3b7075db36e6c7cc6d32352cf7a9c8156e6a0?x=x&version=2",
            "client": "ZulipMobile",
            "content": "<p>oh thanks for posting, just signed up ^ . ^</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 167298707,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f389",
                    "emoji_name": "tada",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "brunerson@gmail.com",
                        "full_name": "Amelia Rimera Binotti Riely (F2'17)",
                        "id": 102006
                    },
                    "user_id": 102006
                }
            ],
            "recipient_id": 106755,
            "sender_email": "trinityXmontoya@gmail.com",
            "sender_full_name": "Trinity Montoya (she) (S1'19)",
            "sender_id": 221831,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Brooklyn Kotlin June 11",
            "submessages": [],
            "timestamp": 1559658135,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/6118286a72369a30cf448764301b2607f22a422e?x=x&version=4",
            "client": "ZulipElectron",
            "content": "<p>I'm also planning to join! I'll head out from RC after Non-Tech talks ends (around 6:30)</p>",
            "content_type": "text/html",
            "display_recipient": "kotlin",
            "flags": [
                "read",
                "historical"
            ],
            "id": 167313080,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f64c",
                    "emoji_name": "raised_hands",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "brunerson@gmail.com",
                        "full_name": "Amelia Rimera Binotti Riely (F2'17)",
                        "id": 102006
                    },
                    "user_id": 102006
                },
                {
                    "emoji_code": "1f64c",
                    "emoji_name": "raised_hands",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "trinityXmontoya@gmail.com",
                        "full_name": "Trinity Montoya (she) (S1'19)",
                        "id": 221831
                    },
                    "user_id": 221831
                }
            ],
            "recipient_id": 106755,
            "sender_email": "jaryn.colbert@gmail.com",
            "sender_full_name": "Jaryn Colbert (she) (S1'19)",
            "sender_id": 203871,
            "sender_realm_str": "recurse",
            "stream_id": 102327,
            "subject": "Brooklyn Kotlin June 11",
            "submessages": [],
            "timestamp": 1559666751,
            "topic_links": [],
            "type": "stream"
        },
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
