--------------------------------------------------------------------------------
--  Handler.......... : onRespawnAvatar
--  Author........... : Aaron Stricklin
--  Description...... : Respawns avatar and resets all its values
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.onRespawnAvatar (  )
--------------------------------------------------------------------------------
    
    --sends an event to decrease life of avatar
	user.sendEvent ( application.getCurrentUser ( ), "HudAI", "onDecreaseLife")
    
    --gets the translation and rotation for respawn
    local x, y, z = this.getRespawnT ( )
    local xR, yR, zR = this.getRespawnR ( )
    
    if(this.hAvatar ( ) ~= nil) then
        
        --resets the avatars position and rotation
        object.setTranslation( this.hAvatar ( ), x, y, z, object.kGlobalSpace  )
        object.setRotation ( this.hAvatar ( ), xR, yR, zR, object.kGlobalSpace )
    
    else
    
        --no avatar
        log.warning ( "NO AVATAR" )
    
    end
    
    --resets health values
    this.resetHealth()
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
