--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
    log.warning ( nSensorID, hTargetObject, nTargetSensorID  )
    
    --gets the avatars id
    local nAvatarID = sensor.getIDAt (this.hAvatar ( ), 0 )
    
    --if avatar sensors is activated 
    if(nAvatarID == nSensorID) then
        
        --passes the avatar ai message that will handle the type of collistion
        object.sendEvent ( this.hAvatar ( ), "AvatarAI", "onSensorCollision", nSensorID, hTargetObject, nTargetSensorID )
        
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
