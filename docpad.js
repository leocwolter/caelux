docpadConfig = function(){
	return {
		documentsPaths : ['documents', 'posts'],

		collections : {
			ata : function() {
				return this.database.findAllLive({
					category : 'ata'
				})
			},

			novosConhecimentos : function() {
				return this.database.findAllLive({
					category : 'novosConhecimentos'
				})
			},

			geral : function() {
				return this.database.findAllLive({
					category : 'geral'
				})
			},

		},

		templateData: {
			site: {title : "CaelUX"},
			posts : function(){
				return this.getCollection("documents")
						   .findAllLive({
						   		layout : "post"
						   }).toJSON();
			}
		}	
	}
}()
module.exports = docpadConfig