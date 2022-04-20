// Created by Crowbar 0.71

$ModelName "props_c17/door03_left.mdl"

$BodyGroup "Body"
{
	studio "door03_left_door_reference.smd"
}
$BodyGroup "handle01"
{
	blank
	studio "door01_left_handle01_reference.smd"
	studio "door01_left_handle02_reference.smd"
	studio "door01_left_handle03_reference.smd"
	studio "door01_left_handle04_reference.smd" // Mapbase -- New Combine lock hardware
}

$LOD 15
{
	replacemodel "door03_left_door_reference.smd" "door03_left_door_reference_lod1.smd"
	replacemodel "door01_left_handle01_reference.smd" "door01_left_handle01_reference_lod1.smd"
	replacemodel "door01_left_handle02_reference.smd" "door01_left_handle02_reference_lod1.smd"
	replacemodel "door01_left_handle03_reference.smd" "door01_left_handle03_reference_lod1.smd"
	replacemodel "door01_left_handle04_reference.smd" "door01_left_handle04_reference_lod1.smd"
	NoFacial
}

$SurfaceProp "metal"

$Contents "solid"

$IllumPosition 23 0 0

$CDMaterials "models\props_c17\"
$cdmaterials "models\props_combine\"

$TextureGroup "skinfamilies"
{
	{ "door01a_skin15" }
	{ "door01a_skin16" }
}

$CBox 0 0 0 0 0 0

$BBox -5.996 -1.25 -54.25 5.996 47.25 54.25

$DefineBone "door" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$DefineBone "handle" "door" 43.810005 -10.390667 1.997513 0 0 0 0 0 0 0 0 0
$DefineBone "handle02" "door" 43.810005 -10.390667 1.997513 0 0 0 0 0 0 0 0 0

// Mapbase -- New attachments
$attachment "lever_front" "handle" -3 -3.5 9 rotate 90 -180 0
$attachment "lever_back" "handle" -3 -3.5 -10 rotate -90 -180 0

$attachment "pushbar_back" "door" 43.75 -10 -6 rotate -90 -90 0
$attachment "pushbar_front" "handle02" -16 0.5 7 rotate 0 0 -90

$WeightList "weights_openbar" {
	 "door" 0
	 "handle" 0
	 "handle02" 1
}

$Sequence "idle" {
	"door03_left_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "locked" {
	"door03_left_anims\locked.smd"
	activity "ACT_DOOR_LOCKED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$Sequence "openbar" {
	"door03_left_anims\openbar.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	weightlist "weights_openbar"
}

$Sequence "open" {
	"door03_left_anims\open.smd"
	activity "ACT_DOOR_OPEN" 1
	{ event 1 8 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "openbar"
	fps 30
}

$CollisionModel "door03_left_physics.smd"
{
	$mass 50
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}

$KeyValues
{
	prop_data 
	{
		"allowstatic"		"1"
		"blocklos"		"1"
	}
	door_options 
	{
		"default"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"wood"
		}
		"skin0"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin1"		 
		{
			"open"			"Doors.FullOpen4"
			"close"			"Doors.FullClose4"
			"move"			"Doors.Move4"
			"surfaceprop"			"wood"
		}
		"skin2"		 
		{
			"open"			"Doors.FullOpen3"
			"close"			"Doors.FullClose3"
			"move"			"Doors.Move3"
			"surfaceprop"			"wood"
		}
		"skin3"		 
		{
			"open"			"Doors.FullOpen4"
			"close"			"Doors.FullClose4"
			"move"			"Doors.Move4"
			"surfaceprop"			"wood"
		}
		"skin4"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin5"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin6"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin7"		 
		{
			"open"			"Doors.FullOpen2"
			"close"			"Doors.FullClose2"
			"move"			"Doors.Move2"
			"surfaceprop"			"metal"
		}
		"skin8"		 
		{
			"open"			"Doors.FullOpen1"
			"close"			"Doors.FullClose1"
			"move"			"Doors.Move1"
			"surfaceprop"			"metal"
		}
		"skin9"		 
		{
			"open"			"Doors.FullOpen2"
			"close"			"Doors.FullClose2"
			"move"			"Doors.Move2"
			"surfaceprop"			"metal"
		}
		"skin10"		 
		{
			"open"			"Doors.FullOpen2"
			"close"			"Doors.FullClose2"
			"move"			"Doors.Move2"
			"surfaceprop"			"metal"
		}
		"skin11"		 
		{
			"open"			"Doors.FullOpen3"
			"close"			"Doors.FullClose3"
			"move"			"Doors.Move3"
			"surfaceprop"			"wood"
		}
		"hardware0"		 
		{
			"locked"			"DoorSound.Null"
			"unlocked"			"DoorSound.Null"
			
			"activity_front"	"ACT_GESTURE_DOOR_LEVER_OPEN_FRONT"
			"activity_back"		"ACT_GESTURE_DOOR_LEVER_OPEN_BACK"
		}
		"hardware1"		 
		{
			"locked"			"DoorHandles.Locked1"
			"unlocked"			"DoorHandles.Unlocked1"
			
			"activity_front"	"ACT_GESTURE_DOOR_LEVER_OPEN_FRONT"
			"activity_back"		"ACT_GESTURE_DOOR_LEVER_OPEN_BACK"
		}
		"hardware2"		 
		{
			"locked"			"DoorHandles.Locked2"
			"unlocked"			"DoorHandles.Unlocked2"
			
			"activity_front"	"ACT_GESTURE_DOOR_PUSHBAR_OPEN_FRONT"
			"activity_back"		"ACT_GESTURE_DOOR_PUSHBAR_OPEN_BACK"
		}
		
		// Mapbase -- Fixed keypad handle sounds
		"hardware3"		 
		{
			"locked"			"DoorHandles.Locked1"
			"unlocked"			"DoorHandles.Unlocked1"
			
			"activity_front"	"ACT_GESTURE_DOOR_LEVER_OPEN_FRONT"
			"activity_back"		"ACT_GESTURE_DOOR_LEVER_OPEN_BACK"
		}
		
		// Mapbase -- New Combine lock hardware
		"hardware4"		 
		{
			"locked"			"combine.door_lock"
			"unlocked"			"DoorHandles.Unlocked1"
			
			"activity_front"	"ACT_GESTURE_DOOR_LEVER_OPEN_FRONT"
			"activity_back"		"ACT_GESTURE_DOOR_LEVER_OPEN_BACK"
		}
	}
}
