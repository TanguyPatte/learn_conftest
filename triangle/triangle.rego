package triangle

get_sign(angle_sum) = "<" { angle_sum < 180 }
get_sign(angle_sum) = ">" { angle_sum > 180 }

deny[msg] {
  triangle := input.triangle
  angle_sum = sum(triangle.angles)
  angle_sum != 180
  sign := get_sign(angle_sum)
  msg = sprintf("incorrect sum for angles : %v %v 180", [angle_sum, sign])
}
