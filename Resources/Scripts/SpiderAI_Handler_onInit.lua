--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SpiderAI.onInit (  )
--------------------------------------------------------------------------------
	
    --sets the avatar object
    this.hSpider ( this.getObject ( ) )
    
    --calls the a function to set the animations modes
    if(this.hSpider ( ) ~= nil) then
        this.setAnimations ( )
        this.setIdle ( )
        
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
