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

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  var u_xlat0 : vec4<f32>;
  var u_xlati1 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat12 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat10 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlatu10 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb30 : bool;
  var x_606 : vec2<f32>;
  var u_xlat30 : f32;
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
  u_xlat11 = vec3<f32>(bitcast<f32>(x_95), bitcast<f32>(x_100), bitcast<f32>(x_105));
  let x_109 : f32 = u_xlat11.y;
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
  u_xlat21 = dot(x_168, x_169);
  let x_172 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = in_POSITION0;
  u_xlat12 = dot(x_172, x_173);
  let x_176 : f32 = u_xlat21;
  let x_186 : vec4<f32> = x_183.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_176, x_176, x_176, x_176) * x_186);
  let x_189 : f32 = u_xlat2.x;
  u_xlat4.w = x_189;
  let x_192 : f32 = u_xlat4.y;
  u_xlat5.z = x_192;
  let x_195 : f32 = u_xlat5.y;
  u_xlat4.x = x_195;
  let x_198 : f32 = u_xlat11.x;
  u_xlat4.y = x_198;
  let x_201 : f32 = u_xlat11.z;
  u_xlat5.y = x_201;
  let x_203 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat11.x = dot(x_203, x_204);
  let x_208 : vec4<f32> = u_xlat4;
  let x_209 : vec4<f32> = in_POSITION0;
  u_xlat31 = dot(x_208, x_209);
  let x_212 : vec4<f32> = x_183.unity_MatrixVP[0i];
  let x_213 : vec3<f32> = u_xlat11;
  let x_216 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_212 * vec4<f32>(x_213.x, x_213.x, x_213.x, x_213.x)) + x_216);
  let x_219 : f32 = u_xlat2.z;
  u_xlat5.w = x_219;
  let x_221 : vec4<f32> = u_xlat5;
  let x_222 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_221, x_222);
  let x_228 : vec4<f32> = u_xlat5;
  let x_229 : vec4<f32> = in_POSITION0;
  u_xlat10.x = dot(x_228, x_229);
  let x_233 : vec4<f32> = x_183.unity_MatrixVP[2i];
  let x_234 : vec4<f32> = u_xlat0;
  let x_237 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_233 * vec4<f32>(x_234.x, x_234.x, x_234.x, x_234.x)) + x_237);
  let x_239 : vec4<f32> = u_xlat6;
  let x_241 : vec4<f32> = x_183.unity_MatrixVP[3i];
  u_xlat6 = (x_239 + x_241);
  let x_247 : vec4<f32> = u_xlat6;
  gl_Position = x_247;
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec4<f32> = u_xlat5;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.y, x_251.z, x_251.x) * vec3<f32>(x_253.z, x_253.x, x_253.y));
  let x_256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat4;
  let x_260 : vec4<f32> = u_xlat5;
  let x_263 : vec4<f32> = u_xlat7;
  let x_266 : vec3<f32> = ((vec3<f32>(x_258.z, x_258.x, x_258.y) * vec3<f32>(x_260.y, x_260.z, x_260.x)) + -(vec3<f32>(x_263.x, x_263.y, x_263.z)));
  let x_267 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = u_xlat3;
  let x_272 : vec4<f32> = u_xlat5;
  let x_274 : vec3<f32> = (vec3<f32>(x_270.z, x_270.x, x_270.y) * vec3<f32>(x_272.y, x_272.z, x_272.x));
  let x_275 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_277 : vec4<f32> = u_xlat3;
  let x_279 : vec4<f32> = u_xlat5;
  let x_282 : vec4<f32> = u_xlat8;
  let x_285 : vec3<f32> = ((vec3<f32>(x_277.y, x_277.z, x_277.x) * vec3<f32>(x_279.z, x_279.x, x_279.y)) + -(vec3<f32>(x_282.x, x_282.y, x_282.z)));
  let x_286 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat5;
  let x_291 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : vec4<f32> = u_xlat4;
  let x_298 : vec4<f32> = u_xlat8;
  u_xlat20 = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : f32 = u_xlat20;
  u_xlat20 = (1.0f / x_301);
  let x_303 : f32 = u_xlat20;
  let x_305 : vec4<f32> = u_xlat7;
  let x_307 : vec3<f32> = (vec3<f32>(x_303, x_303, x_303) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_312 : vec3<f32> = in_NORMAL0;
  let x_313 : vec4<f32> = u_xlat7;
  u_xlat7.y = dot(x_312, vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_318 : vec4<f32> = u_xlat3;
  let x_320 : vec4<f32> = u_xlat4;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.y, x_318.z, x_318.x) * vec3<f32>(x_320.z, x_320.x, x_320.y));
  let x_323 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec4<f32> = u_xlat3;
  let x_330 : vec4<f32> = u_xlat9;
  let x_333 : vec3<f32> = ((vec3<f32>(x_325.y, x_325.z, x_325.x) * vec3<f32>(x_327.z, x_327.x, x_327.y)) + -(vec3<f32>(x_330.x, x_330.y, x_330.z)));
  let x_334 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_336.x, x_336.y, x_336.z), vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_342 : vec4<f32> = u_xlat4;
  let x_344 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_342.x, x_342.y, x_342.z), vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_348 : f32 = u_xlat20;
  let x_350 : vec4<f32> = u_xlat9;
  let x_352 : vec3<f32> = (vec3<f32>(x_348, x_348, x_348) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : f32 = u_xlat20;
  let x_357 : vec4<f32> = u_xlat8;
  let x_359 : vec3<f32> = (vec3<f32>(x_355, x_355, x_355) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec3<f32> = in_NORMAL0;
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(x_362, vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_367 : vec3<f32> = in_NORMAL0;
  let x_368 : vec4<f32> = u_xlat3;
  u_xlat7.z = dot(x_367, vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_372 : vec4<f32> = u_xlat7;
  let x_374 : vec4<f32> = u_xlat7;
  u_xlat20 = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_377);
  let x_379 : f32 = u_xlat20;
  let x_381 : vec4<f32> = u_xlat7;
  u_xlat3 = (vec4<f32>(x_379, x_379, x_379, x_379) * vec4<f32>(x_381.x, x_381.y, x_381.z, x_381.z));
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat20 = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_389);
  let x_391 : f32 = u_xlat20;
  let x_393 : vec4<f32> = u_xlat5;
  let x_395 : vec3<f32> = (vec3<f32>(x_391, x_391, x_391) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat3;
  let x_400 : vec4<f32> = u_xlat4;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.w, x_398.x, x_398.y) * vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat3;
  let x_407 : vec4<f32> = u_xlat4;
  let x_410 : vec4<f32> = u_xlat5;
  let x_413 : vec3<f32> = ((vec3<f32>(x_405.y, x_405.w, x_405.x) * vec3<f32>(x_407.y, x_407.z, x_407.x)) + -(vec3<f32>(x_410.x, x_410.y, x_410.z)));
  let x_414 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_418 : f32 = in_TANGENT0.w;
  let x_421 : f32 = x_183.unity_WorldTransformParams.w;
  u_xlat20 = (x_418 * x_421);
  let x_423 : f32 = u_xlat20;
  let x_425 : vec4<f32> = u_xlat5;
  let x_427 : vec3<f32> = (vec3<f32>(x_423, x_423, x_423) * vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_432 : f32 = u_xlat5.x;
  vs_TEXCOORD0.y = x_432;
  let x_436 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_436;
  let x_439 : f32 = u_xlat4.z;
  vs_TEXCOORD0.x = x_439;
  let x_441 : f32 = u_xlat31;
  vs_TEXCOORD0.w = x_441;
  let x_443 : f32 = u_xlat31;
  let x_447 : vec4<f32> = x_183.unity_4LightPosX0;
  u_xlat7 = (-(vec4<f32>(x_443, x_443, x_443, x_443)) + x_447);
  let x_451 : f32 = u_xlat4.x;
  vs_TEXCOORD1.x = x_451;
  let x_455 : f32 = u_xlat4.y;
  vs_TEXCOORD2.x = x_455;
  let x_458 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_458;
  let x_461 : f32 = u_xlat5.y;
  vs_TEXCOORD1.y = x_461;
  let x_464 : f32 = u_xlat5.z;
  vs_TEXCOORD2.y = x_464;
  let x_466 : f32 = u_xlat12;
  vs_TEXCOORD1.w = x_466;
  let x_468 : f32 = u_xlat12;
  let x_472 : vec4<f32> = x_183.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_468, x_468, x_468, x_468)) + x_472);
  let x_475 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_475;
  let x_478 : f32 = u_xlat10.x;
  vs_TEXCOORD2.w = x_478;
  let x_480 : vec2<f32> = u_xlat10;
  let x_484 : vec4<f32> = x_183.unity_4LightPosZ0;
  u_xlat5 = (-(vec4<f32>(x_480.x, x_480.x, x_480.x, x_480.x)) + x_484);
  let x_487 : vec4<f32> = in_COLOR0;
  u_xlat8 = (x_487 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_493 : f32 = x_183.unity_ParticleUseMeshColors;
  let x_495 : vec4<f32> = u_xlat8;
  u_xlat8 = ((vec4<f32>(x_493, x_493, x_493, x_493) * x_495) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_503 : f32 = u_xlat2.w;
  u_xlatu10.x = (bitcast<u32>(x_503) & 255u);
  let x_509 : u32 = u_xlatu10.x;
  u_xlat9.x = f32(x_509);
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
  let x_529 : vec3<u32> = u_xlatu10;
  u_xlatu10 = vec3<u32>(x_528.x, x_528.y, x_529.z);
  let x_532 : f32 = u_xlat2.w;
  u_xlatu10.z = (bitcast<u32>(x_532) >> 24u);
  let x_537 : vec3<u32> = u_xlatu10;
  let x_538 : vec3<f32> = vec3<f32>(x_537);
  let x_539 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_539.x, x_538.x, x_538.y, x_538.z);
  let x_541 : vec4<f32> = u_xlat8;
  let x_542 : vec4<f32> = u_xlat9;
  u_xlat2 = (x_541 * x_542);
  let x_545 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_545 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_550 : f32 = u_xlat1.x;
  let x_552 : f32 = x_183.unity_ParticleUVShiftData.y;
  u_xlat10.x = (x_550 / x_552);
  let x_556 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_556);
  let x_560 : f32 = u_xlat10.x;
  let x_563 : f32 = x_183.unity_ParticleUVShiftData.y;
  let x_566 : f32 = u_xlat1.x;
  u_xlat20 = ((-(x_560) * x_563) + x_566);
  let x_568 : f32 = u_xlat20;
  u_xlat20 = floor(x_568);
  let x_570 : f32 = u_xlat20;
  let x_572 : f32 = x_183.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_570 * x_572);
  let x_576 : f32 = x_183.unity_ParticleUVShiftData.w;
  u_xlat20 = (-(x_576) + 1.0f);
  let x_580 : f32 = u_xlat10.x;
  let x_583 : f32 = x_183.unity_ParticleUVShiftData.w;
  let x_585 : f32 = u_xlat20;
  u_xlat2.y = ((-(x_580) * x_583) + x_585);
  let x_590 : vec2<f32> = in_TEXCOORD0;
  let x_592 : vec4<f32> = x_183.unity_ParticleUVShiftData;
  let x_595 : vec4<f32> = u_xlat2;
  u_xlat10 = ((x_590 * vec2<f32>(x_592.z, x_592.w)) + vec2<f32>(x_595.x, x_595.y));
  let x_602 : f32 = x_183.unity_ParticleUVShiftData.x;
  u_xlatb30 = !((x_602 == 0.0f));
  let x_605 : bool = u_xlatb30;
  if (x_605) {
    let x_609 : vec2<f32> = u_xlat10;
    x_606 = x_609;
  } else {
    let x_611 : vec2<f32> = in_TEXCOORD0;
    x_606 = x_611;
  }
  let x_612 : vec2<f32> = x_606;
  u_xlat10 = x_612;
  let x_615 : vec2<f32> = u_xlat10;
  let x_618 : vec4<f32> = x_183.x_MainTex_ST;
  let x_622 : vec4<f32> = x_183.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_615 * vec2<f32>(x_618.x, x_618.y)) + vec2<f32>(x_622.z, x_622.w));
  let x_625 : f32 = u_xlat21;
  let x_627 : f32 = x_183.unity_MatrixV[1i].z;
  u_xlat10.x = (x_625 * x_627);
  let x_630 : f32 = u_xlat21;
  let x_633 : vec4<f32> = x_183.unity_MatrixVP[1i];
  let x_635 : vec3<f32> = (vec3<f32>(x_630, x_630, x_630) * vec3<f32>(x_633.x, x_633.y, x_633.w));
  let x_636 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_635.x, x_636.y, x_635.y, x_635.z);
  let x_639 : vec4<f32> = x_183.unity_MatrixVP[0i];
  let x_641 : vec3<f32> = u_xlat11;
  let x_644 : vec4<f32> = u_xlat1;
  let x_646 : vec3<f32> = ((vec3<f32>(x_639.x, x_639.y, x_639.w) * vec3<f32>(x_641.x, x_641.x, x_641.x)) + vec3<f32>(x_644.x, x_644.z, x_644.w));
  let x_647 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_646.x, x_647.y, x_646.y, x_646.z);
  let x_650 : f32 = x_183.unity_MatrixV[0i].z;
  let x_652 : f32 = u_xlat11.x;
  let x_655 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_650 * x_652) + x_655);
  let x_659 : f32 = x_183.unity_MatrixV[2i].z;
  let x_661 : f32 = u_xlat0.x;
  let x_664 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_659 * x_661) + x_664);
  let x_668 : vec4<f32> = x_183.unity_MatrixVP[2i];
  let x_670 : vec4<f32> = u_xlat0;
  let x_673 : vec4<f32> = u_xlat1;
  let x_675 : vec3<f32> = ((vec3<f32>(x_668.x, x_668.y, x_668.w) * vec3<f32>(x_670.x, x_670.x, x_670.x)) + vec3<f32>(x_673.x, x_673.z, x_673.w));
  let x_676 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_675.x, x_676.y, x_675.y, x_675.z);
  let x_678 : vec4<f32> = u_xlat0;
  let x_681 : vec4<f32> = x_183.unity_MatrixVP[3i];
  let x_683 : vec3<f32> = (vec3<f32>(x_678.x, x_678.z, x_678.w) + vec3<f32>(x_681.x, x_681.y, x_681.w));
  let x_684 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_683.x, x_684.y, x_683.y, x_683.z);
  let x_687 : f32 = u_xlat10.x;
  let x_689 : f32 = x_183.unity_MatrixV[3i].z;
  u_xlat10.x = (x_687 + x_689);
  let x_695 : f32 = u_xlat10.x;
  vs_TEXCOORD4.z = -(x_695);
  let x_700 : f32 = u_xlat0.w;
  vs_TEXCOORD4.w = x_700;
  u_xlat1.x = 0.5f;
  u_xlat1.z = 0.5f;
  let x_706 : f32 = x_183.x_ProjectionParams.x;
  u_xlat1.y = x_706;
  let x_708 : vec4<f32> = u_xlat0;
  let x_710 : vec4<f32> = u_xlat1;
  let x_712 : vec3<f32> = (vec3<f32>(x_708.x, x_708.z, x_708.w) * vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_713 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat1;
  let x_717 : vec4<f32> = u_xlat6;
  let x_719 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(x_717.x, x_717.y, x_717.w));
  let x_720 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_723 : vec4<f32> = u_xlat6;
  let x_724 : vec2<f32> = vec2<f32>(x_723.z, x_723.w);
  let x_725 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_725.x, x_725.y, x_724.x, x_724.y);
  let x_728 : f32 = u_xlat0.y;
  u_xlat0.w = (x_728 * 0.5f);
  let x_731 : vec4<f32> = u_xlat0;
  let x_733 : vec4<f32> = u_xlat0;
  let x_735 : vec2<f32> = (vec2<f32>(x_731.z, x_731.z) + vec2<f32>(x_733.x, x_733.w));
  let x_736 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec4<f32>(x_738.y, x_738.y, x_738.y, x_738.y) * x_740);
  let x_742 : vec4<f32> = u_xlat4;
  let x_743 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_742 * x_743);
  let x_745 : vec4<f32> = u_xlat7;
  let x_746 : vec4<f32> = u_xlat7;
  let x_748 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_745 * x_746) + x_748);
  let x_750 : vec4<f32> = u_xlat7;
  let x_751 : vec4<f32> = u_xlat3;
  let x_754 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_750 * vec4<f32>(x_751.x, x_751.x, x_751.x, x_751.x)) + x_754);
  let x_756 : vec4<f32> = u_xlat5;
  let x_757 : vec4<f32> = u_xlat3;
  let x_760 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_756 * vec4<f32>(x_757.w, x_757.w, x_757.z, x_757.w)) + x_760);
  let x_762 : vec4<f32> = u_xlat5;
  let x_763 : vec4<f32> = u_xlat5;
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_762 * x_763) + x_765);
  let x_767 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_767, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_771 : vec4<f32> = u_xlat2;
  u_xlat4 = inverseSqrt(x_771);
  let x_773 : vec4<f32> = u_xlat2;
  let x_775 : vec4<f32> = x_183.unity_4LightAtten0;
  u_xlat2 = ((x_773 * x_775) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_778 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_778);
  let x_780 : vec4<f32> = u_xlat0;
  let x_781 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_780 * x_781);
  let x_783 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_783, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_786 : vec4<f32> = u_xlat2;
  let x_787 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_786 * x_787);
  let x_789 : vec4<f32> = u_xlat0;
  let x_792 : vec4<f32> = x_183.unity_LightColor[1i];
  let x_794 : vec3<f32> = (vec3<f32>(x_789.y, x_789.y, x_789.y) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_798 : vec4<f32> = x_183.unity_LightColor[0i];
  let x_800 : vec4<f32> = u_xlat0;
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec3<f32> = ((vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_800.x, x_800.x, x_800.x)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_809 : vec4<f32> = x_183.unity_LightColor[2i];
  let x_811 : vec4<f32> = u_xlat0;
  let x_814 : vec4<f32> = u_xlat2;
  let x_816 : vec3<f32> = ((vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(x_811.z, x_811.z, x_811.z)) + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_820 : vec4<f32> = x_183.unity_LightColor[3i];
  let x_822 : vec4<f32> = u_xlat0;
  let x_825 : vec4<f32> = u_xlat0;
  let x_827 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(x_822.w, x_822.w, x_822.w)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_832 : f32 = u_xlat3.y;
  let x_834 : f32 = u_xlat3.y;
  u_xlat30 = (x_832 * x_834);
  let x_837 : f32 = u_xlat3.x;
  let x_839 : f32 = u_xlat3.x;
  let x_841 : f32 = u_xlat30;
  u_xlat30 = ((x_837 * x_839) + -(x_841));
  let x_844 : vec4<f32> = u_xlat3;
  let x_846 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_844.y, x_844.w, x_844.z, x_844.x) * x_846);
  let x_849 : vec4<f32> = x_183.unity_SHBr;
  let x_850 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_849, x_850);
  let x_854 : vec4<f32> = x_183.unity_SHBg;
  let x_855 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_854, x_855);
  let x_859 : vec4<f32> = x_183.unity_SHBb;
  let x_860 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_859, x_860);
  let x_864 : vec4<f32> = x_183.unity_SHC;
  let x_866 : f32 = u_xlat30;
  let x_869 : vec4<f32> = u_xlat3;
  let x_871 : vec3<f32> = ((vec3<f32>(x_864.x, x_864.y, x_864.z) * vec3<f32>(x_866, x_866, x_866)) + vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_876 : vec4<f32> = u_xlat0;
  let x_878 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = (vec3<f32>(x_876.x, x_876.y, x_876.z) + vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_882 : f32 = u_xlat1.y;
  u_xlat1.w = (x_882 * 0.5f);
  let x_885 : vec4<f32> = u_xlat1;
  let x_887 : vec4<f32> = u_xlat1;
  let x_889 : vec2<f32> = (vec2<f32>(x_885.z, x_885.z) + vec2<f32>(x_887.x, x_887.w));
  let x_890 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_889.x, x_889.y, x_890.z, x_890.w);
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

