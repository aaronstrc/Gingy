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
    this.updateDynamics ( )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
