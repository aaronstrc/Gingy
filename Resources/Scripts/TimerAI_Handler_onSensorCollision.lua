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
    
        --checks if need to send an event
        if(this.bAction ( ) and dynamics.getLinearSpeed ( this.hTimerObject ( ) ) >= this.nStopSpeed() )then
        
            --gets objects translation
            local x, y, z = object.getTranslation ( this.hTimerObject ( ), object.kGlobalSpace )
        
            --destroys that object
            scene.destroyRuntimeObject ( application.getCurrentUserScene ( ), this.hTimerObject ( ) )
        
            --sends event
            user.sendEvent ( application.getCurrentUser ( ), this.sAIForAction ( ), this.sAction ( ) )
        
            --checks if need to drop something
            if( this.bDrop ( ) )then
        
                --creates drop object
                local hDrop =  scene.createRuntimeObject ( application.getCurrentUserScene ( ), this.sDropObject ( ) )
            
                --sets new translation
                object.setTranslation ( hDrop, x, y, z, object.kGlobalSpace )
        
            end
        
        end
	
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
