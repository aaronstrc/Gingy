--------------------------------------------------------------------------------
--  Handler.......... : onIncreaseHealth
--  Author........... : Aaron Stricklin
--  Description...... : increases health of the avatar
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.onIncreaseHealth (  )
--------------------------------------------------------------------------------
	
    --if health is greater than zero but less than 6
    --increase health
    if(this.nHealthValue ( ) > 0 and this.nHealthValue ( ) < 6 ) then
    
        --sets new value for the health
        this.nHealthValue ( this.nHealthValue ( ) + 1)
        
        --gets the health component
        local hHealthP = hud.getComponent ( application.getCurrentUser ( ), "gingyLife.health" )
    
        --checks if the component exist
        if(hHealthP ~= nil) then
    
            --sets the new health value
            hud.setProgressValue ( hHealthP, table.getAt ( this.tHealth ( ), this.nHealthValue ( ) ) )
        
        else
            
            log.warning ( "Health bar doesn't exist" )
        
        end
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
