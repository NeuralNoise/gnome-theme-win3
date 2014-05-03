#!/bin/bash
mkdir cursors
cd cursors

while read i ; do 
    echo making $i ....
    xcursorgen -p ../Sources ../Sources/$i.conf $i; 
done <<EOF
top_left_arrow
drapedbox
top_right_corner
bottom_left_corner
sb_v_double_arrow
bottom_side
top_side
center_ptr
based_arrow_down
question_arrow
crossed_circle
ul_angle
sb_h_double_arrow
tcross
pirate
pencil
cross_reverse
left_ptr_watch
ur_angle
dotbox
bd_double_arrow
circle
sb_right_arrow
crosshair
sb_up_arrow
based_arrow_up
v_double_arrow
left_side
X_cursor
draft_small
draft_large
top_left_corner
left_ptr
right_ptr
sb_down_arrow
h_double_arrow
ll_angle
sb_left_arrow
double_arrow
xterm
watch
bottom_right_corner
hand2
hand1
fleur
cross
arrow
fd_double_arrow
lr_angle
right_side
plus
move
grab
hand
copy
dot
EOF

while read target src; do 
    ln -sf $src $target;
done <<EOF
00008160000006810000408080010102 v_double_arrow
d9ce0ab605698f320427677b458ad60b question_arrow
2870a09082c103050810ffdffffe0204 sb_v_double_arrow
c7088f0f3e6c8088236ef8e1e3e70000 bd_double_arrow
028006030e0e7ebffc7f7070c0600140 h_double_arrow
9081237383d90e509aa00f00170e968f move
5c6cd98b3f3ebcb1f9c7f1c204630408 question_arrow
08e8e1c95fe2fc01f976f1e063a24ccd left_ptr_watch
fcf1c3c7cd4491d801f1e1c78f100000 fd_double_arrow
3ecb610c1bf2410f44200f48c40d3599 left_ptr_watch
4498f0e0c1937ffe01fd06f973665830 move
03b6e0fcb3499374a867c041f52298f0 crossed_circle
e29285e634086352946a0e7090d73106 hand2
9d800788f1b08800ae810202380a0822 hand1
14fef782d02440884392942c11205230 sb_h_double_arrow
EOF
