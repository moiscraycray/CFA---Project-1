require 'catpix'

a = ["/Users/Titan/sites/GroupAssignment/testing/Pikachu.png"]


Catpix::print_image a[0],
  :limit_x => 0.7,
  :limit_y => 0.7,
  :center_x => true,
  :center_y => true,
  :bg => "white",
  :bg_fill => true
