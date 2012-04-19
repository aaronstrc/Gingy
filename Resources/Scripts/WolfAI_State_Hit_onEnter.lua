--------------------------------------------------------------------------------
--  State............ : Hit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.Hit_onEnter ( )
--------------------------------------------------------------------------------
	
    --sets the animation
    this.setHit ( )
    
	--creates the axe and sets the rotation to the wolves hand
    this.hWeapon ( scene.createRuntimeObject ( application.getCurrentUserScene ( ), this.sWeapon ( )))
    
    --gets this enemies translation
    local x, y, z = shape.getSkeletonJointTranslation ( this.hEnemy ( ), "Bip001_R_Hand", object.kGlobalSpace )
    local xR, yR, zR = object.getRotation ( this.hEnemy ( ), object.kGlobalSpace )
        
    --sets objects new position and rotation
    object.setRotation ( this.hWeapon(), xR, yR, zR, object.kGlobalSpace )
    object.setTranslation ( this.hWeapon(), x, y, z, object.kGlobalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
