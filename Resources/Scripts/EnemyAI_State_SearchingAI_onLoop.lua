--------------------------------------------------------------------------------
--  State............ : SearchingAI
--  Author........... : Aaron Stricklin
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function EnemyAI.SearchingAI_onLoop ( )
--------------------------------------------------------------------------------
	
	--updates all code here
    if(this.bSearching ( ) == true) then
        this.updateNavigation ( )
    else
        this.targetAvatar ( )
    end
    this.updateLook ( )
    
    --makes the enemy not bobble around
    local x,y,z = object.getRotation ( this.hEnemy ( ), object.kGlobalSpace )
    object.setRotation ( this.hEnemy ( ), 0, y, 0, object.kGlobalSpace )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
