--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onInit (  )
--------------------------------------------------------------------------------
	--adds events to the scene
    local bScene = application.setCurrentUserScene ( "Scene1" )
    
    --if the hud is create then create get other objects
    if( bScene) then
    
        this.hDirectionalLigh1 ( application.getCurrentUserSceneTaggedObject ( "DirectionalLight1" ) )
        this.hSimpleCamera1 ( application.getCurrentUserSceneTaggedObject ( "SimpleCamera1" ))
        this.hAvatar ( application.getCurrentUserSceneTaggedObject ( "gingy" ))
        this.hFlag ( application.getCurrentUserSceneTaggedObject ( "flag" ))
        application.setCurrentUserActiveCamera ( this.hSimpleCamera1 ( ) )
    
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
