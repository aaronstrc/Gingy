--------------------------------------------------------------------------------
--  Function......... : setPause
--  Author........... : Aaron Stricklin
--  Description...... : sets pause or unsets pause
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.setPause ( )
--------------------------------------------------------------------------------
	--TODO: need to implement hud to say pause
	--if statement to check pause
    if(this.bPaused ( )) then
        
        --unpauses scene
        scene.setPaused ( application.getCurrentUserScene ( ), false )
        this.bPaused ( false )
    
    else
    
        --pauses scene
        scene.setPaused ( application.getCurrentUserScene ( ), true )
        this.bPaused ( true )
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
