--------------------------------------------------------------------------------
--  Function......... : calulateTime
--  Author........... : Aaron Stricklin
--  Description...... : calculates time in hours, minutes, and seconds 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.calulateTime ( nTimeElapse )
--------------------------------------------------------------------------------
	
    local nTLeft = nTimeElapse
	
    --gets the number of hours
    local nHours = math.floor ( nTLeft / 3600)
    
    --gets the number of minutes
    nTLeft = nTLeft - (nHours * 3600)
	local nMinutes = math.floor (  nTLeft / 60 )
    
    --gets  the number of seconds
    nTLeft = nTLeft - (nMinutes * 60 )
    local nSeconds = nTLeft
    
    return nHours, nMinutes, nSeconds
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
