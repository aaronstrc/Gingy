--------------------------------------------------------------------------------
--  Function......... : updateDynamics
--  Author........... : Aaron Stricklin
--  Description...... : updates navigation
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function EnemyAI.updateDynamics ( )
--------------------------------------------------------------------------------
	
	-- In a updateDynamics () function

    -- Add a force in the direction of the enemy

    local x, y, z =object.getTranslation ( this.hEnemy ( ), object.kGlobalSpace )

    local x2, y2, z2= object.getTranslation ( this.hDynObject (), object.kGlobalSpace )

    local fx, fy,fz = math.vectorSubtract ( x2, y2, z2, x, y, z )

    dynamics.addForce ( this.hDynObject (), fx, fy, fz, object.kGlobalSpace)

    dynamics.setLinearDampingEx ( this.hDynObject (), 10, 0, 10 )
	
    -- Set the zombie looking in the direction of his navigation objectin a smooth manner

    local tx, ty, tz = object.getTranslation ( this.hEnemy ( ), object.kGlobalSpace)

    object.lookAt ( this.hEnemy ( ), tx + fx, ty, tz + fz, object.kGlobalSpace,5 * application.getLastFrameTime () )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
