--------------------------------------------------------------------------------
--  Handler.......... : onDecreaseLife
--  Author........... : Aaron Stricklin
--  Description...... : decreases the avatars life
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.onDecreaseLife (  )
--------------------------------------------------------------------------------
	
    --gets all the components of the hud that will be manipulated
    local hLifeComponent = hud.getComponent ( application.getCurrentUser ( ), "gingyLife.numLifes" )
        
    this.nLife ( this.nLife ( ) - 1 )    
        
    --gets the life component
    if(hLifeComponent and this.nLife ( ) > -1) then
            
        hud.setLabelText ( hLifeComponent, "x "..this.nLife ( ) )
        
        --now sends event to move avatar back to start postion.
        --sends it to main
        log.warning ( "died" )
        
            
    elseif( this.nLife ( ) <= -1) then
        
        log.warning ( "game over!" )
        
    end	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
