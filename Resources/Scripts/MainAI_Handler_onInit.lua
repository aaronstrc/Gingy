--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onInit (  )
--------------------------------------------------------------------------------
	
    application.setCurrentUserScene ( "Scene1" )
    this.hDirectionalLigh1 ( application.getCurrentUserSceneTaggedObject ( "DirectionalLight1" ) )
    this.hSimpleCamera1 ( application.getCurrentUserSceneTaggedObject ( "SimpleCamera1" ))
    this.hAvatar ( application.getCurrentUserSceneTaggedObject ( "gingy" ))
    application.setCurrentUserActiveCamera ( this.hSimpleCamera1 ( ) )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
