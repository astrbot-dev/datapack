execute store result score #-x_blocked botai rotated 90 0 run function botai:simple_follow/step/is_face_blocked
execute store result score #x_blocked botai rotated -90 0 run function botai:simple_follow/step/is_face_blocked
execute store result score #-y_blocked botai rotated 0 90 run function botai:simple_follow/step/is_face_blocked
execute store result score #y_blocked botai rotated 0 -90 run function botai:simple_follow/step/is_face_blocked
execute store result score #-z_blocked botai rotated 180 0 run function botai:simple_follow/step/is_face_blocked
execute store result score #z_blocked botai rotated 0 0 run function botai:simple_follow/step/is_face_blocked
function botai:simple_follow/step/x_blocked
function botai:simple_follow/step/y_blocked
function botai:simple_follow/step/z_blocked
