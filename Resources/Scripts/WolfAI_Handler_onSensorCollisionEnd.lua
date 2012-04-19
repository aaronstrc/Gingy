--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionEnd
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.onSensorCollisionEnd ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	--throwing weird error with sensor collision hTargetObject equal nul?
    --assuming has something to do with the hit state and the axe being destroyed
    if(hTargetObject ~= nil)then
    
        local sMTarget = object.getModelName ( hTargetObject )
    
        --sets the collided to true
        if(sMTarget == this.sAvatar ( )) then
            this.bCollided ( false )
        end
	end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
