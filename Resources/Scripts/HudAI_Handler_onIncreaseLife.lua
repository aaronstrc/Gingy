--------------------------------------------------------------------------------
--  Handler.......... : onIncreaseLife
--  Author........... : 
--  Description...... : increases life when avatar finds a life
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.onIncreaseLife (  )
--------------------------------------------------------------------------------
	
	--gets all the components of the hud that will be manipulated
    local hLifeComponent = hud.getComponent ( application.getCurrentUser ( ), "gingyLife.numLifes" )
        
    this.nLife ( this.nLife ( ) + 1 )    
        
    --gets the life component
    if(hLifeComponent and this.nLife ( ) > -1) then
            
        hud.setLabelText ( hLifeComponent, "x "..this.nLife ( ) )
        
        --now sends event to move avatar back to start postion.
        --sends it to main
        log.warning ( "earned a life" )
        
    end	
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
