--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function transportAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
    --gets the objects name
    local sOName = object.getModelName ( hTargetObject )
    
    --if its the avatar then jump scene
	if(sOName == this.sAvatar ( ))then
    
        --sends event to switch scenes
        user.sendEvent ( application.getCurrentUser ( ), "MainAI", "onChangeScene", this.sDestination ( ) )
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
