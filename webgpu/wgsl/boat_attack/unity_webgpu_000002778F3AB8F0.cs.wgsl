alias RTArr = array<u32>;

struct x_Output_origX0X {
  /* @offset(0) */
  x_Output_origX0X_buf : RTArr,
}

var<private> u_xlati0 : i32;

var<private> gl_LocalInvocationIndex : u32;

@group(0) @binding(0) var<storage, read_write> x_19 : x_Output_origX0X;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : u32 = gl_LocalInvocationIndex;
  u_xlati0 = (bitcast<i32>(x_12) << bitcast<u32>(2i));
  let x_21 : i32 = u_xlati0;
  x_19.x_Output_origX0X_buf[(x_21 >> bitcast<u32>(2i))] = 1u;
  return;
}

@compute @workgroup_size(128i, 1i, 1i)
fn main(@builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

