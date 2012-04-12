--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : Aaron Stricklin
--  Description...... : collectible items will increase in the hud
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ActivatorAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
    --gets the collided models name
    local sOName = object.getModelName ( hTargetObject )
    
    --checks to see if the object is the avatar
    if(sOName == this.sAvatar ( )) then
	
        --sends event to the hudai
        user.sendEvent ( application.getCurrentUser ( ), "HudAI", this.sActivatorM ( ) )
    
        --removes the sensor to not count it again
        sensor.removeAll ( this.hCollectible ( ) )
    
        --sets the object invisible
        object.setVisible ( this.hCollectible ( ), false )
	
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
