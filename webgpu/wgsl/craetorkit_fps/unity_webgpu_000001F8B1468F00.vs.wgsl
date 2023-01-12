struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

type Arr = array<u32, 14u>;

struct unity_ParticleInstanceData_type {
  value : Arr,
}

type RTArr = array<unity_ParticleInstanceData_type>;

struct unity_ParticleInstanceData {
  unity_ParticleInstanceData_buf : RTArr,
}

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
  unity_ParticleUVShiftData : vec4<f32>,
  unity_ParticleUseMeshColors : f32,
  @size(12)
  padding : u32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_49 : UnityDrawCallInfo;

@group(0) @binding(2) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_173 : VGlobals;

var<private> vs_TEXCOORD0 : f32;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlati1 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat13 : f32;
  var u_xlatu7 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat6 : vec2<f32>;
  var u_xlat18 : f32;
  var u_xlatb12 : bool;
  var x_360 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec4<f32> = in_POSITION0;
  let x_36 : vec3<f32> = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  u_xlat0.w = 1.0f;
  let x_46 : i32 = gl_InstanceIndex;
  let x_53 : i32 = x_49.unity_BaseInstanceID;
  u_xlati1 = (x_46 + x_53);
  let x_63 : i32 = u_xlati1;
  let x_67 : u32 = x_62.unity_ParticleInstanceData_buf[x_63].value[2i];
  let x_69 : i32 = u_xlati1;
  let x_71 : u32 = x_62.unity_ParticleInstanceData_buf[x_69].value[0i];
  let x_73 : i32 = u_xlati1;
  let x_76 : u32 = x_62.unity_ParticleInstanceData_buf[x_73].value[1i];
  let x_78 : vec3<f32> = vec3<f32>(bitcast<f32>(x_67), bitcast<f32>(x_71), bitcast<f32>(x_76));
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_84 : f32 = u_xlat2.z;
  u_xlat3.x = x_84;
  let x_88 : i32 = u_xlati1;
  let x_91 : u32 = x_62.unity_ParticleInstanceData_buf[x_88].value[4i];
  let x_93 : i32 = u_xlati1;
  let x_96 : u32 = x_62.unity_ParticleInstanceData_buf[x_93].value[3i];
  let x_98 : i32 = u_xlati1;
  let x_101 : u32 = x_62.unity_ParticleInstanceData_buf[x_98].value[5i];
  let x_103 : vec3<f32> = vec3<f32>(bitcast<f32>(x_91), bitcast<f32>(x_96), bitcast<f32>(x_101));
  let x_104 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : f32 = u_xlat4.x;
  u_xlat3.y = x_107;
  let x_112 : i32 = u_xlati1;
  let x_115 : u32 = x_62.unity_ParticleInstanceData_buf[x_112].value[6i];
  let x_117 : i32 = u_xlati1;
  let x_120 : u32 = x_62.unity_ParticleInstanceData_buf[x_117].value[7i];
  let x_122 : i32 = u_xlati1;
  let x_125 : u32 = x_62.unity_ParticleInstanceData_buf[x_122].value[8i];
  u_xlat7 = vec3<f32>(bitcast<f32>(x_115), bitcast<f32>(x_120), bitcast<f32>(x_125));
  let x_129 : f32 = u_xlat7.y;
  u_xlat3.z = x_129;
  let x_132 : i32 = u_xlati1;
  let x_135 : u32 = x_62.unity_ParticleInstanceData_buf[x_132].value[9i];
  let x_137 : i32 = u_xlati1;
  let x_140 : u32 = x_62.unity_ParticleInstanceData_buf[x_137].value[10i];
  let x_142 : i32 = u_xlati1;
  let x_145 : u32 = x_62.unity_ParticleInstanceData_buf[x_142].value[11i];
  let x_147 : i32 = u_xlati1;
  let x_150 : u32 = x_62.unity_ParticleInstanceData_buf[x_147].value[12i];
  u_xlat5 = vec4<f32>(bitcast<f32>(x_135), bitcast<f32>(x_140), bitcast<f32>(x_145), bitcast<f32>(x_150));
  let x_154 : i32 = u_xlati1;
  let x_157 : u32 = x_62.unity_ParticleInstanceData_buf[x_154].value[13i];
  u_xlat1 = bitcast<f32>(x_157);
  let x_159 : f32 = u_xlat1;
  u_xlat1 = floor(x_159);
  let x_162 : f32 = u_xlat5.y;
  u_xlat3.w = x_162;
  let x_165 : vec4<f32> = u_xlat3;
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat13 = dot(x_165, x_166);
  let x_168 : f32 = u_xlat13;
  let x_176 : vec4<f32> = x_173.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_168, x_168, x_168, x_168) * x_176);
  let x_179 : f32 = u_xlat2.y;
  u_xlat4.x = x_179;
  let x_182 : f32 = u_xlat4.z;
  u_xlat2.y = x_182;
  let x_185 : f32 = u_xlat7.x;
  u_xlat4.z = x_185;
  let x_188 : f32 = u_xlat7.z;
  u_xlat2.z = x_188;
  let x_191 : f32 = u_xlat5.x;
  u_xlat4.w = x_191;
  let x_193 : vec4<f32> = u_xlat4;
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat7.x = dot(x_193, x_194);
  let x_198 : vec4<f32> = x_173.unity_MatrixVP[0i];
  let x_199 : vec3<f32> = u_xlat7;
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_198 * vec4<f32>(x_199.x, x_199.x, x_199.x, x_199.x)) + x_202);
  let x_205 : f32 = u_xlat5.z;
  u_xlat2.w = x_205;
  let x_207 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_207, x_208);
  let x_212 : vec4<f32> = x_173.unity_MatrixVP[2i];
  let x_213 : vec4<f32> = u_xlat0;
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_212 * vec4<f32>(x_213.x, x_213.x, x_213.x, x_213.x)) + x_216);
  let x_218 : vec4<f32> = u_xlat0;
  let x_220 : vec4<f32> = x_173.unity_MatrixVP[3i];
  u_xlat0 = (x_218 + x_220);
  let x_226 : vec4<f32> = u_xlat0;
  gl_Position = x_226;
  let x_232 : f32 = u_xlat0.z;
  vs_TEXCOORD0 = x_232;
  let x_234 : vec4<f32> = in_COLOR0;
  u_xlat0 = (x_234 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_240 : f32 = x_173.unity_ParticleUseMeshColors;
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_240, x_240, x_240, x_240) * x_242) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_250 : f32 = u_xlat5.w;
  u_xlatu7.x = (bitcast<u32>(x_250) & 255u);
  let x_256 : u32 = u_xlatu7.x;
  u_xlat2.x = f32(x_256);
  let x_260 : f32 = u_xlat5.w;
  param = bitcast<u32>(x_260);
  param_1 = 8i;
  param_2 = 8i;
  let x_265 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_267 : f32 = u_xlat5.w;
  param_3 = bitcast<u32>(x_267);
  param_4 = 16i;
  param_5 = 8i;
  let x_273 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_275 : vec2<u32> = vec2<u32>(x_265, x_273);
  let x_276 : vec3<u32> = u_xlatu7;
  u_xlatu7 = vec3<u32>(x_275.x, x_275.y, x_276.z);
  let x_279 : f32 = u_xlat5.w;
  u_xlatu7.z = (bitcast<u32>(x_279) >> 24u);
  let x_284 : vec3<u32> = u_xlatu7;
  let x_285 : vec3<f32> = vec3<f32>(x_284);
  let x_286 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_286.x, x_285.x, x_285.y, x_285.z);
  let x_288 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_288 * x_289);
  let x_292 : vec4<f32> = u_xlat0;
  vs_COLOR0 = (x_292 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_296 : f32 = u_xlat1;
  let x_298 : f32 = x_173.unity_ParticleUVShiftData.y;
  u_xlat0.x = (x_296 / x_298);
  let x_302 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_302);
  let x_309 : f32 = u_xlat0.x;
  let x_312 : f32 = x_173.unity_ParticleUVShiftData.y;
  let x_314 : f32 = u_xlat1;
  u_xlat6.x = ((-(x_309) * x_312) + x_314);
  let x_318 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_318);
  let x_322 : f32 = u_xlat6.x;
  let x_324 : f32 = x_173.unity_ParticleUVShiftData.z;
  u_xlat6.x = (x_322 * x_324);
  let x_329 : f32 = x_173.unity_ParticleUVShiftData.w;
  u_xlat18 = (-(x_329) + 1.0f);
  let x_333 : f32 = u_xlat0.x;
  let x_336 : f32 = x_173.unity_ParticleUVShiftData.w;
  let x_338 : f32 = u_xlat18;
  u_xlat6.y = ((-(x_333) * x_336) + x_338);
  let x_343 : vec2<f32> = in_TEXCOORD0;
  let x_345 : vec4<f32> = x_173.unity_ParticleUVShiftData;
  let x_348 : vec2<f32> = u_xlat6;
  let x_349 : vec2<f32> = ((x_343 * vec2<f32>(x_345.z, x_345.w)) + x_348);
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_349.x, x_349.y, x_350.z, x_350.w);
  let x_356 : f32 = x_173.unity_ParticleUVShiftData.x;
  u_xlatb12 = !((x_356 == 0.0f));
  let x_359 : bool = u_xlatb12;
  if (x_359) {
    let x_363 : vec4<f32> = u_xlat0;
    x_360 = vec2<f32>(x_363.x, x_363.y);
  } else {
    let x_366 : vec2<f32> = in_TEXCOORD0;
    x_360 = x_366;
  }
  let x_367 : vec2<f32> = x_360;
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_368.z, x_368.w);
  let x_372 : vec4<f32> = u_xlat0;
  let x_375 : vec4<f32> = x_173.x_MainTex_ST;
  let x_379 : vec4<f32> = x_173.x_MainTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(x_375.x, x_375.y)) + vec2<f32>(x_379.z, x_379.w));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : f32,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD1);
}

