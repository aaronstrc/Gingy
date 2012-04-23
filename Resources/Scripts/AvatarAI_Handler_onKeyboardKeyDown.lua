-------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AvatarAI.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
    --checks keys that move of rotate the avatar
    if ( kKeyCode == input.kKeyW ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    if ( kKeyCode == input.kKeyA ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    if ( kKeyCode == input.kKeyS ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    if ( kKeyCode == input.kKeyD ) then
        this.nHandlerCount ( this.nHandlerCount ( ) + 1)
    end
    
    -------------------------------------------------
    --the e key will handle weapon equip and un equip
    if ( kKeyCode == input.kKeyE ) then
        
        --bWeapon false equip it 
        if(this.bWeapon ( ) == false)then
        
            --sets the weapon to be activated
            this.bWeapon ( true )
            
            --creates weapon
            this.hWeapon ( scene.createRuntimeObject ( application.getCurrentUserScene ( ), this.sWeapon ( ) ))
            
            --sets weapon to hand that holds weapon
            local xWT, yWT, zWT = shape.getSkeletonJointTranslation ( this.hAvatar ( ), this.sHandHWeapon ( ), object.kGlobalSpace )
            local xWR, yWR, zWR = shape.getSkeletonJointRotation ( this.hAvatar ( ), this.sHandHWeapon ( ), object.kGlobalSpace )
            object.setTranslation ( this.hWeapon ( ), xWT, yWT, zWT, object.kGlobalSpace )
            object.setRotation ( this.hWeapon ( ), xWR, yWR, zWR, object.kGlobalSpace )
            
        
        --else remove it and set equipped weapon false
        else
        
            --deactivated the weapon
            this.bWeapon ( false )
        
            --destroys the old weapon
            scene.destroyRuntimeObject ( application.getCurrentUserScene ( ), this.hWeapon ( ) )
        
            --sets weapon back to nil
            this.hWeapon ( nil )
        
        end
        
    end
    -------------------------------------------------------
    
    --code that will test jump
    if ( kKeyCode == input.kKeySpace ) then 
        
        --shoots a ray down to test if you can jump
        local x, y, z = object.getTranslation ( this.hAvatar ( ), object.kGlobalSpace )
        local hObject, nDist, nHitSurfID = scene.getFirstHitCollider ( application.getCurrentUserScene ( ), x, y, z, 0, -1, 0, 100)
    
        --if no collider check for a terrain instead
        if(hObject == nil) then
        
            x, y, z = object.getTranslation ( this.hAvatar ( ), object.kGlobalSpace )
            hObject, nDist, nHitSurfID = scene.getFirstHitTerrainChunk( application.getCurrentUserScene ( ), x, y, z, 0, -1, 0, 100)
        
        end
    
        --if there isn't a great distance from the object that your standing on then jumpwww asd 
        if ( nDist <= 0.2 ) and ( this.bJump ( ) == false ) then
            
            --plays jump sound
            sound.play ( this.hAvatar ( ), 0, 3, false, 1 )
            
            this.bJump ( true )
            dynamics.setLinearVelocity ( this.hAvatar ( ), 0, 8, 0, object.kLocalSpace )
            dynamics.addLinearImpulse ( this.hAvatar ( ), 0, 8, 0, object.kLocalSpace )
        
         end
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
