--------------------------------------------------------------------------------
--  Function......... : setIdle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.setIdle ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the idle animation code for gingy
	--
    local hasAnimation = object.hasController ( this.hAvatar ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
    
        animation.setCurrentClip ( this.hAvatar ( ), 0,  hashtable.get ( this.htAnimations ( ), "idle") )
        
        animation.setPlaybackSpeed ( this.hAvatar ( ), 0, 60 )
        
        --edits the run clip to the correct beginning frame
        animation.setPlaybackKeyFrameBegin ( this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "idle_begin" ) )
        
        --edits the run clip to the correct ending frame
        animation.setPlaybackKeyFrameEnd (  this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "idle_end" ) )
        
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
