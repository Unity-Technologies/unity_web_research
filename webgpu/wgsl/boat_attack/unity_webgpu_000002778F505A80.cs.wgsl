alias RTArr = array<u32>;

alias RTArr_1 = array<u32>;

struct x_Input {
  /* @offset(0) */
  x_Input_buf : RTArr_1,
}

struct x_Output_origX0X {
  /* @offset(0) */
  x_Output_origX0X_buf : RTArr_1,
}

var<private> u_xlati0 : i32;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlat0 : f32;

@group(0) @binding(0) var<storage, read> x_26 : x_Input;

@group(0) @binding(1) var<storage, read_write> x_44 : x_Output_origX0X;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : u32 = gl_GlobalInvocationID.x;
  u_xlati0 = (bitcast<i32>(x_16) << bitcast<u32>(2i));
  let x_28 : i32 = u_xlati0;
  let x_33 : u32 = x_26.x_Input_buf[((x_28 >> bitcast<u32>(2i)) + 0i)];
  u_xlat0 = bitcast<f32>(x_33);
  let x_35 : f32 = u_xlat0;
  u_xlati0 = select(1i, 0i, (bitcast<i32>(x_35) != 0i));
  let x_45 : i32 = u_xlati0;
  x_44.x_Output_origX0X_buf[0i] = bitcast<u32>(x_45);
  return;
}

@compute @workgroup_size(1i, 1i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

