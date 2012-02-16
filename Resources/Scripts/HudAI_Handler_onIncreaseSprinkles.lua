--------------------------------------------------------------------------------
--  Handler.......... : onIncreaseSprinkles
--  Author........... : Aaron Stricklin
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.onIncreaseSprinkles (  )
--------------------------------------------------------------------------------
	
	--gets the sprinkle component
    local hSprinkleComponent = hud.getComponent ( application.getCurrentUser ( ), "gingyLife.numSprink" ) 
        
    this.nSprinkles ( this.nSprinkles( ) + 1 )    
        
    --gets the sprinkle component
    if(hSprinkleComponent) then
            
        hud.setLabelText ( hSprinkleComponent, this.nSprinkles().." x" )
    else
        
        log.warning ( "what are you doing" )
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
