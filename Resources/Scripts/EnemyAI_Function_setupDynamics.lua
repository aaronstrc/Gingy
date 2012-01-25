--------------------------------------------------------------------------------
--  Function......... : setupDynamics
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function EnemyAI.setupDynamics ( )
--------------------------------------------------------------------------------
	
	 --Set the dynamic shpere body for the zombie
	local hObject = this.getObject  ( )
    local hScene  = object.getScene ( hObject )
    if (  hScene ~= nil )
    then
        local o   = scene.createRuntimeObject ( hScene, "Dummy" )
        if (  o  ~= nil )
        then            
            
            object.matchTranslation ( o, hObject,       object.kGlobalSpace )            
        
            if ( dynamics.createSphereBody ( o, this.nRadius ( ) ) )
            then
                dynamics.enableDynamics     ( o, true )
                dynamics.enableCollisions   ( o, true )
                dynamics.enableGravity      ( o, true )
                
                dynamics.setMass            ( o, 80 )
            
                this.hDynObject ( o )
            end
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
