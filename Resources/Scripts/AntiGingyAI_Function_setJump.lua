--------------------------------------------------------------------------------
--  Function......... : setJump
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AntiGingyAI.setJump ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the idle animation code for gingy
	--
    local hasAnimation = object.hasController ( this.hEnemy ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
    
        animation.setCurrentClip ( this.hEnemy ( ), 0,  hashtable.get ( this.htAnimations ( ), "jump") )
        
        --sets blending for the animations (allows smooth animations)
        --animation.setPlaybackBlendMode ( this.hMouse ( ), 0, animation.kPlaybackModeLoop)
        
        --edits the run clip to the correct beginning frame
        animation.setPlaybackKeyFrameBegin ( this.hEnemy ( ), 0, hashtable.get( this.htAnimations ( ), "jump_begin" ) )
        
        --edits the run clip to the correct ending frame
        animation.setPlaybackKeyFrameEnd (  this.hEnemy ( ), 0, hashtable.get( this.htAnimations ( ), "jump_end" ) )
        
    end
	
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
