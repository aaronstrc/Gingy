--------------------------------------------------------------------------------
--  State............ : SearchingAI
--  Author........... : Aaron Stricklin
--  Description...... : initializing search
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.SearchingAI_onEnter ( )
--------------------------------------------------------------------------------
	
    --gets the current start time of the searching
    this.nIdleStartTime ( system.getTimeOfDay ( ))
    
    --sets the walk animation
    this.setWalk ( )
    
    --function to setup navigation
    this.setupNavigation ( )
	
    --sets random motion time
    this.nStateTime ( math.random ( 6, 15 ) )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
