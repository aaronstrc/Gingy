--------------------------------------------------------------------------------
--  Handler.......... : onHit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.onHit (  )
--------------------------------------------------------------------------------
	
    --sends event to hud that is was hit
	user.sendEvent (  application.getCurrentUser ( ),"HudAI", "onDecreaseHealth")
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
