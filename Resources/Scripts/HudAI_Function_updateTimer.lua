--------------------------------------------------------------------------------
--  Function......... : updateTimer
--  Author........... : Aaron Stricklin
--  Description...... : updates the huds timer
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.updateTimer ( )
--------------------------------------------------------------------------------
	
	 --gets the timer component
    local hTimeComponent = hud.getComponent (application.getCurrentUser ( ), "gingyLife.Timer" ) 
    
    --calculates time elapsed
    local nTElapsed =  system.getTimeOfDay ( ) -this.nStartTime ( )
    
    local nHours, nMinutes, nSeconds = this.calulateTime ( nTElapsed )
    
    --initiates the value of the timer component
    if( hTimeComponent ) then
        
        --adds a extra zero for looks if less than ten
        local sHours = this.addZero ( nHours )
        local sMinutes = this.addZero ( nMinutes )
        local sSeconds = this.addZero ( nSeconds )
        
        hud.setLabelText ( hTimeComponent, sHours..":"..sMinutes..":"..sSeconds )
    else
        
        log.warning ( "what are you doing" )
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
