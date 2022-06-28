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

@group(0) @binding(13) var<uniform> x_50 : UnityDrawCallInfo;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(14) var<storage, read> x_63 : unity_ParticleInstanceData;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(12) var<uniform> x_184 : VGlobals;

var<private> u_xlat28 : f32;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatu9 : vec3<u32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb27 : bool;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat27 : f32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  var x_607 : vec2<f32>;
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
  u_xlat10 = vec3<f32>(bitcast<f32>(x_96), bitcast<f32>(x_101), bitcast<f32>(x_106));
  let x_110 : f32 = u_xlat10.y;
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
  u_xlat19 = dot(x_169, x_170);
  let x_173 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = in_POSITION0;
  u_xlat11 = dot(x_173, x_174);
  let x_177 : f32 = u_xlat19;
  let x_187 : vec4<f32> = x_184.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_177, x_177, x_177, x_177) * x_187);
  let x_190 : f32 = u_xlat2.x;
  u_xlat4.w = x_190;
  let x_193 : f32 = u_xlat4.y;
  u_xlat5.z = x_193;
  let x_196 : f32 = u_xlat5.y;
  u_xlat4.x = x_196;
  let x_199 : f32 = u_xlat10.x;
  u_xlat4.y = x_199;
  let x_202 : f32 = u_xlat10.z;
  u_xlat5.y = x_202;
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat10.x = dot(x_204, x_205);
  let x_209 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = in_POSITION0;
  u_xlat28 = dot(x_209, x_210);
  let x_213 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_214 : vec3<f32> = u_xlat10;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_213 * vec4<f32>(x_214.x, x_214.x, x_214.x, x_214.x)) + x_217);
  let x_220 : f32 = u_xlat2.z;
  u_xlat5.w = x_220;
  let x_222 : vec4<f32> = u_xlat5;
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_222, x_223);
  let x_229 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = in_POSITION0;
  u_xlat9.x = dot(x_229, x_230);
  let x_234 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_235 : vec4<f32> = u_xlat0;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_234 * vec4<f32>(x_235.x, x_235.x, x_235.x, x_235.x)) + x_238);
  let x_244 : vec4<f32> = u_xlat6;
  let x_246 : vec4<f32> = x_184.unity_MatrixVP[3i];
  gl_Position = (x_244 + x_246);
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec4<f32> = u_xlat5;
  let x_254 : vec3<f32> = (vec3<f32>(x_250.y, x_250.z, x_250.x) * vec3<f32>(x_252.z, x_252.x, x_252.y));
  let x_255 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = u_xlat5;
  let x_262 : vec4<f32> = u_xlat6;
  let x_265 : vec3<f32> = ((vec3<f32>(x_257.z, x_257.x, x_257.y) * vec3<f32>(x_259.y, x_259.z, x_259.x)) + -(vec3<f32>(x_262.x, x_262.y, x_262.z)));
  let x_266 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_269 : vec4<f32> = u_xlat3;
  let x_271 : vec4<f32> = u_xlat5;
  let x_273 : vec3<f32> = (vec3<f32>(x_269.z, x_269.x, x_269.y) * vec3<f32>(x_271.y, x_271.z, x_271.x));
  let x_274 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat3;
  let x_278 : vec4<f32> = u_xlat5;
  let x_281 : vec4<f32> = u_xlat7;
  let x_284 : vec3<f32> = ((vec3<f32>(x_276.y, x_276.z, x_276.x) * vec3<f32>(x_278.z, x_278.x, x_278.y)) + -(vec3<f32>(x_281.x, x_281.y, x_281.z)));
  let x_285 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat5;
  let x_290 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_287.x, x_287.y, x_287.z), vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_295 : vec4<f32> = u_xlat4;
  let x_297 : vec4<f32> = u_xlat7;
  u_xlat18 = dot(vec3<f32>(x_295.x, x_295.y, x_295.z), vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_300);
  let x_302 : f32 = u_xlat18;
  let x_304 : vec4<f32> = u_xlat6;
  let x_306 : vec3<f32> = (vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_311 : vec3<f32> = in_NORMAL0;
  let x_312 : vec4<f32> = u_xlat6;
  u_xlat6.y = dot(x_311, vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_317 : vec4<f32> = u_xlat3;
  let x_319 : vec4<f32> = u_xlat4;
  let x_321 : vec3<f32> = (vec3<f32>(x_317.y, x_317.z, x_317.x) * vec3<f32>(x_319.z, x_319.x, x_319.y));
  let x_322 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat4;
  let x_326 : vec4<f32> = u_xlat3;
  let x_329 : vec4<f32> = u_xlat8;
  let x_332 : vec3<f32> = ((vec3<f32>(x_324.y, x_324.z, x_324.x) * vec3<f32>(x_326.z, x_326.x, x_326.y)) + -(vec3<f32>(x_329.x, x_329.y, x_329.z)));
  let x_333 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat3;
  let x_337 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_341 : vec4<f32> = u_xlat4;
  let x_343 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_341.x, x_341.y, x_341.z), vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_347 : f32 = u_xlat18;
  let x_349 : vec4<f32> = u_xlat8;
  let x_351 : vec3<f32> = (vec3<f32>(x_347, x_347, x_347) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : f32 = u_xlat18;
  let x_356 : vec4<f32> = u_xlat7;
  let x_358 : vec3<f32> = (vec3<f32>(x_354, x_354, x_354) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec3<f32> = in_NORMAL0;
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_361, vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_366 : vec3<f32> = in_NORMAL0;
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_366, vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_371 : vec4<f32> = u_xlat6;
  let x_373 : vec4<f32> = u_xlat6;
  u_xlat18 = dot(vec3<f32>(x_371.x, x_371.y, x_371.z), vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_376);
  let x_378 : f32 = u_xlat18;
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat3 = (vec4<f32>(x_378, x_378, x_378, x_378) * vec4<f32>(x_380.x, x_380.y, x_380.z, x_380.z));
  let x_383 : vec4<f32> = u_xlat5;
  let x_385 : vec4<f32> = u_xlat5;
  u_xlat18 = dot(vec3<f32>(x_383.x, x_383.y, x_383.z), vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_388);
  let x_390 : f32 = u_xlat18;
  let x_392 : vec4<f32> = u_xlat5;
  let x_394 : vec3<f32> = (vec3<f32>(x_390, x_390, x_390) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat3;
  let x_399 : vec4<f32> = u_xlat4;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.w, x_397.x, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat3;
  let x_406 : vec4<f32> = u_xlat4;
  let x_409 : vec4<f32> = u_xlat5;
  let x_412 : vec3<f32> = ((vec3<f32>(x_404.y, x_404.w, x_404.x) * vec3<f32>(x_406.y, x_406.z, x_406.x)) + -(vec3<f32>(x_409.x, x_409.y, x_409.z)));
  let x_413 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_417 : f32 = in_TANGENT0.w;
  let x_420 : f32 = x_184.unity_WorldTransformParams.w;
  u_xlat18 = (x_417 * x_420);
  let x_422 : f32 = u_xlat18;
  let x_424 : vec4<f32> = u_xlat5;
  let x_426 : vec3<f32> = (vec3<f32>(x_422, x_422, x_422) * vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_431 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_431;
  let x_435 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_435;
  let x_438 : f32 = u_xlat4.z;
  vs_TEXCOORD0.x = x_438;
  let x_440 : f32 = u_xlat28;
  vs_TEXCOORD0.w = x_440;
  let x_442 : f32 = u_xlat28;
  let x_446 : vec4<f32> = x_184.unity_4LightPosX0;
  u_xlat6 = (-(vec4<f32>(x_442, x_442, x_442, x_442)) + x_446);
  let x_450 : f32 = u_xlat4.x;
  vs_TEXCOORD1.x = x_450;
  let x_454 : f32 = u_xlat4.y;
  vs_TEXCOORD2.x = x_454;
  let x_457 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_457;
  let x_460 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_460;
  let x_463 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_463;
  let x_465 : f32 = u_xlat11;
  vs_TEXCOORD1.w = x_465;
  let x_467 : f32 = u_xlat11;
  let x_471 : vec4<f32> = x_184.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_467, x_467, x_467, x_467)) + x_471);
  let x_474 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_474;
  let x_477 : f32 = u_xlat9.x;
  vs_TEXCOORD2.w = x_477;
  let x_479 : vec2<f32> = u_xlat9;
  let x_483 : vec4<f32> = x_184.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_479.x, x_479.x, x_479.x, x_479.x)) + x_483);
  let x_486 : vec4<f32> = in_COLOR0;
  u_xlat7 = (x_486 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_492 : f32 = x_184.unity_ParticleUseMeshColors;
  let x_494 : vec4<f32> = u_xlat7;
  u_xlat7 = ((vec4<f32>(x_492, x_492, x_492, x_492) * x_494) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_502 : f32 = u_xlat2.w;
  u_xlatu9.x = (bitcast<u32>(x_502) & 255u);
  let x_509 : u32 = u_xlatu9.x;
  u_xlat8.x = f32(x_509);
  let x_513 : f32 = u_xlat2.w;
  param = bitcast<u32>(x_513);
  param_1 = 8i;
  param_2 = 8i;
  let x_518 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  let x_520 : f32 = u_xlat2.w;
  param_3 = bitcast<u32>(x_520);
  param_4 = 16i;
  param_5 = 8i;
  let x_526 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param_3), &(param_4), &(param_5));
  let x_528 : vec2<u32> = vec2<u32>(x_518, x_526);
  let x_529 : vec3<u32> = u_xlatu9;
  u_xlatu9 = vec3<u32>(x_528.x, x_528.y, x_529.z);
  let x_532 : f32 = u_xlat2.w;
  u_xlatu9.z = (bitcast<u32>(x_532) >> 24u);
  let x_537 : vec3<u32> = u_xlatu9;
  let x_538 : vec3<f32> = vec3<f32>(x_537);
  let x_539 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_539.x, x_538.x, x_538.y, x_538.z);
  let x_541 : vec4<f32> = u_xlat7;
  let x_542 : vec4<f32> = u_xlat8;
  u_xlat2 = (x_541 * x_542);
  let x_545 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_545 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_550 : f32 = u_xlat1.x;
  let x_552 : f32 = x_184.unity_ParticleUVShiftData.y;
  u_xlat9.x = (x_550 / x_552);
  let x_556 : f32 = u_xlat9.x;
  u_xlat9.x = floor(x_556);
  let x_560 : f32 = u_xlat9.x;
  let x_563 : f32 = x_184.unity_ParticleUVShiftData.y;
  let x_566 : f32 = u_xlat1.x;
  u_xlat18 = ((-(x_560) * x_563) + x_566);
  let x_568 : f32 = u_xlat18;
  u_xlat18 = floor(x_568);
  let x_570 : f32 = u_xlat18;
  let x_572 : f32 = x_184.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_570 * x_572);
  let x_576 : f32 = x_184.unity_ParticleUVShiftData.w;
  u_xlat18 = (-(x_576) + 1.0f);
  let x_580 : f32 = u_xlat9.x;
  let x_583 : f32 = x_184.unity_ParticleUVShiftData.w;
  let x_585 : f32 = u_xlat18;
  u_xlat2.y = ((-(x_580) * x_583) + x_585);
  let x_590 : vec2<f32> = in_TEXCOORD0;
  let x_592 : vec4<f32> = x_184.unity_ParticleUVShiftData;
  let x_595 : vec4<f32> = u_xlat2;
  u_xlat9 = ((x_590 * vec2<f32>(x_592.z, x_592.w)) + vec2<f32>(x_595.x, x_595.y));
  let x_602 : f32 = x_184.unity_ParticleUVShiftData.x;
  u_xlatb27 = !((x_602 == 0.0f));
  let x_605 : bool = u_xlatb27;
  if (x_605) {
    let x_610 : vec2<f32> = u_xlat9;
    x_607 = x_610;
  } else {
    let x_612 : vec2<f32> = in_TEXCOORD0;
    x_607 = x_612;
  }
  let x_613 : vec2<f32> = x_607;
  u_xlat9 = x_613;
  let x_616 : vec2<f32> = u_xlat9;
  let x_619 : vec4<f32> = x_184.x_MainTex_ST;
  let x_623 : vec4<f32> = x_184.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_616 * vec2<f32>(x_619.x, x_619.y)) + vec2<f32>(x_623.z, x_623.w));
  let x_626 : f32 = u_xlat19;
  let x_628 : f32 = x_184.unity_MatrixV[1i].z;
  u_xlat9.x = (x_626 * x_628);
  let x_631 : f32 = u_xlat19;
  let x_634 : vec4<f32> = x_184.unity_MatrixVP[1i];
  let x_636 : vec3<f32> = (vec3<f32>(x_631, x_631, x_631) * vec3<f32>(x_634.x, x_634.y, x_634.w));
  let x_637 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_636.x, x_637.y, x_636.y, x_636.z);
  let x_640 : vec4<f32> = x_184.unity_MatrixVP[0i];
  let x_642 : vec3<f32> = u_xlat10;
  let x_645 : vec4<f32> = u_xlat1;
  let x_647 : vec3<f32> = ((vec3<f32>(x_640.x, x_640.y, x_640.w) * vec3<f32>(x_642.x, x_642.x, x_642.x)) + vec3<f32>(x_645.x, x_645.z, x_645.w));
  let x_648 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_647.x, x_648.y, x_647.y, x_647.z);
  let x_651 : f32 = x_184.unity_MatrixV[0i].z;
  let x_653 : f32 = u_xlat10.x;
  let x_656 : f32 = u_xlat9.x;
  u_xlat9.x = ((x_651 * x_653) + x_656);
  let x_660 : f32 = x_184.unity_MatrixV[2i].z;
  let x_662 : f32 = u_xlat0.x;
  let x_665 : f32 = u_xlat9.x;
  u_xlat9.x = ((x_660 * x_662) + x_665);
  let x_669 : vec4<f32> = x_184.unity_MatrixVP[2i];
  let x_671 : vec4<f32> = u_xlat0;
  let x_674 : vec4<f32> = u_xlat1;
  let x_676 : vec3<f32> = ((vec3<f32>(x_669.x, x_669.y, x_669.w) * vec3<f32>(x_671.x, x_671.x, x_671.x)) + vec3<f32>(x_674.x, x_674.z, x_674.w));
  let x_677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_676.x, x_677.y, x_676.y, x_676.z);
  let x_679 : vec4<f32> = u_xlat0;
  let x_682 : vec4<f32> = x_184.unity_MatrixVP[3i];
  let x_684 : vec3<f32> = (vec3<f32>(x_679.x, x_679.z, x_679.w) + vec3<f32>(x_682.x, x_682.y, x_682.w));
  let x_685 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_684.x, x_685.y, x_684.y, x_684.z);
  let x_688 : f32 = u_xlat9.x;
  let x_690 : f32 = x_184.unity_MatrixV[3i].z;
  u_xlat9.x = (x_688 + x_690);
  let x_695 : f32 = u_xlat9.x;
  vs_TEXCOORD4.z = -(x_695);
  let x_699 : f32 = u_xlat0.z;
  let x_701 : f32 = x_184.x_ProjectionParams.x;
  u_xlat0.y = (x_699 * x_701);
  let x_704 : vec4<f32> = u_xlat0;
  let x_708 : vec3<f32> = (vec3<f32>(x_704.x, x_704.w, x_704.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_709 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_708.x, x_709.y, x_708.y, x_708.z);
  let x_712 : f32 = u_xlat0.w;
  vs_TEXCOORD4.w = x_712;
  let x_714 : vec4<f32> = u_xlat1;
  let x_716 : vec4<f32> = u_xlat1;
  let x_718 : vec2<f32> = (vec2<f32>(x_714.z, x_714.z) + vec2<f32>(x_716.x, x_716.w));
  let x_719 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_718.x, x_718.y, x_719.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec4<f32>(x_721.y, x_721.y, x_721.y, x_721.y) * x_723);
  let x_725 : vec4<f32> = u_xlat4;
  let x_726 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_725 * x_726);
  let x_728 : vec4<f32> = u_xlat6;
  let x_729 : vec4<f32> = u_xlat6;
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_728 * x_729) + x_731);
  let x_733 : vec4<f32> = u_xlat6;
  let x_734 : vec4<f32> = u_xlat3;
  let x_737 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_733 * vec4<f32>(x_734.x, x_734.x, x_734.x, x_734.x)) + x_737);
  let x_739 : vec4<f32> = u_xlat5;
  let x_740 : vec4<f32> = u_xlat3;
  let x_743 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_739 * vec4<f32>(x_740.w, x_740.w, x_740.z, x_740.w)) + x_743);
  let x_745 : vec4<f32> = u_xlat5;
  let x_746 : vec4<f32> = u_xlat5;
  let x_748 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_745 * x_746) + x_748);
  let x_750 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_750, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_754 : vec4<f32> = u_xlat1;
  u_xlat2 = inverseSqrt(x_754);
  let x_756 : vec4<f32> = u_xlat1;
  let x_758 : vec4<f32> = x_184.unity_4LightAtten0;
  u_xlat1 = ((x_756 * x_758) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_761 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_761);
  let x_763 : vec4<f32> = u_xlat0;
  let x_764 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_763 * x_764);
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_766, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_769 : vec4<f32> = u_xlat1;
  let x_770 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_769 * x_770);
  let x_772 : vec4<f32> = u_xlat0;
  let x_775 : vec4<f32> = x_184.unity_LightColor[1i];
  let x_777 : vec3<f32> = (vec3<f32>(x_772.y, x_772.y, x_772.y) * vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_781 : vec4<f32> = x_184.unity_LightColor[0i];
  let x_783 : vec4<f32> = u_xlat0;
  let x_786 : vec4<f32> = u_xlat1;
  let x_788 : vec3<f32> = ((vec3<f32>(x_781.x, x_781.y, x_781.z) * vec3<f32>(x_783.x, x_783.x, x_783.x)) + vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_792 : vec4<f32> = x_184.unity_LightColor[2i];
  let x_794 : vec4<f32> = u_xlat0;
  let x_797 : vec4<f32> = u_xlat1;
  let x_799 : vec3<f32> = ((vec3<f32>(x_792.x, x_792.y, x_792.z) * vec3<f32>(x_794.z, x_794.z, x_794.z)) + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_803 : vec4<f32> = x_184.unity_LightColor[3i];
  let x_805 : vec4<f32> = u_xlat0;
  let x_808 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_805.w, x_805.w, x_805.w)) + vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_815 : f32 = u_xlat3.y;
  let x_817 : f32 = u_xlat3.y;
  u_xlat27 = (x_815 * x_817);
  let x_820 : f32 = u_xlat3.x;
  let x_822 : f32 = u_xlat3.x;
  let x_824 : f32 = u_xlat27;
  u_xlat27 = ((x_820 * x_822) + -(x_824));
  let x_827 : vec4<f32> = u_xlat3;
  let x_829 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_827.y, x_827.w, x_827.z, x_827.x) * x_829);
  let x_832 : vec4<f32> = x_184.unity_SHBr;
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_832, x_833);
  let x_837 : vec4<f32> = x_184.unity_SHBg;
  let x_838 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_837, x_838);
  let x_842 : vec4<f32> = x_184.unity_SHBb;
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_842, x_843);
  let x_847 : vec4<f32> = x_184.unity_SHC;
  let x_849 : f32 = u_xlat27;
  let x_852 : vec4<f32> = u_xlat2;
  let x_854 : vec3<f32> = ((vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(x_849, x_849, x_849)) + vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_859 : vec4<f32> = u_xlat0;
  let x_861 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = (vec3<f32>(x_859.x, x_859.y, x_859.z) + vec3<f32>(x_861.x, x_861.y, x_861.z));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_866 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_866);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD5);
}

