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

type Arr_1 = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr_1,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_ParticleUVShiftData : vec4<f32>,
  unity_ParticleUseMeshColors : f32,
  @size(12)
  padding : u32,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlati1 : i32;

var<private> gl_InstanceIndex : i32;

@group(0) @binding(15) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(16) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_184 : VGlobals;

var<private> u_xlat31 : f32;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu10 : vec3<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb30 : bool;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_SV_InstanceID0 : u32;

var<private> gl_Position : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var x_609 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec4<f32> = in_POSITION0;
  let x_36 : vec3<f32> = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  u_xlat0.w = 1.0f;
  let x_47 : i32 = gl_InstanceIndex;
  let x_54 : i32 = x_50.unity_BaseInstanceID;
  u_xlati1 = (x_47 + x_54);
  let x_64 : i32 = u_xlati1;
  let x_68 : u32 = x_63.unity_ParticleInstanceData_buf[x_64].value[9i];
  let x_70 : i32 = u_xlati1;
  let x_73 : u32 = x_63.unity_ParticleInstanceData_buf[x_70].value[10i];
  let x_75 : i32 = u_xlati1;
  let x_78 : u32 = x_63.unity_ParticleInstanceData_buf[x_75].value[11i];
  let x_80 : i32 = u_xlati1;
  let x_83 : u32 = x_63.unity_ParticleInstanceData_buf[x_80].value[12i];
  u_xlat2 = vec4<f32>(bitcast<f32>(x_68), bitcast<f32>(x_73), bitcast<f32>(x_78), bitcast<f32>(x_83));
  let x_89 : f32 = u_xlat2.y;
  u_xlat3.w = x_89;
  let x_93 : i32 = u_xlati1;
  let x_96 : u32 = x_63.unity_ParticleInstanceData_buf[x_93].value[3i];
  let x_98 : i32 = u_xlati1;
  let x_101 : u32 = x_63.unity_ParticleInstanceData_buf[x_98].value[4i];
  let x_103 : i32 = u_xlati1;
  let x_106 : u32 = x_63.unity_ParticleInstanceData_buf[x_103].value[5i];
  u_xlat11 = vec3<f32>(bitcast<f32>(x_96), bitcast<f32>(x_101), bitcast<f32>(x_106));
  let x_110 : f32 = u_xlat11.y;
  u_xlat3.y = x_110;
  let x_113 : i32 = u_xlati1;
  let x_116 : u32 = x_63.unity_ParticleInstanceData_buf[x_113].value[7i];
  let x_118 : i32 = u_xlati1;
  let x_121 : u32 = x_63.unity_ParticleInstanceData_buf[x_118].value[8i];
  let x_123 : i32 = u_xlati1;
  let x_126 : u32 = x_63.unity_ParticleInstanceData_buf[x_123].value[6i];
  let x_128 : vec3<f32> = vec3<f32>(bitcast<f32>(x_116), bitcast<f32>(x_121), bitcast<f32>(x_126));
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_133 : f32 = u_xlat4.x;
  u_xlat3.z = x_133;
  let x_137 : i32 = u_xlati1;
  let x_140 : u32 = x_63.unity_ParticleInstanceData_buf[x_137].value[2i];
  let x_142 : i32 = u_xlati1;
  let x_144 : u32 = x_63.unity_ParticleInstanceData_buf[x_142].value[0i];
  let x_146 : i32 = u_xlati1;
  let x_149 : u32 = x_63.unity_ParticleInstanceData_buf[x_146].value[1i];
  let x_151 : vec3<f32> = vec3<f32>(bitcast<f32>(x_140), bitcast<f32>(x_144), bitcast<f32>(x_149));
  let x_152 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : i32 = u_xlati1;
  let x_158 : u32 = x_63.unity_ParticleInstanceData_buf[x_155].value[13i];
  u_xlat1.x = bitcast<f32>(x_158);
  let x_162 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_162);
  let x_166 : f32 = u_xlat5.z;
  u_xlat3.x = x_166;
  let x_169 : vec4<f32> = u_xlat3;
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(x_169, x_170);
  let x_173 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = in_POSITION0;
  u_xlat12 = dot(x_173, x_174);
  let x_177 : f32 = u_xlat21;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_177, x_177, x_177, x_177) * x_187);
  let x_190 : f32 = u_xlat2.x;
  u_xlat4.w = x_190;
  let x_193 : f32 = u_xlat4.y;
  u_xlat5.z = x_193;
  let x_196 : f32 = u_xlat5.y;
  u_xlat4.x = x_196;
  let x_199 : f32 = u_xlat11.x;
  u_xlat4.y = x_199;
  let x_202 : f32 = u_xlat11.z;
  u_xlat5.y = x_202;
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat11.x = dot(x_204, x_205);
  let x_209 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = in_POSITION0;
  u_xlat31 = dot(x_209, x_210);
  let x_213 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_214 : vec3<f32> = u_xlat11;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_213 * vec4<f32>(x_214.x, x_214.x, x_214.x, x_214.x)) + x_217);
  let x_220 : f32 = u_xlat2.z;
  u_xlat5.w = x_220;
  let x_222 : vec4<f32> = u_xlat5;
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_222, x_223);
  let x_229 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = in_POSITION0;
  u_xlat10.x = dot(x_229, x_230);
  let x_234 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_235 : vec4<f32> = u_xlat0;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_234 * vec4<f32>(x_235.x, x_235.x, x_235.x, x_235.x)) + x_238);
  let x_240 : vec4<f32> = u_xlat6;
  let x_242 : vec4<f32> = x_184.unity_MatrixVP[3i];
  u_xlat6 = (x_240 + x_242);
  let x_248 : vec4<f32> = u_xlat6;
  gl_Position = x_248;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat5;
  let x_256 : vec3<f32> = (vec3<f32>(x_252.y, x_252.z, x_252.x) * vec3<f32>(x_254.z, x_254.x, x_254.y));
  let x_257 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat4;
  let x_261 : vec4<f32> = u_xlat5;
  let x_264 : vec4<f32> = u_xlat7;
  let x_267 : vec3<f32> = ((vec3<f32>(x_259.z, x_259.x, x_259.y) * vec3<f32>(x_261.y, x_261.z, x_261.x)) + -(vec3<f32>(x_264.x, x_264.y, x_264.z)));
  let x_268 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_271 : vec4<f32> = u_xlat3;
  let x_273 : vec4<f32> = u_xlat5;
  let x_275 : vec3<f32> = (vec3<f32>(x_271.z, x_271.x, x_271.y) * vec3<f32>(x_273.y, x_273.z, x_273.x));
  let x_276 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec4<f32> = u_xlat5;
  let x_283 : vec4<f32> = u_xlat8;
  let x_286 : vec3<f32> = ((vec3<f32>(x_278.y, x_278.z, x_278.x) * vec3<f32>(x_280.z, x_280.x, x_280.y)) + -(vec3<f32>(x_283.x, x_283.y, x_283.z)));
  let x_287 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec4<f32> = u_xlat5;
  let x_292 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_297 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = u_xlat8;
  u_xlat20 = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : f32 = u_xlat20;
  u_xlat20 = (1.0f / x_302);
  let x_304 : f32 = u_xlat20;
  let x_306 : vec4<f32> = u_xlat7;
  let x_308 : vec3<f32> = (vec3<f32>(x_304, x_304, x_304) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_313 : vec3<f32> = in_NORMAL0;
  let x_314 : vec4<f32> = u_xlat7;
  u_xlat7.y = dot(x_313, vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec4<f32> = u_xlat4;
  let x_323 : vec3<f32> = (vec3<f32>(x_319.y, x_319.z, x_319.x) * vec3<f32>(x_321.z, x_321.x, x_321.y));
  let x_324 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat4;
  let x_328 : vec4<f32> = u_xlat3;
  let x_331 : vec4<f32> = u_xlat9;
  let x_334 : vec3<f32> = ((vec3<f32>(x_326.y, x_326.z, x_326.x) * vec3<f32>(x_328.z, x_328.x, x_328.y)) + -(vec3<f32>(x_331.x, x_331.y, x_331.z)));
  let x_335 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_343 : vec4<f32> = u_xlat4;
  let x_345 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_343.x, x_343.y, x_343.z), vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_349 : f32 = u_xlat20;
  let x_351 : vec4<f32> = u_xlat9;
  let x_353 : vec3<f32> = (vec3<f32>(x_349, x_349, x_349) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : f32 = u_xlat20;
  let x_358 : vec4<f32> = u_xlat8;
  let x_360 : vec3<f32> = (vec3<f32>(x_356, x_356, x_356) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec3<f32> = in_NORMAL0;
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(x_363, vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_368 : vec3<f32> = in_NORMAL0;
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat7.z = dot(x_368, vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_373 : vec4<f32> = u_xlat7;
  let x_375 : vec4<f32> = u_xlat7;
  u_xlat20 = dot(vec3<f32>(x_373.x, x_373.y, x_373.z), vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_378);
  let x_380 : f32 = u_xlat20;
  let x_382 : vec4<f32> = u_xlat7;
  u_xlat3 = (vec4<f32>(x_380, x_380, x_380, x_380) * vec4<f32>(x_382.x, x_382.y, x_382.z, x_382.z));
  let x_385 : vec4<f32> = u_xlat5;
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat20 = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_390);
  let x_392 : f32 = u_xlat20;
  let x_394 : vec4<f32> = u_xlat5;
  let x_396 : vec3<f32> = (vec3<f32>(x_392, x_392, x_392) * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat3;
  let x_401 : vec4<f32> = u_xlat4;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.w, x_399.x, x_399.y) * vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat3;
  let x_408 : vec4<f32> = u_xlat4;
  let x_411 : vec4<f32> = u_xlat5;
  let x_414 : vec3<f32> = ((vec3<f32>(x_406.y, x_406.w, x_406.x) * vec3<f32>(x_408.y, x_408.z, x_408.x)) + -(vec3<f32>(x_411.x, x_411.y, x_411.z)));
  let x_415 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_419 : f32 = in_TANGENT0.w;
  let x_422 : f32 = x_184.unity_WorldTransformParams.w;
  u_xlat20 = (x_419 * x_422);
  let x_424 : f32 = u_xlat20;
  let x_426 : vec4<f32> = u_xlat5;
  let x_428 : vec3<f32> = (vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_433 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_433;
  let x_437 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_437;
  let x_440 : f32 = u_xlat4.z;
  vs_TEXCOORD0.x = x_440;
  let x_442 : f32 = u_xlat31;
  vs_TEXCOORD0.w = x_442;
  let x_444 : f32 = u_xlat31;
  let x_448 : vec4<f32> = x_184.unity_4LightPosX0;
  u_xlat7 = (-(vec4<f32>(x_444, x_444, x_444, x_444)) + x_448);
  let x_452 : f32 = u_xlat4.x;
  vs_TEXCOORD1.x = x_452;
  let x_456 : f32 = u_xlat4.y;
  vs_TEXCOORD2.x = x_456;
  let x_459 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_459;
  let x_462 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_462;
  let x_465 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_465;
  let x_467 : f32 = u_xlat12;
  vs_TEXCOORD1.w = x_467;
  let x_469 : f32 = u_xlat12;
  let x_473 : vec4<f32> = x_184.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_469, x_469, x_469, x_469)) + x_473);
  let x_476 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_476;
  let x_479 : f32 = u_xlat10.x;
  vs_TEXCOORD2.w = x_479;
  let x_481 : vec2<f32> = u_xlat10;
  let x_485 : vec4<f32> = x_184.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_481.x, x_481.x, x_481.x, x_481.x)) + x_485);
  let x_488 : vec4<f32> = in_COLOR0;
  u_xlat8 = (x_488 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_494 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_496 : vec4<f32> = u_xlat8;
  u_xlat8 = ((vec4<f32>(x_494, x_494, x_494, x_494) * x_496) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_504 : f32 = u_xlat2.w;
  u_xlatu10.x = (bitcast<u32>(x_504) & 255u);
  let x_511 : u32 = u_xlatu10.x;
  u_xlat9.x = f32(x_511);
  let x_515 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_515);
  param_1 = 8i;
  param_2 = 8i;
  let x_520 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_522 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_522);
  param_4 = 16i;
  param_5 = 8i;
  let x_528 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_530 : vec2<u32> = vec2<u32>(x_520, x_528);
  let x_531 : vec3<u32> = u_xlatu10;
  u_xlatu10 = vec3<u32>(x_530.x, x_530.y, x_531.z);
  let x_534 : f32 = u_xlat2.w;
  u_xlatu10.z = (bitcast<u32>(x_534) >> 24u);
  let x_539 : vec3<u32> = u_xlatu10;
  let x_540 : vec3<f32> = vec3<f32>(x_539);
  let x_541 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_541.x, x_540.x, x_540.y, x_540.z);
  let x_543 : vec4<f32> = u_xlat8;
  let x_544 : vec4<f32> = u_xlat9;
  u_xlat2 = (x_543 * x_544);
  let x_547 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_547 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_552 : f32 = u_xlat1.x;
  let x_554 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat10.x = (x_552 / x_554);
  let x_558 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_558);
  let x_562 : f32 = u_xlat10.x;
  let x_565 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_568 : f32 = u_xlat1.x;
  u_xlat20 = ((-(x_562) * x_565) + x_568);
  let x_570 : f32 = u_xlat20;
  u_xlat20 = floor(x_570);
  let x_572 : f32 = u_xlat20;
  let x_574 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_572 * x_574);
  let x_578 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat20 = (-(x_578) + 1.0f);
  let x_582 : f32 = u_xlat10.x;
  let x_585 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_587 : f32 = u_xlat20;
  u_xlat2.y = ((-(x_582) * x_585) + x_587);
  let x_592 : vec2<f32> = in_TEXCOORD0;
  let x_594 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_597 : vec4<f32> = u_xlat2;
  u_xlat10 = ((x_592 * vec2<f32>(x_594.z, x_594.w)) + vec2<f32>(x_597.x, x_597.y));
  let x_604 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb30 = !((x_604 == 0.0f));
  let x_607 : bool = u_xlatb30;
  if (x_607) {
    let x_612 : vec2<f32> = u_xlat10;
    x_609 = x_612;
  } else {
    let x_614 : vec2<f32> = in_TEXCOORD0;
    x_609 = x_614;
  }
  let x_615 : vec2<f32> = x_609;
  u_xlat10 = x_615;
  let x_618 : vec2<f32> = u_xlat10;
  let x_621 : vec4<f32> = x_184.x_MainTex_ST;
  let x_625 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_618 * vec2<f32>(x_621.x, x_621.y)) + vec2<f32>(x_625.z, x_625.w));
  let x_628 : f32 = u_xlat21;
  let x_630 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat10.x = (x_628 * x_630);
  let x_633 : f32 = u_xlat21;
  let x_636 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_638 : vec3<f32> = (vec3<f32>(x_633, x_633, x_633) * vec3<f32>(x_636.x, x_636.y, x_636.w));
  let x_639 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_638.x, x_639.y, x_638.y, x_638.z);
  let x_642 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_644 : vec3<f32> = u_xlat11;
  let x_647 : vec4<f32> = u_xlat1;
  let x_649 : vec3<f32> = ((vec3<f32>(x_642.x, x_642.y, x_642.w) * vec3<f32>(x_644.x, x_644.x, x_644.x)) + vec3<f32>(x_647.x, x_647.z, x_647.w));
  let x_650 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_649.x, x_650.y, x_649.y, x_649.z);
  let x_653 : f32 = x_184.unity_MatrixV[0i].z;
  let x_655 : f32 = u_xlat11.x;
  let x_658 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_653 * x_655) + x_658);
  let x_662 : f32 = x_184.unity_MatrixV[2i].z;
  let x_664 : f32 = u_xlat0.x;
  let x_667 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_662 * x_664) + x_667);
  let x_671 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_673 : vec4<f32> = u_xlat0;
  let x_676 : vec4<f32> = u_xlat1;
  let x_678 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.y, x_671.w) * vec3<f32>(x_673.x, x_673.x, x_673.x)) + vec3<f32>(x_676.x, x_676.z, x_676.w));
  let x_679 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_678.x, x_679.y, x_678.y, x_678.z);
  let x_681 : vec4<f32> = u_xlat0;
  let x_684 : vec4<f32> = x_184.unity_MatrixVP[3i];
  let x_686 : vec3<f32> = (vec3<f32>(x_681.x, x_681.z, x_681.w) + vec3<f32>(x_684.x, x_684.y, x_684.w));
  let x_687 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_686.x, x_687.y, x_686.y, x_686.z);
  let x_690 : f32 = u_xlat10.x;
  let x_692 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat10.x = (x_690 + x_692);
  let x_697 : f32 = u_xlat10.x;
  vs_TEXCOORD4.z = -(x_697);
  let x_701 : f32 = u_xlat0.w;
  vs_TEXCOORD4.w = x_701;
  u_xlat1.x = 0.5f;
  u_xlat1.z = 0.5f;
  let x_707 : f32 = x_184.x_ProjectionParams.x;
  u_xlat1.y = x_707;
  let x_709 : vec4<f32> = u_xlat0;
  let x_711 : vec4<f32> = u_xlat1;
  let x_713 : vec3<f32> = (vec3<f32>(x_709.x, x_709.z, x_709.w) * vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_716 : vec4<f32> = u_xlat1;
  let x_718 : vec4<f32> = u_xlat6;
  let x_720 : vec3<f32> = (vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_718.x, x_718.y, x_718.w));
  let x_721 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_724 : vec4<f32> = u_xlat6;
  let x_725 : vec2<f32> = vec2<f32>(x_724.z, x_724.w);
  let x_726 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_726.x, x_726.y, x_725.x, x_725.y);
  let x_729 : f32 = u_xlat0.y;
  u_xlat0.w = (x_729 * 0.5f);
  let x_732 : vec4<f32> = u_xlat0;
  let x_734 : vec4<f32> = u_xlat0;
  let x_736 : vec2<f32> = (vec2<f32>(x_732.z, x_732.z) + vec2<f32>(x_734.x, x_734.w));
  let x_737 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat3;
  let x_741 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec4<f32>(x_739.y, x_739.y, x_739.y, x_739.y) * x_741);
  let x_743 : vec4<f32> = u_xlat4;
  let x_744 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_743 * x_744);
  let x_746 : vec4<f32> = u_xlat7;
  let x_747 : vec4<f32> = u_xlat7;
  let x_749 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_746 * x_747) + x_749);
  let x_751 : vec4<f32> = u_xlat7;
  let x_752 : vec4<f32> = u_xlat3;
  let x_755 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_751 * vec4<f32>(x_752.x, x_752.x, x_752.x, x_752.x)) + x_755);
  let x_757 : vec4<f32> = u_xlat5;
  let x_758 : vec4<f32> = u_xlat3;
  let x_761 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_757 * vec4<f32>(x_758.w, x_758.w, x_758.z, x_758.w)) + x_761);
  let x_763 : vec4<f32> = u_xlat5;
  let x_764 : vec4<f32> = u_xlat5;
  let x_766 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_763 * x_764) + x_766);
  let x_768 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_768, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_772 : vec4<f32> = u_xlat2;
  u_xlat4 = inverseSqrt(x_772);
  let x_774 : vec4<f32> = u_xlat2;
  let x_776 : vec4<f32> = x_184.unity_4LightAtten0;
  u_xlat2 = ((x_774 * x_776) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_779 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_779);
  let x_781 : vec4<f32> = u_xlat0;
  let x_782 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_781 * x_782);
  let x_784 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_784, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_787 : vec4<f32> = u_xlat2;
  let x_788 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_787 * x_788);
  let x_790 : vec4<f32> = u_xlat0;
  let x_793 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_795 : vec3<f32> = (vec3<f32>(x_790.y, x_790.y, x_790.y) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_799 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_801 : vec4<f32> = u_xlat0;
  let x_804 : vec4<f32> = u_xlat2;
  let x_806 : vec3<f32> = ((vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(x_801.x, x_801.x, x_801.x)) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_810 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_812 : vec4<f32> = u_xlat0;
  let x_815 : vec4<f32> = u_xlat2;
  let x_817 : vec3<f32> = ((vec3<f32>(x_810.x, x_810.y, x_810.z) * vec3<f32>(x_812.z, x_812.z, x_812.z)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_821 : vec4<f32> = x_184.unity_LightColor[3i];
  let x_823 : vec4<f32> = u_xlat0;
  let x_826 : vec4<f32> = u_xlat0;
  let x_828 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.y, x_821.z) * vec3<f32>(x_823.w, x_823.w, x_823.w)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_833 : f32 = u_xlat3.y;
  let x_835 : f32 = u_xlat3.y;
  u_xlat30 = (x_833 * x_835);
  let x_838 : f32 = u_xlat3.x;
  let x_840 : f32 = u_xlat3.x;
  let x_842 : f32 = u_xlat30;
  u_xlat30 = ((x_838 * x_840) + -(x_842));
  let x_845 : vec4<f32> = u_xlat3;
  let x_847 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_845.y, x_845.w, x_845.z, x_845.x) * x_847);
  let x_850 : vec4<f32> = x_184.unity_SHBr;
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_850, x_851);
  let x_855 : vec4<f32> = x_184.unity_SHBg;
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_855, x_856);
  let x_860 : vec4<f32> = x_184.unity_SHBb;
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_860, x_861);
  let x_865 : vec4<f32> = x_184.unity_SHC;
  let x_867 : f32 = u_xlat30;
  let x_870 : vec4<f32> = u_xlat3;
  let x_872 : vec3<f32> = ((vec3<f32>(x_865.x, x_865.y, x_865.z) * vec3<f32>(x_867, x_867, x_867)) + vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_877 : vec4<f32> = u_xlat0;
  let x_879 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_883 : f32 = u_xlat1.y;
  u_xlat1.w = (x_883 * 0.5f);
  let x_886 : vec4<f32> = u_xlat1;
  let x_888 : vec4<f32> = u_xlat1;
  let x_890 : vec2<f32> = (vec2<f32>(x_886.z, x_886.z) + vec2<f32>(x_888.x, x_888.w));
  let x_891 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_890.x, x_890.y, x_891.z, x_891.w);
  let x_894 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_894);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @builtin(instance_index) gl_InstanceIndex_param : u32, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  gl_InstanceIndex = bitcast<i32>(gl_InstanceIndex_param);
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD7, vs_TEXCOORD5);
}

