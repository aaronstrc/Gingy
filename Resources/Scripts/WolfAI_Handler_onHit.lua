--------------------------------------------------------------------------------
--  Handler.......... : onHit
--  Author........... : Aaron Stricklin
--  Description...... : handler for when the enemy gets hit
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.onHit (  )
--------------------------------------------------------------------------------
    
    --plays sound that it was hit
    --NOTE:the hit sound should always be 0 index
    sound.play ( this.hEnemy ( ), 0, 3, false, 1 )
    
	--checks the hit count if greater than 1 decrement health
    if(this.nAllowedHits ( ) > 1) then
    
        --decreases health
        this.nAllowedHits ( this.nAllowedHits ( ) - 1 )
        
        --changes states
        if( math.floor ( math.mod ( this.nAllowedHits ( ), 6 )) == 0)then
        
            --calls the fall state
            this.FallAndGetup ( )
            
        end
        
    else
    
        local x, y, z = object.getTranslation ( this.hEnemy ( ), object.kGlobalSpace )
        
        --creates a helper object for particle effects
        local hFlag = scene.createRuntimeObject ( application.getCurrentUserScene ( ), "flag" )
        
        --sets flag position
        object.setTranslation ( hFlag, x, y, z, object.kGlobalSpace )
        
        --starts emitter
        --scene.createRuntimeObject ( application.getCurrentUserScene ( ), "died" )

        --shoulds destroy a runtime object
        scene.destroyRuntimeObject ( application.getCurrentUserScene ( ), this.hEnemy ( ) )

    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
