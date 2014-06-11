moment = require('moment')

docpadConfig = function(){
	var categories = [
		"ata",
		"novosConhecimentos",
		"geral"
	]

	return {
		documentsPaths: ['documents', 'posts'],

		plugins: {
			handlebars: {
				helpers: {
					getCollection: function(name){
						return this.getCollection(name).toJSON()
					},

					dateAsText: function(date){
						return moment(date).lang('pt').format('DD MMM YYYY')
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
                 	model.setMeta({ extensions: ['html','md', 'hb'], layout: 'post'})
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
		}

	}
}()
module.exports = docpadConfig
