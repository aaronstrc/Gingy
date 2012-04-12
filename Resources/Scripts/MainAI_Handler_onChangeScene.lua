--------------------------------------------------------------------------------
--  Handler.......... : onChangeScene
--  Author........... : Aaron Stricklin
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onChangeScene ( sSceneName )
--------------------------------------------------------------------------------
	
    --suppose to change the scene
	local bScene = application.setCurrentUserScene ( sSceneName )
    
    
    if(bScene)then
    
        --sets the variable scene
        this.sScene ( sSceneName )
    
        --sets up the camera for the new scene
        this.hSimpleCamera1 ( application.getCurrentUserActiveCamera ( ))
        object.addAIModel ( this.hSimpleCamera1 ( ), "SimpleCameraAI" )
    end
    
    if(this.hSimpleCamera1 ( ) ~= nil) then
        --resets the avatar
        this.hAvatar ( application.getCurrentUserSceneTaggedObject ( "gingy" ))
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
