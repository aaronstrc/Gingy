--------------------------------------------------------------------------------
--  Handler.......... : onMouseButtonDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.onMouseButtonDown ( nButton, nPointX, nPointY, nRayPntX, nRayPntY, nRayPntZ, nRayDirX, nRayDirY, nRayDirZ )
--------------------------------------------------------------------------------
	
	--
	-- handler that sends events for punch
    this.bPunch ( true )
    
    --send and even to the enemy if exist
    if( this.bCollided ( )) then
        
        --if weapons equipped let the weapon handle the hits 
        if(this.bWeapon() == false) then
        
            --gets number of aimodels
            local nAiModels = object.getAIModelCount ( this.hCollided ( ) )
        
            --loops through the aimodels
            for i = 0, nAiModels - 1, 1 do
        
                --gets aimodels name
                local sAiName = object.getAIModelNameAt( this.hCollided ( ), i)
        
                local bOnHit = object.hasAIEventHandler ( this.hCollided ( ), sAiName, "onHit"  )
        
                --if it has handler send message to it
                if(bOnHit)then
            
                    --sends an event to enemy
                    object.sendEvent ( this.hCollided ( ), sAiName, "onHit" )
            
                end
            end
            
        --end weapon
        end 
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
