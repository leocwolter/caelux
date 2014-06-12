<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom">
    <title>{{ site.title }}</title>
    <link href="{{ site.url }}/feed" rel="self"/>
    <link href="{{ site.url }}"/>
    <updated>{{ feedDate site.date }}</updated>
    <id>{{ site.url }}</id>
    <author>
        <name>{{ site.title }}</name>
    </author>

    {{#each (getCollection "posts")}}
      {{#if this.contentRenderedWithoutLayouts}}
        <entry>
            <title>{{ this.title }}</title>
            <link href="{{ ../../site.url }}{{ this.url }}"/>
            <updated>{{ feedDate this.date }}</updated>
            <id>{{ getIdForDocument this ../../this }}</id>
            <content type="html"><![CDATA[{{{ fixLinks this.contentRenderedWithoutLayouts ../../this }}}]]></content>
        </entry>
      {{/if}}
    {{/each}}
</feed>
