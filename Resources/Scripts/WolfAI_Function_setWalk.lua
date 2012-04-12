--------------------------------------------------------------------------------
--  Function......... : setWalk
--  Author........... : Aaron Stricklin
--  Description...... : sets walk animation
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.setWalk ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the walk animation code for antigingy
	--
    local hasAnimation = object.hasController ( this.hEnemy ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
    
        animation.setCurrentClip ( this.hEnemy ( ), 0,  hashtable.get ( this.htAnimations ( ), "walk") )
        
        --edits the run clip to the correct beginning frame
        animation.setPlaybackKeyFrameBegin ( this.hEnemy ( ), 0, hashtable.get( this.htAnimations ( ), "walk_begin" ) )
        
        --edits the run clip to the correct ending frame
        animation.setPlaybackKeyFrameEnd (  this.hEnemy ( ), 0, hashtable.get( this.htAnimations ( ), "walk_end" ))
        
    end
	
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
