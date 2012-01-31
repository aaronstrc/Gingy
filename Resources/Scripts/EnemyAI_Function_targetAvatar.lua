--------------------------------------------------------------------------------
--  Function......... : targetAvatar
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function EnemyAI.targetAvatar ( )
--------------------------------------------------------------------------------
	
	--
	-- updates the navigation to attack the avatar
	--
    
    --gets distance between two nodes
    local bFoundNode = navigation.setNearestNode ( this.hNavTarget ( ), this.hAvatar ( ) )
    
	-- In a updateNavigation () function
    if(this.hAvatar ( ) ~= nil and  bFoundNode == true) then
    
        --gets the target node and sets the path for the node
        local hNode = navigation.getNode ( this.hNavTarget ( ) )
        
        --if the node exist then set is as a target and move
        if(hNode ~= nil) then
            
            navigation.setSpeedLimit ( this.hNavObject(), 5 )

            navigation.setAcceleration ( this.hNavObject ( ), 8 )

            navigation.setPathMaxLength ( this.hNavObject ( ), 20 )

            navigation.setTargetNode ( this.hNavObject ( ), hNode )
            
        end
    
    end
    
    
    --gets the distance from the current avatar... gingy
    local nAvatarDistance = object.getDistanceToObject ( this.hEnemy ( ), this.hAvatar ( ) )
    
    --if gingy isn't far from the enemy then the enemy goes into the found State
    if(nAvatarDistance <= 1) then
        
        log.message ( " attacked the avatar" )
    
    elseif(nAvatarDistance >= 13) then
    
        this.bSearching ( true )
        
    end
    
    --sets the object to the travel nav object
    object.matchTranslation ( this.hEnemy ( ), this.hNavObject ( ), object.kGlobalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
