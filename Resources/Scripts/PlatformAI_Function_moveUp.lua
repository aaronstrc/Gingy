--------------------------------------------------------------------------------
--  Function......... : moveUp
--  Author........... : Aaron Stricklin
--  Description...... : moves the platform up
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function PlatformAI.moveUp ( )
--------------------------------------------------------------------------------
	
	if(this.nCount ( ) < this.nDistance ( )) then
    
        --moves the object forward
        object.translate ( this.hPlatform ( ), 0, this.moveInc ( ), 0, object.kLocalSpace )
	
        --increases the count
        this.nCount ( this.nCount ( ) + this.moveInc ( ) )
    
    else
        
        this.sDirection ( "down")
    
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
