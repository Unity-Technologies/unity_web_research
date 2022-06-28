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
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat27 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat29 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(14) var sampler_Gradient : sampler;

var<private> u_xlat30 : f32;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlatb28 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat32 : f32;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(8) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat20 : f32;

@group(0) @binding(6) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb27 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_376 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat27;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD4;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat28;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_76 : vec4<f32> = vs_TEXCOORD0;
  let x_78 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_76.x, x_76.y));
  u_xlat28 = x_78.x;
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_88.z, x_88.w));
  let x_91 : vec2<f32> = vec2<f32>(x_90.x, x_90.w);
  let x_92 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_91.x, x_91.y, x_92.z, x_92.w);
  let x_100 : vec4<f32> = vs_TEXCOORD0;
  let x_102 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_100.z, x_100.w));
  u_xlat29 = x_102.x;
  let x_105 : f32 = u_xlat29;
  u_xlat30 = (-(x_105) + 1.0f);
  let x_109 : f32 = u_xlat28;
  let x_110 : f32 = u_xlat30;
  u_xlat28 = (x_109 * x_110);
  let x_112 : f32 = u_xlat28;
  let x_116 : f32 = x_18.x_NoiseStrength;
  let x_118 : f32 = u_xlat29;
  u_xlat28 = ((x_112 * x_116) + x_118);
  let x_120 : f32 = u_xlat28;
  u_xlat28 = (-(x_120) + 1.0f);
  let x_123 : f32 = u_xlat28;
  let x_126 : f32 = x_18.x_Cutoff;
  u_xlat28 = (x_123 + -(x_126));
  let x_131 : f32 = x_18.x_EdgeSize;
  u_xlat29 = (1.0f / -(x_131));
  let x_134 : f32 = u_xlat28;
  let x_135 : f32 = u_xlat29;
  u_xlat28 = (x_134 * x_135);
  let x_137 : f32 = u_xlat28;
  u_xlat28 = clamp(x_137, 0.0f, 1.0f);
  let x_140 : f32 = u_xlat28;
  u_xlat29 = ((x_140 * -2.0f) + 3.0f);
  let x_145 : f32 = u_xlat28;
  let x_146 : f32 = u_xlat28;
  u_xlat28 = (x_145 * x_146);
  let x_154 : vec4<f32> = vs_TEXCOORD0;
  let x_156 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_154.z, x_154.w));
  u_xlat5 = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_159 : vec3<f32> = u_xlat5;
  let x_162 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (x_159 * vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_171 : vec4<f32> = vs_TEXCOORD0;
  let x_173 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_171.z, x_171.w));
  u_xlat7 = vec3<f32>(x_173.x, x_173.y, x_173.w);
  let x_177 : f32 = u_xlat7.z;
  let x_179 : f32 = u_xlat7.x;
  u_xlat7.x = (x_177 * x_179);
  let x_182 : vec3<f32> = u_xlat7;
  let x_189 : vec2<f32> = ((vec2<f32>(x_182.x, x_182.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_190 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_189.x, x_189.y, x_190.z);
  let x_192 : vec3<f32> = u_xlat7;
  let x_194 : vec3<f32> = u_xlat7;
  u_xlat30 = dot(vec2<f32>(x_192.x, x_192.y), vec2<f32>(x_194.x, x_194.y));
  let x_197 : f32 = u_xlat30;
  u_xlat30 = min(x_197, 1.0f);
  let x_199 : f32 = u_xlat30;
  u_xlat30 = (-(x_199) + 1.0f);
  let x_202 : f32 = u_xlat30;
  u_xlat7.z = sqrt(x_202);
  let x_206 : f32 = u_xlat4.x;
  let x_209 : f32 = x_18.x_Metallic;
  u_xlat30 = (x_206 * x_209);
  let x_211 : f32 = u_xlat29;
  let x_213 : f32 = u_xlat28;
  let x_216 : f32 = x_18.x_Cutoff;
  u_xlat28 = ((-(x_211) * x_213) + -(x_216));
  let x_219 : f32 = u_xlat28;
  u_xlat28 = (x_219 + 1.0f);
  let x_224 : f32 = u_xlat28;
  u_xlatb28 = (x_224 < 0.0f);
  let x_226 : bool = u_xlatb28;
  if (((select(0i, 1i, x_226) * -1i) != 0i)) {
    discard;
  }
  let x_234 : vec3<f32> = vs_TEXCOORD4;
  let x_238 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_240 : vec3<f32> = (vec3<f32>(x_234.y, x_234.y, x_234.y) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_241.y, x_240.y, x_240.z);
  let x_244 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_246 : vec3<f32> = vs_TEXCOORD4;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_246.x, x_246.x, x_246.x)) + vec3<f32>(x_249.x, x_249.z, x_249.w));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_252.y, x_251.y, x_251.z);
  let x_256 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_258 : vec3<f32> = vs_TEXCOORD4;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.z, x_258.z, x_258.z)) + vec3<f32>(x_261.x, x_261.z, x_261.w));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_264.y, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat4;
  let x_270 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_272 : vec3<f32> = (vec3<f32>(x_266.x, x_266.z, x_266.w) + vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_272.x, x_273.y, x_272.y, x_272.z);
  let x_278 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat8.x = x_278;
  let x_281 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat8.y = x_281;
  let x_285 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat8.z = x_285;
  let x_287 : vec4<f32> = u_xlat2;
  let x_289 : vec3<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_287.x, x_287.y, x_287.z), x_289);
  let x_291 : vec3<f32> = vs_TEXCOORD4;
  let x_294 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_297 : vec3<f32> = (x_291 + -(vec3<f32>(x_294.x, x_294.y, x_294.z)));
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat2;
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_300.x, x_300.y, x_300.z), vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_307 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_307);
  let x_310 : f32 = u_xlat28;
  let x_313 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_310) + x_313);
  let x_318 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_320 : f32 = u_xlat2.x;
  let x_322 : f32 = u_xlat28;
  u_xlat28 = ((x_318 * x_320) + x_322);
  let x_324 : f32 = u_xlat28;
  let x_327 : f32 = x_18.x_LightShadowData.z;
  let x_330 : f32 = x_18.x_LightShadowData.w;
  u_xlat28 = ((x_324 * x_327) + x_330);
  let x_332 : f32 = u_xlat28;
  u_xlat28 = clamp(x_332, 0.0f, 1.0f);
  let x_337 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_337 == 1.0f);
  let x_339 : bool = u_xlatb2;
  if (x_339) {
    let x_343 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_343 == 1.0f);
    let x_346 : vec3<f32> = vs_TEXCOORD4;
    let x_350 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat11 = (vec3<f32>(x_346.y, x_346.y, x_346.y) * vec3<f32>(x_350.x, x_350.y, x_350.z));
    let x_354 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_356 : vec3<f32> = vs_TEXCOORD4;
    let x_359 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.x, x_356.x)) + x_359);
    let x_362 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_364 : vec3<f32> = vs_TEXCOORD4;
    let x_367 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.z, x_364.z, x_364.z)) + x_367);
    let x_369 : vec3<f32> = u_xlat11;
    let x_371 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat11 = (x_369 + vec3<f32>(x_371.x, x_371.y, x_371.z));
    let x_374 : bool = u_xlatb2;
    if (x_374) {
      let x_379 : vec3<f32> = u_xlat11;
      x_376 = x_379;
    } else {
      let x_381 : vec3<f32> = vs_TEXCOORD4;
      x_376 = x_381;
    }
    let x_382 : vec3<f32> = x_376;
    let x_383 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
    let x_385 : vec4<f32> = u_xlat2;
    let x_389 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_391 : vec3<f32> = (vec3<f32>(x_385.x, x_385.y, x_385.z) + -(x_389));
    let x_392 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_394 : vec4<f32> = u_xlat2;
    let x_398 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_399 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) * x_398);
    let x_400 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_400.x, x_399.x, x_399.y, x_399.z);
    let x_403 : f32 = u_xlat2.y;
    u_xlat11.x = ((x_403 * 0.25f) + 0.75f);
    let x_411 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat32 = ((x_411 * 0.5f) + 0.75f);
    let x_416 : f32 = u_xlat11.x;
    let x_417 : f32 = u_xlat32;
    u_xlat2.x = max(x_416, x_417);
    let x_428 : vec4<f32> = u_xlat2;
    let x_430 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_428.x, x_428.z, x_428.w));
    u_xlat2 = x_430;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_436 : vec4<f32> = u_xlat2;
  let x_439 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_436, x_439);
  let x_443 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_443, 0.0f, 1.0f);
  let x_446 : vec3<f32> = vs_TEXCOORD4;
  let x_448 : vec4<f32> = x_18.x_LightPositionRange;
  u_xlat11 = (x_446 + -(vec3<f32>(x_448.x, x_448.y, x_448.z)));
  let x_453 : f32 = u_xlat11.y;
  let x_456 : f32 = u_xlat11.x;
  u_xlat32 = max(abs(x_453), abs(x_456));
  let x_460 : f32 = u_xlat11.z;
  let x_462 : f32 = u_xlat32;
  u_xlat32 = max(abs(x_460), x_462);
  let x_464 : f32 = u_xlat32;
  let x_466 : f32 = x_18.x_LightProjectionParams.z;
  u_xlat32 = (x_464 + -(x_466));
  let x_469 : f32 = u_xlat32;
  u_xlat32 = max(x_469, 0.00001f);
  let x_472 : f32 = u_xlat32;
  let x_474 : f32 = x_18.x_LightProjectionParams.w;
  u_xlat32 = (x_472 * x_474);
  let x_477 : f32 = x_18.x_LightProjectionParams.y;
  let x_478 : f32 = u_xlat32;
  u_xlat32 = (x_477 / x_478);
  let x_480 : f32 = u_xlat32;
  let x_482 : f32 = x_18.x_LightProjectionParams.x;
  u_xlat32 = (x_480 + -(x_482));
  let x_485 : f32 = u_xlat32;
  u_xlat32 = (-(x_485) + 1.0f);
  let x_490 : vec3<f32> = u_xlat11;
  let x_491 : f32 = u_xlat32;
  txVec0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491);
  let x_504 : vec4<f32> = txVec0;
  let x_506 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_504.xyz, x_504.w);
  u_xlat11.x = x_506;
  let x_510 : f32 = x_18.x_LightShadowData.x;
  u_xlat20 = (-(x_510) + 1.0f);
  let x_514 : f32 = u_xlat11.x;
  let x_515 : f32 = u_xlat20;
  let x_518 : f32 = x_18.x_LightShadowData.x;
  u_xlat11.x = ((x_514 * x_515) + x_518);
  let x_522 : f32 = u_xlat11.x;
  let x_525 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_522) + x_525);
  let x_528 : f32 = u_xlat28;
  let x_530 : f32 = u_xlat2.x;
  let x_533 : f32 = u_xlat11.x;
  u_xlat28 = ((x_528 * x_530) + x_533);
  let x_535 : vec4<f32> = u_xlat4;
  let x_537 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_535.x, x_535.z, x_535.w), vec3<f32>(x_537.x, x_537.z, x_537.w));
  let x_546 : vec4<f32> = u_xlat2;
  let x_548 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_546.x, x_546.x));
  u_xlat2.x = x_548.x;
  let x_551 : f32 = u_xlat28;
  let x_553 : f32 = u_xlat2.x;
  u_xlat28 = (x_551 * x_553);
  let x_556 : vec3<f32> = vs_TEXCOORD1;
  let x_557 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_556, x_557);
  let x_561 : vec3<f32> = vs_TEXCOORD2;
  let x_562 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_561, x_562);
  let x_566 : vec3<f32> = vs_TEXCOORD3;
  let x_567 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_566, x_567);
  let x_570 : vec4<f32> = u_xlat2;
  let x_572 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_570.x, x_570.y, x_570.z), vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_575);
  let x_577 : f32 = u_xlat29;
  let x_579 : vec4<f32> = u_xlat2;
  let x_581 : vec3<f32> = (vec3<f32>(x_577, x_577, x_577) * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : f32 = u_xlat28;
  let x_588 : vec4<f32> = x_18.x_LightColor0;
  let x_590 : vec3<f32> = (vec3<f32>(x_584, x_584, x_584) * vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_590.x, x_591.y, x_590.y, x_590.z);
  let x_593 : vec3<f32> = u_xlat5;
  let x_595 : vec4<f32> = x_18.x_Color;
  u_xlat5 = ((x_593 * vec3<f32>(x_595.x, x_595.y, x_595.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_601 : f32 = u_xlat30;
  let x_603 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_601, x_601, x_601) * x_603) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_608 : f32 = u_xlat30;
  u_xlat28 = ((-(x_608) * 0.959999979f) + 0.959999979f);
  let x_613 : f32 = u_xlat28;
  let x_615 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_613, x_613, x_613) * x_615);
  let x_618 : f32 = u_xlat4.y;
  let x_622 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_618) * x_622) + 1.0f);
  let x_625 : vec3<f32> = u_xlat0;
  let x_626 : f32 = u_xlat27;
  let x_629 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_625 * vec3<f32>(x_626, x_626, x_626)) + x_629);
  let x_631 : vec3<f32> = u_xlat0;
  let x_632 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_631, x_632);
  let x_634 : f32 = u_xlat27;
  u_xlat27 = max(x_634, 0.001f);
  let x_637 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_637);
  let x_639 : f32 = u_xlat27;
  let x_641 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_639, x_639, x_639) * x_641);
  let x_643 : vec4<f32> = u_xlat2;
  let x_645 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), x_645);
  let x_647 : vec4<f32> = u_xlat2;
  let x_649 : vec3<f32> = u_xlat1;
  u_xlat29 = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), x_649);
  let x_651 : f32 = u_xlat29;
  u_xlat29 = clamp(x_651, 0.0f, 1.0f);
  let x_653 : vec4<f32> = u_xlat2;
  let x_655 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), x_655);
  let x_659 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_659, 0.0f, 1.0f);
  let x_662 : vec3<f32> = u_xlat1;
  let x_663 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_662, x_663);
  let x_667 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_667, 0.0f, 1.0f);
  let x_672 : f32 = u_xlat0.x;
  let x_674 : f32 = u_xlat0.x;
  u_xlat9.x = (x_672 * x_674);
  let x_677 : vec3<f32> = u_xlat9;
  let x_679 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_677.x, x_677.x), vec2<f32>(x_679, x_679));
  let x_684 : f32 = u_xlat9.x;
  u_xlat9.x = (x_684 + -0.5f);
  let x_689 : f32 = u_xlat29;
  u_xlat18 = (-(x_689) + 1.0f);
  let x_692 : f32 = u_xlat18;
  let x_693 : f32 = u_xlat18;
  u_xlat1.x = (x_692 * x_693);
  let x_697 : f32 = u_xlat1.x;
  let x_699 : f32 = u_xlat1.x;
  u_xlat1.x = (x_697 * x_699);
  let x_702 : f32 = u_xlat18;
  let x_704 : f32 = u_xlat1.x;
  u_xlat18 = (x_702 * x_704);
  let x_707 : f32 = u_xlat9.x;
  let x_708 : f32 = u_xlat18;
  u_xlat18 = ((x_707 * x_708) + 1.0f);
  let x_711 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_711)) + 1.0f);
  let x_718 : f32 = u_xlat1.x;
  let x_720 : f32 = u_xlat1.x;
  u_xlat10 = (x_718 * x_720);
  let x_722 : f32 = u_xlat10;
  let x_723 : f32 = u_xlat10;
  u_xlat10 = (x_722 * x_723);
  let x_726 : f32 = u_xlat1.x;
  let x_727 : f32 = u_xlat10;
  u_xlat1.x = (x_726 * x_727);
  let x_731 : f32 = u_xlat9.x;
  let x_733 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_731 * x_733) + 1.0f);
  let x_738 : f32 = u_xlat9.x;
  let x_739 : f32 = u_xlat18;
  u_xlat9.x = (x_738 * x_739);
  let x_742 : f32 = u_xlat28;
  let x_743 : f32 = u_xlat28;
  u_xlat18 = (x_742 * x_743);
  let x_745 : f32 = u_xlat18;
  u_xlat18 = max(x_745, 0.002f);
  let x_748 : f32 = u_xlat18;
  u_xlat1.x = (-(x_748) + 1.0f);
  let x_752 : f32 = u_xlat27;
  let x_755 : f32 = u_xlat1.x;
  let x_757 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_752) * x_755) + x_757);
  let x_759 : f32 = u_xlat29;
  let x_761 : f32 = u_xlat1.x;
  let x_763 : f32 = u_xlat18;
  u_xlat1.x = ((x_759 * x_761) + x_763);
  let x_766 : f32 = u_xlat27;
  let x_769 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_766) * x_769);
  let x_771 : f32 = u_xlat29;
  let x_772 : f32 = u_xlat10;
  let x_774 : f32 = u_xlat27;
  u_xlat27 = ((x_771 * x_772) + x_774);
  let x_776 : f32 = u_xlat27;
  u_xlat27 = (x_776 + 0.00001f);
  let x_778 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_778);
  let x_780 : f32 = u_xlat18;
  let x_781 : f32 = u_xlat18;
  u_xlat18 = (x_780 * x_781);
  let x_784 : f32 = u_xlat2.x;
  let x_785 : f32 = u_xlat18;
  let x_788 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_784 * x_785) + -(x_788));
  let x_793 : f32 = u_xlat1.x;
  let x_795 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_793 * x_795) + 1.0f);
  let x_799 : f32 = u_xlat18;
  u_xlat18 = (x_799 * 0.318309873f);
  let x_803 : f32 = u_xlat1.x;
  let x_805 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_803 * x_805) + 0.0000001f);
  let x_810 : f32 = u_xlat18;
  let x_812 : f32 = u_xlat1.x;
  u_xlat18 = (x_810 / x_812);
  let x_814 : f32 = u_xlat18;
  let x_815 : f32 = u_xlat27;
  u_xlat9.y = (x_814 * x_815);
  let x_818 : f32 = u_xlat29;
  let x_820 : vec3<f32> = u_xlat9;
  let x_822 : vec2<f32> = (vec2<f32>(x_818, x_818) * vec2<f32>(x_820.x, x_820.y));
  let x_823 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_822.x, x_822.y, x_823.z);
  let x_826 : f32 = u_xlat9.y;
  u_xlat18 = (x_826 * 3.141592741f);
  let x_829 : f32 = u_xlat18;
  u_xlat18 = max(x_829, 0.0f);
  let x_831 : vec3<f32> = u_xlat5;
  let x_832 : vec3<f32> = u_xlat5;
  u_xlat27 = dot(x_831, x_832);
  let x_835 : f32 = u_xlat27;
  u_xlatb27 = !((x_835 == 0.0f));
  let x_837 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_837);
  let x_839 : f32 = u_xlat27;
  let x_840 : f32 = u_xlat18;
  u_xlat18 = (x_839 * x_840);
  let x_842 : vec3<f32> = u_xlat9;
  let x_844 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_842.x, x_842.x, x_842.x) * vec3<f32>(x_844.x, x_844.z, x_844.w));
  let x_847 : vec4<f32> = u_xlat4;
  let x_849 : f32 = u_xlat18;
  u_xlat9 = (vec3<f32>(x_847.x, x_847.z, x_847.w) * vec3<f32>(x_849, x_849, x_849));
  let x_853 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_853) + 1.0f);
  let x_858 : f32 = u_xlat0.x;
  let x_860 : f32 = u_xlat0.x;
  u_xlat28 = (x_858 * x_860);
  let x_862 : f32 = u_xlat28;
  let x_863 : f32 = u_xlat28;
  u_xlat28 = (x_862 * x_863);
  let x_866 : f32 = u_xlat0.x;
  let x_867 : f32 = u_xlat28;
  u_xlat0.x = (x_866 * x_867);
  let x_870 : vec3<f32> = u_xlat5;
  let x_873 : vec3<f32> = (-(x_870) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_874 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat2;
  let x_878 : vec3<f32> = u_xlat0;
  let x_881 : vec3<f32> = u_xlat5;
  let x_882 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(x_878.x, x_878.x, x_878.x)) + x_881);
  let x_883 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec3<f32> = u_xlat9;
  let x_886 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_885 * vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_891 : vec3<f32> = u_xlat6;
  let x_892 : vec3<f32> = u_xlat1;
  let x_894 : vec3<f32> = u_xlat0;
  let x_895 : vec3<f32> = ((x_891 * x_892) + x_894);
  let x_896 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

