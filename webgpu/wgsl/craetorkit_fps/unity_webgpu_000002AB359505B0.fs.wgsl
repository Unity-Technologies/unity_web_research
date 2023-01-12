struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(6) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_NormalMap : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var x_169 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_60);
  let x_62 : vec2<f32> = vec2<f32>(x_61.x, x_61.w);
  let x_63 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_62.x, x_62.y, x_63.z);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_71);
  u_xlat4 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_77 : f32 = u_xlat4.z;
  let x_80 : f32 = u_xlat4.x;
  u_xlat4.x = (x_77 * x_80);
  let x_83 : vec3<f32> = u_xlat4;
  let x_90 : vec2<f32> = ((vec2<f32>(x_83.x, x_83.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_90.x, x_90.y, x_91.z);
  let x_94 : vec3<f32> = u_xlat4;
  let x_96 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(vec2<f32>(x_94.x, x_94.y), vec2<f32>(x_96.x, x_96.y));
  let x_99 : f32 = u_xlat22;
  u_xlat22 = min(x_99, 1.0f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = (-(x_102) + 1.0f);
  let x_105 : f32 = u_xlat22;
  u_xlat4.z = sqrt(x_105);
  let x_114 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_114 == 1.0f);
  let x_116 : bool = u_xlatb22;
  if (x_116) {
    let x_121 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_121 == 1.0f);
    let x_125 : vec3<f32> = vs_TEXCOORD4;
    let x_131 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_133 : vec3<f32> = (vec3<f32>(x_125.y, x_125.y, x_125.y) * vec3<f32>(x_131.x, x_131.y, x_131.z));
    let x_134 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
    let x_137 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_139 : vec3<f32> = vs_TEXCOORD4;
    let x_142 : vec4<f32> = u_xlat5;
    let x_144 : vec3<f32> = ((vec3<f32>(x_137.x, x_137.y, x_137.z) * vec3<f32>(x_139.x, x_139.x, x_139.x)) + vec3<f32>(x_142.x, x_142.y, x_142.z));
    let x_145 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
    let x_149 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_151 : vec3<f32> = vs_TEXCOORD4;
    let x_154 : vec4<f32> = u_xlat5;
    let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.z, x_151.z, x_151.z)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
    let x_157 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
    let x_159 : vec4<f32> = u_xlat5;
    let x_163 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_165 : vec3<f32> = (vec3<f32>(x_159.x, x_159.y, x_159.z) + vec3<f32>(x_163.x, x_163.y, x_163.z));
    let x_166 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
    let x_168 : bool = u_xlatb22;
    if (x_168) {
      let x_172 : vec4<f32> = u_xlat5;
      x_169 = vec3<f32>(x_172.x, x_172.y, x_172.z);
    } else {
      let x_175 : vec3<f32> = vs_TEXCOORD4;
      x_169 = x_175;
    }
    let x_176 : vec3<f32> = x_169;
    let x_177 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_179 : vec4<f32> = u_xlat5;
    let x_183 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_185 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) + -(x_183));
    let x_186 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
    let x_188 : vec4<f32> = u_xlat5;
    let x_192 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_193 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) * x_192);
    let x_194 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_194.x, x_193.x, x_193.y, x_193.z);
    let x_197 : f32 = u_xlat5.y;
    u_xlat22 = ((x_197 * 0.25f) + 0.75f);
    let x_204 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_204 * 0.5f) + 0.75f);
    let x_208 : f32 = u_xlat22;
    let x_209 : f32 = u_xlat23;
    u_xlat5.x = max(x_208, x_209);
    let x_220 : vec4<f32> = u_xlat5;
    let x_222 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_220.x, x_220.z, x_220.w));
    u_xlat5 = x_222;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_229 : vec4<f32> = u_xlat5;
  let x_231 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_229, x_231);
  let x_233 : f32 = u_xlat22;
  u_xlat22 = clamp(x_233, 0.0f, 1.0f);
  let x_237 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_237, x_238);
  let x_242 : vec3<f32> = vs_TEXCOORD2;
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_242, x_243);
  let x_247 : vec3<f32> = vs_TEXCOORD3;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_247, x_248);
  let x_251 : vec4<f32> = u_xlat5;
  let x_253 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_256);
  let x_258 : f32 = u_xlat23;
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_258, x_258, x_258) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : f32 = u_xlat22;
  let x_267 : vec4<f32> = x_18.x_LightColor0;
  let x_269 : vec3<f32> = (vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec3<f32> = u_xlat2;
  u_xlat6 = (x_273 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_277 : vec3<f32> = u_xlat3;
  let x_279 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_277.x, x_277.x, x_277.x) * x_279) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_285 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_285) * 0.959999979f) + 0.959999979f);
  let x_290 : f32 = u_xlat22;
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_290, x_290, x_290) * x_292);
  let x_295 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_295) + 1.0f);
  let x_298 : vec3<f32> = u_xlat0;
  let x_299 : f32 = u_xlat21;
  let x_303 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_298 * vec3<f32>(x_299, x_299, x_299)) + vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec3<f32> = u_xlat0;
  let x_307 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_306, x_307);
  let x_309 : f32 = u_xlat21;
  u_xlat21 = max(x_309, 0.001f);
  let x_312 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_312);
  let x_314 : f32 = u_xlat21;
  let x_316 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_314, x_314, x_314) * x_316);
  let x_318 : vec3<f32> = u_xlat4;
  let x_319 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_318, x_319);
  let x_321 : vec3<f32> = u_xlat4;
  let x_323 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_321, vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_328 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_328, 0.0f, 1.0f);
  let x_332 : vec3<f32> = u_xlat4;
  let x_333 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_332, x_333);
  let x_335 : f32 = u_xlat8;
  u_xlat8 = clamp(x_335, 0.0f, 1.0f);
  let x_338 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_340 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_338.x, x_338.y, x_338.z), x_340);
  let x_344 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_344, 0.0f, 1.0f);
  let x_349 : f32 = u_xlat0.x;
  let x_351 : f32 = u_xlat0.x;
  u_xlat7.x = (x_349 * x_351);
  let x_354 : vec3<f32> = u_xlat7;
  let x_356 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_354.x, x_354.x), vec2<f32>(x_356, x_356));
  let x_361 : f32 = u_xlat7.x;
  u_xlat7.x = (x_361 + -0.5f);
  let x_367 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_367) + 1.0f);
  let x_371 : f32 = u_xlat14;
  let x_372 : f32 = u_xlat14;
  u_xlat15 = (x_371 * x_372);
  let x_374 : f32 = u_xlat15;
  let x_375 : f32 = u_xlat15;
  u_xlat15 = (x_374 * x_375);
  let x_377 : f32 = u_xlat14;
  let x_378 : f32 = u_xlat15;
  u_xlat14 = (x_377 * x_378);
  let x_381 : f32 = u_xlat7.x;
  let x_382 : f32 = u_xlat14;
  u_xlat14 = ((x_381 * x_382) + 1.0f);
  let x_385 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_385)) + 1.0f);
  let x_389 : f32 = u_xlat15;
  let x_390 : f32 = u_xlat15;
  u_xlat23 = (x_389 * x_390);
  let x_392 : f32 = u_xlat23;
  let x_393 : f32 = u_xlat23;
  u_xlat23 = (x_392 * x_393);
  let x_395 : f32 = u_xlat15;
  let x_396 : f32 = u_xlat23;
  u_xlat15 = (x_395 * x_396);
  let x_399 : f32 = u_xlat7.x;
  let x_400 : f32 = u_xlat15;
  u_xlat7.x = ((x_399 * x_400) + 1.0f);
  let x_405 : f32 = u_xlat7.x;
  let x_406 : f32 = u_xlat14;
  u_xlat7.x = (x_405 * x_406);
  let x_409 : f32 = u_xlat22;
  let x_410 : f32 = u_xlat22;
  u_xlat14 = (x_409 * x_410);
  let x_412 : f32 = u_xlat14;
  u_xlat14 = max(x_412, 0.002f);
  let x_415 : f32 = u_xlat14;
  u_xlat15 = (-(x_415) + 1.0f);
  let x_418 : f32 = u_xlat21;
  let x_420 : f32 = u_xlat15;
  let x_422 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_418) * x_420) + x_422);
  let x_425 : f32 = u_xlat1.x;
  let x_426 : f32 = u_xlat15;
  let x_428 : f32 = u_xlat14;
  u_xlat15 = ((x_425 * x_426) + x_428);
  let x_430 : f32 = u_xlat21;
  let x_432 : f32 = u_xlat15;
  u_xlat21 = (abs(x_430) * x_432);
  let x_435 : f32 = u_xlat1.x;
  let x_436 : f32 = u_xlat22;
  let x_438 : f32 = u_xlat21;
  u_xlat21 = ((x_435 * x_436) + x_438);
  let x_440 : f32 = u_xlat21;
  u_xlat21 = (x_440 + 0.00001f);
  let x_443 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_443);
  let x_445 : f32 = u_xlat14;
  let x_446 : f32 = u_xlat14;
  u_xlat14 = (x_445 * x_446);
  let x_448 : f32 = u_xlat8;
  let x_449 : f32 = u_xlat14;
  let x_451 : f32 = u_xlat8;
  u_xlat15 = ((x_448 * x_449) + -(x_451));
  let x_454 : f32 = u_xlat15;
  let x_455 : f32 = u_xlat8;
  u_xlat8 = ((x_454 * x_455) + 1.0f);
  let x_458 : f32 = u_xlat14;
  u_xlat14 = (x_458 * 0.318309873f);
  let x_461 : f32 = u_xlat8;
  let x_462 : f32 = u_xlat8;
  u_xlat8 = ((x_461 * x_462) + 0.0000001f);
  let x_466 : f32 = u_xlat14;
  let x_467 : f32 = u_xlat8;
  u_xlat14 = (x_466 / x_467);
  let x_469 : f32 = u_xlat14;
  let x_470 : f32 = u_xlat21;
  u_xlat7.y = (x_469 * x_470);
  let x_473 : vec3<f32> = u_xlat1;
  let x_475 : vec3<f32> = u_xlat7;
  let x_477 : vec2<f32> = (vec2<f32>(x_473.x, x_473.x) * vec2<f32>(x_475.x, x_475.y));
  let x_478 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_477.x, x_477.y, x_478.z);
  let x_481 : f32 = u_xlat7.y;
  u_xlat14 = (x_481 * 3.141592741f);
  let x_484 : f32 = u_xlat14;
  u_xlat14 = max(x_484, 0.0f);
  let x_486 : vec3<f32> = u_xlat6;
  let x_487 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_486, x_487);
  let x_490 : f32 = u_xlat21;
  u_xlatb21 = !((x_490 == 0.0f));
  let x_492 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_492);
  let x_494 : f32 = u_xlat21;
  let x_495 : f32 = u_xlat14;
  u_xlat14 = (x_494 * x_495);
  let x_497 : vec3<f32> = u_xlat7;
  let x_499 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_497.x, x_497.x, x_497.x) * vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat5;
  let x_504 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_504, x_504, x_504));
  let x_508 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_508) + 1.0f);
  let x_513 : f32 = u_xlat0.x;
  let x_515 : f32 = u_xlat0.x;
  u_xlat22 = (x_513 * x_515);
  let x_517 : f32 = u_xlat22;
  let x_518 : f32 = u_xlat22;
  u_xlat22 = (x_517 * x_518);
  let x_521 : f32 = u_xlat0.x;
  let x_522 : f32 = u_xlat22;
  u_xlat0.x = (x_521 * x_522);
  let x_525 : vec3<f32> = u_xlat6;
  u_xlat3 = (-(x_525) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_529 : vec3<f32> = u_xlat3;
  let x_530 : vec3<f32> = u_xlat0;
  let x_533 : vec3<f32> = u_xlat6;
  u_xlat3 = ((x_529 * vec3<f32>(x_530.x, x_530.x, x_530.x)) + x_533);
  let x_535 : vec3<f32> = u_xlat7;
  let x_536 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_535 * x_536);
  let x_538 : vec3<f32> = u_xlat2;
  let x_539 : vec3<f32> = u_xlat1;
  let x_541 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_538 * x_539) + x_541);
  let x_545 : f32 = vs_TEXCOORD7;
  let x_547 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_545 / x_547);
  let x_549 : f32 = u_xlat21;
  u_xlat21 = (-(x_549) + 1.0f);
  let x_552 : f32 = u_xlat21;
  let x_554 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_552 * x_554);
  let x_556 : f32 = u_xlat21;
  u_xlat21 = max(x_556, 0.0f);
  let x_558 : f32 = u_xlat21;
  let x_561 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_558 * x_561);
  let x_563 : f32 = u_xlat21;
  let x_564 : f32 = u_xlat21;
  u_xlat21 = (x_563 * -(x_564));
  let x_567 : f32 = u_xlat21;
  u_xlat21 = exp2(x_567);
  let x_571 : vec3<f32> = u_xlat0;
  let x_572 : f32 = u_xlat21;
  let x_574 : vec3<f32> = (x_571 * vec3<f32>(x_572, x_572, x_572));
  let x_575 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD7_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

