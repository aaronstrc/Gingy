-------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
    --checks keys that move of rotate the avatar
    if ( kKeyCode == input.kKeyW ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    if ( kKeyCode == input.kKeyA ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    if ( kKeyCode == input.kKeyS ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    if ( kKeyCode == input.kKeyD ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    if ( kKeyCode == input.kKeySpace ) and ( this.bJump ( ) == false ) then
        this.bJump ( true )
        dynamics.setLinearVelocity ( this.hAvatar ( ), 0, 7, 0, object.kLocalSpace )
        dynamics.addLinearImpulse ( this.hAvatar ( ), 0, 7, 0, object.kLocalSpace )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
