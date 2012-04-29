--------------------------------------------------------------------------------
--  Handler.......... : onHit
--  Author........... : Aaron Stricklin
--  Description...... : handler for when the enemy gets hit
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function EnemyAI.onHit (  )
--------------------------------------------------------------------------------
    
    --plays sound that it was hit
    --NOTE:the hit sound should always be 0 index
    sound.play ( this.hEnemy ( ), 0, 3, false, 1 )
    
	--checks the hit count if greater than 1 decrement health
    if(this.nAllowedHits ( ) > 1) then
    
        --decreases health
        this.nAllowedHits ( this.nAllowedHits ( ) - 1 )
        
    else
    
        --reduces hits 
        this.nAllowedHits ( 0 )
        
        --sets the object invisible
        object.setVisible ( this.hEnemy ( ), false )
        
        --removes collisions
        dynamics.enableCollisions ( this.hEnemy ( ), false )
    
        --removes the sensor
        sensor.removeAll ( this.hEnemy ( ) )
        
        --turns sounds off
        this.allowSound(false)
        
        --gets enemies translation
        local x, y, z = object.getTranslation ( this.hEnemy ( ), object.kGlobalSpace )

        
        --creates runtime object for special dying effect
        local hRuntime = scene.createRuntimeObject ( application.getCurrentUserScene ( ), this.sDeadEffect ( ) )
        
        --then positions runtime to enemies position for special effects
        object.setTranslation ( hRuntime, x, y, z, object.kGlobalSpace )
        
        --drops an item if bDropItem is set to true
        if(this.bDropItem ( ) == true)then
        
            --creates a runtime object
            local hDObject = scene.createRuntimeObject ( application.getCurrentUserScene ( ), this.sDropItem ( ) )
            
            --then positions runtime to enemies position
            object.setTranslation ( hDObject, x, y, z, object.kGlobalSpace )
            
            --moves it a little back to see the objects
            object.setTranslation ( hDObject, 0, 3, -3, object.kLocalSpace )
        
        end

    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
