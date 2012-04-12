--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
    local sOName = object.getModelName ( hTargetObject )
    
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
