--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function UnlockableAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	--gets the collided models name
    local sOName = object.getModelName ( hTargetObject )
    
    --checks if the object was the avatar
    if(sOName == this.sAvatar ( )) then
	
        --sends event to the hudai
        user.sendEvent ( application.getCurrentUser ( ), "HudAI", this.sUnlockableM ( ), this.hUnlockable ( ) )
	
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
