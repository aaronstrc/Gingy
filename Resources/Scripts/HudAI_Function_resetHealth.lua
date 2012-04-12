--------------------------------------------------------------------------------
--  Function......... : resetHealth
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.resetHealth ( )
--------------------------------------------------------------------------------
	
	--sets new value for the health
    this.nHealthValue ( 6 )
        
    --gets the health component
    local hHealthP = hud.getComponent ( application.getCurrentUser ( ), "gingyLife.health" )
    
    --checks if the component exist
    if(hHealthP ~= nil) then
    
        --sets the new health value
        hud.setProgressValue ( hHealthP, table.getAt ( this.tHealth ( ), this.nHealthValue ( ) ) )
        
    else
            
        log.warning ( "Health bar doesn't exist" )
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
