---
layout: 'default'
referenceOthers: true
---

<ul>
	{{#each posts}}
		<li>{{{contentRenderedWithoutLayouts}}}</li>
	{{/each}}
</ul>