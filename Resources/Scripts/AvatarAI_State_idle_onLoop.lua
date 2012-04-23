--------------------------------------------------------------------------------
--  State............ : idle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.idle_onLoop ( )
--------------------------------------------------------------------------------
	
    --code below changes the avatars mode
    if ( this.nHandlerCount ( ) > 0 ) then
    
        this.handleRun ( )
    
    --if no keys are pressed then just idle
    elseif ( this.nHandlerCount() <= 0) then
        
        this.handleIdle ( )
        
    end
    
    
    --if the weapon is set and not active
    if(this.bWeapon ( ) == true and this.bWeaponActive() == false)then
    
        --sets weapon to hand that holds weapon
        local xWT, yWT, zWT = shape.getSkeletonJointTranslation ( this.hAvatar ( ), this.sRestBone ( ), object.kGlobalSpace )
        --local xWR, yWR, zWR = shape.getSkeletonJointRotation ( this.hAvatar ( ), this.sRestBone ( ), object.kGlobalSpace )
        --local xWT, yWT, zWT = object.getTranslation ( this.hAvatar ( ), object.kGlobalSpace )
        local xWR, yWR, zWR = object.getRotation ( this.hAvatar ( ), object.kGlobalSpace )
        object.setTranslation ( this.hWeapon ( ), xWT, yWT, zWT, object.kGlobalSpace )
        object.setRotation ( this.hWeapon ( ), xWR, yWR, zWR, object.kGlobalSpace )
        object.setTranslation ( this.hWeapon ( ), -0.3, 0.3, -0.3, object.kLocalSpace )
        object.setRotation ( this.hWeapon ( ), 0, 0, -130, object.kLocalSpace )
        
    
    end
    
    --makes the avatar not bobble around
    local x,y,z = object.getRotation ( this.hAvatar ( ), object.kGlobalSpace )
    object.setRotation ( this.hAvatar ( ), 0, y, 0, object.kGlobalSpace )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
