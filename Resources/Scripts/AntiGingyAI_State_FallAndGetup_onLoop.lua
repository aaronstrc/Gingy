--------------------------------------------------------------------------------
--  State............ : FallAndGetup
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AntiGingyAI.FallAndGetup_onLoop ( )
--------------------------------------------------------------------------------
	
	--checks to see if the animation ended
	if( animation.getPlaybackCursor ( this.hEnemy ( ), 0 ) >= hashtable.get (this.htAnimations ( ), "FallandGetup_end"  ) - 1 ) then
    
        --sets the ai to searching
        this.SearchingAI ( )
    
    end
    
    --makes the enemy not bobble around
    local x,y,z = object.getRotation ( this.hEnemy ( ), object.kGlobalSpace )
    object.setRotation ( this.hEnemy ( ), 0, y, 0, object.kGlobalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
