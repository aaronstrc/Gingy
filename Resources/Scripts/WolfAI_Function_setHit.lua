--------------------------------------------------------------------------------
--  Function......... : setHit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.setHit ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the idle animation code for gingy
	--
    local hasAnimation = object.hasController ( this.hEnemy ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
    
        --if hit isn't the current clip
        if(animation.getCurrentClip ( this.hEnemy ( ), 0 ) ~= hashtable.get ( this.htAnimations ( ), "hit" ))then
    
            animation.setCurrentClip ( this.hEnemy ( ), 0,  hashtable.get ( this.htAnimations ( ), "hit") )
        
            --edits the run clip to the correct beginning frame
            animation.setPlaybackKeyFrameBegin ( this.hEnemy ( ), 0, hashtable.get( this.htAnimations ( ), "hit_begin" ) )
        
            --edits the run clip to the correct ending frame
            animation.setPlaybackKeyFrameEnd (  this.hEnemy ( ), 0, hashtable.get( this.htAnimations ( ), "hit_end" ) )
        
            --needs to set send hit message 
            user.sendEvent ( application.getCurrentUser( ), "HudAI", "onDecreaseHealth" )
            
            --get time of day for counter
            this.nHitCount ( system.getTimeOfDay ( ) )
            
        --if counter reaches goal then hit
        elseif( system.getTimeOfDay ( ) - this.nHitCount ( ) >= 3)then
        
            --needs to set send hit message 
            user.sendEvent ( application.getCurrentUser( ), "HudAI", "onDecreaseHealth" )
        
            this.nHitCount ( system.getTimeOfDay ( ) )
        
        end
    
    end
	
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------