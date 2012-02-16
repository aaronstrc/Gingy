--------------------------------------------------------------------------------
--  Function......... : addZero
--  Author........... : aaron Stricklin
--  Description...... : Silly but adding a function to add a zero for looks
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.addZero ( nValue )
--------------------------------------------------------------------------------
	
	local sValue
    
    --if value is less than 10  add a zero
    --else just convert to string
    if(nValue < 10) then
    
        sValue = "0"..nValue
    
    else
    
        sValue = ""..nValue
    
    end
    
	return sValue
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
