moment = require('moment')
cheerio = require('cheerio')
url = require('url')

docpadConfig = function(){

	var categories = [
		"ata",
		"novosConhecimentos",
		"geral"
	]

	return {
		documentsPaths: ['documents', 'posts'],

		filesPaths: ['assets'],

		plugins: {
			handlebars: {
				helpers: {
					getCollection: function(name){
						return this.getCollection(name).toJSON()
					},

					dateAsText: function(date){
						return moment(date).lang('pt').format('DD MMM YYYY')
					},

					getIdForDocument: function(document, docpad) {
			      var date, hostname, path
			      hostname = url.parse(docpad.site.url).hostname
			      date = document.date.toISOString().split('T')[0]
			      path = document.url
			      return "tag:" + hostname + "," + date + ":" + path
		    	},

			    fixLinks: function(content, docpad) {
			      var $, baseUrl, regex
			      baseUrl = docpad.site.url
			      regex = /^(http|https|ftp|mailto):/
			      $ = cheerio.load(content)
			      $('img').each(function() {
			        var $img, src
			        $img = $(this)
			        src = $img.attr('src')
			        if (!regex.test(src)) {
			          return $img.attr('src', baseUrl + src)
			        }
			      })
			      $('a').each(function() {
			        var $a, href
			        $a = $(this)
			        href = $a.attr('href')
			        if (!regex.test(href)) {
			          return $a.attr('href', baseUrl + href)
			        }
			      })
			      return $.html()
			    },

					feedDate: function(date){
						return date.toISOString()
					}
		  	}
			}
		},

		collections : function(){
			var collections = {
				posts : function(){
					return this.getCollection("documents")
								 .setFilter('isPost', function(model){
								 	var isIn = model.attributes.fullPath.substr((__dirname+'/src/').length)
								 	return isIn.indexOf('posts') == 0
								 })
								 .on("add", function(model){
								 	model.setMetaDefaults({layout: 'post'})
								 })
								 .setComparator(function(postA, postB){
									var dateA = postA.toJSON().date
									var dateB = postB.toJSON().date
                 	return moment(dateB).unix() - moment(dateA).unix()
								 })
								 .live()
				}
			}

			for(var i=0; i<categories.length; i++){
				(function(){
					var query = {category: categories[i]}
					collections[categories[i]] = function(){
						return this.getCollection("posts")
									 .findAllLive(query)
					}
				}())
			}
			return collections
		}(),

		templateData: {
			site: {
				title: "CaelUX"
			}
		},

		environments: {
			static: {
				templateData: {
					site: {
						url: "http://leocwolter.github.io/caelux",
						baseUrl: "/caelux"
					}
				}
			}
		}
	}
}()
module.exports = docpadConfig
