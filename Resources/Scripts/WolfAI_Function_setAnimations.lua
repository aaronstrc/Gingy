--------------------------------------------------------------------------------
--  Function......... : setAnimations
--  Author........... : Aaron Stricklin
--  Description...... : sets Animations for the wolf
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function WolfAI.setAnimations ( )
--------------------------------------------------------------------------------
	
	--
	-- Sets up the animation information
	--
    --adds hash table that stores animation mode
    --hash table values for idle
    hashtable.add ( this.htAnimations ( ), "idle", 0)
    hashtable.add ( this.htAnimations ( ), "idle_begin", 39 )
    hashtable.add ( this.htAnimations ( ), "idle_end", 206 )
    
    --hash table values for walk
    hashtable.add ( this.htAnimations ( ), "walk", 1)
    hashtable.add ( this.htAnimations ( ), "walk_begin", 668 )
    hashtable.add ( this.htAnimations ( ), "walk_end", 760 )
    
    --hash table values for hit
    hashtable.add ( this.htAnimations ( ), "hit", 2)
    hashtable.add ( this.htAnimations ( ), "hit_begin", 19 )
    hashtable.add ( this.htAnimations ( ), "hit_end", 195 )
    
    --hash table values for angry
    hashtable.add ( this.htAnimations ( ), "angry", 3)
    hashtable.add ( this.htAnimations ( ), "angry_begin", 660 )
    hashtable.add ( this.htAnimations ( ), "angry_end", 848 )
    
    --hash table values for run
    hashtable.add ( this.htAnimations ( ), "run", 4)
    hashtable.add ( this.htAnimations ( ), "run_begin", 48 )
    hashtable.add ( this.htAnimations ( ), "run_end", 143 )
    
    --hash table values for getUP
    hashtable.add ( this.htAnimations ( ), "FallandGetup", 5)
    hashtable.add ( this.htAnimations ( ), "FallandGetup_begin", 26 )
    hashtable.add ( this.htAnimations ( ), "FallandGetup_end", 329 )
    
    --hash table values for throw
    hashtable.add ( this.htAnimations ( ), "throw", 6)
    hashtable.add ( this.htAnimations ( ), "throw_begin", 1 )
    hashtable.add ( this.htAnimations ( ), "throw_release", 20 )
    hashtable.add ( this.htAnimations ( ), "throw_end", 42 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
