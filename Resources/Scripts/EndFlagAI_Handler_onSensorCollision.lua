--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function EndFlagAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when a sensor collision occurs.
	--
    log.message ( nSensorID, " ",  hTargetObject, " ", nTargetSensorID )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
