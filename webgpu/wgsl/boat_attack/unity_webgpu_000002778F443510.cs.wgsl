alias RTArr = array<u32>;

struct x_Output_origX0X {
  /* @offset(0) */
  x_Output_origX0X_buf : RTArr,
}

var<private> u_xlati0 : vec2<i32>;

var<private> gl_LocalInvocationIndex : u32;

var<private> u_xlati1 : i32;

@group(0) @binding(0) var<storage, read_write> x_49 : x_Output_origX0X;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : u32 = gl_LocalInvocationIndex;
  u_xlati0.x = bitcast<i32>((x_13 & 31u));
  let x_21 : i32 = u_xlati0.x;
  let x_24 : bool = (x_21 != 0i);
  u_xlati0 = select(vec2<i32>(0i, 1i), vec2<i32>(1i, 0i), vec2<bool>(x_24, x_24));
  let x_33 : i32 = u_xlati0.y;
  let x_36 : i32 = u_xlati0.x;
  u_xlati0.x = bitcast<i32>((bitcast<u32>(x_33) ^ bitcast<u32>(x_36)));
  let x_42 : u32 = gl_LocalInvocationIndex;
  u_xlati1 = (bitcast<i32>(x_42) << bitcast<u32>(2i));
  let x_50 : i32 = u_xlati1;
  let x_53 : i32 = u_xlati0.x;
  x_49.x_Output_origX0X_buf[(x_50 >> bitcast<u32>(2i))] = bitcast<u32>(x_53);
  return;
}

@compute @workgroup_size(128i, 1i, 1i)
fn main(@builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

