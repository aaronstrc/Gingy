--------------------------------------------------------------------------------
--  Function......... : setLargeWeaponS
--  Author........... : 
--  Description...... : sets the large swing animation for the avatar
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.setLargeWeaponS ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the punch animation code for gingy
	--
	local hasAnimation = object.hasController ( this.hAvatar ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
        
        animation.setCurrentClip ( this.hAvatar ( ), 0, hashtable.get ( this.htAnimations ( ), "largeWeapon") )
        
        --sets playback speed to speed up slow animations
        animation.setPlaybackSpeed ( this.hAvatar ( ), 0, 100 )
        
        --edits the punch clip to the correct beginning frame
        animation.setPlaybackKeyFrameBegin ( this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "largeWeapon_begin" ) )
        
        --edits the punch clip to the correct ending frame
        animation.setPlaybackKeyFrameEnd (  this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "largeWeapon_end" ) )
        
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
