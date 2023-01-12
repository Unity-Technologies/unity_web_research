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

@group(0) @binding(9) var sampler_Gradient : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

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
  let x_431 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_429.x, x_429.x));
  u_xlat2.x = x_431.x;
  let x_442 : vec3<f32> = u_xlat4;
  let x_443 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_442);
  u_xlat9.x = x_443.w;
  let x_447 : f32 = u_xlat9.x;
  let x_449 : f32 = u_xlat2.x;
  u_xlat2.x = (x_447 * x_449);
  let x_452 : f32 = u_xlat22;
  let x_454 : f32 = u_xlat2.x;
  u_xlat22 = (x_452 * x_454);
  let x_456 : f32 = u_xlat22;
  let x_460 : vec4<f32> = x_18.x_LightColor0;
  let x_462 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_466 : vec3<f32> = vs_TEXCOORD1;
  let x_467 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_466, x_467);
  let x_469 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_469);
  let x_471 : f32 = u_xlat22;
  let x_473 : vec3<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_471, x_471, x_471) * x_473);
  let x_477 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_477.x, x_477.y, x_477.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_484 : f32 = x_18.x_Metallic;
  let x_486 : f32 = x_18.x_Metallic;
  let x_488 : f32 = x_18.x_Metallic;
  let x_489 : vec3<f32> = vec3<f32>(x_484, x_486, x_488);
  let x_494 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * x_494) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_500 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_500) * 0.959999979f) + 0.959999979f);
  let x_506 : f32 = u_xlat22;
  let x_509 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (vec3<f32>(x_506, x_506, x_506) * vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_514 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_514) + 1.0f);
  let x_517 : vec3<f32> = u_xlat0;
  let x_518 : f32 = u_xlat21;
  let x_521 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_517 * vec3<f32>(x_518, x_518, x_518)) + x_521);
  let x_523 : vec3<f32> = u_xlat0;
  let x_524 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_523, x_524);
  let x_526 : f32 = u_xlat21;
  u_xlat21 = max(x_526, 0.001f);
  let x_529 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_529);
  let x_531 : f32 = u_xlat21;
  let x_533 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_531, x_531, x_531) * x_533);
  let x_535 : vec3<f32> = u_xlat4;
  let x_536 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_535, x_536);
  let x_538 : vec3<f32> = u_xlat4;
  let x_539 : vec3<f32> = u_xlat1;
  u_xlat23 = dot(x_538, x_539);
  let x_541 : f32 = u_xlat23;
  u_xlat23 = clamp(x_541, 0.0f, 1.0f);
  let x_543 : vec3<f32> = u_xlat4;
  let x_544 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(x_543, x_544);
  let x_548 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_548, 0.0f, 1.0f);
  let x_551 : vec3<f32> = u_xlat1;
  let x_552 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_551, x_552);
  let x_556 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_556, 0.0f, 1.0f);
  let x_561 : f32 = u_xlat0.x;
  let x_563 : f32 = u_xlat0.x;
  u_xlat7.x = (x_561 * x_563);
  let x_566 : vec3<f32> = u_xlat7;
  let x_568 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_566.x, x_566.x), vec2<f32>(x_568, x_568));
  let x_573 : f32 = u_xlat7.x;
  u_xlat7.x = (x_573 + -0.5f);
  let x_578 : f32 = u_xlat23;
  u_xlat14 = (-(x_578) + 1.0f);
  let x_581 : f32 = u_xlat14;
  let x_582 : f32 = u_xlat14;
  u_xlat1.x = (x_581 * x_582);
  let x_586 : f32 = u_xlat1.x;
  let x_588 : f32 = u_xlat1.x;
  u_xlat1.x = (x_586 * x_588);
  let x_591 : f32 = u_xlat14;
  let x_593 : f32 = u_xlat1.x;
  u_xlat14 = (x_591 * x_593);
  let x_596 : f32 = u_xlat7.x;
  let x_597 : f32 = u_xlat14;
  u_xlat14 = ((x_596 * x_597) + 1.0f);
  let x_600 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_600)) + 1.0f);
  let x_607 : f32 = u_xlat1.x;
  let x_609 : f32 = u_xlat1.x;
  u_xlat8 = (x_607 * x_609);
  let x_611 : f32 = u_xlat8;
  let x_612 : f32 = u_xlat8;
  u_xlat8 = (x_611 * x_612);
  let x_615 : f32 = u_xlat1.x;
  let x_616 : f32 = u_xlat8;
  u_xlat1.x = (x_615 * x_616);
  let x_620 : f32 = u_xlat7.x;
  let x_622 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_620 * x_622) + 1.0f);
  let x_627 : f32 = u_xlat7.x;
  let x_628 : f32 = u_xlat14;
  u_xlat7.x = (x_627 * x_628);
  let x_631 : f32 = u_xlat22;
  let x_632 : f32 = u_xlat22;
  u_xlat14 = (x_631 * x_632);
  let x_634 : f32 = u_xlat14;
  u_xlat14 = max(x_634, 0.002f);
  let x_637 : f32 = u_xlat14;
  u_xlat1.x = (-(x_637) + 1.0f);
  let x_641 : f32 = u_xlat21;
  let x_644 : f32 = u_xlat1.x;
  let x_646 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_641) * x_644) + x_646);
  let x_648 : f32 = u_xlat23;
  let x_650 : f32 = u_xlat1.x;
  let x_652 : f32 = u_xlat14;
  u_xlat1.x = ((x_648 * x_650) + x_652);
  let x_655 : f32 = u_xlat21;
  let x_658 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_655) * x_658);
  let x_660 : f32 = u_xlat23;
  let x_661 : f32 = u_xlat8;
  let x_663 : f32 = u_xlat21;
  u_xlat21 = ((x_660 * x_661) + x_663);
  let x_665 : f32 = u_xlat21;
  u_xlat21 = (x_665 + 0.00001f);
  let x_667 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_667);
  let x_669 : f32 = u_xlat14;
  let x_670 : f32 = u_xlat14;
  u_xlat14 = (x_669 * x_670);
  let x_673 : f32 = u_xlat3.x;
  let x_674 : f32 = u_xlat14;
  let x_677 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_673 * x_674) + -(x_677));
  let x_682 : f32 = u_xlat1.x;
  let x_684 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_682 * x_684) + 1.0f);
  let x_688 : f32 = u_xlat14;
  u_xlat14 = (x_688 * 0.318309873f);
  let x_692 : f32 = u_xlat1.x;
  let x_694 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_692 * x_694) + 0.0000001f);
  let x_699 : f32 = u_xlat14;
  let x_701 : f32 = u_xlat1.x;
  u_xlat14 = (x_699 / x_701);
  let x_703 : f32 = u_xlat14;
  let x_704 : f32 = u_xlat21;
  u_xlat7.y = (x_703 * x_704);
  let x_707 : f32 = u_xlat23;
  let x_709 : vec3<f32> = u_xlat7;
  let x_711 : vec2<f32> = (vec2<f32>(x_707, x_707) * vec2<f32>(x_709.x, x_709.y));
  let x_712 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_711.x, x_711.y, x_712.z);
  let x_715 : f32 = u_xlat7.y;
  u_xlat14 = (x_715 * 3.141592741f);
  let x_718 : f32 = u_xlat14;
  u_xlat14 = max(x_718, 0.0f);
  let x_720 : vec3<f32> = u_xlat5;
  let x_721 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(x_720, x_721);
  let x_724 : f32 = u_xlat21;
  u_xlatb21 = !((x_724 == 0.0f));
  let x_726 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_726);
  let x_728 : f32 = u_xlat21;
  let x_729 : f32 = u_xlat14;
  u_xlat14 = (x_728 * x_729);
  let x_731 : vec3<f32> = u_xlat7;
  let x_733 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_731.x, x_731.x, x_731.x) * vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat2;
  let x_738 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738, x_738, x_738));
  let x_742 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_742) + 1.0f);
  let x_747 : f32 = u_xlat0.x;
  let x_749 : f32 = u_xlat0.x;
  u_xlat22 = (x_747 * x_749);
  let x_751 : f32 = u_xlat22;
  let x_752 : f32 = u_xlat22;
  u_xlat22 = (x_751 * x_752);
  let x_755 : f32 = u_xlat0.x;
  let x_756 : f32 = u_xlat22;
  u_xlat0.x = (x_755 * x_756);
  let x_759 : vec3<f32> = u_xlat5;
  let x_762 : vec3<f32> = (-(x_759) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_763 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat2;
  let x_767 : vec3<f32> = u_xlat0;
  let x_770 : vec3<f32> = u_xlat5;
  let x_771 : vec3<f32> = ((vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(x_767.x, x_767.x, x_767.x)) + x_770);
  let x_772 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec3<f32> = u_xlat7;
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_774 * vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_780 : vec3<f32> = u_xlat6;
  let x_781 : vec3<f32> = u_xlat1;
  let x_783 : vec3<f32> = u_xlat0;
  let x_784 : vec3<f32> = ((x_780 * x_781) + x_783);
  let x_785 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
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

