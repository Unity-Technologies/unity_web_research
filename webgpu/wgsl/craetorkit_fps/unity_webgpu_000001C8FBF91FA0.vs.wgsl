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

@group(0) @binding(2) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_172 : VGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

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
  var u_xlatu12 : u32;
  var u_xlatu7 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlat12 : f32;
  var u_xlatb19 : bool;
  var x_387 : vec2<f32>;
  var x_461 : vec3<f32>;
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
  let x_276 : f32 = u_xlat5.w;
  u_xlatu12 = (bitcast<u32>(x_276) & 255u);
  let x_280 : u32 = u_xlatu12;
  u_xlat3.x = f32(x_280);
  let x_287 : f32 = u_xlat5.w;
  param = bitcast<u32>(x_287);
  param_1 = 8i;
  param_2 = 8i;
  let x_292 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_294 : f32 = u_xlat5.w;
  param_3 = bitcast<u32>(x_294);
  param_4 = 16i;
  param_5 = 8i;
  let x_300 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  u_xlatu7 = vec2<u32>(x_292, x_300);
  let x_303 : f32 = u_xlat5.w;
  u_xlatu12 = (bitcast<u32>(x_303) >> 24u);
  let x_307 : u32 = u_xlatu12;
  u_xlat3.w = f32(x_307);
  let x_310 : vec2<u32> = u_xlatu7;
  let x_312 : vec2<f32> = vec2<f32>(x_310);
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_312.x, x_312.y, x_313.w);
  let x_315 : vec4<f32> = u_xlat2;
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_315 * x_316);
  let x_319 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_319 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_325 : f32 = u_xlat1.x;
  u_xlat12 = floor(x_325);
  let x_327 : f32 = u_xlat12;
  let x_329 : f32 = x_172.unity_ParticleUVShiftData.y;
  u_xlat7.x = (x_327 / x_329);
  let x_333 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_333);
  let x_337 : f32 = u_xlat7.x;
  let x_340 : f32 = x_172.unity_ParticleUVShiftData.y;
  let x_342 : f32 = u_xlat12;
  u_xlat12 = ((-(x_337) * x_340) + x_342);
  let x_344 : f32 = u_xlat12;
  u_xlat12 = floor(x_344);
  let x_346 : f32 = u_xlat12;
  let x_348 : f32 = x_172.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_346 * x_348);
  let x_352 : f32 = x_172.unity_ParticleUVShiftData.w;
  u_xlat12 = (-(x_352) + 1.0f);
  let x_356 : f32 = u_xlat7.x;
  let x_359 : f32 = x_172.unity_ParticleUVShiftData.w;
  let x_361 : f32 = u_xlat12;
  u_xlat2.y = ((-(x_356) * x_359) + x_361);
  let x_366 : vec2<f32> = in_TEXCOORD0;
  let x_368 : vec4<f32> = x_172.unity_ParticleUVShiftData;
  let x_371 : vec4<f32> = u_xlat2;
  let x_373 : vec2<f32> = ((x_366 * vec2<f32>(x_368.z, x_368.w)) + vec2<f32>(x_371.x, x_371.y));
  let x_374 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_373.x, x_373.y, x_374.z);
  let x_380 : f32 = x_172.unity_ParticleUVShiftData.x;
  u_xlatb19 = !((x_380 == 0.0f));
  let x_385 : bool = u_xlatb19;
  if (x_385) {
    let x_390 : vec3<f32> = u_xlat7;
    x_387 = vec2<f32>(x_390.x, x_390.y);
  } else {
    let x_393 : vec2<f32> = in_TEXCOORD0;
    x_387 = x_393;
  }
  let x_394 : vec2<f32> = x_387;
  vs_TEXCOORD1 = x_394;
  let x_396 : f32 = u_xlat1.x;
  u_xlat7.x = (x_396 + 1.0f);
  let x_400 : f32 = u_xlat1.x;
  u_xlat2.z = fract(x_400);
  let x_404 : f32 = u_xlat7.x;
  u_xlat1.x = floor(x_404);
  let x_408 : f32 = u_xlat1.x;
  let x_410 : f32 = x_172.unity_ParticleUVShiftData.y;
  u_xlat7.x = (x_408 / x_410);
  let x_414 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_414);
  let x_418 : f32 = u_xlat7.x;
  let x_421 : f32 = x_172.unity_ParticleUVShiftData.y;
  let x_424 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_418) * x_421) + x_424);
  let x_428 : f32 = u_xlat7.x;
  let x_431 : f32 = x_172.unity_ParticleUVShiftData.w;
  let x_433 : f32 = u_xlat12;
  u_xlat3.y = ((-(x_428) * x_431) + x_433);
  let x_437 : f32 = u_xlat1.x;
  u_xlat12 = floor(x_437);
  let x_439 : f32 = u_xlat12;
  let x_441 : f32 = x_172.unity_ParticleUVShiftData.z;
  u_xlat3.x = (x_439 * x_441);
  let x_444 : vec2<f32> = in_TEXCOORD0;
  let x_446 : vec4<f32> = x_172.unity_ParticleUVShiftData;
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec2<f32> = ((x_444 * vec2<f32>(x_446.z, x_446.w)) + vec2<f32>(x_449.x, x_449.y));
  let x_452 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
  let x_454 : vec2<f32> = in_TEXCOORD0;
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
  u_xlat1.z = 0.0f;
  let x_460 : bool = u_xlatb19;
  if (x_460) {
    let x_464 : vec4<f32> = u_xlat2;
    x_461 = vec3<f32>(x_464.x, x_464.y, x_464.z);
  } else {
    let x_467 : vec4<f32> = u_xlat1;
    x_461 = vec3<f32>(x_467.x, x_467.y, x_467.z);
  }
  let x_469 : vec3<f32> = x_461;
  vs_TEXCOORD2 = x_469;
  let x_471 : f32 = u_xlat0.y;
  let x_473 : f32 = x_172.x_ProjectionParams.x;
  u_xlat0.y = (x_471 * x_473);
  let x_476 : vec4<f32> = u_xlat0;
  let x_480 : vec3<f32> = (vec3<f32>(x_476.x, x_476.w, x_476.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_481 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_480.x, x_481.y, x_480.y, x_480.z);
  let x_484 : f32 = u_xlat0.w;
  vs_TEXCOORD3.w = x_484;
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec4<f32> = u_xlat1;
  let x_490 : vec2<f32> = (vec2<f32>(x_486.z, x_486.z) + vec2<f32>(x_488.x, x_488.w));
  let x_491 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD3, gl_Position, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD2);
}

