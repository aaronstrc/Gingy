--------------------------------------------------------------------------------
--  Function......... : setAnimations
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MouseAI.setAnimations ( )
--------------------------------------------------------------------------------
	
	--
	-- Sets up the animation information
	--
    --adds hash table that stores animation mode
    --hash table values for idle
    hashtable.add ( this.htAnimations ( ), "idle", 1)
    hashtable.add ( this.htAnimations ( ), "idle_begin", 54 )
    hashtable.add ( this.htAnimations ( ), "idle_end", 120 )
    
    --hash table values for punch
    hashtable.add ( this.htAnimations ( ), "punch", 2)
    hashtable.add ( this.htAnimations ( ), "punch_begin", 448 )
    hashtable.add ( this.htAnimations ( ), "punch_end", 480 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
