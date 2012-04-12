--------------------------------------------------------------------------------
--  State............ : Throwing
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AntiGingyAI.Throwing_onEnter ( )
--------------------------------------------------------------------------------
    
    --sets animation
    this.setThrow ( )
    
    --gets avatars position for looking
    local x, y, z = object.getTranslation ( this.hAvatar ( ), object.kGlobalSpace )
    
    --sets throwing direction
    object.lookAt ( this.hEnemy ( ), x, y, z, object.kGlobalSpace, 1 )
    
    --rotates around to actually look at the avatar
    object.setRotation ( this.hEnemy ( ), 0, 180, 0, object.kLocalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
