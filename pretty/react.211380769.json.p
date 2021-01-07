{
    "anchor": 211380769,
    "found_anchor": true,
    "found_newest": true,
    "found_oldest": false,
    "history_limited": false,
    "messages": [
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/203ece6b30be5cb94c1a95a8a4976d34a584298f?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>So from what I've read, <code>context</code> acts like a global variable once set. So in the case of your code when ThemeContextProvider is called, it sets a global context with this code: </p>\n<div class=\"codehilite\"><pre><span></span><code>            &lt;ThemeContext.Provider value={{...this.state, toggleTheme: this.toggleTheme}}&gt;\n                {this.props.children}\n            &lt;/ThemeContext.Provider&gt;\n</code></pre></div>\n\n\n<p>creating a context that holds</p>\n<div class=\"codehilite\"><pre><span></span><code>        isLightTheme: true,\n        light: { syntax: &#39;#555&#39;, ui: &#39;#ddd&#39;, bg: &#39;#eee&#39; },\n        dark: { syntax: &#39;#ddd&#39;, ui: &#39;#333&#39;, bg: &#39;#555&#39; },\n        toggleTheme\n</code></pre></div>\n\n\n<p>A <code>static</code> method allows for methods to be called without a class. I think this piece creates a context and binds it to the current object it is being called within. So <code>static contextType = ThemeContext;</code> being called inside of NavBar binds context to the NavBar allowing you to retrieve the context set by ThemeContextProvider. This is also why <code>ThemeContextProvider</code> is a parent to <code>NavBar</code> in the App.js file so the value is set before NavBar access that context information.</p>\n<p>Happy to jump on a call and talk through this as well, since I am still learning and may have some holes in my thoughts on how this is functioning.</p>",
            "content_type": "text/html",
            "display_recipient": "react",
            "flags": [
                "read",
                "historical"
            ],
            "id": 211380421,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 41095,
            "sender_email": "ilawal1996@gmail.com",
            "sender_full_name": "Ifeoluwa Lawal (he) (F1'20)",
            "sender_id": 327910,
            "sender_realm_str": "recurse",
            "stream_id": 27173,
            "subject": "Trouble Understanding Context Providers",
            "submessages": [],
            "timestamp": 1601150767,
            "topic_links": [],
            "type": "stream"
        },
        {
            "avatar_url": "https://zulip-avatars.s3.amazonaws.com/13/203ece6b30be5cb94c1a95a8a4976d34a584298f?x=x&version=2",
            "client": "ZulipElectron",
            "content": "<p>To remove some of the import export abstraction, if I am thinking about this correct, if you substituted the <code>&lt;ThemeContextProvider&gt;</code> in App.js with <code>&lt;ThemeContext.Provider value={{isLightTheme: true,\n        light: { syntax: '#555', ui: '#ddd', bg: '#eee' },\n        dark: { syntax: '#ddd', ui: '#333', bg: '#555' }, toggleTheme: true }}&gt;</code> and had <code>const ThemeContext = React.createContext()</code> so App.js knows what ThemeContext is, your code should function the same (I could be missing though what the {this.props.children} part is doing).</p>\n<div class=\"codehilite\" data-code-language=\"JavaScript\"><pre><span></span><code><span class=\"kr\">import</span> <span class=\"nx\">React</span> <span class=\"nx\">from</span> <span class=\"s1\">'react'</span>\n\n<span class=\"kr\">const</span> <span class=\"nx\">ThemeContext</span> <span class=\"o\">=</span> <span class=\"nx\">React</span><span class=\"p\">.</span><span class=\"nx\">createContext</span><span class=\"p\">()</span>\n\n<span class=\"kd\">function</span> <span class=\"nx\">App</span><span class=\"p\">()</span> <span class=\"p\">{</span>\n    <span class=\"k\">return</span> <span class=\"p\">(</span>\n        <span class=\"p\">&lt;</span><span class=\"nt\">div</span> <span class=\"na\">className</span><span class=\"o\">=</span><span class=\"s\">\"App\"</span><span class=\"p\">&gt;</span>\n            <span class=\"p\">&lt;</span><span class=\"nt\">ThemeContext</span><span class=\"p\">.</span><span class=\"na\">Provider</span> <span class=\"na\">value</span><span class=\"o\">=</span><span class=\"p\">{{</span><span class=\"nx\">isLightTheme</span><span class=\"o\">:</span> <span class=\"kc\">true</span><span class=\"p\">,</span>\n        <span class=\"nx\">light</span><span class=\"o\">:</span> <span class=\"p\">{</span> <span class=\"nx\">syntax</span><span class=\"o\">:</span> <span class=\"s1\">'#555'</span><span class=\"p\">,</span> <span class=\"nx\">ui</span><span class=\"o\">:</span> <span class=\"s1\">'#ddd'</span><span class=\"p\">,</span> <span class=\"nx\">bg</span><span class=\"o\">:</span> <span class=\"s1\">'#eee'</span> <span class=\"p\">},</span>\n        <span class=\"nx\">dark</span><span class=\"o\">:</span> <span class=\"p\">{</span> <span class=\"nx\">syntax</span><span class=\"o\">:</span> <span class=\"s1\">'#ddd'</span><span class=\"p\">,</span> <span class=\"nx\">ui</span><span class=\"o\">:</span> <span class=\"s1\">'#333'</span><span class=\"p\">,</span> <span class=\"nx\">bg</span><span class=\"o\">:</span> <span class=\"s1\">'#555'</span> <span class=\"p\">},</span> <span class=\"nx\">toggleTheme</span><span class=\"o\">:</span> <span class=\"kc\">true</span> <span class=\"p\">}}&gt;</span>\n                <span class=\"p\">&lt;</span><span class=\"nt\">AuthContextProvider</span><span class=\"p\">&gt;</span>\n                    <span class=\"p\">&lt;</span><span class=\"nt\">Navbar</span><span class=\"p\">/&gt;</span>\n                    <span class=\"p\">&lt;</span><span class=\"nt\">BookList</span><span class=\"p\">/&gt;</span>\n                    <span class=\"p\">&lt;</span><span class=\"nt\">ThemeToggle</span><span class=\"p\">/&gt;</span>\n                <span class=\"p\">&lt;/</span><span class=\"nt\">AuthContextProvider</span><span class=\"p\">&gt;</span>\n            <span class=\"p\">&lt;/</span><span class=\"nt\">ThemeContext</span><span class=\"p\">.</span><span class=\"na\">Provider</span><span class=\"p\">&gt;</span>\n        <span class=\"p\">&lt;/</span><span class=\"nt\">div</span><span class=\"p\">&gt;</span>\n    <span class=\"p\">);</span>\n<span class=\"p\">}</span>\n</code></pre></div>",
            "content_type": "text/html",
            "display_recipient": "react",
            "flags": [
                "read",
                "historical"
            ],
            "id": 211380769,
            "is_me_message": false,
            "reactions": [],
            "recipient_id": 41095,
            "sender_email": "ilawal1996@gmail.com",
            "sender_full_name": "Ifeoluwa Lawal (he) (F1'20)",
            "sender_id": 327910,
            "sender_realm_str": "recurse",
            "stream_id": 27173,
            "subject": "Trouble Understanding Context Providers",
            "submessages": [],
            "timestamp": 1601151323,
            "topic_links": [],
            "type": "stream"
        }
    ],
    "msg": "",
    "result": "success"
}
