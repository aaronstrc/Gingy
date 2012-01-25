--------------------------------------------------------------------------------
--  Function......... : updateNavigation
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function EnemyAI.updateNavigation ( )
--------------------------------------------------------------------------------
	
    --gets distance between two nodes
    local nDistance = navigation.getTargetNodeDistance ( this.hNavObject ( ) )
    
	-- In a updateNavigation () function
    if(this.bPathFound ( ) == false or nDistance < 0.1 ) then
    
        navigation.setSpeedLimit ( this.hNavObject(), 5 )

        navigation.setAcceleration ( this.hNavObject ( ), 3 )

        navigation.setPathMaxLength ( this.hNavObject ( ), 20 )

        navigation.setRandomTargetNode ( this.hNavObject () )
    
        this.bPathFound ( true )
    
    end
    
    object.matchTranslation ( this.hEnemy ( ), this.hNavObject ( ), object.kGlobalSpace )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
