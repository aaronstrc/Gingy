--------------------------------------------------------------------------------
--  State............ : Hit
--  Author........... : 
--  Description...... : destroys the weapon
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.Hit_onLeave ( )
--------------------------------------------------------------------------------
	
    --sometimes the weapon doesn't spawn
    --if weapon doesn't exist don't delete it
    if(this.hWeapon ( ) ~= nil)then
        
        --sends event to the weapon
        object.sendEvent ( this.hWeapon ( ), "WeaponAI", "onSwingEnactivate" )
        
        --destroys the runtime object
        scene.destroyRuntimeObject ( application.getCurrentUserScene ( ), this.hWeapon ( ) )
    
        --sets the weapon back to nil
        this.hWeapon ( nil )
	
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
