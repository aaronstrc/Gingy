--------------------------------------------------------------------------------
--  Function......... : setAnimations
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SpiderAI.setAnimations ( )
--------------------------------------------------------------------------------
	
	--
	-- Sets up the animation information
	--
    --adds hash table that stores animation mode
    --hash table values for idle
    hashtable.add ( this.htAnimations ( ), "idle", 0)
    hashtable.add ( this.htAnimations ( ), "idle_begin", 1 )
    hashtable.add ( this.htAnimations ( ), "idle_end", 63 )
    
    --hash table values for punch
    hashtable.add ( this.htAnimations ( ), "punch", 0)
    hashtable.add ( this.htAnimations ( ), "punch_begin", 122 )
    hashtable.add ( this.htAnimations ( ), "punch_end", 171 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
