--------------------------------------------------------------------------------
--  Function......... : checkHitAvatar
--  Author........... : Aaron Stricklin
--  Description...... : checks to see if the mouse hit the avatar
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MouseAI.checkHitAvatar ( )
--------------------------------------------------------------------------------
	
    --sends event to hud if collided with box
	if(this.bCollided ( )) then
    
        user.sendEvent ( application.getCurrentUser ( ), "HudAI", "onDecreaseHealth" )
    
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
