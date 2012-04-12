--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : Aaron Stricklin
--  Description...... : collectible items will increase in the hud
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function collectibleAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
    --gets the collided models name
    local sOName = object.getModelName ( hTargetObject )
    
    if(sOName == this.sAvatar ( )) then
	
        --sends event to the hudai
        user.sendEvent ( application.getCurrentUser ( ), "HudAI", this.sCollectibleM ( ) )
    
        --removes the sensor to not count it again
        sensor.removeAll ( this.hCollectible ( ) )
    
        --checks to see if the object has a dynamics controller
        if(object.hasController ( this.hCollectible(), object.kControllerTypeDynamics ))then
            
            --removes dynamics
            dynamics.enableDynamics ( this.hCollectible ( ), false )
            dynamics.enableCollisions ( this.hCollectible ( ), false  )
            dynamics.enableGravity ( this.hCollectible ( ), false )
        
        end
        
        --sets the object invisible
        object.setVisible ( this.hCollectible ( ), false )
	
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
