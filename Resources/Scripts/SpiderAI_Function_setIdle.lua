--------------------------------------------------------------------------------
--  Function......... : setIdle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SpiderAI.setIdle ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the idle animation code for mouse
	--
    local hasAnimation = object.hasController ( this.hSpider ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
    
        animation.setCurrentClip ( this.hSpider ( ), 0,  hashtable.get ( this.htAnimations ( ), "idle") )
        
        --sets blending for the animations (allows smooth animations)
        --animation.setPlaybackBlendMode ( this.hSpider ( ), 0, animation.kPlaybackModeLoop)
        
        --edits the run clip to the correct beginning frame
        animation.setPlaybackKeyFrameBegin ( this.hSpider ( ), 0, hashtable.get( this.htAnimations ( ), "idle_begin" ) )
        
        --edits the run clip to the correct ending frame
        animation.setPlaybackKeyFrameEnd (  this.hSpider ( ), 0, hashtable.get( this.htAnimations ( ), "idle_end" ) )
        
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
