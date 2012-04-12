--------------------------------------------------------------------------------
--  State............ : Moving
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlatformAI.Moving_onLoop ( )
--------------------------------------------------------------------------------
	
    --calls the functions for directions
	if(this.sDirection ( ) == "forward") then
    
        --moves forward
        this.moveForward ( )
    
    elseif(this.sDirection ( ) == "back") then
    
        --moves back
        this.moveBack ( )
    
    elseif(this.sDirection ( ) == "up") then
    
        --moves up
        this.moveUp ( )
        
    elseif(this.sDirection ( ) == "down") then
    
        --moves down
        this.moveDown ( )
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
