App.LeadEditController = Ember.ObjectController.extend

	actions:

		saveChanges: ->
			@get('model').save().then =>
				@transitionToRoute 'lead'

		cancel: ->
			@get('model').rollback()
			@transitionToRoute 'lead'