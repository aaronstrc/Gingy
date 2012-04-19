--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
    
    --checks to see it target is null
    if( hTargetObject ~= nil )then
    
        local sOName = object.getModelName ( hTargetObject )
    
    end
    
    --checks if the target was the avatar
    if(sOName ~= "gingy") then
    
        --sets bool for something colliding
        --also sets the collided object
        --TODO: find a better way to do this
        this.bCollided(true)
        this.hCollided ( hTargetObject)
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
