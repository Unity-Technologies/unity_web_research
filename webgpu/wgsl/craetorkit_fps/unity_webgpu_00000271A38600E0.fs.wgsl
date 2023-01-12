struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(11) var sampler_Normal : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb31 : bool;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb2 : bool;
  var u_xlat12 : vec3<f32>;
  var x_328 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlatb12 : bool;
  var txVec0 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat32 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat11 : f32;
  var u_xlatb30 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat30;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD4;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat31;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_77 : vec4<f32> = vs_TEXCOORD0;
  let x_79 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_77.x, x_77.y));
  u_xlat4 = x_79;
  let x_80 : vec4<f32> = u_xlat4;
  let x_84 : vec4<f32> = x_18.x_Color;
  let x_86 : vec3<f32> = (vec3<f32>(x_80.x, x_80.y, x_80.z) * vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_90 : vec4<f32> = u_xlat4;
  let x_93 : vec4<f32> = vs_COLOR0;
  u_xlat5 = (vec3<f32>(x_90.x, x_90.y, x_90.z) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_102 : f32 = x_18.x_Time.x;
  let x_105 : f32 = x_18.x_MovementSpeed;
  let x_110 : f32 = vs_TEXCOORD0.z;
  u_xlat6.x = ((x_102 * x_105) + x_110);
  let x_114 : f32 = x_18.x_Time.x;
  let x_117 : f32 = x_18.x_MovementSpeed;
  let x_121 : f32 = vs_TEXCOORD0.w;
  u_xlat6.y = ((-(x_114) * x_117) + x_121);
  let x_130 : vec3<f32> = u_xlat6;
  let x_132 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_130.x, x_130.y));
  u_xlat6 = vec3<f32>(x_132.x, x_132.y, x_132.w);
  let x_135 : f32 = u_xlat6.z;
  let x_137 : f32 = u_xlat6.x;
  u_xlat6.x = (x_135 * x_137);
  let x_140 : vec3<f32> = u_xlat6;
  let x_147 : vec2<f32> = ((vec2<f32>(x_140.x, x_140.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_148 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_147.x, x_147.y, x_148.z);
  let x_150 : vec3<f32> = u_xlat6;
  let x_154 : f32 = x_18.x_NormalSacle;
  let x_156 : vec2<f32> = (vec2<f32>(x_150.x, x_150.y) * vec2<f32>(x_154, x_154));
  let x_157 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_156.x, x_156.y, x_157.z);
  let x_159 : vec3<f32> = u_xlat6;
  let x_161 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(vec2<f32>(x_159.x, x_159.y), vec2<f32>(x_161.x, x_161.y));
  let x_164 : f32 = u_xlat31;
  u_xlat31 = min(x_164, 1.0f);
  let x_167 : f32 = u_xlat31;
  u_xlat31 = (-(x_167) + 1.0f);
  let x_170 : f32 = u_xlat31;
  u_xlat6.z = sqrt(x_170);
  let x_174 : f32 = vs_COLOR0.w;
  u_xlat31 = (-(x_174) + 1.0f);
  let x_178 : f32 = u_xlat4.w;
  let x_180 : f32 = x_18.x_Color.w;
  let x_182 : f32 = u_xlat31;
  u_xlat31 = ((x_178 * x_180) + -(x_182));
  let x_188 : f32 = u_xlat31;
  u_xlatb31 = (x_188 < 0.0f);
  let x_191 : bool = u_xlatb31;
  if (((select(0i, 1i, x_191) * -1i) != 0i)) {
    discard;
  }
  let x_200 : vec3<f32> = vs_TEXCOORD4;
  let x_204 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec3<f32>(x_200.y, x_200.y, x_200.y) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_208 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_210 : vec3<f32> = vs_TEXCOORD4;
  let x_213 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.x, x_210.x, x_210.x)) + x_213);
  let x_217 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_219 : vec3<f32> = vs_TEXCOORD4;
  let x_222 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_219.z, x_219.z, x_219.z)) + x_222);
  let x_224 : vec3<f32> = u_xlat7;
  let x_226 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_224 + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_232 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat8.x = x_232;
  let x_235 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat8.y = x_235;
  let x_238 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat8.z = x_238;
  let x_240 : vec4<f32> = u_xlat2;
  let x_242 : vec4<f32> = u_xlat8;
  u_xlat31 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec3<f32> = vs_TEXCOORD4;
  let x_248 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_251 : vec3<f32> = (x_245 + -(vec3<f32>(x_248.x, x_248.y, x_248.z)));
  let x_252 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat2;
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_254.x, x_254.y, x_254.z), vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_261 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_261);
  let x_264 : f32 = u_xlat31;
  let x_267 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_264) + x_267);
  let x_271 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_273 : f32 = u_xlat2.x;
  let x_275 : f32 = u_xlat31;
  u_xlat31 = ((x_271 * x_273) + x_275);
  let x_277 : f32 = u_xlat31;
  let x_280 : f32 = x_18.x_LightShadowData.z;
  let x_283 : f32 = x_18.x_LightShadowData.w;
  u_xlat31 = ((x_277 * x_280) + x_283);
  let x_285 : f32 = u_xlat31;
  u_xlat31 = clamp(x_285, 0.0f, 1.0f);
  let x_290 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_290 == 1.0f);
  let x_292 : bool = u_xlatb2;
  if (x_292) {
    let x_296 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_296 == 1.0f);
    let x_299 : vec3<f32> = vs_TEXCOORD4;
    let x_303 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat12 = (vec3<f32>(x_299.y, x_299.y, x_299.y) * vec3<f32>(x_303.x, x_303.y, x_303.z));
    let x_307 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_309 : vec3<f32> = vs_TEXCOORD4;
    let x_312 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + x_312);
    let x_315 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_317 : vec3<f32> = vs_TEXCOORD4;
    let x_320 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.z, x_317.z, x_317.z)) + x_320);
    let x_322 : vec3<f32> = u_xlat12;
    let x_324 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat12 = (x_322 + vec3<f32>(x_324.x, x_324.y, x_324.z));
    let x_327 : bool = u_xlatb2;
    if (x_327) {
      let x_331 : vec3<f32> = u_xlat12;
      x_328 = x_331;
    } else {
      let x_333 : vec3<f32> = vs_TEXCOORD4;
      x_328 = x_333;
    }
    let x_334 : vec3<f32> = x_328;
    let x_335 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_337 : vec4<f32> = u_xlat2;
    let x_341 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_343 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) + -(x_341));
    let x_344 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
    let x_346 : vec4<f32> = u_xlat2;
    let x_350 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_351 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) * x_350);
    let x_352 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_352.x, x_351.x, x_351.y, x_351.z);
    let x_355 : f32 = u_xlat2.y;
    u_xlat12.x = ((x_355 * 0.25f) + 0.75f);
    let x_363 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat33 = ((x_363 * 0.5f) + 0.75f);
    let x_368 : f32 = u_xlat12.x;
    let x_369 : f32 = u_xlat33;
    u_xlat2.x = max(x_368, x_369);
    let x_380 : vec4<f32> = u_xlat2;
    let x_382 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_380.x, x_380.z, x_380.w));
    u_xlat2 = x_382;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_388 : vec4<f32> = u_xlat2;
  let x_391 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_388, x_391);
  let x_395 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_395, 0.0f, 1.0f);
  let x_399 : f32 = u_xlat31;
  u_xlatb12 = (x_399 < 0.99000001f);
  let x_402 : bool = u_xlatb12;
  if (x_402) {
    let x_405 : vec3<f32> = vs_TEXCOORD4;
    let x_408 : vec4<f32> = x_18.x_LightPositionRange;
    u_xlat12 = (x_405 + -(vec3<f32>(x_408.x, x_408.y, x_408.z)));
    let x_413 : f32 = u_xlat12.y;
    let x_416 : f32 = u_xlat12.x;
    u_xlat33 = max(abs(x_413), abs(x_416));
    let x_420 : f32 = u_xlat12.z;
    let x_422 : f32 = u_xlat33;
    u_xlat33 = max(abs(x_420), x_422);
    let x_424 : f32 = u_xlat33;
    let x_427 : f32 = x_18.x_LightProjectionParams.z;
    u_xlat33 = (x_424 + -(x_427));
    let x_430 : f32 = u_xlat33;
    u_xlat33 = max(x_430, 0.00001f);
    let x_433 : f32 = u_xlat33;
    let x_435 : f32 = x_18.x_LightProjectionParams.w;
    u_xlat33 = (x_433 * x_435);
    let x_438 : f32 = x_18.x_LightProjectionParams.y;
    let x_439 : f32 = u_xlat33;
    u_xlat33 = (x_438 / x_439);
    let x_441 : f32 = u_xlat33;
    let x_443 : f32 = x_18.x_LightProjectionParams.x;
    u_xlat33 = (x_441 + -(x_443));
    let x_446 : f32 = u_xlat33;
    u_xlat33 = (-(x_446) + 1.0f);
    let x_449 : vec3<f32> = u_xlat12;
    let x_452 : vec3<f32> = (x_449 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_453 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
    let x_456 : vec4<f32> = u_xlat8;
    let x_457 : vec3<f32> = vec3<f32>(x_456.x, x_456.y, x_456.z);
    let x_458 : f32 = u_xlat33;
    txVec0 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458);
    let x_471 : vec4<f32> = txVec0;
    let x_473 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_471.xyz, x_471.w);
    u_xlat8.x = x_473;
    let x_476 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_476 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_481 : vec3<f32> = u_xlat9;
    let x_482 : f32 = u_xlat33;
    txVec1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482);
    let x_490 : vec4<f32> = txVec1;
    let x_492 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_490.xyz, x_490.w);
    u_xlat8.y = x_492;
    let x_494 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_494 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_498 : vec3<f32> = u_xlat9;
    let x_499 : f32 = u_xlat33;
    txVec2 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499);
    let x_507 : vec4<f32> = txVec2;
    let x_509 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_507.xyz, x_507.w);
    u_xlat8.z = x_509;
    let x_511 : vec3<f32> = u_xlat12;
    u_xlat12 = (x_511 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_515 : vec3<f32> = u_xlat12;
    let x_516 : f32 = u_xlat33;
    txVec3 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516);
    let x_524 : vec4<f32> = txVec3;
    let x_526 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_524.xyz, x_524.w);
    u_xlat8.w = x_526;
    let x_528 : vec4<f32> = u_xlat8;
    u_xlat12.x = dot(x_528, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_534 : f32 = x_18.x_LightShadowData.x;
    u_xlat22 = (-(x_534) + 1.0f);
    let x_538 : f32 = u_xlat12.x;
    let x_539 : f32 = u_xlat22;
    let x_542 : f32 = x_18.x_LightShadowData.x;
    u_xlat12.x = ((x_538 * x_539) + x_542);
  } else {
    u_xlat12.x = 1.0f;
  }
  let x_548 : f32 = u_xlat12.x;
  let x_551 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_548) + x_551);
  let x_554 : f32 = u_xlat31;
  let x_556 : f32 = u_xlat2.x;
  let x_559 : f32 = u_xlat12.x;
  u_xlat31 = ((x_554 * x_556) + x_559);
  let x_561 : vec3<f32> = u_xlat7;
  let x_562 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_561, x_562);
  let x_570 : vec4<f32> = u_xlat2;
  let x_572 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_570.x, x_570.x));
  u_xlat2.x = x_572.x;
  let x_583 : vec3<f32> = u_xlat7;
  let x_584 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_583);
  u_xlat12.x = x_584.w;
  let x_588 : f32 = u_xlat12.x;
  let x_590 : f32 = u_xlat2.x;
  u_xlat2.x = (x_588 * x_590);
  let x_593 : f32 = u_xlat31;
  let x_595 : f32 = u_xlat2.x;
  u_xlat31 = (x_593 * x_595);
  let x_598 : vec3<f32> = vs_TEXCOORD1;
  let x_599 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_598, x_599);
  let x_603 : vec3<f32> = vs_TEXCOORD2;
  let x_604 : vec3<f32> = u_xlat6;
  u_xlat2.y = dot(x_603, x_604);
  let x_608 : vec3<f32> = vs_TEXCOORD3;
  let x_609 : vec3<f32> = u_xlat6;
  u_xlat2.z = dot(x_608, x_609);
  let x_613 : vec4<f32> = u_xlat2;
  let x_615 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_613.x, x_613.y, x_613.z), vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_618);
  let x_620 : f32 = u_xlat32;
  let x_622 : vec4<f32> = u_xlat2;
  let x_624 : vec3<f32> = (vec3<f32>(x_620, x_620, x_620) * vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : f32 = u_xlat31;
  let x_631 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_627, x_627, x_627) * vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat4;
  let x_636 : vec4<f32> = vs_COLOR0;
  let x_641 : vec3<f32> = ((vec3<f32>(x_634.x, x_634.y, x_634.z) * vec3<f32>(x_636.x, x_636.y, x_636.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_642 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_646 : f32 = x_18.x_Metallic;
  let x_648 : f32 = x_18.x_Metallic;
  let x_650 : f32 = x_18.x_Metallic;
  let x_651 : vec3<f32> = vec3<f32>(x_646, x_648, x_650);
  let x_656 : vec4<f32> = u_xlat4;
  let x_661 : vec3<f32> = ((vec3<f32>(x_651.x, x_651.y, x_651.z) * vec3<f32>(x_656.x, x_656.y, x_656.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_662 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_665 : f32 = x_18.x_Metallic;
  u_xlat31 = ((-(x_665) * 0.959999979f) + 0.959999979f);
  let x_670 : f32 = u_xlat31;
  let x_672 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_670, x_670, x_670) * x_672);
  let x_676 : f32 = x_18.x_Glossiness;
  u_xlat31 = (-(x_676) + 1.0f);
  let x_679 : vec3<f32> = u_xlat0;
  let x_680 : f32 = u_xlat30;
  let x_683 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_679 * vec3<f32>(x_680, x_680, x_680)) + x_683);
  let x_685 : vec3<f32> = u_xlat0;
  let x_686 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_685, x_686);
  let x_688 : f32 = u_xlat30;
  u_xlat30 = max(x_688, 0.001f);
  let x_691 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_691);
  let x_693 : f32 = u_xlat30;
  let x_695 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_693, x_693, x_693) * x_695);
  let x_697 : vec4<f32> = u_xlat2;
  let x_699 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_697.x, x_697.y, x_697.z), x_699);
  let x_701 : vec4<f32> = u_xlat2;
  let x_703 : vec3<f32> = u_xlat1;
  u_xlat32 = dot(vec3<f32>(x_701.x, x_701.y, x_701.z), x_703);
  let x_705 : f32 = u_xlat32;
  u_xlat32 = clamp(x_705, 0.0f, 1.0f);
  let x_707 : vec4<f32> = u_xlat2;
  let x_709 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_707.x, x_707.y, x_707.z), x_709);
  let x_713 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_713, 0.0f, 1.0f);
  let x_716 : vec3<f32> = u_xlat1;
  let x_717 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_716, x_717);
  let x_721 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_721, 0.0f, 1.0f);
  let x_726 : f32 = u_xlat0.x;
  let x_728 : f32 = u_xlat0.x;
  u_xlat10.x = (x_726 * x_728);
  let x_731 : vec3<f32> = u_xlat10;
  let x_733 : f32 = u_xlat31;
  u_xlat10.x = dot(vec2<f32>(x_731.x, x_731.x), vec2<f32>(x_733, x_733));
  let x_738 : f32 = u_xlat10.x;
  u_xlat10.x = (x_738 + -0.5f);
  let x_743 : f32 = u_xlat32;
  u_xlat20 = (-(x_743) + 1.0f);
  let x_746 : f32 = u_xlat20;
  let x_747 : f32 = u_xlat20;
  u_xlat1.x = (x_746 * x_747);
  let x_751 : f32 = u_xlat1.x;
  let x_753 : f32 = u_xlat1.x;
  u_xlat1.x = (x_751 * x_753);
  let x_756 : f32 = u_xlat20;
  let x_758 : f32 = u_xlat1.x;
  u_xlat20 = (x_756 * x_758);
  let x_761 : f32 = u_xlat10.x;
  let x_762 : f32 = u_xlat20;
  u_xlat20 = ((x_761 * x_762) + 1.0f);
  let x_765 : f32 = u_xlat30;
  u_xlat1.x = (-(abs(x_765)) + 1.0f);
  let x_772 : f32 = u_xlat1.x;
  let x_774 : f32 = u_xlat1.x;
  u_xlat11 = (x_772 * x_774);
  let x_776 : f32 = u_xlat11;
  let x_777 : f32 = u_xlat11;
  u_xlat11 = (x_776 * x_777);
  let x_780 : f32 = u_xlat1.x;
  let x_781 : f32 = u_xlat11;
  u_xlat1.x = (x_780 * x_781);
  let x_785 : f32 = u_xlat10.x;
  let x_787 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_785 * x_787) + 1.0f);
  let x_792 : f32 = u_xlat10.x;
  let x_793 : f32 = u_xlat20;
  u_xlat10.x = (x_792 * x_793);
  let x_796 : f32 = u_xlat31;
  let x_797 : f32 = u_xlat31;
  u_xlat20 = (x_796 * x_797);
  let x_799 : f32 = u_xlat20;
  u_xlat20 = max(x_799, 0.002f);
  let x_802 : f32 = u_xlat20;
  u_xlat1.x = (-(x_802) + 1.0f);
  let x_806 : f32 = u_xlat30;
  let x_809 : f32 = u_xlat1.x;
  let x_811 : f32 = u_xlat20;
  u_xlat11 = ((abs(x_806) * x_809) + x_811);
  let x_813 : f32 = u_xlat32;
  let x_815 : f32 = u_xlat1.x;
  let x_817 : f32 = u_xlat20;
  u_xlat1.x = ((x_813 * x_815) + x_817);
  let x_820 : f32 = u_xlat30;
  let x_823 : f32 = u_xlat1.x;
  u_xlat30 = (abs(x_820) * x_823);
  let x_825 : f32 = u_xlat32;
  let x_826 : f32 = u_xlat11;
  let x_828 : f32 = u_xlat30;
  u_xlat30 = ((x_825 * x_826) + x_828);
  let x_830 : f32 = u_xlat30;
  u_xlat30 = (x_830 + 0.00001f);
  let x_832 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_832);
  let x_834 : f32 = u_xlat20;
  let x_835 : f32 = u_xlat20;
  u_xlat20 = (x_834 * x_835);
  let x_838 : f32 = u_xlat2.x;
  let x_839 : f32 = u_xlat20;
  let x_842 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_838 * x_839) + -(x_842));
  let x_847 : f32 = u_xlat1.x;
  let x_849 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_847 * x_849) + 1.0f);
  let x_853 : f32 = u_xlat20;
  u_xlat20 = (x_853 * 0.318309873f);
  let x_857 : f32 = u_xlat1.x;
  let x_859 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_857 * x_859) + 0.0000001f);
  let x_864 : f32 = u_xlat20;
  let x_866 : f32 = u_xlat1.x;
  u_xlat20 = (x_864 / x_866);
  let x_868 : f32 = u_xlat20;
  let x_869 : f32 = u_xlat30;
  u_xlat10.y = (x_868 * x_869);
  let x_872 : f32 = u_xlat32;
  let x_874 : vec3<f32> = u_xlat10;
  let x_876 : vec2<f32> = (vec2<f32>(x_872, x_872) * vec2<f32>(x_874.x, x_874.y));
  let x_877 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_876.x, x_876.y, x_877.z);
  let x_880 : f32 = u_xlat10.y;
  u_xlat20 = (x_880 * 3.141592741f);
  let x_883 : f32 = u_xlat20;
  u_xlat20 = max(x_883, 0.0f);
  let x_885 : vec4<f32> = u_xlat4;
  let x_887 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(vec3<f32>(x_885.x, x_885.y, x_885.z), vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_891 : f32 = u_xlat30;
  u_xlatb30 = !((x_891 == 0.0f));
  let x_893 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_893);
  let x_895 : f32 = u_xlat30;
  let x_896 : f32 = u_xlat20;
  u_xlat20 = (x_895 * x_896);
  let x_898 : vec3<f32> = u_xlat10;
  let x_900 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_898.x, x_898.x, x_898.x) * x_900);
  let x_902 : vec3<f32> = u_xlat6;
  let x_903 : f32 = u_xlat20;
  u_xlat10 = (x_902 * vec3<f32>(x_903, x_903, x_903));
  let x_907 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_907) + 1.0f);
  let x_912 : f32 = u_xlat0.x;
  let x_914 : f32 = u_xlat0.x;
  u_xlat31 = (x_912 * x_914);
  let x_916 : f32 = u_xlat31;
  let x_917 : f32 = u_xlat31;
  u_xlat31 = (x_916 * x_917);
  let x_920 : f32 = u_xlat0.x;
  let x_921 : f32 = u_xlat31;
  u_xlat0.x = (x_920 * x_921);
  let x_924 : vec4<f32> = u_xlat4;
  let x_928 : vec3<f32> = (-(vec3<f32>(x_924.x, x_924.y, x_924.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat2;
  let x_933 : vec3<f32> = u_xlat0;
  let x_936 : vec4<f32> = u_xlat4;
  let x_938 : vec3<f32> = ((vec3<f32>(x_931.x, x_931.y, x_931.z) * vec3<f32>(x_933.x, x_933.x, x_933.x)) + vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec3<f32> = u_xlat10;
  let x_942 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_941 * vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : vec3<f32> = u_xlat5;
  let x_946 : vec3<f32> = u_xlat1;
  let x_948 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_945 * x_946) + x_948);
  let x_951 : f32 = vs_TEXCOORD8;
  let x_953 : f32 = x_18.x_ProjectionParams.y;
  u_xlat30 = (x_951 / x_953);
  let x_955 : f32 = u_xlat30;
  u_xlat30 = (-(x_955) + 1.0f);
  let x_958 : f32 = u_xlat30;
  let x_960 : f32 = x_18.x_ProjectionParams.z;
  u_xlat30 = (x_958 * x_960);
  let x_962 : f32 = u_xlat30;
  u_xlat30 = max(x_962, 0.0f);
  let x_964 : f32 = u_xlat30;
  let x_967 : f32 = x_18.unity_FogParams.x;
  u_xlat30 = (x_964 * x_967);
  let x_969 : f32 = u_xlat30;
  let x_970 : f32 = u_xlat30;
  u_xlat30 = (x_969 * -(x_970));
  let x_973 : f32 = u_xlat30;
  u_xlat30 = exp2(x_973);
  let x_977 : vec3<f32> = u_xlat0;
  let x_978 : f32 = u_xlat30;
  let x_980 : vec3<f32> = (x_977 * vec3<f32>(x_978, x_978, x_978));
  let x_981 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(6) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD8_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

