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
            "content": "<p>Welcome to <a class=\"stream\" data-stream-id=\"127311\" href=\"/#narrow/stream/127311-R\">#R</a>.</p>\n<p><strong>Description</strong>: R language, packages, applications</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 128242896,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "welcome-bot@zulip.com",
            "sender_full_name": "Welcome Bot",
            "sender_id": 100007,
            "sender_realm_str": "zulipcore",
            "stream_id": 127311,
            "subject": "hello",
            "submessages": [],
            "timestamp": 1529322896,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/e622b23d56ce1dbfd935c38e071636c4a40935e8?x=x&version=2",
            "client": "website",
            "content": "<p>To kick-off this stream, a shameless ad: I recently wrote <a href=\"https://github.com/egnha/gestalt\" target=\"_blank\" title=\"https://github.com/egnha/gestalt\">gestalt</a> to modernize three very basic operations in R, which I felt were not adequately implemented in purrr: function creation, function composition, and partial application.</p>\n<p>In contrast to the base R/purrr analogues, these operators:</p>\n<ul>\n<li>create functions with good runtime behavior</li>\n<li>support <a href=\"http://rlang.r-lib.org/reference/eval_tidy.html\" target=\"_blank\" title=\"http://rlang.r-lib.org/reference/eval_tidy.html\">tidy evaluation</a> and <a href=\"http://rlang.r-lib.org/reference/quasiquotation.html\" target=\"_blank\" title=\"http://rlang.r-lib.org/reference/quasiquotation.html\">quasiquotation</a></li>\n<li>are mutually composable (e.g., nested compositions have the same performance as flat compositions, partial application of a composition applies only to the head, etc.)</li>\n<li>preserve function \"type\" (e.g., partial application truncates formals, the formals of a composition is that of its head, etc.)</li>\n</ul>\n<p>Users will probably get the most mileage out of the <code>%&gt;&gt;&gt;%</code>operator, which adopts the magrittr <code>%&gt;%</code> syntax, but also comprehends quasiquotation. In addition to addressing a common anti-pattern\u2014the abuse of <code>%&gt;%</code>, with its attendant performance hit and non-reusability, in cases where function composition is more appropriate\u2014you can manipulate compositions using generic list methods (<code>head</code>, <code>[[</code>, <code>$</code>, <code>[</code>, <code>[[&lt;-</code>, etc.). This leads to a powerful way of thinking of <em>values as functions</em>, which I've illustrated in a <a href=\"https://cran.r-project.org/web/packages/gestalt/vignettes/gestalt.html\" target=\"_blank\" title=\"https://cran.r-project.org/web/packages/gestalt/vignettes/gestalt.html\">vignette</a>.</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 128245054,
            "is_me_message": false,
            "last_edit_timestamp": 1529326361,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "eha@posteo.de",
            "sender_full_name": "Eugene Ha (he) (S1'18)",
            "sender_id": 116366,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "gestalt",
            "submessages": [],
            "timestamp": 1529326232,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/e622b23d56ce1dbfd935c38e071636c4a40935e8?x=x&version=2",
            "client": "website",
            "content": "<p>Has anyone here made the jump from R to Julia?</p>\n<p>R is a fun, Lisp-like language, has a great graphics system, best-in-class <a href=\"https://www.rstudio.com\" target=\"_blank\" title=\"https://www.rstudio.com\">IDE</a> and <a href=\"https://cran.r-project.org/web/views/\" target=\"_blank\" title=\"https://cran.r-project.org/web/views/\">tons of packages</a> for statistics. It's superb for small scale, in-memory data analysis. But I suspect it will continue losing ground to Python in the areas of ML and AI (for which R was never really a player, anyway), language innovation, and new-user uptake. If it were not for Python being staunchly object-oriented and its absence of generic functions (which is what makes interactive analysis so effective in R), I would have switched to Python already.</p>\n<p>And for a while now there's Julia. <span class=\"user-mention\" data-user-id=\"111923\">@Yuri Vishnevsky (SP2'18)</span> gave me a little taste of the impressive things Julia can do in the hands of a skilled practitioner. For a (non-representative) example of a problem solved in R vs in Julia, see this <a href=\"https://gist.github.com/egnha/4797673709bcd9eefb3b3957a50867c5\" target=\"_blank\" title=\"https://gist.github.com/egnha/4797673709bcd9eefb3b3957a50867c5\">gist</a>. That convinced me to take a serious look at Julia.</p>\n<p>But from the perspective of an R user, I have the following concerns:</p>\n<ul>\n<li>\n<p>Does Julia have an IDE  comparable to RStudio, in terms of ease of interactivity and plotting integration?</p>\n</li>\n<li>\n<p>Does Julia have a \"dplyr\" for data frames? What about a \"ggplot2\"?</p>\n</li>\n<li>\n<p>What sort of things are still easier to do in R than in Julia?</p>\n</li>\n<li>\n<p>Is it a big pain keeping code up-to-date given the continuous flux in the language? (Ironically, I cannot get the \"Ju\" in \"Jupyter\" working for 0.7.)</p>\n</li>\n<li>\n<p>Are the main criticisms raised in this <a href=\"http://danluu.com/julialang/\" target=\"_blank\" title=\"http://danluu.com/julialang/\">blog post</a> by <span class=\"user-mention\" data-user-id=\"820\">@Dan Luu (W'13)</span> still relevant in 2018? (Poor state of testing, unfriendly core team members, etc.)</p>\n</li>\n</ul>\n<p>I'd also be interested in hearing about experiences using Julia in a production setting. (I've used R in production, via Rserve. I wouldn't advise doing that.)</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 128247381,
            "is_me_message": false,
            "last_edit_timestamp": 1529330123,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "eha@posteo.de",
            "sender_full_name": "Eugene Ha (he) (S1'18)",
            "sender_id": 116366,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Switching to Julia",
            "submessages": [],
            "timestamp": 1529329708,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/f6bd929465d6d225def8062d5a9d3f3f?d=identicon&version=1",
            "client": "website",
            "content": "<blockquote>\n<p>unfriendly core team members</p>\n</blockquote>\n<p>FWIW, I wouldn't say that the core team members are unfriendly, but I do think that correctness is a touchy subject for one of the core folks.</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 128863430,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "danluu@gmail.com",
            "sender_full_name": "Dan Luu (W'13)",
            "sender_id": 820,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Switching to Julia",
            "submessages": [],
            "timestamp": 1530331324,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/f6bd929465d6d225def8062d5a9d3f3f?d=identicon&version=1",
            "client": "website",
            "content": "<blockquote>\n<p>What about a \"ggplot2\"?</p>\n</blockquote>\n<p>Depends what you mean. IIRC, Gadfly is supposed to be this, but I believe it still doesn't claim to be complete or stable.</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 128863542,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "danluu@gmail.com",
            "sender_full_name": "Dan Luu (W'13)",
            "sender_id": 820,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Switching to Julia",
            "submessages": [],
            "timestamp": 1530331573,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/e622b23d56ce1dbfd935c38e071636c4a40935e8?x=x&version=2",
            "client": "website",
            "content": "<p>Fwd: <a href=\"#narrow/stream/18928-announce/subject/Talk.20at.20New.20York.20R.20Meetup/near/130273989\" title=\"#narrow/stream/18928-announce/subject/Talk.20at.20New.20York.20R.20Meetup/near/130273989\">https://recurse.zulipchat.com/#narrow/stream/18928-announce/subject/Talk.20at.20New.20York.20R.20Meetup/near/130273989</a></p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 130280311,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "eha@posteo.de",
            "sender_full_name": "Eugene Ha (he) (S1'18)",
            "sender_id": 116366,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Talk at R meetup",
            "submessages": [],
            "timestamp": 1532530844,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/e622b23d56ce1dbfd935c38e071636c4a40935e8?x=x&version=2",
            "client": "website",
            "content": "<p>Anyone here have experience with writing C for R? (Assuming this stream isn't an echo chamber and there's anyone here at all!)  I have an <a href=\"https://github.com/egnha/dub/issues/5\" target=\"_blank\" title=\"https://github.com/egnha/dub/issues/5\">open issue</a> in a <a href=\"https://github.com/egnha/dub\" target=\"_blank\" title=\"https://github.com/egnha/dub\">minor project</a>, which I would like to close. The task itself is minor, but the outcome would be a tool of wide applicability.</p>\n<p>I don't know C and would appreciate help and/or guidance with this. The problem is small and well defined. Contact with R's C API should be rather slight. I doubt any external libraries are required.</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 131040561,
            "is_me_message": false,
            "last_edit_timestamp": 1533650935,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "eha@posteo.de",
            "sender_full_name": "Eugene Ha (he) (S1'18)",
            "sender_id": 116366,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Pairing on optimization using C API?",
            "submessages": [],
            "timestamp": 1533644331,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/0aac726e8ce27b55809824e7f6de77e7?d=identicon&version=1",
            "client": "website",
            "content": "<p>&lt;moved to <a href=\"#narrow/stream/20293-julia/subject/Switching.20from.20R/near/132004149\" title=\"#narrow/stream/20293-julia/subject/Switching.20from.20R/near/132004149\">https://recurse.zulipchat.com/#narrow/stream/20293-julia/subject/Switching.20from.20R/near/132004149</a>&gt;</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 132004088,
            "is_me_message": false,
            "last_edit_timestamp": 1534093234,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "jamie@scattered-thoughts.net",
            "sender_full_name": "Jamie Brandon (he) (W1'20)",
            "sender_id": 863,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Switching to Julia",
            "submessages": [],
            "timestamp": 1534093097,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ee0ddeb6695d909dc44e4ccc9fc543c7b494c7d0?x=x&version=2",
            "client": "website",
            "content": "<p><span aria-label=\"wave\" class=\"emoji emoji-1f44b\" role=\"img\" title=\"wave\">:wave:</span>  Glad to see the curiosity and enthusiasm at the breakout today, and thanks <span class=\"user-mention\" data-user-id=\"341049\">@Edith Viau (she) (F2'20)</span> for spotting this channel! <a href=\"https://docs.google.com/document/d/1ILbnymrbUXzG3jdNl4f3TnKB-FBMmG8_S7lZJ5HyBCQ/edit\">Here's</a> the doc of resources we shared, and <span class=\"user-mention\" data-user-id=\"341038\">@Jemma Issroff (she) (F2'20)</span> is creating a calendar invite for +2 weeks from today</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213308554,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "danammiller360@gmail.com",
            "sender_full_name": "Dana Miller (she) (F2'20)",
            "sender_id": 342383,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1602689923,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ee0ddeb6695d909dc44e4ccc9fc543c7b494c7d0?x=x&version=2",
            "client": "website",
            "content": "<p>I'm focusing on python during my time at RC after previously working in R, but implementing eg the dashboard project I mentioned in both R and python seemed like a good way to 1) Learn dashboards and 2) Get a sense for what is analogous</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213308990,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "danammiller360@gmail.com",
            "sender_full_name": "Dana Miller (she) (F2'20)",
            "sender_id": 342383,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1602690084,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/e7b22e6eca222395efc80ac04fd61e0d?d=identicon&version=1",
            "client": "ZulipElectron",
            "content": "<p>Kaggle released an analytics <a href=\"https://www.kaggle.com/c/cdp-unlocking-climate-solutions/overview\">competition</a> looking at environmental and social performance indicators across cities. I might take a look at some of the data but this could be an interesting point to start if people are looking for a place to practice</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213350429,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "kailinluca@gmail.com",
            "sender_full_name": "Kailin Lu (she) (F2'20)",
            "sender_id": 341037,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1602709475,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ee0ddeb6695d909dc44e4ccc9fc543c7b494c7d0?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>Today I'm working through <a href=\"https://shiny.rstudio.com/tutorial/\">these</a> tutorials on Shiny apps. For inspiration, there is a gallery of apps (many with code) here: <a href=\"https://shiny.rstudio.com/gallery/\">https://shiny.rstudio.com/gallery/</a></p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213472600,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f44d",
                    "emoji_name": "+1",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "elsita.k@gmail.com",
                        "full_name": "Elsita Kiekebusch (she) (S2'20)",
                        "id": 315287
                    },
                    "user_id": 315287
                }
            ],
            "recipient_id": 152036,
            "sender_email": "danammiller360@gmail.com",
            "sender_full_name": "Dana Miller (she) (F2'20)",
            "sender_id": 342383,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1602788535,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ee0ddeb6695d909dc44e4ccc9fc543c7b494c7d0?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>Reporting back - it's pretty basic, but I now have a Shiny app with a plot that responds to multiple user selection options online here: <a href=\"https://dmiller.shinyapps.io/weather_apps/\">https://dmiller.shinyapps.io/weather_apps/</a></p>\n<p>Next steps that would be useful:</p>\n<ul>\n<li>Understand more about <code>FluidPage</code> to create two different responsive plots in one view</li>\n<li>Add static text and images , get color selection by city working</li>\n<li>Add smoothed average, and set up views to either  display all 3 cities in same view, or compare multiple years of data from same city (eg see if/ how much temperatures increased over last 20 years)</li>\n</ul>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213496025,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "danammiller360@gmail.com",
            "sender_full_name": "Dana Miller (she) (F2'20)",
            "sender_id": 342383,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1602801000,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/cae3948facb482f85043d095cf954013?d=identicon&version=1",
            "client": "ZulipElectron",
            "content": "<p>Just flagging, just put up a meeting on the calendar invite for exactly two weeks from our last one, on 10/28 at 11AM Eastern</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213801002,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f419",
                    "emoji_name": "octopus",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "danammiller360@gmail.com",
                        "full_name": "Dana Miller (she) (F2'20)",
                        "id": 342383
                    },
                    "user_id": 342383
                }
            ],
            "recipient_id": 152036,
            "sender_email": "jemmaissroff@gmail.com",
            "sender_full_name": "Jemma Issroff (she) (F2'20)",
            "sender_id": 341038,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Scheduled meeting",
            "submessages": [],
            "timestamp": 1603120475,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/38f320cd24a45f367ed2485034b90adb46a9d738?x=x&version=2",
            "client": "website",
            "content": "<p>Hi! I just came across this thread \u2014 I\u2019d love to join your group next time if that\u2019s alright <span aria-label=\"grinning\" class=\"emoji emoji-1f600\" role=\"img\" title=\"grinning\">:grinning:</span> I looked at the doc with notes from your last meeting, and figured I\u2019d send over a little info about myself and what I\u2019m looking to do with R:</p>\n<ul>\n<li>I\u2019m an RC alum many times over (including a stint as a facilitator), but not a super experienced programmer.</li>\n<li>I\u2019m currently in the 2nd year of my masters in public health studying Epidemiology. Our department teaches SAS, but I\u2019m committed to using R for as many projects as I can moving forward!</li>\n<li>I started teaching myself R this year, mostly using the <a href=\"https://p8105.com/\">website for a course in our Biostatistics department</a>. I\u2019m not sure whether this would be useful for people interested in a broader application of R than just public health data analysis, but I thought it was awesome!</li>\n<li>My 3 big goals with R are:<ul>\n<li>Create and release my own package to help people pick and choose the data they\u2019re interested in from a giant, messy, publicly-available dataset (I\u2019m optimistically ~1/5 of the way through this project, but know nothing about packages or hosting big files)</li>\n<li>Be comfortable using R for all of the statistical tests and graphing/table-making applications that I currently use SAS for (this is probably a combo of built-in functionality, and identifying good epidemiology libraries to lean on)</li>\n<li>Build a Shiny app \u2014&gt; be ready to throw something together and put it online whenever the opportunity arises</li>\n</ul>\n</li>\n</ul>\n<p>Mostly though, I feel like it's taking me so much longer than usual to get an intuition for the \"R\" way of doing things -- it's hard for me to think about the right unit of analysis (columns or dataframes, instead of cells), and when I write functions I'm often doing weird workarounds to be able to pass in the variables I want, which tells me I'm probably missing something way more intuitive. I hope that hearing from other people about their work in R will set me in the right direction. Looking forward to meeting you all next week!</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213825213,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "2764",
                    "emoji_name": "heart",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "eha@posteo.de",
                        "full_name": "Eugene Ha (he) (S1'18)",
                        "id": 116366
                    },
                    "user_id": 116366
                },
                {
                    "emoji_code": "2764",
                    "emoji_name": "heart",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "nick@recurse.com",
                        "full_name": "Nick Bergson-Shilcock (he)",
                        "id": 811
                    },
                    "user_id": 811
                },
                {
                    "emoji_code": "1f44b",
                    "emoji_name": "wave",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "finartcialist@gmail.com",
                        "full_name": "Edith Viau (she) (F2'20)",
                        "id": 341049
                    },
                    "user_id": 341049
                },
                {
                    "emoji_code": "2764",
                    "emoji_name": "heart",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "danammiller360@gmail.com",
                        "full_name": "Dana Miller (she) (F2'20)",
                        "id": 342383
                    },
                    "user_id": 342383
                }
            ],
            "recipient_id": 152036,
            "sender_email": "asinghamgoodwin@gmail.com",
            "sender_full_name": "Alicia Thilani Singham Goodwin (she) (F1'16)",
            "sender_id": 8469,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1603131595,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/e622b23d56ce1dbfd935c38e071636c4a40935e8?x=x&version=2",
            "client": "website",
            "content": "<p><span class=\"user-mention\" data-user-id=\"8469\">@Alicia Thilani Singham Goodwin (she) (F1'16)</span>, I think it does indeed take a while to get used to R's idiosyncrasies and develop an intuition about it. Took me about a year of continuous study and practice. (Not saying it should take you that long, just that it took me that long!) Three books were very helpful on that journey:</p>\n<ol>\n<li><a href=\"https://www.burns-stat.com/pages/Tutor/R_inferno.pdf\">The R Inferno</a> by Patrick Burns.</li>\n<li><a href=\"https://www.springer.com/gp/book/9780387759357\">Software for Data Analysis: Programming with R</a> by John Chambers.</li>\n<li><a href=\"https://web.mit.edu/alexmv/6.037/sicp.pdf\">Structure and Interpretation of Computer Programs</a> by Abelson and Sussman.</li>\n</ol>\n<p>Burns is an entertaining compendium of \"quirks\"\u2014not just what they are, but _why_ they are so. Chambers is a masterful book which really shows you how to wield the language and understand how it works\u2014straight from the horse's mouth. SICP might appear to be the odd man out, but in fact section 3.2 is, to my knowledge, the most lucid exposition of R's evaluation model.</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213832673,
            "is_me_message": false,
            "last_edit_timestamp": 1603135689,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "eha@posteo.de",
            "sender_full_name": "Eugene Ha (he) (S1'18)",
            "sender_id": 116366,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1603135403,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/e622b23d56ce1dbfd935c38e071636c4a40935e8?x=x&version=2",
            "client": "website",
            "content": "<p>(Chambers is one of those rare computer books that you can enjoy at your desk and as bedtime reading.)</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213833069,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "eha@posteo.de",
            "sender_full_name": "Eugene Ha (he) (S1'18)",
            "sender_id": 116366,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1603135603,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ee0ddeb6695d909dc44e4ccc9fc543c7b494c7d0?x=x&version=2",
            "client": "website",
            "content": "<p><span class=\"user-mention\" data-user-id=\"8469\">@Alicia Thilani Singham Goodwin (she) (F1'16)</span>  to add on to <span class=\"user-mention\" data-user-id=\"116366\">@Eugene Ha (he) (S1'18)</span> 's helpful notes above (thanks! I hadn't heard of looking at SICP to learn about R) , there is also a newer book called <a href=\"https://gvwilson.github.io/tidynomicon/\">\"The Tidynomicon\"</a> (by Software Carpentry co-founder Greg Wilson) that's similar to the perspective of \"The R Inferno\" but specifically written for the more recent tidyverse ecosystem of data analysis tools (using dplyr, %&gt;% etc) as opposed to base R</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213835992,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f44d",
                    "emoji_name": "+1",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "eha@posteo.de",
                        "full_name": "Eugene Ha (he) (S1'18)",
                        "id": 116366
                    },
                    "user_id": 116366
                }
            ],
            "recipient_id": 152036,
            "sender_email": "danammiller360@gmail.com",
            "sender_full_name": "Dana Miller (she) (F2'20)",
            "sender_id": 342383,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1603137134,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/38f320cd24a45f367ed2485034b90adb46a9d738?x=x&version=2",
            "client": "website",
            "content": "<p>Thanks so much <span class=\"user-mention\" data-user-id=\"342383\">@Dana Miller (she) (F2'20)</span> and <span class=\"user-mention\" data-user-id=\"116366\">@Eugene Ha (he) (S1'18)</span> ! These are all useful to know about - I love the idea of a technical book that you can enjoy as bedtime reading! <span aria-label=\"book\" class=\"emoji emoji-1f4d6\" role=\"img\" title=\"book\">:book:</span>  <span aria-label=\"sleeping\" class=\"emoji emoji-1f634\" role=\"img\" title=\"sleeping\">:sleeping:</span></p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213837776,
            "is_me_message": false,
            "reactions": [
                {
                    "emoji_code": "1f6cf",
                    "emoji_name": "bed",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "eha@posteo.de",
                        "full_name": "Eugene Ha (he) (S1'18)",
                        "id": 116366
                    },
                    "user_id": 116366
                }
            ],
            "recipient_id": 152036,
            "sender_email": "asinghamgoodwin@gmail.com",
            "sender_full_name": "Alicia Thilani Singham Goodwin (she) (F1'16)",
            "sender_id": 8469,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1603137925,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/e622b23d56ce1dbfd935c38e071636c4a40935e8?x=x&version=2",
            "client": "website",
            "content": "<p>One more addition to the mix: <a href=\"http://adv-r.had.co.nz\">Advanced R</a> by Hadley Wickham. Despite the title, I found this a handy book to read early on when my grasp of the language was still shaky, since it covers material that is essential to developing a solid working proficiency and demystifying R's \"quirks.\" It is a more hands-on complement to Chambers (still my favorite of the bunch, and cozy companion on long winter nights). A <a href=\"https://adv-r.hadley.nz\">newer edition</a> is available. However, the first edition is not obsolete because it:</p>\n<ul>\n<li>predates tidyverse and therefore  focuses on R itself</li>\n<li>has an introduction to R's <a href=\"http://adv-r.had.co.nz/C-interface.html\">C API</a> (omitted in the second edition in favor of Rcpp)</li>\n</ul>\n<p>The second edition is an opinionated <a href=\"https://github.com/r-lib/rlang\">rlang</a>-flavored retake of the fundamentals. Rlang is both an exciting extension of the core language, and a potential liability in everyday use. (These days I find I am only updating my packages when rlang breaks them.)</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 213889451,
            "is_me_message": false,
            "last_edit_timestamp": 1603183816,
            "reactions": [
                {
                    "emoji_code": "1f44d",
                    "emoji_name": "+1",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "danammiller360@gmail.com",
                        "full_name": "Dana Miller (she) (F2'20)",
                        "id": 342383
                    },
                    "user_id": 342383
                },
                {
                    "emoji_code": "1f44d",
                    "emoji_name": "+1",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "yurivish@gmail.com",
                        "full_name": "Yuri Vishnevsky (SP2'18)",
                        "id": 111923
                    },
                    "user_id": 111923
                },
                {
                    "emoji_code": "1f44d",
                    "emoji_name": "+1",
                    "reaction_type": "unicode_emoji",
                    "user": {
                        "email": "asinghamgoodwin@gmail.com",
                        "full_name": "Alicia Thilani Singham Goodwin (she) (F1'16)",
                        "id": 8469
                    },
                    "user_id": 8469
                }
            ],
            "recipient_id": 152036,
            "sender_email": "eha@posteo.de",
            "sender_full_name": "Eugene Ha (he) (S1'18)",
            "sender_id": 116366,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "Resources from R meetup today",
            "submessages": [],
            "timestamp": 1603183205,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/1588fc084a150438206141abca2a434daa4c8fa5?x=x&version=2",
            "client": "website",
            "content": "<p>This is a thread for small snippets of R/Rstats knowledge!</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214856756,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "finartcialist@gmail.com",
            "sender_full_name": "Edith Viau (she) (F2'20)",
            "sender_id": 341049,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "TIL",
            "submessages": [],
            "timestamp": 1603900487,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/1588fc084a150438206141abca2a434daa4c8fa5?x=x&version=2",
            "client": "website",
            "content": "<p>I will start: as I was reading the awesome blog posts on awk by <span class=\"user-mention\" data-user-id=\"341038\">@Jemma Issroff (she) (F2'20)</span>  <a href=\"https://jemma.dev/blog/awk-part-1\">link</a>, I started wondering how awk would fare with large files. I found <a href=\"https://livefreeordichotomize.com/2019/06/04/using_awk_and_r_to_parse_25tb/\">this blog post on 25tb of data</a> which told me the following snippet of knowledge: </p>\n<div class=\"codehilite\"><pre><span></span><code>You can access stdin and stdout from inside an R script and thus use it in a pipeline.\n</code></pre></div>\n\n\n<p>Does anyone have experience using this feature? If so, please share - I would love to know more!</p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214857071,
            "is_me_message": false,
            "last_edit_timestamp": 1603900643,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "finartcialist@gmail.com",
            "sender_full_name": "Edith Viau (she) (F2'20)",
            "sender_id": 341049,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "TIL",
            "submessages": [],
            "timestamp": 1603900609,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ee0ddeb6695d909dc44e4ccc9fc543c7b494c7d0?x=x&version=2",
            "client": "website",
            "content": "<p>Great idea <span class=\"user-mention\" data-user-id=\"341049\">@Edith Viau (she) (F2'20)</span> . I have been wanting to learn to actually use parameterized reports, and found this detailed setup video: <a href=\"https://rfortherestofus.com/2020/10/parameterized-reporting-with-rmarkdown/\">https://rfortherestofus.com/2020/10/parameterized-reporting-with-rmarkdown/</a></p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214862139,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "danammiller360@gmail.com",
            "sender_full_name": "Dana Miller (she) (F2'20)",
            "sender_id": 342383,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "TIL",
            "submessages": [],
            "timestamp": 1603902551,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ee0ddeb6695d909dc44e4ccc9fc543c7b494c7d0?x=x&version=2",
            "client": "website",
            "content": "<p>I have used <code>system(...)</code> to use shell commands in R scripts, here's an example that's older but sounds towards what you describe: <a href=\"https://gettinggeneticsdone.blogspot.com/2009/12/capture-system-commands-as-r-objects.html\">https://gettinggeneticsdone.blogspot.com/2009/12/capture-system-commands-as-r-objects.html</a></p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214862694,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "danammiller360@gmail.com",
            "sender_full_name": "Dana Miller (she) (F2'20)",
            "sender_id": 342383,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "TIL",
            "submessages": [],
            "timestamp": 1603902786,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/ee0ddeb6695d909dc44e4ccc9fc543c7b494c7d0?x=x&version=2",
            "client": "website",
            "content": "<p>You can also write R scripts and run them in the command line eg <a href=\"https://swcarpentry.github.io/r-novice-inflammation/05-cmdline/\">https://swcarpentry.github.io/r-novice-inflammation/05-cmdline/</a>, and there is an <code>argparse</code> package like in python: <a href=\"https://github.com/trevorld/r-argparse\">https://github.com/trevorld/r-argparse</a></p>",
            "content_type": "text/html",
            "display_recipient": "R",
            "flags": [
                "read",
                "historical"
            ],
            "id": 214863027,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 152036,
            "sender_email": "danammiller360@gmail.com",
            "sender_full_name": "Dana Miller (she) (F2'20)",
            "sender_id": 342383,
            "sender_realm_str": "recurse",
            "stream_id": 127311,
            "subject": "TIL",
            "submessages": [],
            "timestamp": 1603902934,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
