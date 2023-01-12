struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(7) var sampler_Gradient : sampler;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlat9 : vec3<f32>;
  var x_262 : vec3<f32>;
  var u_xlat24 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD2;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat22;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_65 : f32 = vs_TEXCOORD3;
  u_xlat22 = (x_65 + -1.0f);
  let x_68 : f32 = u_xlat22;
  u_xlat22 = (x_68 * -9.999998093f);
  let x_71 : f32 = u_xlat22;
  u_xlat22 = clamp(x_71, 0.0f, 1.0f);
  let x_76 : f32 = u_xlat22;
  let x_82 : vec2<f32> = vs_TEXCOORD0;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_76, x_76)) + x_82);
  let x_84 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_83.x, x_83.y, x_84.z);
  let x_96 : vec3<f32> = u_xlat4;
  let x_98 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_96.x, x_96.y));
  u_xlat22 = x_98.x;
  let x_106 : vec2<f32> = vs_TEXCOORD0;
  let x_107 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_106);
  u_xlat23 = x_107.z;
  let x_110 : f32 = u_xlat22;
  u_xlat22 = ((x_110 * -2.0f) + 1.0f);
  let x_114 : f32 = u_xlat23;
  let x_116 : f32 = u_xlat22;
  u_xlat22 = (-(x_114) + x_116);
  let x_121 : f32 = u_xlat22;
  u_xlatb22 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb22;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_131 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_131.y, x_131.y, x_131.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  let x_144 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
  let x_148 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_153 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.z, x_150.z, x_150.z)) + x_153);
  let x_155 : vec3<f32> = u_xlat4;
  let x_158 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat4 = (x_155 + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_165 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat5.x = x_165;
  let x_168 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat5.y = x_168;
  let x_172 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat5.z = x_172;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), x_176);
  let x_178 : vec3<f32> = vs_TEXCOORD2;
  let x_181 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_184 : vec3<f32> = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_194 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_194);
  let x_197 : f32 = u_xlat22;
  let x_200 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_197) + x_200);
  let x_205 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_207 : f32 = u_xlat2.x;
  let x_209 : f32 = u_xlat22;
  u_xlat22 = ((x_205 * x_207) + x_209);
  let x_211 : f32 = u_xlat22;
  let x_214 : f32 = x_18.x_LightShadowData.z;
  let x_217 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_211 * x_214) + x_217);
  let x_219 : f32 = u_xlat22;
  u_xlat22 = clamp(x_219, 0.0f, 1.0f);
  let x_224 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_224 == 1.0f);
  let x_226 : bool = u_xlatb2;
  if (x_226) {
    let x_230 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_230 == 1.0f);
    let x_233 : vec3<f32> = vs_TEXCOORD2;
    let x_237 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat9 = (vec3<f32>(x_233.y, x_233.y, x_233.y) * vec3<f32>(x_237.x, x_237.y, x_237.z));
    let x_241 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_243 : vec3<f32> = vs_TEXCOORD2;
    let x_246 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_241.x, x_241.y, x_241.z) * vec3<f32>(x_243.x, x_243.x, x_243.x)) + x_246);
    let x_249 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_251 : vec3<f32> = vs_TEXCOORD2;
    let x_254 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251.z, x_251.z, x_251.z)) + x_254);
    let x_256 : vec3<f32> = u_xlat9;
    let x_258 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat9 = (x_256 + vec3<f32>(x_258.x, x_258.y, x_258.z));
    let x_261 : bool = u_xlatb2;
    if (x_261) {
      let x_265 : vec3<f32> = u_xlat9;
      x_262 = x_265;
    } else {
      let x_267 : vec3<f32> = vs_TEXCOORD2;
      x_262 = x_267;
    }
    let x_268 : vec3<f32> = x_262;
    let x_269 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat2;
    let x_275 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + -(x_275));
    let x_278 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat2;
    let x_284 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_285 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) * x_284);
    let x_286 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_286.x, x_285.x, x_285.y, x_285.z);
    let x_289 : f32 = u_xlat2.y;
    u_xlat9.x = ((x_289 * 0.25f) + 0.75f);
    let x_297 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_297 * 0.5f) + 0.75f);
    let x_302 : f32 = u_xlat9.x;
    let x_303 : f32 = u_xlat24;
    u_xlat2.x = max(x_302, x_303);
    let x_314 : vec4<f32> = u_xlat2;
    let x_316 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_314.x, x_314.z, x_314.w));
    u_xlat2 = x_316;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_322 : vec4<f32> = u_xlat2;
  let x_325 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_322, x_325);
  let x_329 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_329, 0.0f, 1.0f);
  let x_332 : vec3<f32> = vs_TEXCOORD2;
  let x_334 : vec4<f32> = x_18.x_LightPositionRange;
  u_xlat9 = (x_332 + -(vec3<f32>(x_334.x, x_334.y, x_334.z)));
  let x_339 : f32 = u_xlat9.y;
  let x_342 : f32 = u_xlat9.x;
  u_xlat24 = max(abs(x_339), abs(x_342));
  let x_346 : f32 = u_xlat9.z;
  let x_348 : f32 = u_xlat24;
  u_xlat24 = max(abs(x_346), x_348);
  let x_350 : f32 = u_xlat24;
  let x_352 : f32 = x_18.x_LightProjectionParams.z;
  u_xlat24 = (x_350 + -(x_352));
  let x_355 : f32 = u_xlat24;
  u_xlat24 = max(x_355, 0.00001f);
  let x_358 : f32 = u_xlat24;
  let x_360 : f32 = x_18.x_LightProjectionParams.w;
  u_xlat24 = (x_358 * x_360);
  let x_363 : f32 = x_18.x_LightProjectionParams.y;
  let x_364 : f32 = u_xlat24;
  u_xlat24 = (x_363 / x_364);
  let x_366 : f32 = u_xlat24;
  let x_368 : f32 = x_18.x_LightProjectionParams.x;
  u_xlat24 = (x_366 + -(x_368));
  let x_371 : f32 = u_xlat24;
  u_xlat24 = (-(x_371) + 1.0f);
  let x_375 : vec3<f32> = u_xlat9;
  let x_376 : f32 = u_xlat24;
  txVec0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376);
  let x_389 : vec4<f32> = txVec0;
  let x_391 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_389.xyz, x_389.w);
  u_xlat9.x = x_391;
  let x_395 : f32 = x_18.x_LightShadowData.x;
  u_xlat16 = (-(x_395) + 1.0f);
  let x_399 : f32 = u_xlat9.x;
  let x_400 : f32 = u_xlat16;
  let x_403 : f32 = x_18.x_LightShadowData.x;
  u_xlat9.x = ((x_399 * x_400) + x_403);
  let x_407 : f32 = u_xlat9.x;
  let x_410 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_407) + x_410);
  let x_413 : f32 = u_xlat22;
  let x_415 : f32 = u_xlat2.x;
  let x_418 : f32 = u_xlat9.x;
  u_xlat22 = ((x_413 * x_415) + x_418);
  let x_420 : vec3<f32> = u_xlat4;
  let x_421 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(x_420, x_421);
  let x_429 : vec4<f32> = u_xlat2;
  let x_431 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_429.x, x_429.x));
  u_xlat2.x = x_431.x;
  let x_434 : f32 = u_xlat22;
  let x_436 : f32 = u_xlat2.x;
  u_xlat22 = (x_434 * x_436);
  let x_438 : f32 = u_xlat22;
  let x_442 : vec4<f32> = x_18.x_LightColor0;
  let x_444 : vec3<f32> = (vec3<f32>(x_438, x_438, x_438) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_448 : vec3<f32> = vs_TEXCOORD1;
  let x_449 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_448, x_449);
  let x_451 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_451);
  let x_453 : f32 = u_xlat22;
  let x_455 : vec3<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_453, x_453, x_453) * x_455);
  let x_459 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_459.x, x_459.y, x_459.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_466 : f32 = x_18.x_Metallic;
  let x_468 : f32 = x_18.x_Metallic;
  let x_470 : f32 = x_18.x_Metallic;
  let x_471 : vec3<f32> = vec3<f32>(x_466, x_468, x_470);
  let x_476 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_471.x, x_471.y, x_471.z) * x_476) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_482 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_482) * 0.959999979f) + 0.959999979f);
  let x_488 : f32 = u_xlat22;
  let x_491 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (vec3<f32>(x_488, x_488, x_488) * vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_496 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_496) + 1.0f);
  let x_499 : vec3<f32> = u_xlat0;
  let x_500 : f32 = u_xlat21;
  let x_503 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_499 * vec3<f32>(x_500, x_500, x_500)) + x_503);
  let x_505 : vec3<f32> = u_xlat0;
  let x_506 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_505, x_506);
  let x_508 : f32 = u_xlat21;
  u_xlat21 = max(x_508, 0.001f);
  let x_511 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_511);
  let x_513 : f32 = u_xlat21;
  let x_515 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_513, x_513, x_513) * x_515);
  let x_517 : vec3<f32> = u_xlat4;
  let x_518 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_517, x_518);
  let x_520 : vec3<f32> = u_xlat4;
  let x_521 : vec3<f32> = u_xlat1;
  u_xlat23 = dot(x_520, x_521);
  let x_523 : f32 = u_xlat23;
  u_xlat23 = clamp(x_523, 0.0f, 1.0f);
  let x_525 : vec3<f32> = u_xlat4;
  let x_526 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(x_525, x_526);
  let x_530 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_530, 0.0f, 1.0f);
  let x_533 : vec3<f32> = u_xlat1;
  let x_534 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_533, x_534);
  let x_538 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_538, 0.0f, 1.0f);
  let x_543 : f32 = u_xlat0.x;
  let x_545 : f32 = u_xlat0.x;
  u_xlat7.x = (x_543 * x_545);
  let x_548 : vec3<f32> = u_xlat7;
  let x_550 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_548.x, x_548.x), vec2<f32>(x_550, x_550));
  let x_555 : f32 = u_xlat7.x;
  u_xlat7.x = (x_555 + -0.5f);
  let x_560 : f32 = u_xlat23;
  u_xlat14 = (-(x_560) + 1.0f);
  let x_563 : f32 = u_xlat14;
  let x_564 : f32 = u_xlat14;
  u_xlat1.x = (x_563 * x_564);
  let x_568 : f32 = u_xlat1.x;
  let x_570 : f32 = u_xlat1.x;
  u_xlat1.x = (x_568 * x_570);
  let x_573 : f32 = u_xlat14;
  let x_575 : f32 = u_xlat1.x;
  u_xlat14 = (x_573 * x_575);
  let x_578 : f32 = u_xlat7.x;
  let x_579 : f32 = u_xlat14;
  u_xlat14 = ((x_578 * x_579) + 1.0f);
  let x_582 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_582)) + 1.0f);
  let x_589 : f32 = u_xlat1.x;
  let x_591 : f32 = u_xlat1.x;
  u_xlat8 = (x_589 * x_591);
  let x_593 : f32 = u_xlat8;
  let x_594 : f32 = u_xlat8;
  u_xlat8 = (x_593 * x_594);
  let x_597 : f32 = u_xlat1.x;
  let x_598 : f32 = u_xlat8;
  u_xlat1.x = (x_597 * x_598);
  let x_602 : f32 = u_xlat7.x;
  let x_604 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_602 * x_604) + 1.0f);
  let x_609 : f32 = u_xlat7.x;
  let x_610 : f32 = u_xlat14;
  u_xlat7.x = (x_609 * x_610);
  let x_613 : f32 = u_xlat22;
  let x_614 : f32 = u_xlat22;
  u_xlat14 = (x_613 * x_614);
  let x_616 : f32 = u_xlat14;
  u_xlat14 = max(x_616, 0.002f);
  let x_619 : f32 = u_xlat14;
  u_xlat1.x = (-(x_619) + 1.0f);
  let x_623 : f32 = u_xlat21;
  let x_626 : f32 = u_xlat1.x;
  let x_628 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_623) * x_626) + x_628);
  let x_630 : f32 = u_xlat23;
  let x_632 : f32 = u_xlat1.x;
  let x_634 : f32 = u_xlat14;
  u_xlat1.x = ((x_630 * x_632) + x_634);
  let x_637 : f32 = u_xlat21;
  let x_640 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_637) * x_640);
  let x_642 : f32 = u_xlat23;
  let x_643 : f32 = u_xlat8;
  let x_645 : f32 = u_xlat21;
  u_xlat21 = ((x_642 * x_643) + x_645);
  let x_647 : f32 = u_xlat21;
  u_xlat21 = (x_647 + 0.00001f);
  let x_649 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_649);
  let x_651 : f32 = u_xlat14;
  let x_652 : f32 = u_xlat14;
  u_xlat14 = (x_651 * x_652);
  let x_655 : f32 = u_xlat3.x;
  let x_656 : f32 = u_xlat14;
  let x_659 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_655 * x_656) + -(x_659));
  let x_664 : f32 = u_xlat1.x;
  let x_666 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_664 * x_666) + 1.0f);
  let x_670 : f32 = u_xlat14;
  u_xlat14 = (x_670 * 0.318309873f);
  let x_674 : f32 = u_xlat1.x;
  let x_676 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_674 * x_676) + 0.0000001f);
  let x_681 : f32 = u_xlat14;
  let x_683 : f32 = u_xlat1.x;
  u_xlat14 = (x_681 / x_683);
  let x_685 : f32 = u_xlat14;
  let x_686 : f32 = u_xlat21;
  u_xlat7.y = (x_685 * x_686);
  let x_689 : f32 = u_xlat23;
  let x_691 : vec3<f32> = u_xlat7;
  let x_693 : vec2<f32> = (vec2<f32>(x_689, x_689) * vec2<f32>(x_691.x, x_691.y));
  let x_694 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_693.x, x_693.y, x_694.z);
  let x_697 : f32 = u_xlat7.y;
  u_xlat14 = (x_697 * 3.141592741f);
  let x_700 : f32 = u_xlat14;
  u_xlat14 = max(x_700, 0.0f);
  let x_702 : vec3<f32> = u_xlat5;
  let x_703 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(x_702, x_703);
  let x_706 : f32 = u_xlat21;
  u_xlatb21 = !((x_706 == 0.0f));
  let x_708 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_708);
  let x_710 : f32 = u_xlat21;
  let x_711 : f32 = u_xlat14;
  u_xlat14 = (x_710 * x_711);
  let x_713 : vec3<f32> = u_xlat7;
  let x_715 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_713.x, x_713.x, x_713.x) * vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat2;
  let x_720 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(x_720, x_720, x_720));
  let x_724 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_724) + 1.0f);
  let x_729 : f32 = u_xlat0.x;
  let x_731 : f32 = u_xlat0.x;
  u_xlat22 = (x_729 * x_731);
  let x_733 : f32 = u_xlat22;
  let x_734 : f32 = u_xlat22;
  u_xlat22 = (x_733 * x_734);
  let x_737 : f32 = u_xlat0.x;
  let x_738 : f32 = u_xlat22;
  u_xlat0.x = (x_737 * x_738);
  let x_741 : vec3<f32> = u_xlat5;
  let x_744 : vec3<f32> = (-(x_741) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_745 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_747 : vec4<f32> = u_xlat2;
  let x_749 : vec3<f32> = u_xlat0;
  let x_752 : vec3<f32> = u_xlat5;
  let x_753 : vec3<f32> = ((vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(x_749.x, x_749.x, x_749.x)) + x_752);
  let x_754 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec3<f32> = u_xlat7;
  let x_757 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_756 * vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_762 : vec3<f32> = u_xlat6;
  let x_763 : vec3<f32> = u_xlat1;
  let x_765 : vec3<f32> = u_xlat0;
  let x_766 : vec3<f32> = ((x_762 * x_763) + x_765);
  let x_767 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

