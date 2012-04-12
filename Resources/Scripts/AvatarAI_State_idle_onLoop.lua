--------------------------------------------------------------------------------
--  State............ : idle
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.idle_onLoop ( )
--------------------------------------------------------------------------------
	
    --code below changes the avatars mode
    if ( this.nHandlerCount ( ) > 0 ) then
    
        this.handleRun ( )
    
    --if no keys are pressed then just idle
    elseif ( this.nHandlerCount() <= 0) then
        
        this.handleIdle ( )
        
    end
    
    --makes the avatar not bobble around
    local x,y,z = object.getRotation ( this.hAvatar ( ), object.kGlobalSpace )
    object.setRotation ( this.hAvatar ( ), 0, y, 0, object.kGlobalSpace )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
