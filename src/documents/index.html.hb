---
layout: default
referenceOthers: true
---

<ul>
	{{#each (getCollection "posts")}}
		<li>
			<h2>{{{this.title}}}</h2>
			{{{this.contentRenderedWithoutLayouts}}}
		</li>
	{{/each}}
</ul>
