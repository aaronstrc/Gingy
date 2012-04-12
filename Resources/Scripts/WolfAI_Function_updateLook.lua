--------------------------------------------------------------------------------
--  Function......... : updateLook
--  Author........... : aaron stricklin
--  Description...... : updates the enemy look code for smooth animation
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.updateLook ( )
--------------------------------------------------------------------------------
	
	--
	-- updates the enemy looking code
	--
    local navLength = navigation.getPathNodeCount ( this.hNavObject ( ) )
    
    --updates the look code for the enemy if the node count is larger than 1
    if( navLength >= 2) then
        
        --gets the next node then lets the user look at it
        local hNNode = navigation.getPathNodeAt ( this.hNavObject ( ), 1 )
        
        local x, y, z = navigation.getNodeTranslation ( application.getCurrentUserScene ( ), hNNode )
        
        object.lookAt ( this.hEnemy ( ), x, y, z, object.kGlobalSpace, 3)
        object.rotateAxisAngle ( this.hEnemy ( ), 0, 1, 0, 180, object.kGlobalSpace )
	end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
