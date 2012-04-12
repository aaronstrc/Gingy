--------------------------------------------------------------------------------
--  Function......... : setAnimations
--  Author........... : Aaron Stricklin
--  Description...... : sets Animations for AntiGingy
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AntiGingyAI.setAnimations ( )
--------------------------------------------------------------------------------
	
	--
	-- Sets up the animation information
	--
    --adds hash table that stores animation mode
    --hash table values for idle
    hashtable.add ( this.htAnimations ( ), "idle", 0)
    hashtable.add ( this.htAnimations ( ), "idle_begin", 3 )
    hashtable.add ( this.htAnimations ( ), "idle_end", 290 )
    
    --hash table values for walk
    hashtable.add ( this.htAnimations ( ), "walk", 1)
    hashtable.add ( this.htAnimations ( ), "walk_begin", 37 )
    hashtable.add ( this.htAnimations ( ), "walk_end", 85 )
    
    --hash table values for hit
    hashtable.add ( this.htAnimations ( ), "hit", 2)
    hashtable.add ( this.htAnimations ( ), "hit_begin", 48 )
    hashtable.add ( this.htAnimations ( ), "hit_end", 119 )
    
    --hash table values for angry
    hashtable.add ( this.htAnimations ( ), "angry", 3)
    hashtable.add ( this.htAnimations ( ), "angry_begin", 43 )
    hashtable.add ( this.htAnimations ( ), "angry_end", 383 )
    
    --hash table values for jump
    hashtable.add ( this.htAnimations ( ), "jump", 4)
    hashtable.add ( this.htAnimations ( ), "jump_begin", 58 )
    hashtable.add ( this.htAnimations ( ), "jump_end", 190 )
    
    --hash table values for getUP
    hashtable.add ( this.htAnimations ( ), "FallandGetup", 5)
    hashtable.add ( this.htAnimations ( ), "FallandGetup_begin", 1 )
    hashtable.add ( this.htAnimations ( ), "FallandGetup_end", 289 )
    
    --hash table values for throw
    hashtable.add ( this.htAnimations ( ), "throw", 6)
    hashtable.add ( this.htAnimations ( ), "throw_begin", 1 )
    hashtable.add ( this.htAnimations ( ), "throw_release", 20 )
    hashtable.add ( this.htAnimations ( ), "throw_end", 42 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
