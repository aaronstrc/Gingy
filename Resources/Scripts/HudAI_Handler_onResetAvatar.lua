--------------------------------------------------------------------------------
--  Handler.......... : onResetAvatar
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function HudAI.onResetAvatar (  )
--------------------------------------------------------------------------------
	
	--simple fix for the avatar hit sounds
    --resets the avatar on scene change
    this.hAvatar ( application.getCurrentUserSceneTaggedObject ( "gingy" ))
    
    --make sure the avatar exist
    if(this.hAvatar ( ) ~= nil) then
    
        --gets translation and rotation for restart
        local xT, yT, zT = object.getTranslation ( this.hAvatar ( ), object.kGlobalSpace )
        local xR, yR, zR = object.getTranslation ( this.hAvatar ( ), object.kGlobalSpace )
        
        --sets the respawn value
        hashtable.set ( this.htRespawn ( ), "xT", xT)
        hashtable.set ( this.htRespawn ( ), "yT", yT)
        hashtable.set ( this.htRespawn ( ), "zT", zT)
        hashtable.set ( this.htRespawn ( ), "xR", xR)
        hashtable.set ( this.htRespawn ( ), "yR", yR)
        hashtable.set ( this.htRespawn ( ), "zR", zR)
	
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
