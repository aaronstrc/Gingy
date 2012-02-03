--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
    --passes the flag ai a message that will end the game
	 object.sendEvent ( this.hFlag(),  "EndFlagAI", "onSensorCollision", nSensorID, hTargetObject, nTargetSensorID)
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
