---
layout: default
referenceOthers: true
---
<ul>
	{{#each (getCollection "posts")}}
		<ol>
			<span>{{dateAsText this.date}}</span>
			<a href="{{this.url}}">{{{this.title}}}</a>
		</ol>
	{{/each}}
</ul>
