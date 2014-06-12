---
layout: default
---
<article>
  <h2 class="post-title">{{document.title}}</h2>
  <div class="post-body">
    {{{content}}}
  </div>
  {{!-- Comentários --}}
</article>
<div id="disqus_thread"><div>
<script async>
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    var disqus_shortname = 'caelux'; // required: replace example with your forum shortname
    var disqus_identifier = '{{feedDate document.date}}:{{document.url}}';
    var disqus_url = '{{site.url}}{{document.url}}';
    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
