--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.onInit (  )
--------------------------------------------------------------------------------
	--get the user
    local hUser = application.getCurrentUser ( )
    
    --adds the hud
    local bHud = hud.newTemplateInstance ( hUser, "gingyLife", "gingyLife" )
	
    --if the hud is created then set its values
    if(bHud) then
    
        --gets all the components of the hud that will be manipulated
        local hLifeComponent = hud.getComponent ( hUser, "gingyLife.numLifes" )
        
        --gets the life component
        if(hLifeComponent) then
            
            hud.setLabelText ( hLifeComponent, "x "..this.nLife ( ) )
            
        else
        
            log.warning ( "what are you doing" )
        
        end
        
        --gets the sprinkle component
        local hSprinkleComponent = hud.getComponent ( hUser, "gingyLife.numSprink" ) 
        
        --initiates the value of the sprinkle component
        if(hSprinkleComponent) then
            
            hud.setLabelText ( hSprinkleComponent, this.nSprinkles().." x" )
        else
        
            log.warning ( "what are you doing" )
        
        end

        --gets the timer component
        local hTimeComponent = hud.getComponent ( hUser, "gingyLife.Timer" ) 
    
        --initiates the value of the timer component
        if( hTimeComponent ) then
        
            this.nStartTime ( system.getTimeOfDay ( ))
            
            hud.setLabelText ( hTimeComponent, "00:00:00")
        
        else
        
            log.warning ( "what are you doing" )
        
        end
        
    
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
