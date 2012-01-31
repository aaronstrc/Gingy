--------------------------------------------------------------------------------
--  Function......... : setIdle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MouseAI.setIdle ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the idle animation code for gingy
	--
    local hasAnimation = object.hasController ( this.hMouse ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
    
        animation.setCurrentClip ( this.hMouse ( ), 0,  hashtable.get ( this.htAnimations ( ), "idle") )
        
        --sets blending for the animations (allows smooth animations)
        --animation.setPlaybackBlendMode ( this.hMouse ( ), 0, animation.kPlaybackModeLoop)
        
        --edits the run clip to the correct beginning frame
        animation.setPlaybackKeyFrameBegin ( this.hMouse ( ), 0, hashtable.get( this.htAnimations ( ), "idle_begin" ) )
        
        --edits the run clip to the correct ending frame
        animation.setPlaybackKeyFrameEnd (  this.hMouse ( ), 0, hashtable.get( this.htAnimations ( ), "idle_end" ) )
        
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
