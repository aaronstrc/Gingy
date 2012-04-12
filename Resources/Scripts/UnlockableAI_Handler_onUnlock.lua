--------------------------------------------------------------------------------
--  Handler.......... : onUnlock
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function UnlockableAI.onUnlock (  )
--------------------------------------------------------------------------------
	
	--removes the sensor to not count it again
    sensor.removeAll ( this.hUnlockable ( ) )
    
    --checks to see if the object has a dynamics controller
    if(object.hasController ( this.hUnlockable ( ), object.kControllerTypeDynamics ))then
            
        --removes dynamics
        dynamics.enableDynamics ( this.hUnlockable ( ), false )
        dynamics.enableCollisions ( this.hUnlockable ( ), false  )
        dynamics.enableGravity ( this.hUnlockable ( ), false )
        
    end
    
    --moves the avatar
    if(this.hAvatar ( ) ~= nil)then
    
        --moves the avatar through the door
        object.setTranslation ( this.hAvatar ( ), 0, 0, 10, object.kLocalSpace  )
        
        --gets objects position and rotation for restart
        local x, y, z = object.getTranslation ( this.hAvatar ( ), object.kGlobalSpace )
        local xR, yR, zR = object.getRotation ( this.hAvatar ( ), object.kGlobalSpace )
        
        
        --need to reset restart position
        --call to hud
        user.sendEvent ( application.getCurrentUser ( ), "HudAI", "onSetRespawnPos", x, y, z  )
        user.sendEvent ( application.getCurrentUser ( ), "HudAI", "onSetRespawnRot", xR, yR, zR  )
        
    end
        
    --sets the object invisible
    object.setVisible ( this.hUnlockable ( ), false )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
