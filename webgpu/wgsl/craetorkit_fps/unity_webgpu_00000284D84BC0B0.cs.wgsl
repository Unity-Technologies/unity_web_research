struct S_atomic {
  value : array<atomic<u32>, 1u>,
}

struct S {
  value : array<u32, 1u>,
}

struct Params {
  x_Params : vec4<f32>,
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

var<workgroup> TGSM0 : array<S_atomic, 256u>;

@group(1) @binding(0) var<uniform> x_48 : Params;

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(0) @binding(0) var x_Source : texture_2d<f32>;

@group(0) @binding(1) var<storage, read_write> x_258 : x_HistogramBuffer_origX0X_atomic;

fn main_1() {
  var u_xlati0 : vec2<i32>;
  var u_xlatu10 : vec2<u32>;
  var u_xlatb10 : vec2<bool>;
  var u_xlatu1 : vec4<u32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var x_157 : f32;
  var x_169 : f32;
  var x_181 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat10 : f32;
  var u_xlati10 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : u32 = gl_LocalInvocationID.y;
  let x_23 : u32 = gl_LocalInvocationID.x;
  u_xlati0.x = ((bitcast<i32>(x_17) * 16i) + bitcast<i32>(x_23));
  let x_35 : i32 = u_xlati0.x;
  atomicStore(&(TGSM0[x_35].value[0i]), 0u);
  workgroupBarrier();
  let x_52 : vec4<f32> = x_48.x_Params;
  u_xlatu10 = vec2<u32>(vec2<f32>(x_52.x, x_52.y));
  let x_61 : vec3<u32> = gl_GlobalInvocationID;
  let x_63 : vec2<u32> = u_xlatu10;
  let x_66 : vec4<bool> = (vec4<u32>(x_61.x, x_61.y, x_61.x, x_61.y) < vec4<u32>(x_63.x, x_63.y, x_63.x, x_63.y));
  u_xlatb10 = vec2<bool>(x_66.x, x_66.y);
  let x_70 : bool = u_xlatb10.y;
  let x_72 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_70 & x_72);
  let x_76 : bool = u_xlatb10.x;
  if (x_76) {
    let x_81 : vec3<u32> = gl_GlobalInvocationID;
    let x_82 : vec2<u32> = vec2<u32>(x_81.x, x_81.y);
    let x_83 : vec4<u32> = u_xlatu1;
    u_xlatu1 = vec4<u32>(x_82.x, x_82.y, x_83.z, x_83.w);
    u_xlatu1.z = 0u;
    u_xlatu1.w = 0u;
    let x_96 : vec4<u32> = u_xlatu1;
    let x_100 : u32 = u_xlatu1.w;
    let x_102 : vec4<f32> = textureLoad(x_Source, bitcast<vec2<i32>>(vec2<u32>(x_96.x, x_96.y)), bitcast<i32>(x_100));
    u_xlat1 = vec3<f32>(x_102.x, x_102.y, x_102.z);
    let x_104 : vec3<f32> = u_xlat1;
    u_xlat1 = x_104;
    let x_105 : vec3<f32> = u_xlat1;
    u_xlat1 = clamp(x_105, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_113 : f32 = x_48.x_Params.z;
    u_xlatb10.x = (0.0f < x_113);
    let x_117 : bool = u_xlatb10.x;
    if (x_117) {
      let x_121 : vec3<f32> = u_xlat1;
      u_xlat2 = (x_121 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
      let x_126 : vec3<f32> = u_xlat1;
      u_xlat3 = max(x_126, vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
      let x_130 : vec3<f32> = u_xlat3;
      u_xlat3 = log2(x_130);
      let x_132 : vec3<f32> = u_xlat3;
      u_xlat3 = (x_132 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
      let x_136 : vec3<f32> = u_xlat3;
      u_xlat3 = exp2(x_136);
      let x_138 : vec3<f32> = u_xlat3;
      u_xlat3 = ((x_138 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
      let x_150 : vec3<f32> = u_xlat1;
      let x_152 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_150.x, x_150.y, x_150.z, x_150.x));
      u_xlatb4 = vec3<bool>(x_152.x, x_152.y, x_152.z);
      let x_155 : bool = u_xlatb4.x;
      if (x_155) {
        let x_161 : f32 = u_xlat2.x;
        x_157 = x_161;
      } else {
        let x_164 : f32 = u_xlat3.x;
        x_157 = x_164;
      }
      let x_165 : f32 = x_157;
      u_xlat1.x = x_165;
      let x_168 : bool = u_xlatb4.y;
      if (x_168) {
        let x_173 : f32 = u_xlat2.y;
        x_169 = x_173;
      } else {
        let x_176 : f32 = u_xlat3.y;
        x_169 = x_176;
      }
      let x_177 : f32 = x_169;
      u_xlat1.y = x_177;
      let x_180 : bool = u_xlatb4.z;
      if (x_180) {
        let x_185 : f32 = u_xlat2.z;
        x_181 = x_185;
      } else {
        let x_188 : f32 = u_xlat3.z;
        x_181 = x_188;
      }
      let x_189 : f32 = x_181;
      u_xlat1.z = x_189;
    }
    let x_192 : f32 = x_48.x_Params.w;
    u_xlatu10.x = u32(x_192);
    let x_197 : u32 = u_xlatu10.x;
    u_xlatb15 = (2u < x_197);
    let x_199 : bool = u_xlatb15;
    if (x_199) {
      let x_203 : vec3<f32> = u_xlat1;
      u_xlat15 = dot(x_203, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
    } else {
      let x_210 : vec3<f32> = u_xlat1;
      let x_220 : u32 = u_xlatu10.x;
      indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
      let x_225 : vec4<u32> = indexable[bitcast<i32>(x_220)];
      u_xlat15 = dot(x_210, bitcast<vec3<f32>>(vec3<u32>(x_225.x, x_225.y, x_225.z)));
    }
    let x_230 : f32 = u_xlat15;
    u_xlat10 = (x_230 * 255.0f);
    let x_233 : f32 = u_xlat10;
    u_xlat10 = round(x_233);
    let x_235 : f32 = u_xlat10;
    u_xlatu1.x = u32(x_235);
    u_xlatu1.y = 0u;
    let x_240 : u32 = u_xlatu1.x;
    let x_242 : u32 = u_xlatu1.y;
    let x_245 : u32 = atomicAdd(&(TGSM0[x_240].value[(x_242 >> 2u)]), 1u);
  }
  workgroupBarrier();
  let x_248 : i32 = u_xlati0.x;
  let x_250 : u32 = atomicLoad(&(TGSM0[x_248].value[0i]));
  u_xlati10 = bitcast<i32>(x_250);
  u_xlati0.y = 0i;
  let x_260 : i32 = u_xlati0.x;
  let x_262 : i32 = u_xlati0.y;
  let x_267 : i32 = u_xlati10;
  let x_269 : u32 = atomicAdd(&(x_258.x_HistogramBuffer_origX0X_buf[x_260].value[(x_262 >> bitcast<u32>(2i))]), bitcast<u32>(x_267));
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

