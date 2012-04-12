--------------------------------------------------------------------------------
--  Function......... : checkInWay
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function SimpleCameraAI.checkInWay ( )
--------------------------------------------------------------------------------
	
	--gets the translation of the camera and the avatar
    local x, y, z = object.getTranslation ( this.hSimpleCamera ( ), object.kGlobalSpace )
    local Ax, Ay, Az = object.getTranslation ( this.hAvatar ( ), object.kGlobalSpace )
    
    --shoots ray to get a collider object
    local hHitObject, nHitDist, nHitSurfaceID = scene.getFirstHitCollider ( application.getCurrentUserScene ( ), x, y, z, Ax, Ay, Az, 5 )
    
    --checks if the object is nil
    if(hHitObject == nil)then
    
        --hInWayObject is not nil set it nil
        if(this.hInWayObject ( ) ~= nil) then
        
            --sets opacity back
            shape.setMeshOpacity ( this.hInWayObject ( ), 1 )
            
            --sets object back to nil
            this.hInWayObject ( nil )
            
        end
    
    else
    
        --check if inthewayobject is nil
        if(this.hInWayObject ( ) == nil)then
        
            --sets the new object
            this.hInWayObject ( hHitObject)
            
            --changes opacity
            shape.setMeshOpacity ( this.hInWayObject ( ), 0.2 )
        
        elseif(object.isEqualTo ( this.hInWayObject ( ), hHitObject ) == false) then
        
        
            --sets opacity back
            shape.setMeshOpacity ( this.hInWayObject ( ), 1 )
            
            --sets the new object
            this.hInWayObject ( hHitObject)
            
            --changes opacity
            shape.setMeshOpacity ( this.hInWayObject ( ), 0.2 )
        
        end
    
    end
    
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
