--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : Aaron Stricklin
--  Description...... : collectible items will increase in the hud
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ObjectActivatorAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
    --gets the collided models name
    local sOName = object.getModelName ( hTargetObject )
    
    if(sOName == this.sAvatar ( )) then
	
        --gets activator objects translation
        local x, y, z = object.getTranslation ( this.hActivator ( ), object.kGlobalSpace )
        
        --sends event to the hudai
        --user.sendEvent ( application.getCurrentUser ( ), "HudAI", this.sRunTimeObject ( ) )
        local hRunTimeObject =  scene.createRuntimeObject ( application.getCurrentUserScene ( ), this.sRunTimeObject ( ))
        
        --sets the new objects position
        object.setTranslation ( hRunTimeObject, x, y, z, object.kGlobalSpace )
        
        --NOTE:may need to bind ai to runtime object
    
        --removes the sensor to not count it again
        sensor.removeAll ( this.hActivator ( ) )
    
        --sets the object invisible
        object.setVisible ( this.hActivator ( ), false )
	
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
