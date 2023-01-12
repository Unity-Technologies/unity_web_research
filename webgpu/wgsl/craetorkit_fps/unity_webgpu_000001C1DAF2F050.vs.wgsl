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
  x_ProjectionParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_ParticleUVShiftData : vec4<f32>,
  unity_ParticleUseMeshColors : f32,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_InstanceIndex : i32;

@group(1) @binding(2) var<uniform> x_49 : UnityDrawCallInfo;

@group(0) @binding(4) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_172 : VGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

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
  var u_xlat1 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlatu7 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat12 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlatb19 : bool;
  var x_392 : vec2<f32>;
  var x_466 : vec3<f32>;
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
  u_xlat1.x = bitcast<f32>(x_157);
  let x_161 : f32 = u_xlat5.y;
  u_xlat3.w = x_161;
  let x_164 : vec4<f32> = u_xlat3;
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat13 = dot(x_164, x_165);
  let x_167 : f32 = u_xlat13;
  let x_175 : vec4<f32> = x_172.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_167, x_167, x_167, x_167) * x_175);
  let x_177 : f32 = u_xlat13;
  let x_180 : f32 = x_172.unity_MatrixV[1i].z;
  u_xlat13 = (x_177 * x_180);
  let x_183 : f32 = u_xlat2.y;
  u_xlat4.x = x_183;
  let x_186 : f32 = u_xlat4.z;
  u_xlat2.y = x_186;
  let x_189 : f32 = u_xlat7.x;
  u_xlat4.z = x_189;
  let x_192 : f32 = u_xlat7.z;
  u_xlat2.z = x_192;
  let x_195 : f32 = u_xlat5.x;
  u_xlat4.w = x_195;
  let x_197 : vec4<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat0;
  u_xlat7.x = dot(x_197, x_198);
  let x_202 : vec4<f32> = x_172.unity_MatrixVP[0i];
  let x_203 : vec3<f32> = u_xlat7;
  let x_206 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_202 * vec4<f32>(x_203.x, x_203.x, x_203.x, x_203.x)) + x_206);
  let x_209 : f32 = x_172.unity_MatrixV[0i].z;
  let x_211 : f32 = u_xlat7.x;
  let x_213 : f32 = u_xlat13;
  u_xlat7.x = ((x_209 * x_211) + x_213);
  let x_217 : f32 = u_xlat5.z;
  u_xlat2.w = x_217;
  let x_219 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_219, x_220);
  let x_224 : vec4<f32> = x_172.unity_MatrixVP[2i];
  let x_225 : vec4<f32> = u_xlat0;
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_224 * vec4<f32>(x_225.x, x_225.x, x_225.x, x_225.x)) + x_228);
  let x_231 : f32 = x_172.unity_MatrixV[2i].z;
  let x_233 : f32 = u_xlat0.x;
  let x_236 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_231 * x_233) + x_236);
  let x_240 : f32 = u_xlat0.x;
  let x_242 : f32 = x_172.unity_MatrixV[3i].z;
  u_xlat0.x = (x_240 + x_242);
  let x_248 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_248);
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec4<f32> = x_172.unity_MatrixVP[3i];
  u_xlat0 = (x_252 + x_254);
  let x_260 : vec4<f32> = u_xlat0;
  gl_Position = x_260;
  let x_263 : vec4<f32> = in_COLOR0;
  u_xlat2 = (x_263 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_268 : f32 = x_172.unity_ParticleUseMeshColors;
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_268, x_268, x_268, x_268) * x_270) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_278 : f32 = u_xlat5.w;
  u_xlatu7.x = (bitcast<u32>(x_278) & 255u);
  let x_284 : u32 = u_xlatu7.x;
  u_xlat3.x = f32(x_284);
  let x_288 : f32 = u_xlat5.w;
  param = bitcast<u32>(x_288);
  param_1 = 8i;
  param_2 = 8i;
  let x_293 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_295 : f32 = u_xlat5.w;
  param_3 = bitcast<u32>(x_295);
  param_4 = 16i;
  param_5 = 8i;
  let x_301 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_303 : vec2<u32> = vec2<u32>(x_293, x_301);
  let x_304 : vec3<u32> = u_xlatu7;
  u_xlatu7 = vec3<u32>(x_303.x, x_303.y, x_304.z);
  let x_307 : f32 = u_xlat5.w;
  u_xlatu7.z = (bitcast<u32>(x_307) >> 24u);
  let x_312 : vec3<u32> = u_xlatu7;
  let x_313 : vec3<f32> = vec3<f32>(x_312);
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_314.x, x_313.x, x_313.y, x_313.z);
  let x_316 : vec4<f32> = u_xlat2;
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_316 * x_317);
  let x_320 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_320 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_326 : f32 = u_xlat0.z;
  vs_TEXCOORD0 = x_326;
  let x_329 : f32 = u_xlat1.x;
  u_xlat12 = floor(x_329);
  let x_331 : f32 = u_xlat12;
  let x_333 : f32 = x_172.unity_ParticleUVShiftData.y;
  u_xlat7.x = (x_331 / x_333);
  let x_337 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_337);
  let x_341 : f32 = u_xlat7.x;
  let x_344 : f32 = x_172.unity_ParticleUVShiftData.y;
  let x_346 : f32 = u_xlat12;
  u_xlat12 = ((-(x_341) * x_344) + x_346);
  let x_348 : f32 = u_xlat12;
  u_xlat12 = floor(x_348);
  let x_353 : f32 = u_xlat12;
  let x_355 : f32 = x_172.unity_ParticleUVShiftData.z;
  u_xlat8.x = (x_353 * x_355);
  let x_359 : f32 = x_172.unity_ParticleUVShiftData.w;
  u_xlat12 = (-(x_359) + 1.0f);
  let x_363 : f32 = u_xlat7.x;
  let x_366 : f32 = x_172.unity_ParticleUVShiftData.w;
  let x_368 : f32 = u_xlat12;
  u_xlat8.y = ((-(x_363) * x_366) + x_368);
  let x_373 : vec2<f32> = in_TEXCOORD0;
  let x_375 : vec4<f32> = x_172.unity_ParticleUVShiftData;
  let x_378 : vec2<f32> = u_xlat8;
  let x_379 : vec2<f32> = ((x_373 * vec2<f32>(x_375.z, x_375.w)) + x_378);
  let x_380 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_379.x, x_379.y, x_380.z);
  let x_386 : f32 = x_172.unity_ParticleUVShiftData.x;
  u_xlatb19 = !((x_386 == 0.0f));
  let x_391 : bool = u_xlatb19;
  if (x_391) {
    let x_395 : vec3<f32> = u_xlat7;
    x_392 = vec2<f32>(x_395.x, x_395.y);
  } else {
    let x_398 : vec2<f32> = in_TEXCOORD0;
    x_392 = x_398;
  }
  let x_399 : vec2<f32> = x_392;
  vs_TEXCOORD1 = x_399;
  let x_401 : f32 = u_xlat1.x;
  u_xlat7.x = (x_401 + 1.0f);
  let x_405 : f32 = u_xlat1.x;
  u_xlat2.z = fract(x_405);
  let x_409 : f32 = u_xlat7.x;
  u_xlat1.x = floor(x_409);
  let x_413 : f32 = u_xlat1.x;
  let x_415 : f32 = x_172.unity_ParticleUVShiftData.y;
  u_xlat7.x = (x_413 / x_415);
  let x_419 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_419);
  let x_423 : f32 = u_xlat7.x;
  let x_426 : f32 = x_172.unity_ParticleUVShiftData.y;
  let x_429 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_423) * x_426) + x_429);
  let x_433 : f32 = u_xlat7.x;
  let x_436 : f32 = x_172.unity_ParticleUVShiftData.w;
  let x_438 : f32 = u_xlat12;
  u_xlat3.y = ((-(x_433) * x_436) + x_438);
  let x_442 : f32 = u_xlat1.x;
  u_xlat12 = floor(x_442);
  let x_444 : f32 = u_xlat12;
  let x_446 : f32 = x_172.unity_ParticleUVShiftData.z;
  u_xlat3.x = (x_444 * x_446);
  let x_449 : vec2<f32> = in_TEXCOORD0;
  let x_451 : vec4<f32> = x_172.unity_ParticleUVShiftData;
  let x_454 : vec4<f32> = u_xlat3;
  let x_456 : vec2<f32> = ((x_449 * vec2<f32>(x_451.z, x_451.w)) + vec2<f32>(x_454.x, x_454.y));
  let x_457 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  let x_459 : vec2<f32> = in_TEXCOORD0;
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
  u_xlat1.z = 0.0f;
  let x_465 : bool = u_xlatb19;
  if (x_465) {
    let x_469 : vec4<f32> = u_xlat2;
    x_466 = vec3<f32>(x_469.x, x_469.y, x_469.z);
  } else {
    let x_472 : vec4<f32> = u_xlat1;
    x_466 = vec3<f32>(x_472.x, x_472.y, x_472.z);
  }
  let x_474 : vec3<f32> = x_466;
  vs_TEXCOORD2 = x_474;
  let x_476 : f32 = u_xlat0.y;
  let x_478 : f32 = x_172.x_ProjectionParams.x;
  u_xlat0.y = (x_476 * x_478);
  let x_481 : vec4<f32> = u_xlat0;
  let x_485 : vec3<f32> = (vec3<f32>(x_481.x, x_481.w, x_481.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_486 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_485.x, x_486.y, x_485.y, x_485.z);
  let x_489 : f32 = u_xlat0.w;
  vs_TEXCOORD3.w = x_489;
  let x_491 : vec4<f32> = u_xlat1;
  let x_493 : vec4<f32> = u_xlat1;
  let x_495 : vec2<f32> = (vec2<f32>(x_491.z, x_491.z) + vec2<f32>(x_493.x, x_493.w));
  let x_496 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
  return;
}

struct main_out {
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : f32,
  @location(2)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD3, gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2);
}

