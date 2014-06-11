---
layout: default
referenceOthers: true
---

<ul>
	{{#each (getCollection "posts")}}
		<li>
			<span>{{dateAsText this.date}}</span>
			<h2>{{{this.title}}}</h2>
		</li>
	{{/each}}
</ul>
