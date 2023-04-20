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

var<workgroup> TGSM0 : array<S, 128u>;

var<private> gl_LocalInvocationIndex : u32;

var<private> u_xlatb0 : bool;

var<private> u_xlati1 : i32;

@group(0) @binding(1) var<storage, read_write> x_117 : x_Output_origX0X;

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
  let x_69 : f32 = u_xlat0;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_69) & 31u));
  let x_82 : u32 = gl_LocalInvocationIndex;
  let x_83 : i32 = u_xlati0;
  TGSM0[x_82].value[0i] = bitcast<u32>(x_83);
  workgroupBarrier();
  let x_89 : u32 = gl_LocalInvocationIndex;
  param = bitcast<i32>(x_89);
  param_1 = 31i;
  param_2 = 0i;
  param_3 = 5i;
  let x_97 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlati0 = x_97;
  let x_98 : i32 = u_xlati0;
  let x_100 : u32 = TGSM0[x_98].value[0i];
  u_xlati0 = bitcast<i32>(x_100);
  let x_105 : i32 = u_xlati0;
  u_xlatb0 = (x_105 == 31i);
  let x_107 : bool = u_xlatb0;
  u_xlati0 = select(0i, 1i, x_107);
  let x_111 : u32 = gl_LocalInvocationIndex;
  u_xlati1 = (bitcast<i32>(x_111) << bitcast<u32>(2i));
  let x_118 : i32 = u_xlati1;
  let x_120 : i32 = u_xlati0;
  x_117.x_Output_origX0X_buf[(x_118 >> bitcast<u32>(2i))] = bitcast<u32>(x_120);
  return;
}

@compute @workgroup_size(128i, 1i, 1i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

