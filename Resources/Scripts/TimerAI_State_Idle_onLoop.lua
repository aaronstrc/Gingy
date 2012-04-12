--------------------------------------------------------------------------------
--  State............ : Idle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function TimerAI.Idle_onLoop ( )
--------------------------------------------------------------------------------
	
    --gets the elapsed time
	local nElapsedT = system.getTimeOfDay ( ) - this.nStartTime ( )
    
    
    --checks if time elapsed
    if(this.nTime ( ) <= nElapsedT)then
    
        --destroys that object
        scene.destroyRuntimeObject ( application.getCurrentUserScene ( ), this.hTimerObject ( ) )
    
    end
    
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
