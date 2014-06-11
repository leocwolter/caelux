---
layout: default
referenceOthers: true
---
<ol class="post-prez">
	{{#each (getCollection "posts")}}
		<li class="post">
			<span class="post-info post-date">{{dateAsText this.date}}</span>
			<small class="post-info post-category {{this.category}}">{{this.category}}</small>
			<a class="post-link" href="{{../site.baseUrl}}{{this.url}}">{{this.title}}</a>
		</li>
	{{/each}}
</ol>
