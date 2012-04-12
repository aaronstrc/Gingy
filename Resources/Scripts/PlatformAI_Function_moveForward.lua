--------------------------------------------------------------------------------
--  Function......... : moveForward
--  Author........... : Aaron Stricklin
--  Description...... : moves the object forward
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlatformAI.moveForward ( )
--------------------------------------------------------------------------------
	
    if(this.nCount ( ) < this.nDistance ( )) then
    
        --moves the object forward
        object.translate ( this.hPlatform ( ), 0, 0, this.moveInc ( ), object.kLocalSpace )
	
        --increases the count
        this.nCount ( this.nCount ( ) + this.moveInc ( ) )
    
    else
        
        this.sDirection ( "back")
    
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
