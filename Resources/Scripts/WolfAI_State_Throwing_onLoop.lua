--------------------------------------------------------------------------------
--  State............ : Throwing
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.Throwing_onLoop ( )
--------------------------------------------------------------------------------
	
    --gets current cursor frame
    local nPlayCursor = animation.getPlaybackCursor ( this.hEnemy ( ), 0 )
    
	--checks to see if the animation ended
	if( nPlayCursor >= hashtable.get (this.htAnimations ( ), "throw_end"  ) - 1 ) then
    
        --sets the ai to searching
        this.SearchingAI ( )
    
    --throws an object
    elseif( math.floor ( nPlayCursor) == math.floor ( hashtable.get (this.htAnimations ( ), "throw_release"  ) - 1) and this.bThrown ( ) == false)then
    
        --log.warning ( "ball throw" )
        
        --sets the bthrown to true
        this.bThrown ( true )
        
        --creates fireball to be thrown
        local hFireball = scene.createRuntimeObject ( application.getCurrentUserScene ( ), this.sThrowName ( ) )
    
        --gets this enemies translation
        local x, y, z = shape.getSkeletonJointTranslation ( this.hEnemy ( ), "Bip001_R_Hand", object.kGlobalSpace )
        local xR, yR, zR = object.getRotation ( this.hEnemy ( ), object.kGlobalSpace )
        
        --sets objects new position and rotation
        object.setRotation ( hFireball, xR, yR, zR, object.kGlobalSpace )
        object.setTranslation ( hFireball, x, y + 4, z, object.kGlobalSpace )
        object.setTranslation ( hFireball, 0, 0, 3, object.kLocalSpace)
        
        --sets dynamics
        --adds dynamics
        dynamics.setAngularVelocity ( hFireball, 3, 0, 0, object.kLocalSpace )
        dynamics.setLinearVelocity ( hFireball, 0, 0, 18, object.kLocalSpace )
        dynamics.addAngularImpulse ( hFireball, 3, 0, 0, object.kLocalSpace  )
        dynamics.addLinearImpulse ( hFireball, 0, 0, 18, object.kLocalSpace )
    
    end
	
    --makes the enemy not bobble around
    local x,y,z = object.getRotation ( this.hEnemy ( ), object.kGlobalSpace )
    object.setRotation ( this.hEnemy ( ), 0, y, 0, object.kGlobalSpace )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
