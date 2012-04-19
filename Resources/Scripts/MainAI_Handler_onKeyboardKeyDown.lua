--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
    object.sendEvent ( this.hSimpleCamera1 ( ),  "SimpleCameraAI", "onKeyboardKeyDown", kKeyCode )
    object.sendEvent ( this.hAvatar(),  "AvatarAI", "onKeyboardKeyDown", kKeyCode )


    --pauses the game 
    if(kKeyCode == input.kKeyEscape ) then
    
        this.setPause (  )
    
    --quits the game
    elseif( kKeyCode == input.kKeyF1) then
    
        application.quit ( )
    
    end
    


--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
