--------------------------------------------------------------------------------
--  Function......... : setAnimations
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.setAnimations ( )
--------------------------------------------------------------------------------
	
	--
	-- Sets up the animation information
	--
    --adds hash table that stores animation modes
    hashtable.add ( this.htAnimations ( ), "run", 1)
    hashtable.add ( this.htAnimations ( ), "run_begin", 34 )
    hashtable.add ( this.htAnimations ( ), "run_end", 66 )
    
    --hash table values for jump
    hashtable.add ( this.htAnimations ( ), "jump", 2)
    hashtable.add ( this.htAnimations ( ), "jump_begin", 78 )
    hashtable.add ( this.htAnimations ( ), "jump_end", 148 )
    hashtable.add ( this.htAnimations ( ), "runjump_begin", 78 )
    hashtable.add ( this.htAnimations ( ), "runjump_end", 121 )
    
    --hash table values for idle
    hashtable.add ( this.htAnimations ( ), "idle", 3)
    hashtable.add ( this.htAnimations ( ), "idle_begin", 3 )
    hashtable.add ( this.htAnimations ( ), "idle_end", 263 )
    
    --hash table values for punch
    hashtable.add ( this.htAnimations ( ), "punch", 4)
    hashtable.add ( this.htAnimations ( ), "punch_begin", 804 )
    hashtable.add ( this.htAnimations ( ), "punch_end", 850 )
    
     --hash table values for punch
    hashtable.add ( this.htAnimations ( ), "push", 5)
    hashtable.add ( this.htAnimations ( ), "push_begin", 207 )
    hashtable.add ( this.htAnimations ( ), "push_end", 411 )
    
     --hash table values for punch
    hashtable.add ( this.htAnimations ( ), "smallWeapon", 6)
    hashtable.add ( this.htAnimations ( ), "smallWeapon_begin", 373 )
    hashtable.add ( this.htAnimations ( ), "smallWeapon_end", 628 )
    
     --hash table values for punch
    hashtable.add ( this.htAnimations ( ), "largeWeapon", 7)
    hashtable.add ( this.htAnimations ( ), "largeWeapon_begin", 1098 )
    hashtable.add ( this.htAnimations ( ), "largeWeapon_end", 1284 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
