--------------------------------------------------------------------------------
--  Function......... : setSmalWeaponS
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.setSmalWeaponS ( )
--------------------------------------------------------------------------------
	
	--
	-- sets up the punch animation code for gingy
	--
	local hasAnimation = object.hasController ( this.hAvatar ( ), object.kControllerTypeAnimation )
    
    --checks to see if the object has an animation controller
    if(hasAnimation == true) then
        
        animation.setCurrentClip ( this.hAvatar ( ), 0, hashtable.get ( this.htAnimations ( ), "smallWeapon") )
        
        --log.warning (  animation.getPlaybackSpeed ( this.hAvatar ( ), 0 ))
        animation.setPlaybackSpeed ( this.hAvatar ( ), 0, 100 )
        
        --edits the punch clip to the correct beginning frame
        animation.setPlaybackKeyFrameBegin ( this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "smallWeapon_begin" ) )
        
        --edits the punch clip to the correct ending frame
        animation.setPlaybackKeyFrameEnd (  this.hAvatar ( ), 0, hashtable.get( this.htAnimations ( ), "smallWeapon_end" ) )
        
        --sets weapon to hand that holds weapon
        local xWT, yWT, zWT = shape.getSkeletonJointTranslation ( this.hAvatar ( ), this.sHandHWeapon ( ), object.kGlobalSpace )
        local xWR, yWR, zWR = shape.getSkeletonJointRotation ( this.hAvatar ( ), this.sHandHWeapon ( ), object.kGlobalSpace )
        object.setTranslation ( this.hWeapon ( ), xWT, yWT, zWT, object.kGlobalSpace )
        object.setRotation ( this.hWeapon ( ), xWR, yWR, zWR, object.kGlobalSpace )
        object.setRotation ( this.hWeapon ( ), 90, 0, 200, object.kLocalSpace )
        
        this.bWeaponActive ( true )
        
        --sends event that the weapon is active
        if(this.hWeapon ( ) ~= nil)then
            object.sendEvent ( this.hWeapon ( ), "WeaponAI", "onSwingActivate" )
        end
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
