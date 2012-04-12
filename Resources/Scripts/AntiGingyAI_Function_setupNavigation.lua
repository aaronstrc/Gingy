--------------------------------------------------------------------------------
--  Function......... : setupNavigation
--  Author........... : Aaron Stricklin
--  Description...... : sets up navigation
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AntiGingyAI.setupNavigation ( )
--------------------------------------------------------------------------------
	
	local hObject = this.getObject  ( )
	
    -- Create navigation helper if not already done.
    --
    if ( this.hNavObject ( ) == nil )
    then
        local hScene  = object.getScene ( hObject )
        if (  hScene ~= nil )
        then
            local o   = scene.createRuntimeObject ( hScene, "Dummy" )
            if (  o  ~= nil )
            then
                this.hNavObject ( o )
                
                this.hNavTarget ( scene.createRuntimeObject ( hScene, "Dummy" ) )
            end
        end
    end
    
    -- Place the navigation helper on the nearest node.
    --
    navigation.setNearestNode ( this.hNavObject ( ), hObject )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
