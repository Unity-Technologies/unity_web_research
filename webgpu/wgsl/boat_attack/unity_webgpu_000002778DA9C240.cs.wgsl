alias RTArr = array<u32>;

alias RTArr_1 = array<u32>;

struct x_Input {
  /* @offset(0) */
  x_Input_buf : RTArr_1,
}

struct S {
  value : array<u32, 1u>,
}

struct x_Output_origX0X {
  /* @offset(0) */
  x_Output_origX0X_buf : RTArr_1,
}

var<private> u_xlati0 : i32;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlat0 : f32;

@group(0) @binding(0) var<storage, read> x_60 : x_Input;

var<private> u_xlati1 : i32;

var<private> gl_LocalInvocationIndex : u32;

var<workgroup> TGSM0 : array<S, 128u>;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var<storage, read_write> x_119 : x_Output_origX0X;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_50 : u32 = gl_GlobalInvocationID.x;
  u_xlati0 = (bitcast<i32>(x_50) << bitcast<u32>(2i));
  let x_62 : i32 = u_xlati0;
  let x_67 : u32 = x_60.x_Input_buf[((x_62 >> bitcast<u32>(2i)) + 0i)];
  u_xlat0 = bitcast<f32>(x_67);
  let x_70 : f32 = u_xlat0;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_70) & 31u));
  let x_76 : u32 = gl_LocalInvocationIndex;
  let x_78 : f32 = u_xlat0;
  param = bitcast<i32>(x_76);
  param_1 = bitcast<i32>(x_78);
  param_2 = 0i;
  param_3 = 5i;
  let x_85 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati0 = x_85;
  let x_93 : u32 = gl_LocalInvocationIndex;
  let x_94 : i32 = u_xlati1;
  TGSM0[x_93].value[0i] = bitcast<u32>(x_94);
  workgroupBarrier();
  let x_100 : i32 = u_xlati0;
  let x_102 : u32 = TGSM0[x_100].value[0i];
  u_xlati0 = bitcast<i32>(x_102);
  let x_107 : i32 = u_xlati1;
  let x_108 : i32 = u_xlati0;
  u_xlatb0 = (x_107 == x_108);
  let x_110 : bool = u_xlatb0;
  u_xlati0 = select(0i, 1i, x_110);
  let x_113 : u32 = gl_LocalInvocationIndex;
  u_xlati1 = (bitcast<i32>(x_113) << bitcast<u32>(2i));
  let x_120 : i32 = u_xlati1;
  let x_122 : i32 = u_xlati0;
  x_119.x_Output_origX0X_buf[(x_120 >> bitcast<u32>(2i))] = bitcast<u32>(x_122);
  return;
}

@compute @workgroup_size(128i, 1i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

