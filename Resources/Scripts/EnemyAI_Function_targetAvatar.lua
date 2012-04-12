--------------------------------------------------------------------------------
--  Function......... : targetAvatar
--  Author........... : Aaron Stricklin
--  Description...... : updates the navigation to attack the avatar
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function EnemyAI.targetAvatar ( )
--------------------------------------------------------------------------------

    --gets the distance between the current enemy
    --and the avatar
    local nAvatarD = object.getDistanceToObject ( this.getObject ( ), this.hAvatar ( ) )
    local nPathL = navigation.getPathNodeCount ( this.hNavObject ( ) )
    
	-- In a updateNavigation () function
    if((this.hAvatar ( ) ~= nil and  nAvatarD >= 7) or nPathL < 1  ) then
    
        --sets a new target node
        navigation.setSpeedLimit ( this.hNavObject(), 5 )

        navigation.setAcceleration ( this.hNavObject ( ), 8 )

        navigation.setPathMaxLength ( this.hNavObject ( ), 20 )
            
        navigation.setNearestTargetNode ( this.hNavObject ( ), this.hAvatar ( ) )

    end
    
    
    --gets the distance from the current avatar... gingy
    local nAvatarDistance = object.getDistanceToObject ( this.hEnemy ( ), this.hAvatar ( ) )
    
    --if gingy isn't far from the enemy then the enemy goes into the found State
    if(nAvatarDistance <= 1.5) then
        
        --dynamics code wasn't working well so moved to looking at the next point in the 
        --navigation
        local Ax, Ay, Az = object.getTranslation(this.hAvatar ( ), object.kGlobalSpace)
        object.lookAt ( this.hEnemy ( ), Ax, Ay, Az, object.kGlobalSpace, 1 )
        object.rotateAxisAngle ( this.hEnemy ( ), 0, 1, 0, 180, object.kLocalSpace )
        
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
