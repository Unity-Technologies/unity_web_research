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

@group(0) @binding(9) var<storage, read> x_62 : unity_ParticleInstanceData;

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
  var u_xlat9 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat10 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatu9 : vec3<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : u32;
  var param_4 : i32;
  var param_5 : i32;
  var u_xlatb17 : bool;
  var x_615 : vec2<f32>;
  var u_xlat24 : f32;
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
  u_xlat9 = vec3<f32>(bitcast<f32>(x_95), bitcast<f32>(x_100), bitcast<f32>(x_105));
  let x_109 : f32 = u_xlat9.y;
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
  u_xlat17 = dot(x_168, x_169);
  let x_172 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = in_POSITION0;
  u_xlat10 = dot(x_172, x_173);
  let x_176 : f32 = u_xlat17;
  let x_186 : vec4<f32> = x_183.unity_MatrixVP[1i];
  u_xlat6 = (vec4<f32>(x_176, x_176, x_176, x_176) * x_186);
  let x_189 : f32 = u_xlat2.x;
  u_xlat4.w = x_189;
  let x_192 : f32 = u_xlat4.y;
  u_xlat5.z = x_192;
  let x_195 : f32 = u_xlat5.y;
  u_xlat4.x = x_195;
  let x_198 : f32 = u_xlat9.x;
  u_xlat4.y = x_198;
  let x_201 : f32 = u_xlat9.z;
  u_xlat5.y = x_201;
  let x_203 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat9.x = dot(x_203, x_204);
  let x_207 : vec4<f32> = u_xlat4;
  let x_208 : vec4<f32> = in_POSITION0;
  u_xlat17 = dot(x_207, x_208);
  let x_211 : vec4<f32> = x_183.unity_MatrixVP[0i];
  let x_212 : vec3<f32> = u_xlat9;
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
  let x_239 : vec4<f32> = u_xlat6;
  let x_241 : vec4<f32> = x_183.unity_MatrixVP[3i];
  gl_Position = (x_239 + x_241);
  let x_245 : vec4<f32> = u_xlat4;
  let x_247 : vec4<f32> = u_xlat5;
  let x_249 : vec3<f32> = (vec3<f32>(x_245.y, x_245.z, x_245.x) * vec3<f32>(x_247.z, x_247.x, x_247.y));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_250.y, x_249.y, x_249.z);
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat5;
  let x_257 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = ((vec3<f32>(x_252.z, x_252.x, x_252.y) * vec3<f32>(x_254.y, x_254.z, x_254.x)) + -(vec3<f32>(x_257.x, x_257.z, x_257.w)));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_261.y, x_260.y, x_260.z);
  let x_263 : vec4<f32> = u_xlat3;
  let x_265 : vec4<f32> = u_xlat5;
  let x_267 : vec3<f32> = (vec3<f32>(x_263.z, x_263.x, x_263.y) * vec3<f32>(x_265.y, x_265.z, x_265.x));
  let x_268 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat3;
  let x_272 : vec4<f32> = u_xlat5;
  let x_275 : vec4<f32> = u_xlat6;
  let x_278 : vec3<f32> = ((vec3<f32>(x_270.y, x_270.z, x_270.x) * vec3<f32>(x_272.z, x_272.x, x_272.y)) + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_279 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_281 : vec4<f32> = u_xlat5;
  let x_284 : vec4<f32> = in_TANGENT0;
  u_xlat5.y = dot(vec3<f32>(x_281.x, x_281.y, x_281.z), vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_295 : f32 = u_xlat9.x;
  u_xlat9.x = (1.0f / x_295);
  let x_298 : vec4<f32> = u_xlat0;
  let x_300 : vec3<f32> = u_xlat9;
  let x_302 : vec3<f32> = (vec3<f32>(x_298.x, x_298.z, x_298.w) * vec3<f32>(x_300.x, x_300.x, x_300.x));
  let x_303 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_302.x, x_303.y, x_302.y, x_302.z);
  let x_308 : vec3<f32> = in_NORMAL0;
  let x_309 : vec4<f32> = u_xlat0;
  u_xlat7.y = dot(x_308, vec3<f32>(x_309.x, x_309.z, x_309.w));
  let x_313 : vec4<f32> = u_xlat3;
  let x_315 : vec4<f32> = u_xlat4;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.y, x_313.z, x_313.x) * vec3<f32>(x_315.z, x_315.x, x_315.y));
  let x_318 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_317.x, x_318.y, x_317.y, x_317.z);
  let x_320 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = u_xlat3;
  let x_325 : vec4<f32> = u_xlat0;
  let x_328 : vec3<f32> = ((vec3<f32>(x_320.y, x_320.z, x_320.x) * vec3<f32>(x_322.z, x_322.x, x_322.y)) + -(vec3<f32>(x_325.x, x_325.z, x_325.w)));
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_328.x, x_329.y, x_328.y, x_328.z);
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec4<f32> = in_TANGENT0;
  u_xlat5.x = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : vec4<f32> = in_TANGENT0;
  u_xlat5.z = dot(vec3<f32>(x_337.x, x_337.y, x_337.z), vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_343 : vec3<f32> = u_xlat9;
  let x_345 : vec4<f32> = u_xlat0;
  let x_347 : vec3<f32> = (vec3<f32>(x_343.x, x_343.x, x_343.x) * vec3<f32>(x_345.x, x_345.z, x_345.w));
  let x_348 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_347.x, x_348.y, x_347.y, x_347.z);
  let x_350 : vec3<f32> = u_xlat9;
  let x_352 : vec4<f32> = u_xlat6;
  let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.x, x_350.x) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec3<f32> = in_NORMAL0;
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_357, vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_362 : vec3<f32> = in_NORMAL0;
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat7.z = dot(x_362, vec3<f32>(x_363.x, x_363.z, x_363.w));
  let x_367 : vec4<f32> = u_xlat7;
  let x_369 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_367.x, x_367.y, x_367.z), vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_374 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_374);
  let x_377 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat7;
  u_xlat3 = (vec4<f32>(x_377.x, x_377.x, x_377.x, x_377.x) * vec4<f32>(x_379.x, x_379.y, x_379.z, x_379.z));
  let x_382 : vec4<f32> = u_xlat5;
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_382.x, x_382.y, x_382.z), vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_389 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_389);
  let x_392 : vec4<f32> = u_xlat0;
  let x_394 : vec4<f32> = u_xlat5;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.x, x_392.x) * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_397.y, x_396.y, x_396.z);
  let x_399 : vec4<f32> = u_xlat0;
  let x_401 : vec4<f32> = u_xlat3;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.z, x_399.w) * vec3<f32>(x_401.w, x_401.x, x_401.y));
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat3;
  let x_408 : vec4<f32> = u_xlat0;
  let x_411 : vec4<f32> = u_xlat4;
  let x_414 : vec3<f32> = ((vec3<f32>(x_406.y, x_406.w, x_406.x) * vec3<f32>(x_408.z, x_408.w, x_408.x)) + -(vec3<f32>(x_411.x, x_411.y, x_411.z)));
  let x_415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_419 : f32 = in_TANGENT0.w;
  let x_422 : f32 = x_183.unity_WorldTransformParams.w;
  u_xlat9.x = (x_419 * x_422);
  let x_425 : vec3<f32> = u_xlat9;
  let x_427 : vec4<f32> = u_xlat4;
  let x_429 : vec3<f32> = (vec3<f32>(x_425.x, x_425.x, x_425.x) * vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_434 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_434;
  let x_438 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_438;
  let x_441 : f32 = u_xlat0.w;
  vs_TEXCOORD0.x = x_441;
  let x_443 : f32 = u_xlat17;
  vs_TEXCOORD0.w = x_443;
  let x_445 : f32 = u_xlat17;
  let x_449 : vec4<f32> = x_183.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_445, x_445, x_445, x_445)) + x_449);
  let x_453 : f32 = u_xlat0.x;
  vs_TEXCOORD1.x = x_453;
  let x_456 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_456;
  let x_459 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_459;
  let x_463 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_463;
  let x_465 : f32 = u_xlat10;
  vs_TEXCOORD1.w = x_465;
  let x_467 : f32 = u_xlat10;
  let x_471 : vec4<f32> = x_183.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_467, x_467, x_467, x_467)) + x_471);
  let x_474 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_474;
  let x_477 : vec4<f32> = u_xlat0;
  let x_478 : vec2<f32> = vec2<f32>(x_477.z, x_477.y);
  let x_479 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_478.x, x_479.y, x_479.z, x_478.y);
  let x_481 : vec4<f32> = u_xlat0;
  let x_485 : vec4<f32> = x_183.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_481.y, x_481.y, x_481.y, x_481.y)) + x_485);
  let x_488 : vec4<f32> = in_COLOR0;
  u_xlat6 = (x_488 + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_493 : f32 = x_183.unity_ParticleUseMeshColors;
  let x_495 : vec4<f32> = u_xlat6;
  u_xlat6 = ((vec4<f32>(x_493, x_493, x_493, x_493) * x_495) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_503 : f32 = u_xlat2.w;
  u_xlatu9.x = (bitcast<u32>(x_503) & 255u);
  let x_509 : u32 = u_xlatu9.x;
  u_xlat7.x = f32(x_509);
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
  let x_539 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_539.x, x_538.x, x_538.y, x_538.z);
  let x_541 : vec4<f32> = u_xlat6;
  let x_542 : vec4<f32> = u_xlat7;
  u_xlat2 = (x_541 * x_542);
  let x_545 : vec4<f32> = u_xlat2;
  vs_COLOR0 = (x_545 * vec4<f32>(0.003921569f, 0.003921569f, 0.003921569f, 0.003921569f));
  let x_550 : f32 = u_xlat1.x;
  let x_552 : f32 = x_183.unity_ParticleUVShiftData.y;
  u_xlat9.x = (x_550 / x_552);
  let x_556 : f32 = u_xlat9.x;
  u_xlat9.x = floor(x_556);
  let x_560 : f32 = u_xlat9.x;
  let x_563 : f32 = x_183.unity_ParticleUVShiftData.y;
  let x_566 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_560) * x_563) + x_566);
  let x_570 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_570);
  let x_574 : f32 = u_xlat1.x;
  let x_576 : f32 = x_183.unity_ParticleUVShiftData.z;
  u_xlat2.x = (x_574 * x_576);
  let x_580 : f32 = x_183.unity_ParticleUVShiftData.w;
  u_xlat1.x = (-(x_580) + 1.0f);
  let x_585 : f32 = u_xlat9.x;
  let x_588 : f32 = x_183.unity_ParticleUVShiftData.w;
  let x_591 : f32 = u_xlat1.x;
  u_xlat2.y = ((-(x_585) * x_588) + x_591);
  let x_596 : vec2<f32> = in_TEXCOORD0;
  let x_598 : vec4<f32> = x_183.unity_ParticleUVShiftData;
  let x_601 : vec4<f32> = u_xlat2;
  let x_603 : vec2<f32> = ((x_596 * vec2<f32>(x_598.z, x_598.w)) + vec2<f32>(x_601.x, x_601.y));
  let x_604 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
  let x_610 : f32 = x_183.unity_ParticleUVShiftData.x;
  u_xlatb17 = !((x_610 == 0.0f));
  let x_613 : bool = u_xlatb17;
  if (x_613) {
    let x_618 : vec4<f32> = u_xlat1;
    x_615 = vec2<f32>(x_618.x, x_618.y);
  } else {
    let x_621 : vec2<f32> = in_TEXCOORD0;
    x_615 = x_621;
  }
  let x_622 : vec2<f32> = x_615;
  let x_623 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
  let x_627 : vec4<f32> = u_xlat1;
  let x_630 : vec4<f32> = x_183.x_MainTex_ST;
  let x_634 : vec4<f32> = x_183.x_MainTex_ST;
  vs_TEXCOORD3 = ((vec2<f32>(x_627.x, x_627.y) * vec2<f32>(x_630.x, x_630.y)) + vec2<f32>(x_634.z, x_634.w));
  let x_637 : vec4<f32> = u_xlat3;
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec4<f32>(x_637.y, x_637.y, x_637.y, x_637.y) * x_639);
  let x_641 : vec4<f32> = u_xlat4;
  let x_642 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_641 * x_642);
  let x_644 : vec4<f32> = u_xlat5;
  let x_645 : vec4<f32> = u_xlat5;
  let x_647 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_644 * x_645) + x_647);
  let x_649 : vec4<f32> = u_xlat5;
  let x_650 : vec4<f32> = u_xlat3;
  let x_653 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_649 * vec4<f32>(x_650.x, x_650.x, x_650.x, x_650.x)) + x_653);
  let x_655 : vec4<f32> = u_xlat0;
  let x_656 : vec4<f32> = u_xlat3;
  let x_659 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_655 * vec4<f32>(x_656.w, x_656.w, x_656.z, x_656.w)) + x_659);
  let x_661 : vec4<f32> = u_xlat0;
  let x_662 : vec4<f32> = u_xlat0;
  let x_664 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_661 * x_662) + x_664);
  let x_666 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_666, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_670 : vec4<f32> = u_xlat0;
  u_xlat2 = inverseSqrt(x_670);
  let x_672 : vec4<f32> = u_xlat0;
  let x_674 : vec4<f32> = x_183.unity_4LightAtten0;
  u_xlat0 = ((x_672 * x_674) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_677 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_677);
  let x_679 : vec4<f32> = u_xlat1;
  let x_680 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_679 * x_680);
  let x_682 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_682, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_685 : vec4<f32> = u_xlat0;
  let x_686 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_685 * x_686);
  let x_688 : vec4<f32> = u_xlat0;
  let x_691 : vec4<f32> = x_183.unity_LightColor[1i];
  let x_693 : vec3<f32> = (vec3<f32>(x_688.y, x_688.y, x_688.y) * vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_697 : vec4<f32> = x_183.unity_LightColor[0i];
  let x_699 : vec4<f32> = u_xlat0;
  let x_702 : vec4<f32> = u_xlat1;
  let x_704 : vec3<f32> = ((vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_699.x, x_699.x, x_699.x)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_708 : vec4<f32> = x_183.unity_LightColor[2i];
  let x_710 : vec4<f32> = u_xlat0;
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec3<f32> = ((vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(x_710.z, x_710.z, x_710.z)) + vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_719 : vec4<f32> = x_183.unity_LightColor[3i];
  let x_721 : vec4<f32> = u_xlat0;
  let x_724 : vec4<f32> = u_xlat0;
  let x_726 : vec3<f32> = ((vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_721.w, x_721.w, x_721.w)) + vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_731 : f32 = u_xlat3.y;
  let x_733 : f32 = u_xlat3.y;
  u_xlat24 = (x_731 * x_733);
  let x_736 : f32 = u_xlat3.x;
  let x_738 : f32 = u_xlat3.x;
  let x_740 : f32 = u_xlat24;
  u_xlat24 = ((x_736 * x_738) + -(x_740));
  let x_743 : vec4<f32> = u_xlat3;
  let x_745 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_743.y, x_743.w, x_743.z, x_743.x) * x_745);
  let x_748 : vec4<f32> = x_183.unity_SHBr;
  let x_749 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_748, x_749);
  let x_753 : vec4<f32> = x_183.unity_SHBg;
  let x_754 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_753, x_754);
  let x_758 : vec4<f32> = x_183.unity_SHBb;
  let x_759 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_758, x_759);
  let x_763 : vec4<f32> = x_183.unity_SHC;
  let x_765 : f32 = u_xlat24;
  let x_768 : vec4<f32> = u_xlat2;
  let x_770 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(x_765, x_765, x_765)) + vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_775 : vec4<f32> = u_xlat0;
  let x_777 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_775.x, x_775.y, x_775.z) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_784 : i32 = gl_InstanceIndex;
  vs_SV_InstanceID0 = bitcast<u32>(x_784);
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD3, vs_TEXCOORD4);
}

