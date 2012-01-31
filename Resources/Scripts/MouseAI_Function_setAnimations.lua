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
    hashtable.add ( this.htAnimations ( ), "idle", 3)
    hashtable.add ( this.htAnimations ( ), "idle_begin", 3 )
    hashtable.add ( this.htAnimations ( ), "idle_end", 263 )
    
    --hash table values for punch
    hashtable.add ( this.htAnimations ( ), "punch", 4)
    hashtable.add ( this.htAnimations ( ), "punch_begin", 804 )
    hashtable.add ( this.htAnimations ( ), "punch_end", 850 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
