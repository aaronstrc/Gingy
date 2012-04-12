--------------------------------------------------------------------------------
--  Handler.......... : onDecreaseHealth
--  Author........... : Aaron Stricklin
--  Description...... : decrease life of avatar
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.onDecreaseHealth (  )
--------------------------------------------------------------------------------
	
    log.message ( "ONDECREASEHEALTH" )
    
    --plays jump sound
    sound.play ( this.hAvatar ( ), 1, 3, false, 1 )
    
    --sets new value for the health
    this.nHealthValue ( this.nHealthValue ( ) - 1)
        
    --gets the health component
    local hHealthP = hud.getComponent ( application.getCurrentUser ( ), "gingyLife.health" )
    
    if(hHealthP ~= nil) then
        
        --if health is greater than zero decrease life... else you die
        if(this.nHealthValue ( ) >= 1 ) then
            
            --sets the new health value
            hud.setProgressValue ( hHealthP, table.getAt ( this.tHealth ( ), this.nHealthValue ( ) ) )
        
        else
            
            --calls respawn method
            user.sendEvent ( application.getCurrentUser ( ), "HudAI", "onRespawnAvatar" )
        
        end
        
    else
    
        log.warning ( "Health bar doesn't exist" )
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
