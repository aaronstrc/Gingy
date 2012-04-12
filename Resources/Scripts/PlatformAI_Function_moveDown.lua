--------------------------------------------------------------------------------
--  Function......... : moveDown
--  Author........... : Aaron Stricklin
--  Description...... : moves the platform down
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlatformAI.moveDown ( )
--------------------------------------------------------------------------------
	
    if(this.nCount ( ) > 0.0) then
    
        --moves the object down
        object.translate ( this.hPlatform ( ), 0, - this.moveInc ( ), 0, object.kLocalSpace )
	
        --decreases the count
        this.nCount ( this.nCount ( ) - this.moveInc ( ) )
    
    else
        
        this.sDirection ( "up")
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
