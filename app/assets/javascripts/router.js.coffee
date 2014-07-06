# For more information see: http://emberjs.com/guides/routing/

App.Router.reopen
	location: 'auto'
	rootURL: '/'

App.Router.map ()->
  @resource 'leads', path: '/', ->
  	@route 'new'
  	@resource 'lead', path: '/leads/:id', ->
  		@route 'edit'

