--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AntiGingyAI.onInit (  )
--------------------------------------------------------------------------------
    
	--initializes all variables
    this.hAvatar ( application.getCurrentUserSceneTaggedObject ( this.sAvatar ( ) ) )
    this.hEnemy ( this.getObject ( ) )
    
    --initializes the animations
    this.setAnimations ( )
    
    --plays angry sound
    sound.play ( this.hEnemy ( ), 1, 0.2, false, 0 )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
