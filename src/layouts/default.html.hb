<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>{{site.title}}</title>
	<link rel="stylesheet" href="{{site.baseUrl}}/icons.css">
	<link rel="stylesheet" href="{{site.baseUrl}}/style.css">
	<link rel="alternate" type="application/rss+xml" title="RSS Feed for petefreitag.com" href="{{site.baseUrl}}/rss.xml" />
</head>
<body>
	<header>
		<span class="header-content">
			<h1 class="header-title">{{site.title}}</h1>
			<a class="header-option home-link" href='{{site.baseUrl}}/'>
				<span class="header-option-alt">Ir para a página principal</span>
			</a>
			<a class="header-option feed-link" href='{{site.baseUrl}}/rss.xml'>
				<span class="header-option-alt">Assine o feed</span>
			</a>
		</span>
	</header>
	<main>
		{{{content}}}
	</main>
</body>
</html>
