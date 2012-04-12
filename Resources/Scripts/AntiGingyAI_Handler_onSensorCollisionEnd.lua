--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionEnd
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AntiGingyAI.onSensorCollisionEnd ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	local sMTarget = object.getModelName ( hTargetObject )
    
	--sets the collided to true
    if(sMTarget == this.sAvatar ( ))then
        this.bCollided ( false)
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
