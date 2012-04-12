--------------------------------------------------------------------------------
--  State............ : SearchingAI
--  Author........... : Aaron Stricklin
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AntiGingyAI.SearchingAI_onLoop ( )
--------------------------------------------------------------------------------
	
    --gets the current time
    local nCTime = system.getTimeOfDay ( ) - this.nIdleStartTime ( )
    
    --if time is less than 30 seconds update search 
    if(nCTime < this.nStateTime ( ) )then
    
        --updates all code here
        if(this.bSearching ( ) == true) then
            this.updateNavigation ( )
        else
            this.targetAvatar ( )
        end
        
    --else switch states
    else
    
        --sets random motion time
        this.nStateTime ( math.random ( 5, 15 ) )
        
        --resets the time
        this.nIdleStartTime ( 0 )
    
        --options for states
        local randomN = math.random ( 0, 7)
        
        --calls the random states
        --idle
        if(math.floor ( randomN) == 0)then
        
            this.Idle ( )
        
        --calls angry
        elseif(math.floor ( randomN) == 1) then
        
            this.Angry ( )
        
        --calls throw
        elseif(math.floor ( randomN) == 2 or math.floor ( randomN) == 4 or math.floor ( randomN) == 6) then
        
            this.Throwing ( )
        
        --calls jump
        elseif(math.floor ( randomN) == 3 or math.floor ( randomN) == 5  or math.floor ( randomN) == 7) then
        
            this.Jump ( )
            
        end
    
    end
    
    --calls function to update look
    this.updateLook ( )
    
    --makes the enemy not bobble around
    local x,y,z = object.getRotation ( this.hEnemy ( ), object.kGlobalSpace )
    object.setRotation ( this.hEnemy ( ), 0, y, 0, object.kGlobalSpace )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
