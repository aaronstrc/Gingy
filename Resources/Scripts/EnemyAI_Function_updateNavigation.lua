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
    
    
    --gets the distance from the current avatar... gingy
    local nAvatarDistance = object.getDistanceToObject ( this.hEnemy ( ), this.hAvatar ( ) )
    
    --if gingy isn't far from the enemy then the enemy goes into the found State
    if(nAvatarDistance <= 10) then
        
        --TODO: improve this needs to be improved so every ai doesn't need to have a found sound
        --for now found sound will be index 1
        if(this.allowSound ( )) then
        
            --gets height of objects
            local xE, yE, zE = object.getTranslation ( this.hEnemy ( ), object.kGlobalSpace )
            local xA, yA, zA = object.getTranslation ( this.hAvatar ( ), object.kGlobalSpace )
            
            --distance between height is less than certain number play sound
            if( math.abs(yE - yA) < 4)then
            
                sound.play ( this.hEnemy ( ), 1, 0.5, false, 1 )
            end
            
        end
        
        this.bSearching( false)
    
    end
    
    
    object.matchTranslation ( this.hEnemy ( ), this.hNavObject ( ), object.kGlobalSpace )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
