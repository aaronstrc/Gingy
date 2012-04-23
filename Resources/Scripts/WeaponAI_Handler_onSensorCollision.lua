--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WeaponAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	--gets the collided models name
    local sOName = object.getModelName ( hTargetObject )
    
    --checks if avatar
    if(sOName ~= this.sUser( ) and this.bCollided ( ) == false) then
    
        --gets number of aimodels
        local nAiModels = object.getAIModelCount ( hTargetObject )
        
        --loops through the aimodels
        for i = 0, nAiModels - 1, 1 do
        
            --gets aimodels name
            local sAiName = object.getAIModelNameAt( hTargetObject, i)
        
            local bOnHit = object.hasAIEventHandler ( hTargetObject, sAiName, "onHit"  )
        
            --if it has handler send message to it
            if(bOnHit)then
            
                --sends an event to enemy
                object.sendEvent ( hTargetObject, sAiName, "onHit" )
            
            end
        end
	
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
