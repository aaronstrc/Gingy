--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onInit (  )
--------------------------------------------------------------------------------
	--adds events to the scene
    local bScene = application.setCurrentUserScene ( this.sScene ( ) )
    
    --if the hud is create then create get other objects
    if( bScene) then
    
        this.hDirectionalLigh1 ( application.getCurrentUserSceneTaggedObject ( "DirectionalLight1" ) )
        this.hSimpleCamera1 ( application.getCurrentUserActiveCamera ( ))
        this.hAvatar ( application.getCurrentUserSceneTaggedObject ( "gingy" ))
        application.setCurrentUserActiveCamera ( this.hSimpleCamera1 ( ) )
    
        music.play ( application.getCurrentUserScene ( ), 0, 0 )
    
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
