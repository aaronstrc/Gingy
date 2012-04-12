--------------------------------------------------------------------------------
--  Handler.......... : onDecreaseKey
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.onDecreaseKey ( hUnlockable )
--------------------------------------------------------------------------------
	
    --checks to see if the user has any keys
    if(this.nKeys ( ) > 0)then
    
        --gets the sprinkle component
        local hKeyComponent = hud.getComponent ( application.getCurrentUser ( ), "gingyLife.numKey" ) 
        
        this.nKeys ( this.nKeys ( ) - 1 )    
        
        --makes sure the object exist
        if(hUnlockable ~= nil)then
        
            object.sendEvent ( hUnlockable, "UnlockableAI", "onUnlock" )
            
        end
        
        --gets the sprinkle component
        if(hKeyComponent) then
            
            hud.setLabelText ( hKeyComponent, this.nKeys().." x" )
        else
        
            log.warning ( "what are you doing" )
        
        end
	
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
