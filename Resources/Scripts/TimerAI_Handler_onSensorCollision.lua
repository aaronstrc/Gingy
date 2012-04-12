--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollision
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function TimerAI.onSensorCollision ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	--gets the collided models name
    local sOName = object.getModelName ( hTargetObject )
    
    --checks if avatar
    if(sOName == this.sAvatar ( )) then
	
        --gets objects translation
        local x, y, z = object.getTranslation ( this.hTimerObject ( ), object.kGlobalSpace )
    
        --destroys that object
        scene.destroyRuntimeObject ( application.getCurrentUserScene ( ), this.hTimerObject ( ) )
    
        --checks if need to send an event
        if(this.bAction ( ))then
        
            --sends event
            user.sendEvent ( application.getCurrentUser ( ), this.sAIForAction ( ), this.sAction ( ) )
        
        end
        
    
        --checks if need to drop something
        if( this.bDrop ( ) )then
        
            --creates drop object
            local hDrop =  scene.createRuntimeObject ( application.getCurrentUserScene ( ), this.sDropObject ( ) )
            
            --sets new translation
            object.setTranslation ( hDrop, x, y, z, object.kGlobalSpace )
        
        end
	
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
