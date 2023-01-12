struct S_atomic {
  value : array<atomic<u32>, 1u>,
}

struct S {
  value : array<u32, 1u>,
}

struct Params {
  x_ScaleOffsetRes : vec4<f32>,
}

type Arr = array<u32, 1u>;

struct x_HistogramBuffer_origX0X_type_atomic {
  value : array<atomic<u32>, 1u>,
}

struct x_HistogramBuffer_origX0X_type {
  value : Arr,
}

type RTArr = array<x_HistogramBuffer_origX0X_type>;

struct x_HistogramBuffer_origX0X_atomic {
  x_HistogramBuffer_origX0X_buf : array<x_HistogramBuffer_origX0X_type_atomic>,
}

struct x_HistogramBuffer_origX0X {
  x_HistogramBuffer_origX0X_buf : RTArr,
}

var<private> gl_LocalInvocationID : vec3<u32>;

var<workgroup> TGSM0 : array<S_atomic, 128u>;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(1) @binding(0) var<uniform> x_74 : Params;

@group(0) @binding(0) var x_Source : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var<storage, read_write> x_203 : x_HistogramBuffer_origX0X_atomic;

fn main_1() {
  var u_xlatu0 : vec2<u32>;
  var u_xlatb4 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlatb5 : vec2<bool>;
  var u_xlatb6 : bool;
  var u_xlat5 : vec2<f32>;
  var u_xlat6 : f32;
  var u_xlatu6 : u32;
  var u_xlatu1 : vec2<u32>;
  var u_xlati4 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : u32 = gl_LocalInvocationID.y;
  let x_21 : u32 = gl_LocalInvocationID.x;
  u_xlatu0.x = ((x_16 * 16u) + x_21);
  let x_29 : u32 = u_xlatu0.x;
  u_xlatb4 = (x_29 < 128u);
  let x_32 : bool = u_xlatb4;
  if (x_32) {
    let x_41 : u32 = u_xlatu0.x;
    atomicStore(&(TGSM0[x_41].value[0i]), 0u);
  }
  let x_51 : vec3<u32> = gl_GlobalInvocationID;
  let x_54 : vec2<f32> = vec2<f32>(vec2<u32>(x_51.x, x_51.y));
  let x_55 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_54.x, x_54.y, x_55.z);
  let x_57 : vec3<f32> = u_xlat1;
  let x_59 : vec3<f32> = u_xlat1;
  let x_61 : vec2<f32> = (vec2<f32>(x_57.x, x_57.y) + vec2<f32>(x_59.x, x_59.y));
  let x_62 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_61.x, x_61.y, x_62.z);
  workgroupBarrier();
  let x_70 : vec3<f32> = u_xlat1;
  let x_77 : vec4<f32> = x_74.x_ScaleOffsetRes;
  let x_80 : vec4<bool> = (vec4<f32>(x_70.x, x_70.y, x_70.x, x_70.y) < vec4<f32>(x_77.z, x_77.w, x_77.z, x_77.w));
  u_xlatb5 = vec2<bool>(x_80.x, x_80.y);
  let x_84 : bool = u_xlatb5.y;
  let x_86 : bool = u_xlatb5.x;
  u_xlatb6 = (x_84 & x_86);
  let x_88 : bool = u_xlatb6;
  if (x_88) {
    let x_91 : vec3<f32> = u_xlat1;
    let x_94 : vec4<f32> = x_74.x_ScaleOffsetRes;
    let x_96 : vec2<f32> = (vec2<f32>(x_91.x, x_91.y) / vec2<f32>(x_94.z, x_94.w));
    let x_97 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_96.x, x_96.y, x_97.z);
    let x_101 : vec3<f32> = u_xlat1;
    u_xlat5 = (vec2<f32>(x_101.x, x_101.y) + vec2<f32>(-0.5f, -0.5f));
    let x_108 : vec2<f32> = u_xlat5;
    let x_110 : vec2<f32> = u_xlat5;
    u_xlat6 = dot(abs(x_108), abs(x_110));
    let x_113 : f32 = u_xlat6;
    u_xlat6 = (-(x_113) + 1.0f);
    let x_117 : f32 = u_xlat6;
    u_xlat6 = max(x_117, 0.0f);
    let x_120 : f32 = u_xlat6;
    let x_121 : f32 = u_xlat6;
    u_xlat6 = (x_120 * x_121);
    let x_123 : f32 = u_xlat6;
    u_xlat6 = (x_123 * 64.0f);
    let x_127 : f32 = u_xlat6;
    u_xlatu6 = u32(x_127);
    let x_139 : vec3<f32> = u_xlat1;
    let x_141 : vec4<f32> = textureSampleLevel(x_Source, sampler_LinearClamp, vec2<f32>(x_139.x, x_139.y), 0.0f);
    u_xlat1 = vec3<f32>(x_141.x, x_141.y, x_141.z);
    let x_143 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(x_143, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
    let x_151 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_151);
    let x_155 : f32 = u_xlat1.x;
    let x_158 : f32 = x_74.x_ScaleOffsetRes.x;
    let x_161 : f32 = x_74.x_ScaleOffsetRes.y;
    u_xlat1.x = ((x_155 * x_158) + x_161);
    let x_165 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_165, 0.0f, 1.0f);
    let x_169 : f32 = u_xlat1.x;
    u_xlat1.x = (x_169 * 127.0f);
    let x_175 : f32 = u_xlat1.x;
    u_xlatu1.x = u32(x_175);
    u_xlatu1.y = 0u;
    let x_180 : u32 = u_xlatu1.x;
    let x_182 : u32 = u_xlatu1.y;
    let x_185 : u32 = u_xlatu6;
    let x_186 : u32 = atomicAdd(&(TGSM0[x_180].value[(x_182 >> 2u)]), x_185);
  }
  workgroupBarrier();
  let x_187 : bool = u_xlatb4;
  if (x_187) {
    let x_193 : u32 = u_xlatu0.x;
    let x_195 : u32 = atomicLoad(&(TGSM0[x_193].value[0i]));
    u_xlati4 = bitcast<i32>(x_195);
    u_xlatu0.y = 0u;
    let x_205 : u32 = u_xlatu0.x;
    let x_207 : u32 = u_xlatu0.y;
    let x_211 : i32 = u_xlati4;
    let x_213 : u32 = atomicAdd(&(x_203.x_HistogramBuffer_origX0X_buf[x_205].value[(x_207 >> 2u)]), bitcast<u32>(x_211));
  }
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

