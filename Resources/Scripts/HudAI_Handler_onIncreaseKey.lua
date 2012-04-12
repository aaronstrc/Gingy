--------------------------------------------------------------------------------
--  Handler.......... : onIncreaseKey
--  Author........... : Aaron Stricklin
--  Description...... : Increases the key value
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.onIncreaseKey (  )
--------------------------------------------------------------------------------
	
	--gets the sprinkle component
    local hKeyComponent = hud.getComponent ( application.getCurrentUser ( ), "gingyLife.numKey" ) 
        
    this.nKeys ( this.nKeys ( ) + 1 )    
        
    --gets the sprinkle component
    if(hKeyComponent) then
            
        hud.setLabelText ( hKeyComponent, this.nKeys().." x" )
    else
        
        log.warning ( "what are you doing" )
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
