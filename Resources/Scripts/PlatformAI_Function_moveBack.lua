--------------------------------------------------------------------------------
--  Function......... : moveBack
--  Author........... : Aaron Stricklin
--  Description...... : moves the platformback
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlatformAI.moveBack ( )
--------------------------------------------------------------------------------
	
	if(this.nCount ( ) > 0.0) then
    
        --moves the object down
        object.translate ( this.hPlatform ( ), 0, 0, - this.moveInc ( ), object.kLocalSpace )
	
        --decreases the count
        this.nCount ( this.nCount ( ) - this.moveInc ( ) )
    
    else
        
        this.sDirection ( "forward")
    
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
