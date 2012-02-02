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
        
        --gets the count of aiModels on the hEnemy
        local nCount = object.getAIModelCount ( this.hEnemy ( ) )
        
        --loops through the ai models to send the hit animation
        for i = 0, nCount - 1, 1 
        do
            
            local sAIName = object.getAIModelNameAt ( this.hEnemy ( ), i )
            
            --if its not the enemy ai then Send an event to that ai to attack
            if( sAIName ~= "EnemyAI") then
            
                
                local bHasHandler = object.hasAIEventHandler ( this.hEnemy ( ), sAIName, "onPunch" )
                
                --if it has the punch handler then send a message
                if(bHasHandler == true) then
                
                    object.sendEvent ( this.hEnemy ( ), sAIName, "onPunch" )
                    --log.message ( "attacked the avatar ")
                
                end
                
            end
        	
        end
    
    
    elseif(nAvatarDistance >= 13) then
    
        this.bSearching ( true )
        
    end
    
    --sets the object to the travel nav object
    object.matchTranslation ( this.hEnemy ( ), this.hNavObject ( ), object.kGlobalSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
