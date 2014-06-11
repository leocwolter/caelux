---
layout: default
referenceOthers: true
---
<ol class="post-prez">
	{{#each (getCollection "posts")}}
		<li class="post">
			<small class="post-info post-category">{{this.category}}</small>
			<span class="post-info post-date">{{dateAsText this.date}}</span>
			<a class="post-link" href="{{site.url}}{{this.url}}">{{{this.title}}}</a>
		</li>
	{{/each}}
</ol>
