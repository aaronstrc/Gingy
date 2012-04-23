--------------------------------------------------------------------------------
--  Function......... : setPunch
--  Author........... : 
--  Description...... : set the punch animation for the avatar
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.setPunch ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the punch animation code for gingy
	--
	local hasAnimation = object.hasController ( this.hAvatar ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
        
        animation.setCurrentClip ( this.hAvatar ( ), 0, hashtable.get ( this.htAnimations ( ), "punch") )
        
        --sets animation play back speed
        animation.setPlaybackSpeed ( this.hAvatar ( ), 0, 60 )
        
        --edits the punch clip to the correct beginning frame
        animation.setPlaybackKeyFrameBegin ( this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "punch_begin" ) )
        
        --edits the punch clip to the correct ending frame
        animation.setPlaybackKeyFrameEnd (  this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "punch_end" ) )
        
    end
   
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
