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

@group(0) @binding(11) var<storage, read> x_62 : unity_ParticleInstanceData;

@group(1) @binding(1) var<uniform> x_183 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_SV_InstanceID0 : u32;

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
  var u_xlat10 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat11 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatu10 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb19 : bool;
  var x_617 : vec2<f32>;
  var u_xlat27 : f32;
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
  let x_67 : u32 = x_62.unity_ParticleInstanceData_buf[x_63].value[9i];
  let x_69 : i32 = u_xlati1;
  let x_72 : u32 = x_62.unity_ParticleInstanceData_buf[x_69].value[10i];
  let x_74 : i32 = u_xlati1;
  let x_77 : u32 = x_62.unity_ParticleInstanceData_buf[x_74].value[11i];
  let x_79 : i32 = u_xlati1;
  let x_82 : u32 = x_62.unity_ParticleInstanceData_buf[x_79].value[12i];
  u_xlat2 = vec4<f32>(bitcast<f32>(x_67), bitcast<f32>(x_72), bitcast<f32>(x_77), bitcast<f32>(x_82));
  let x_88 : f32 = u_xlat2.y;
  u_xlat3.w = x_88;
  let x_92 : i32 = u_xlati1;
  let x_95 : u32 = x_62.unity_ParticleInstanceData_buf[x_92].value[3i];
  let x_97 : i32 = u_xlati1;
  let x_100 : u32 = x_62.unity_ParticleInstanceData_buf[x_97].value[4i];
  let x_102 : i32 = u_xlati1;
  let x_105 : u32 = x_62.unity_ParticleInstanceData_buf[x_102].value[5i];
  u_xlat10 = vec3<f32>(bitcast<f32>(x_95), bitcast<f32>(x_100), bitcast<f32>(x_105));
  let x_109 : f32 = u_xlat10.y;
  u_xlat3.y = x_109;
  let x_112 : i32 = u_xlati1;
  let x_115 : u32 = x_62.unity_ParticleInstanceData_buf[x_112].value[7i];
  let x_117 : i32 = u_xlati1;
  let x_120 : u32 = x_62.unity_ParticleInstanceData_buf[x_117].value[8i];
  let x_122 : i32 = u_xlati1;
  let x_125 : u32 = x_62.unity_ParticleInstanceData_buf[x_122].value[6i];
  let x_127 : vec3<f32> = vec3<f32>(bitcast<f32>(x_115), bitcast<f32>(x_120), bitcast<f32>(x_125));
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_132 : f32 = u_xlat4.x;
  u_xlat3.z = x_132;
  let x_136 : i32 = u_xlati1;
  let x_139 : u32 = x_62.unity_ParticleInstanceData_buf[x_136].value[2i];
  let x_141 : i32 = u_xlati1;
  let x_143 : u32 = x_62.unity_ParticleInstanceData_buf[x_141].value[0i];
  let x_145 : i32 = u_xlati1;
  let x_148 : u32 = x_62.unity_ParticleInstanceData_buf[x_145].value[1i];
  let x_150 : vec3<f32> = vec3<f32>(bitcast<f32>(x_139), bitcast<f32>(x_143), bitcast<f32>(x_148));
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : i32 = u_xlati1;
  let x_157 : u32 = x_62.unity_ParticleInstanceData_buf[x_154].value[13i];
  u_xlat1.x = bitcast<f32>(x_157);
  let x_161 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_161);
  let x_165 : f32 = u_xlat5.z;
  u_xlat3.x = x_165;
  let x_168 : vec4<f32> = u_xlat3;
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat19 = dot(x_168, x_169);
  let x_172 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = in_POSITION0;
  u_xlat11 = dot(x_172, x_173);
  let x_176 : f32 = u_xlat19;
  let x_186 : vec4<f32> = x_183.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_176, x_176, x_176, x_176) * x_186);
  let x_189 : f32 = u_xlat2.x;
  u_xlat4.w = x_189;
  let x_192 : f32 = u_xlat4.y;
  u_xlat5.z = x_192;
  let x_195 : f32 = u_xlat5.y;
  u_xlat4.x = x_195;
  let x_198 : f32 = u_xlat10.x;
  u_xlat4.y = x_198;
  let x_201 : f32 = u_xlat10.z;
  u_xlat5.y = x_201;
  let x_203 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat10.x = dot(x_203, x_204);
  let x_207 : vec4<f32> = u_xlat4;
  let x_208 : vec4<f32> = in_POSITION0;
  u_xlat19 = dot(x_207, x_208);
  let x_211 : vec4<f32> = x_183.unity_MatrixVP[0i];
  let x_212 : vec3<f32> = u_xlat10;
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_211 * vec4<f32>(x_212.x, x_212.x, x_212.x, x_212.x)) + x_215);
  let x_218 : f32 = u_xlat2.z;
  u_xlat5.w = x_218;
  let x_220 : vec4<f32> = u_xlat5;
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_220, x_221);
  let x_224 : vec4<f32> = u_xlat5;
  let x_225 : vec4<f32> = in_POSITION0;
  u_xlat0.y = dot(x_224, x_225);
  let x_229 : vec4<f32> = x_183.unity_MatrixVP[2i];
  let x_230 : vec4<f32> = u_xlat0;
  let x_233 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_229 * vec4<f32>(x_230.x, x_230.x, x_230.x, x_230.x)) + x_233);
  let x_235 : vec4<f32> = u_xlat6;
  let x_237 : vec4<f32> = x_183.unity_MatrixVP[3i];
  u_xlat6 = (x_235 + x_237);
  let x_243 : vec4<f32> = u_xlat6;
  gl_Position = x_243;
  let x_246 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = u_xlat5;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.y, x_246.z, x_246.x) * vec3<f32>(x_248.z, x_248.x, x_248.y));
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_250.x, x_251.y, x_250.y, x_250.z);
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = u_xlat5;
  let x_258 : vec4<f32> = u_xlat0;
  let x_261 : vec3<f32> = ((vec3<f32>(x_253.z, x_253.x, x_253.y) * vec3<f32>(x_255.y, x_255.z, x_255.x)) + -(vec3<f32>(x_258.x, x_258.z, x_258.w)));
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_261.x, x_262.y, x_261.y, x_261.z);
  let x_265 : vec4<f32> = u_xlat3;
  let x_267 : vec4<f32> = u_xlat5;
  let x_269 : vec3<f32> = (vec3<f32>(x_265.z, x_265.x, x_265.y) * vec3<f32>(x_267.y, x_267.z, x_267.x));
  let x_270 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat3;
  let x_274 : vec4<f32> = u_xlat5;
  let x_277 : vec4<f32> = u_xlat7;
  let x_280 : vec3<f32> = ((vec3<f32>(x_272.y, x_272.z, x_272.x) * vec3<f32>(x_274.z, x_274.x, x_274.y)) + -(vec3<f32>(x_277.x, x_277.y, x_277.z)));
  let x_281 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat5;
  let x_286 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_290 : vec4<f32> = u_xlat4;
  let x_292 : vec4<f32> = u_xlat7;
  u_xlat10.x = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_297 : f32 = u_xlat10.x;
  u_xlat10.x = (1.0f / x_297);
  let x_300 : vec4<f32> = u_xlat0;
  let x_302 : vec3<f32> = u_xlat10;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.z, x_300.w) * vec3<f32>(x_302.x, x_302.x, x_302.x));
  let x_305 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_304.x, x_305.y, x_304.y, x_304.z);
  let x_310 : vec3<f32> = in_NORMAL0;
  let x_311 : vec4<f32> = u_xlat0;
  u_xlat8.y = dot(x_310, vec3<f32>(x_311.x, x_311.z, x_311.w));
  let x_315 : vec4<f32> = u_xlat3;
  let x_317 : vec4<f32> = u_xlat4;
  let x_319 : vec3<f32> = (vec3<f32>(x_315.y, x_315.z, x_315.x) * vec3<f32>(x_317.z, x_317.x, x_317.y));
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_319.x, x_320.y, x_319.y, x_319.z);
  let x_322 : vec4<f32> = u_xlat4;
  let x_324 : vec4<f32> = u_xlat3;
  let x_327 : vec4<f32> = u_xlat0;
  let x_330 : vec3<f32> = ((vec3<f32>(x_322.y, x_322.z, x_322.x) * vec3<f32>(x_324.z, x_324.x, x_324.y)) + -(vec3<f32>(x_327.x, x_327.z, x_327.w)));
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_330.x, x_331.y, x_330.y, x_330.z);
  let x_333 : vec4<f32> = u_xlat3;
  let x_335 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_339 : vec4<f32> = u_xlat4;
  let x_341 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_345 : vec3<f32> = u_xlat10;
  let x_347 : vec4<f32> = u_xlat0;
  let x_349 : vec3<f32> = (vec3<f32>(x_345.x, x_345.x, x_345.x) * vec3<f32>(x_347.x, x_347.z, x_347.w));
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_349.x, x_350.y, x_349.y, x_349.z);
  let x_352 : vec3<f32> = u_xlat10;
  let x_354 : vec4<f32> = u_xlat7;
  let x_356 : vec3<f32> = (vec3<f32>(x_352.x, x_352.x, x_352.x) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec3<f32> = in_NORMAL0;
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat8.x = dot(x_359, vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_364 : vec3<f32> = in_NORMAL0;
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat8.z = dot(x_364, vec3<f32>(x_365.x, x_365.z, x_365.w));
  let x_369 : vec4<f32> = u_xlat8;
  let x_371 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_369.x, x_369.y, x_369.z), vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_376 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_376);
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = u_xlat8;
  u_xlat3 = (vec4<f32>(x_379.x, x_379.x, x_379.x, x_379.x) * vec4<f32>(x_381.x, x_381.y, x_381.z, x_381.z));
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_391 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_391);
  let x_394 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat5;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.x, x_394.x) * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_398.x, x_399.y, x_398.y, x_398.z);
  let x_401 : vec4<f32> = u_xlat0;
  let x_403 : vec4<f32> = u_xlat3;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.z, x_401.w) * vec3<f32>(x_403.w, x_403.x, x_403.y));
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat3;
  let x_410 : vec4<f32> = u_xlat0;
  let x_413 : vec4<f32> = u_xlat4;
  let x_416 : vec3<f32> = ((vec3<f32>(x_408.y, x_408.w, x_408.x) * vec3<f32>(x_410.z, x_410.w, x_410.x)) + -(vec3<f32>(x_413.x, x_413.y, x_413.z)));
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_421 : f32 = in_TANGENT0.w;
  let x_424 : f32 = x_183.unity_WorldTransformParams.w;
  u_xlat10.x = (x_421 * x_424);
  let x_427 : vec3<f32> = u_xlat10;
  let x_429 : vec4<f32> = u_xlat4;
  let x_431 : vec3<f32> = (vec3<f32>(x_427.x, x_427.x, x_427.x) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_436;
  let x_440 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_440;
  let x_443 : f32 = u_xlat0.w;
  vs_TEXCOORD0.x = x_443;
  let x_445 : f32 = u_xlat19;
  vs_TEXCOORD0.w = x_445;
  let x_447 : f32 = u_xlat19;
  let x_451 : vec4<f32> = x_183.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_447, x_447, x_447, x_447)) + x_451);
  let x_455 : f32 = u_xlat0.x;
  vs_TEXCOORD1.x = x_455;
  let x_458 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_458;
  let x_461 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_461;
  let x_465 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_465;
  let x_467 : f32 = u_xlat11;
  vs_TEXCOORD1.w = x_467;
  let x_469 : f32 = u_xlat11;
  let x_473 : vec4<f32> = x_183.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_469, x_469, x_469, x_469)) + x_473);
  let x_476 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_476;
  let x_479 : vec4<f32> = u_xlat0;
  let x_480 : vec2<f32> = vec2<f32>(x_479.z, x_479.y);
  let x_481 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_480.x, x_481.y, x_481.z, x_480.y);
  let x_483 : vec4<f32> = u_xlat0;
  let x_487 : vec4<f32> = x_183.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_483.y, x_483.y, x_483.y, x_483.y)) + x_487);
  let x_490 : vec4<f32> = in_COLOR0;
  u_xlat7 = (x_490 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_495 : f32 = x_183.unity_ParticleUseMeshColors;
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = ((vec4<f32>(x_495, x_495, x_495, x_495) * x_497) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_505 : f32 = u_xlat2.w;
  u_xlatu10.x = (bitcast<u32>(x_505) & 255u);
  let x_511 : u32 = u_xlatu10.x;
  u_xlat8.x = f32(x_511);
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
  let x_541 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_541.x, x_540.x, x_540.y, x_540.z);
  let x_543 : vec4<f32> = u_xlat7;
  let x_544 : vec4<f32> = u_xlat8;
  u_xlat2 = (x_543 * x_544);
  let x_547 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_547 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_552 : f32 = u_xlat1.x;
  let x_554 : f32 = x_183.unity_ParticleUVShiftData.y;
  u_xlat10.x = (x_552 / x_554);
  let x_558 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_558);
  let x_562 : f32 = u_xlat10.x;
  let x_565 : f32 = x_183.unity_ParticleUVShiftData.y;
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_562) * x_565) + x_568);
  let x_572 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_572);
  let x_576 : f32 = u_xlat1.x;
  let x_578 : f32 = x_183.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_576 * x_578);
  let x_582 : f32 = x_183.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_582) + 1.0f);
  let x_587 : f32 = u_xlat10.x;
  let x_590 : f32 = x_183.unity_ParticleUVShiftData.w;
  let x_593 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_587) * x_590) + x_593);
  let x_598 : vec2<f32> = in_TEXCOORD0;
  let x_600 : vec4<f32> = x_183.unity_ParticleUVShiftData;
  let x_603 : vec4<f32> = u_xlat2;
  let x_605 : vec2<f32> = ((x_598 * vec2<f32>(x_600.z, x_600.w)) + vec2<f32>(x_603.x, x_603.y));
  let x_606 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
  let x_612 : f32 = x_183.unity_ParticleUVShiftData.x;
  u_xlatb19 = !((x_612 == 0.0f));
  let x_615 : bool = u_xlatb19;
  if (x_615) {
    let x_620 : vec4<f32> = u_xlat1;
    x_617 = vec2<f32>(x_620.x, x_620.y);
  } else {
    let x_623 : vec2<f32> = in_TEXCOORD0;
    x_617 = x_623;
  }
  let x_624 : vec2<f32> = x_617;
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
  let x_629 : vec4<f32> = u_xlat1;
  let x_633 : vec4<f32> = x_183.x_MainTex_ST;
  let x_637 : vec4<f32> = x_183.x_MainTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_629.x, x_629.y) * vec2<f32>(x_633.x, x_633.y)) + vec2<f32>(x_637.z, x_637.w));
  let x_640 : vec4<f32> = u_xlat3;
  let x_642 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_640.y, x_640.y, x_640.y, x_640.y) * x_642);
  let x_644 : vec4<f32> = u_xlat4;
  let x_645 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_644 * x_645);
  let x_647 : vec4<f32> = u_xlat5;
  let x_648 : vec4<f32> = u_xlat5;
  let x_650 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_647 * x_648) + x_650);
  let x_652 : vec4<f32> = u_xlat5;
  let x_653 : vec4<f32> = u_xlat3;
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_652 * vec4<f32>(x_653.x, x_653.x, x_653.x, x_653.x)) + x_656);
  let x_658 : vec4<f32> = u_xlat0;
  let x_659 : vec4<f32> = u_xlat3;
  let x_662 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_658 * vec4<f32>(x_659.w, x_659.w, x_659.z, x_659.w)) + x_662);
  let x_664 : vec4<f32> = u_xlat0;
  let x_665 : vec4<f32> = u_xlat0;
  let x_667 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_664 * x_665) + x_667);
  let x_669 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_669, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_673);
  let x_675 : vec4<f32> = u_xlat0;
  let x_677 : vec4<f32> = x_183.unity_4LightAtten0;
  u_xlat0 = ((x_675 * x_677) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_680 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_680);
  let x_682 : vec4<f32> = u_xlat1;
  let x_683 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_682 * x_683);
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_685, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_688 : vec4<f32> = u_xlat0;
  let x_689 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_688 * x_689);
  let x_691 : vec4<f32> = u_xlat0;
  let x_694 : vec4<f32> = x_183.unity_LightColor[1i];
  let x_696 : vec3<f32> = (vec3<f32>(x_691.y, x_691.y, x_691.y) * vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_700 : vec4<f32> = x_183.unity_LightColor[0i];
  let x_702 : vec4<f32> = u_xlat0;
  let x_705 : vec4<f32> = u_xlat1;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.y, x_700.z) * vec3<f32>(x_702.x, x_702.x, x_702.x)) + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_711 : vec4<f32> = x_183.unity_LightColor[2i];
  let x_713 : vec4<f32> = u_xlat0;
  let x_716 : vec4<f32> = u_xlat1;
  let x_718 : vec3<f32> = ((vec3<f32>(x_711.x, x_711.y, x_711.z) * vec3<f32>(x_713.z, x_713.z, x_713.z)) + vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_722 : vec4<f32> = x_183.unity_LightColor[3i];
  let x_724 : vec4<f32> = u_xlat0;
  let x_727 : vec4<f32> = u_xlat0;
  let x_729 : vec3<f32> = ((vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(x_724.w, x_724.w, x_724.w)) + vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_734 : f32 = u_xlat3.y;
  let x_736 : f32 = u_xlat3.y;
  u_xlat27 = (x_734 * x_736);
  let x_739 : f32 = u_xlat3.x;
  let x_741 : f32 = u_xlat3.x;
  let x_743 : f32 = u_xlat27;
  u_xlat27 = ((x_739 * x_741) + -(x_743));
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_746.y, x_746.w, x_746.z, x_746.x) * x_748);
  let x_751 : vec4<f32> = x_183.unity_SHBr;
  let x_752 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_751, x_752);
  let x_756 : vec4<f32> = x_183.unity_SHBg;
  let x_757 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_756, x_757);
  let x_761 : vec4<f32> = x_183.unity_SHBb;
  let x_762 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_761, x_762);
  let x_766 : vec4<f32> = x_183.unity_SHC;
  let x_768 : f32 = u_xlat27;
  let x_771 : vec4<f32> = u_xlat2;
  let x_773 : vec3<f32> = ((vec3<f32>(x_766.x, x_766.y, x_766.z) * vec3<f32>(x_768, x_768, x_768)) + vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_778 : vec4<f32> = u_xlat0;
  let x_780 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_778.x, x_778.y, x_778.z) + vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_784 : f32 = u_xlat6.y;
  let x_786 : f32 = x_183.x_ProjectionParams.x;
  u_xlat0.x = (x_784 * x_786);
  let x_790 : f32 = u_xlat0.x;
  u_xlat0.w = (x_790 * 0.5f);
  let x_794 : vec4<f32> = u_xlat6;
  let x_797 : vec2<f32> = (vec2<f32>(x_794.x, x_794.w) * vec2<f32>(0.5f, 0.5f));
  let x_798 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_797.x, x_798.y, x_797.y, x_798.w);
  let x_801 : vec4<f32> = u_xlat6;
  let x_802 : vec2<f32> = vec2<f32>(x_801.z, x_801.w);
  let x_803 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_803.x, x_803.y, x_802.x, x_802.y);
  let x_805 : vec4<f32> = u_xlat0;
  let x_807 : vec4<f32> = u_xlat0;
  let x_809 : vec2<f32> = (vec2<f32>(x_805.z, x_805.z) + vec2<f32>(x_807.x, x_807.w));
  let x_810 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_809.x, x_809.y, x_810.z, x_810.w);
  let x_814 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_814);
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
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD6);
}

