 App.LeadController = Ember.ObjectController.extend

 	isEditing: false,

 	actions:
 		saveChanges: -> @get('model').save() if @get('model.isDirty')

 		delete: -> @get('model').destroyRecord().then =>
 			@transitionToRoute 'leads'

 	showUnsavedMessage: ( ->
 		@get('isDirty') && !@get('isSaving')
 	).property('isDirty', 'isSaving')
