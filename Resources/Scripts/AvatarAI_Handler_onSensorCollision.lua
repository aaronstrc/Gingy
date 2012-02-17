--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
    local sOName = object.getModelName ( hTargetObject )
    
    --log out collision
	if(sOName == "Box1")then
        
        user.sendEvent ( application.getCurrentUser ( ), "HudAI", "onIncreaseLife" )
    
        --removes the sensor to not count it again
        sensor.removeAll ( hTargetObject )
    
        --sets the object invisible
        object.setVisible ( hTargetObject, false )
    
    elseif(sOName == "sprinkle")then
        
        user.sendEvent ( application.getCurrentUser ( ), "HudAI", "onIncreaseSprinkles" )
    
        --removes the sensor to not count it again
        sensor.removeAll ( hTargetObject )
    
        --sets the object invisible
        object.setVisible ( hTargetObject, false )
        
    elseif(sOName == "flag")then

        --sends event to pause the game
        user.sendEvent ( application.getCurrentUser ( ), "MainAI", "onEndGame" )
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
