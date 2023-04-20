alias RTArr = array<u32>;

struct x_Output_origX0X {
  /* @offset(0) */
  x_Output_origX0X_buf : RTArr,
}

@group(0) @binding(0) var<storage, read_write> x_10 : x_Output_origX0X;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  x_10.x_Output_origX0X_buf[0i] = 1u;
  return;
}

@compute @workgroup_size(1i, 1i, 1i)
fn main() {
  main_1();
}

