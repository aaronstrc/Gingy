--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SpiderAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	--detect if avatar is near
    local sObject = object.getModelName ( hTargetObject )
    
    --if gingy set bool to true
    if(sObject == "gingy") then
    
        this.bCollided ( true )
    
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
