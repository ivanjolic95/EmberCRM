App.LeadsRoute = Ember.Route.extend

	model: -> @store.find 'lead'

	redirect: (model, transition) ->
		if transition.targetName == 'leads.index'
			@transitionTo 'lead', model.sortBy('fullName').get('firstObject')