struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat18 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb20 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat21 : f32;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_144 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_39 : vec3<f32> = vs_TEXCOORD0;
  let x_40 : vec3<f32> = u_xlat1;
  u_xlat19 = dot(x_39, x_40);
  let x_42 : f32 = u_xlat19;
  u_xlat19 = log2(x_42);
  let x_44 : f32 = u_xlat19;
  u_xlat19 = (x_44 * 0.100000001f);
  let x_47 : f32 = u_xlat19;
  u_xlat19 = exp2(x_47);
  let x_49 : f32 = u_xlat19;
  u_xlat19 = (-(x_49) + 1.0f);
  let x_53 : f32 = u_xlat19;
  u_xlat19 = max(x_53, 0.0f);
  let x_57 : f32 = u_xlat19;
  let x_62 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (vec3<f32>(x_57, x_57, x_57) * vec3<f32>(x_62.x, x_62.y, x_62.z));
  let x_70 : f32 = x_18.x_Time.x;
  u_xlat19 = (x_70 * 200.0f);
  let x_73 : f32 = u_xlat19;
  u_xlat19 = sin(x_73);
  let x_75 : f32 = u_xlat19;
  u_xlat19 = (x_75 + 1.0f);
  let x_77 : f32 = u_xlat19;
  u_xlat19 = (x_77 * 0.5f);
  let x_81 : f32 = u_xlat19;
  let x_83 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_81, x_81, x_81) * x_83);
  let x_90 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb20 = (x_90 == 1.0f);
  let x_92 : bool = u_xlatb20;
  if (x_92) {
    let x_97 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb20 = (x_97 == 1.0f);
    let x_101 : vec3<f32> = vs_TEXCOORD1;
    let x_105 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_107 : vec3<f32> = (vec3<f32>(x_101.y, x_101.y, x_101.y) * vec3<f32>(x_105.x, x_105.y, x_105.z));
    let x_108 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
    let x_111 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_113 : vec3<f32> = vs_TEXCOORD1;
    let x_116 : vec4<f32> = u_xlat4;
    let x_118 : vec3<f32> = ((vec3<f32>(x_111.x, x_111.y, x_111.z) * vec3<f32>(x_113.x, x_113.x, x_113.x)) + vec3<f32>(x_116.x, x_116.y, x_116.z));
    let x_119 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
    let x_123 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_125 : vec3<f32> = vs_TEXCOORD1;
    let x_128 : vec4<f32> = u_xlat4;
    let x_130 : vec3<f32> = ((vec3<f32>(x_123.x, x_123.y, x_123.z) * vec3<f32>(x_125.z, x_125.z, x_125.z)) + vec3<f32>(x_128.x, x_128.y, x_128.z));
    let x_131 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
    let x_133 : vec4<f32> = u_xlat4;
    let x_137 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_139 : vec3<f32> = (vec3<f32>(x_133.x, x_133.y, x_133.z) + vec3<f32>(x_137.x, x_137.y, x_137.z));
    let x_140 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
    let x_142 : bool = u_xlatb20;
    if (x_142) {
      let x_147 : vec4<f32> = u_xlat4;
      x_144 = vec3<f32>(x_147.x, x_147.y, x_147.z);
    } else {
      let x_150 : vec3<f32> = vs_TEXCOORD1;
      x_144 = x_150;
    }
    let x_151 : vec3<f32> = x_144;
    let x_152 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
    let x_154 : vec4<f32> = u_xlat4;
    let x_158 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_160 : vec3<f32> = (vec3<f32>(x_154.x, x_154.y, x_154.z) + -(x_158));
    let x_161 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : vec4<f32> = u_xlat4;
    let x_167 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_168 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) * x_167);
    let x_169 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_169.x, x_168.x, x_168.y, x_168.z);
    let x_173 : f32 = u_xlat4.y;
    u_xlat20 = ((x_173 * 0.25f) + 0.75f);
    let x_181 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_181 * 0.5f) + 0.75f);
    let x_184 : f32 = u_xlat20;
    let x_185 : f32 = u_xlat21;
    u_xlat4.x = max(x_184, x_185);
    let x_198 : vec4<f32> = u_xlat4;
    let x_200 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_198.x, x_198.z, x_198.w));
    u_xlat4 = x_200;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_207 : vec4<f32> = u_xlat4;
  let x_209 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat20 = dot(x_207, x_209);
  let x_211 : f32 = u_xlat20;
  u_xlat20 = clamp(x_211, 0.0f, 1.0f);
  let x_213 : f32 = u_xlat20;
  let x_217 : vec4<f32> = x_18.x_LightColor0;
  let x_219 : vec3<f32> = (vec3<f32>(x_213, x_213, x_213) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec3<f32> = vs_TEXCOORD0;
  let x_223 : vec3<f32> = vs_TEXCOORD0;
  u_xlat20 = dot(x_222, x_223);
  let x_225 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_225);
  let x_228 : f32 = u_xlat20;
  let x_230 : vec3<f32> = vs_TEXCOORD0;
  u_xlat5 = (vec3<f32>(x_228, x_228, x_228) * x_230);
  let x_232 : vec3<f32> = u_xlat2;
  let x_233 : f32 = u_xlat19;
  u_xlat2 = ((x_232 * vec3<f32>(x_233, x_233, x_233)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_241 : f32 = x_18.x_Metallic;
  let x_243 : f32 = x_18.x_Metallic;
  let x_245 : f32 = x_18.x_Metallic;
  let x_246 : vec3<f32> = vec3<f32>(x_241, x_243, x_245);
  let x_251 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * x_251) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_257 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_257) * 0.959999979f) + 0.959999979f);
  let x_262 : f32 = u_xlat19;
  let x_264 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_262, x_262, x_262) * x_264);
  let x_268 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_268) + 1.0f);
  let x_271 : vec3<f32> = u_xlat0;
  let x_272 : f32 = u_xlat18;
  let x_276 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_271 * vec3<f32>(x_272, x_272, x_272)) + vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec3<f32> = u_xlat0;
  let x_280 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_279, x_280);
  let x_282 : f32 = u_xlat18;
  u_xlat18 = max(x_282, 0.001f);
  let x_285 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_285);
  let x_287 : f32 = u_xlat18;
  let x_289 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_287, x_287, x_287) * x_289);
  let x_291 : vec3<f32> = u_xlat5;
  let x_292 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_291, x_292);
  let x_294 : vec3<f32> = u_xlat5;
  let x_296 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_294, vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_301 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_301, 0.0f, 1.0f);
  let x_305 : vec3<f32> = u_xlat5;
  let x_306 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_305, x_306);
  let x_308 : f32 = u_xlat7;
  u_xlat7 = clamp(x_308, 0.0f, 1.0f);
  let x_311 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_313 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_311.x, x_311.y, x_311.z), x_313);
  let x_317 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_317, 0.0f, 1.0f);
  let x_322 : f32 = u_xlat0.x;
  let x_324 : f32 = u_xlat0.x;
  u_xlat6.x = (x_322 * x_324);
  let x_328 : vec3<f32> = u_xlat6;
  let x_330 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_328.x, x_328.x), vec2<f32>(x_330, x_330));
  let x_335 : f32 = u_xlat6.x;
  u_xlat6.x = (x_335 + -0.5f);
  let x_341 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_341) + 1.0f);
  let x_345 : f32 = u_xlat12;
  let x_346 : f32 = u_xlat12;
  u_xlat13 = (x_345 * x_346);
  let x_348 : f32 = u_xlat13;
  let x_349 : f32 = u_xlat13;
  u_xlat13 = (x_348 * x_349);
  let x_351 : f32 = u_xlat12;
  let x_352 : f32 = u_xlat13;
  u_xlat12 = (x_351 * x_352);
  let x_355 : f32 = u_xlat6.x;
  let x_356 : f32 = u_xlat12;
  u_xlat12 = ((x_355 * x_356) + 1.0f);
  let x_359 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_359)) + 1.0f);
  let x_363 : f32 = u_xlat13;
  let x_364 : f32 = u_xlat13;
  u_xlat20 = (x_363 * x_364);
  let x_366 : f32 = u_xlat20;
  let x_367 : f32 = u_xlat20;
  u_xlat20 = (x_366 * x_367);
  let x_369 : f32 = u_xlat13;
  let x_370 : f32 = u_xlat20;
  u_xlat13 = (x_369 * x_370);
  let x_373 : f32 = u_xlat6.x;
  let x_374 : f32 = u_xlat13;
  u_xlat6.x = ((x_373 * x_374) + 1.0f);
  let x_379 : f32 = u_xlat6.x;
  let x_380 : f32 = u_xlat12;
  u_xlat6.x = (x_379 * x_380);
  let x_383 : f32 = u_xlat19;
  let x_384 : f32 = u_xlat19;
  u_xlat12 = (x_383 * x_384);
  let x_386 : f32 = u_xlat12;
  u_xlat12 = max(x_386, 0.002f);
  let x_389 : f32 = u_xlat12;
  u_xlat13 = (-(x_389) + 1.0f);
  let x_392 : f32 = u_xlat18;
  let x_394 : f32 = u_xlat13;
  let x_396 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_392) * x_394) + x_396);
  let x_399 : f32 = u_xlat1.x;
  let x_400 : f32 = u_xlat13;
  let x_402 : f32 = u_xlat12;
  u_xlat13 = ((x_399 * x_400) + x_402);
  let x_404 : f32 = u_xlat18;
  let x_406 : f32 = u_xlat13;
  u_xlat18 = (abs(x_404) * x_406);
  let x_409 : f32 = u_xlat1.x;
  let x_410 : f32 = u_xlat19;
  let x_412 : f32 = u_xlat18;
  u_xlat18 = ((x_409 * x_410) + x_412);
  let x_414 : f32 = u_xlat18;
  u_xlat18 = (x_414 + 0.00001f);
  let x_417 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_417);
  let x_419 : f32 = u_xlat12;
  let x_420 : f32 = u_xlat12;
  u_xlat12 = (x_419 * x_420);
  let x_422 : f32 = u_xlat7;
  let x_423 : f32 = u_xlat12;
  let x_425 : f32 = u_xlat7;
  u_xlat13 = ((x_422 * x_423) + -(x_425));
  let x_428 : f32 = u_xlat13;
  let x_429 : f32 = u_xlat7;
  u_xlat7 = ((x_428 * x_429) + 1.0f);
  let x_432 : f32 = u_xlat12;
  u_xlat12 = (x_432 * 0.318309873f);
  let x_435 : f32 = u_xlat7;
  let x_436 : f32 = u_xlat7;
  u_xlat7 = ((x_435 * x_436) + 0.0000001f);
  let x_440 : f32 = u_xlat12;
  let x_441 : f32 = u_xlat7;
  u_xlat12 = (x_440 / x_441);
  let x_443 : f32 = u_xlat12;
  let x_444 : f32 = u_xlat18;
  u_xlat6.y = (x_443 * x_444);
  let x_447 : vec3<f32> = u_xlat1;
  let x_449 : vec3<f32> = u_xlat6;
  let x_451 : vec2<f32> = (vec2<f32>(x_447.x, x_447.x) * vec2<f32>(x_449.x, x_449.y));
  let x_452 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_451.x, x_451.y, x_452.z);
  let x_455 : f32 = u_xlat6.y;
  u_xlat12 = (x_455 * 3.141592741f);
  let x_458 : f32 = u_xlat12;
  u_xlat12 = max(x_458, 0.0f);
  let x_460 : vec3<f32> = u_xlat2;
  let x_461 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_460, x_461);
  let x_464 : f32 = u_xlat18;
  u_xlatb18 = !((x_464 == 0.0f));
  let x_466 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_466);
  let x_468 : f32 = u_xlat18;
  let x_469 : f32 = u_xlat12;
  u_xlat12 = (x_468 * x_469);
  let x_471 : vec3<f32> = u_xlat6;
  let x_473 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_471.x, x_471.x, x_471.x) * vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_478, x_478, x_478));
  let x_482 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_482) + 1.0f);
  let x_487 : f32 = u_xlat0.x;
  let x_489 : f32 = u_xlat0.x;
  u_xlat19 = (x_487 * x_489);
  let x_491 : f32 = u_xlat19;
  let x_492 : f32 = u_xlat19;
  u_xlat19 = (x_491 * x_492);
  let x_495 : f32 = u_xlat0.x;
  let x_496 : f32 = u_xlat19;
  u_xlat0.x = (x_495 * x_496);
  let x_499 : vec3<f32> = u_xlat2;
  let x_502 : vec3<f32> = (-(x_499) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_503 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : vec4<f32> = u_xlat4;
  let x_507 : vec3<f32> = u_xlat0;
  let x_510 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(x_507.x, x_507.x, x_507.x)) + x_510);
  let x_512 : vec3<f32> = u_xlat6;
  let x_513 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_512 * x_513);
  let x_517 : vec3<f32> = u_xlat3;
  let x_518 : vec3<f32> = u_xlat1;
  let x_520 : vec3<f32> = u_xlat0;
  let x_521 : vec3<f32> = ((x_517 * x_518) + x_520);
  let x_522 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

