--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
    --throwing weird error with sensor collision hTargetObject equal nul?
    if(hTargetObject ~= nil)then
    
        local sMTarget = object.getModelName ( hTargetObject )
    
        --sets the collided to true
        if(sMTarget == this.sAvatar ( )) then
            this.bCollided ( true)
        end
	end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
