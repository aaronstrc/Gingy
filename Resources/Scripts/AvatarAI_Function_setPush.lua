--------------------------------------------------------------------------------
--  Function......... : setPush
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.setPush ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the push animation code for gingy
	--
	local hasAnimation = object.hasController ( this.hAvatar ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
        
        animation.setCurrentClip ( this.hAvatar ( ), 0, hashtable.get ( this.htAnimations ( ), "push") )
        
        animation.setPlaybackSpeed ( this.hAvatar ( ), 0, 60 )
        
        --edits the punch clip to the correct beginning frame
        animation.setPlaybackKeyFrameBegin ( this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "push_begin" ) )
        
        --edits the punch clip to the correct ending frame
        animation.setPlaybackKeyFrameEnd (  this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "push_end" ) )
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
