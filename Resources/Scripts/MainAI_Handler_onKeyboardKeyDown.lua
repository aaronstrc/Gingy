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


    if(kKeyCode == input.kKeyEscape) then
    
        scene.setPaused ( application.getCurrentUserScene ( ), false )

    end

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
