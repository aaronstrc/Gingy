--------------------------------------------------------------------------------
--  State............ : Hit
--  Author........... : 
--  Description...... : checks to see if hit is over or not
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.Hit_onLoop ( )
--------------------------------------------------------------------------------
	
    --sometimes weapon removes itself while the loop hasn't finished or its not being created.
    if(this.hWeapon ( ) ~= nil)then
    
        --NOTE:The weapon the wolf uses will send hit to the avatar
        --gets this enemies translation
        local x, y, z = shape.getSkeletonJointTranslation ( this.hEnemy ( ), "Bip001_R_Hand", object.kGlobalSpace )
        local xR, yR, zR = shape.getSkeletonJointRotation ( this.hEnemy ( ), "Bip001_R_Hand", object.kGlobalSpace )
        
        --sets objects new position and rotation
        object.setRotation ( this.hWeapon(), xR, yR, zR, object.kGlobalSpace )
        object.setTranslation ( this.hWeapon(), x, y, z, object.kGlobalSpace )
        object.setRotation ( this.hWeapon ( ), 90, 0, 0, object.kLocalSpace )

    end
    
	--checks to see if the animation ended
    if( animation.getPlaybackCursor ( this.hEnemy ( ), 0 ) >= hashtable.get (this.htAnimations ( ), "hit_end"  ) - 1 ) then
    
        --sets the ai to searching
        this.SearchingAI ( )
    
    end
	
    --makes the enemy not bobble around
    local x,y,z = object.getRotation ( this.hEnemy ( ), object.kGlobalSpace )
    object.setRotation ( this.hEnemy ( ), 0, y, 0, object.kGlobalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
