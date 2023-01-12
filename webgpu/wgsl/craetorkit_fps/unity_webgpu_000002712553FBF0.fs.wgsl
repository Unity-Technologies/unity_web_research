struct PGlobals {
  x_Time : vec4<f32>,
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
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(9) var sampler_Normal : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

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
  let x_216 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_218 : vec3<f32> = vs_TEXCOORD4;
  let x_221 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218.z, x_218.z, x_218.z)) + x_221);
  let x_223 : vec3<f32> = u_xlat7;
  let x_226 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_223 + vec3<f32>(x_226.x, x_226.y, x_226.z));
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
    let x_407 : vec4<f32> = x_18.x_LightPositionRange;
    u_xlat12 = (x_405 + -(vec3<f32>(x_407.x, x_407.y, x_407.z)));
    let x_412 : f32 = u_xlat12.y;
    let x_415 : f32 = u_xlat12.x;
    u_xlat33 = max(abs(x_412), abs(x_415));
    let x_419 : f32 = u_xlat12.z;
    let x_421 : f32 = u_xlat33;
    u_xlat33 = max(abs(x_419), x_421);
    let x_423 : f32 = u_xlat33;
    let x_426 : f32 = x_18.x_LightProjectionParams.z;
    u_xlat33 = (x_423 + -(x_426));
    let x_429 : f32 = u_xlat33;
    u_xlat33 = max(x_429, 0.00001f);
    let x_432 : f32 = u_xlat33;
    let x_434 : f32 = x_18.x_LightProjectionParams.w;
    u_xlat33 = (x_432 * x_434);
    let x_437 : f32 = x_18.x_LightProjectionParams.y;
    let x_438 : f32 = u_xlat33;
    u_xlat33 = (x_437 / x_438);
    let x_440 : f32 = u_xlat33;
    let x_442 : f32 = x_18.x_LightProjectionParams.x;
    u_xlat33 = (x_440 + -(x_442));
    let x_445 : f32 = u_xlat33;
    u_xlat33 = (-(x_445) + 1.0f);
    let x_448 : vec3<f32> = u_xlat12;
    let x_451 : vec3<f32> = (x_448 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_452 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
    let x_455 : vec4<f32> = u_xlat8;
    let x_456 : vec3<f32> = vec3<f32>(x_455.x, x_455.y, x_455.z);
    let x_457 : f32 = u_xlat33;
    txVec0 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457);
    let x_470 : vec4<f32> = txVec0;
    let x_472 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_470.xyz, x_470.w);
    u_xlat8.x = x_472;
    let x_475 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_475 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_480 : vec3<f32> = u_xlat9;
    let x_481 : f32 = u_xlat33;
    txVec1 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481);
    let x_489 : vec4<f32> = txVec1;
    let x_491 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_489.xyz, x_489.w);
    u_xlat8.y = x_491;
    let x_493 : vec3<f32> = u_xlat12;
    u_xlat9 = (x_493 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_497 : vec3<f32> = u_xlat9;
    let x_498 : f32 = u_xlat33;
    txVec2 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498);
    let x_506 : vec4<f32> = txVec2;
    let x_508 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_506.xyz, x_506.w);
    u_xlat8.z = x_508;
    let x_510 : vec3<f32> = u_xlat12;
    u_xlat12 = (x_510 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_514 : vec3<f32> = u_xlat12;
    let x_515 : f32 = u_xlat33;
    txVec3 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515);
    let x_523 : vec4<f32> = txVec3;
    let x_525 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_523.xyz, x_523.w);
    u_xlat8.w = x_525;
    let x_527 : vec4<f32> = u_xlat8;
    u_xlat12.x = dot(x_527, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_533 : f32 = x_18.x_LightShadowData.x;
    u_xlat22 = (-(x_533) + 1.0f);
    let x_537 : f32 = u_xlat12.x;
    let x_538 : f32 = u_xlat22;
    let x_541 : f32 = x_18.x_LightShadowData.x;
    u_xlat12.x = ((x_537 * x_538) + x_541);
  } else {
    u_xlat12.x = 1.0f;
  }
  let x_547 : f32 = u_xlat12.x;
  let x_550 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_547) + x_550);
  let x_553 : f32 = u_xlat31;
  let x_555 : f32 = u_xlat2.x;
  let x_558 : f32 = u_xlat12.x;
  u_xlat31 = ((x_553 * x_555) + x_558);
  let x_560 : vec3<f32> = u_xlat7;
  let x_561 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_560, x_561);
  let x_569 : vec4<f32> = u_xlat2;
  let x_571 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_569.x, x_569.x));
  u_xlat2.x = x_571.x;
  let x_574 : f32 = u_xlat31;
  let x_576 : f32 = u_xlat2.x;
  u_xlat31 = (x_574 * x_576);
  let x_579 : vec3<f32> = vs_TEXCOORD1;
  let x_580 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_579, x_580);
  let x_584 : vec3<f32> = vs_TEXCOORD2;
  let x_585 : vec3<f32> = u_xlat6;
  u_xlat2.y = dot(x_584, x_585);
  let x_589 : vec3<f32> = vs_TEXCOORD3;
  let x_590 : vec3<f32> = u_xlat6;
  u_xlat2.z = dot(x_589, x_590);
  let x_594 : vec4<f32> = u_xlat2;
  let x_596 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_594.x, x_594.y, x_594.z), vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_599);
  let x_601 : f32 = u_xlat32;
  let x_603 : vec4<f32> = u_xlat2;
  let x_605 : vec3<f32> = (vec3<f32>(x_601, x_601, x_601) * vec3<f32>(x_603.x, x_603.y, x_603.z));
  let x_606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : f32 = u_xlat31;
  let x_612 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_608, x_608, x_608) * vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_615 : vec4<f32> = u_xlat4;
  let x_617 : vec4<f32> = vs_COLOR0;
  let x_622 : vec3<f32> = ((vec3<f32>(x_615.x, x_615.y, x_615.z) * vec3<f32>(x_617.x, x_617.y, x_617.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_623 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_627 : f32 = x_18.x_Metallic;
  let x_629 : f32 = x_18.x_Metallic;
  let x_631 : f32 = x_18.x_Metallic;
  let x_632 : vec3<f32> = vec3<f32>(x_627, x_629, x_631);
  let x_637 : vec4<f32> = u_xlat4;
  let x_642 : vec3<f32> = ((vec3<f32>(x_632.x, x_632.y, x_632.z) * vec3<f32>(x_637.x, x_637.y, x_637.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : f32 = x_18.x_Metallic;
  u_xlat31 = ((-(x_646) * 0.959999979f) + 0.959999979f);
  let x_651 : f32 = u_xlat31;
  let x_653 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_651, x_651, x_651) * x_653);
  let x_657 : f32 = x_18.x_Glossiness;
  u_xlat31 = (-(x_657) + 1.0f);
  let x_660 : vec3<f32> = u_xlat0;
  let x_661 : f32 = u_xlat30;
  let x_664 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_660 * vec3<f32>(x_661, x_661, x_661)) + x_664);
  let x_666 : vec3<f32> = u_xlat0;
  let x_667 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_666, x_667);
  let x_669 : f32 = u_xlat30;
  u_xlat30 = max(x_669, 0.001f);
  let x_672 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_672);
  let x_674 : f32 = u_xlat30;
  let x_676 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_674, x_674, x_674) * x_676);
  let x_678 : vec4<f32> = u_xlat2;
  let x_680 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_678.x, x_678.y, x_678.z), x_680);
  let x_682 : vec4<f32> = u_xlat2;
  let x_684 : vec3<f32> = u_xlat1;
  u_xlat32 = dot(vec3<f32>(x_682.x, x_682.y, x_682.z), x_684);
  let x_686 : f32 = u_xlat32;
  u_xlat32 = clamp(x_686, 0.0f, 1.0f);
  let x_688 : vec4<f32> = u_xlat2;
  let x_690 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_688.x, x_688.y, x_688.z), x_690);
  let x_694 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_694, 0.0f, 1.0f);
  let x_697 : vec3<f32> = u_xlat1;
  let x_698 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_697, x_698);
  let x_702 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_702, 0.0f, 1.0f);
  let x_707 : f32 = u_xlat0.x;
  let x_709 : f32 = u_xlat0.x;
  u_xlat10.x = (x_707 * x_709);
  let x_712 : vec3<f32> = u_xlat10;
  let x_714 : f32 = u_xlat31;
  u_xlat10.x = dot(vec2<f32>(x_712.x, x_712.x), vec2<f32>(x_714, x_714));
  let x_719 : f32 = u_xlat10.x;
  u_xlat10.x = (x_719 + -0.5f);
  let x_724 : f32 = u_xlat32;
  u_xlat20 = (-(x_724) + 1.0f);
  let x_727 : f32 = u_xlat20;
  let x_728 : f32 = u_xlat20;
  u_xlat1.x = (x_727 * x_728);
  let x_732 : f32 = u_xlat1.x;
  let x_734 : f32 = u_xlat1.x;
  u_xlat1.x = (x_732 * x_734);
  let x_737 : f32 = u_xlat20;
  let x_739 : f32 = u_xlat1.x;
  u_xlat20 = (x_737 * x_739);
  let x_742 : f32 = u_xlat10.x;
  let x_743 : f32 = u_xlat20;
  u_xlat20 = ((x_742 * x_743) + 1.0f);
  let x_746 : f32 = u_xlat30;
  u_xlat1.x = (-(abs(x_746)) + 1.0f);
  let x_753 : f32 = u_xlat1.x;
  let x_755 : f32 = u_xlat1.x;
  u_xlat11 = (x_753 * x_755);
  let x_757 : f32 = u_xlat11;
  let x_758 : f32 = u_xlat11;
  u_xlat11 = (x_757 * x_758);
  let x_761 : f32 = u_xlat1.x;
  let x_762 : f32 = u_xlat11;
  u_xlat1.x = (x_761 * x_762);
  let x_766 : f32 = u_xlat10.x;
  let x_768 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_766 * x_768) + 1.0f);
  let x_773 : f32 = u_xlat10.x;
  let x_774 : f32 = u_xlat20;
  u_xlat10.x = (x_773 * x_774);
  let x_777 : f32 = u_xlat31;
  let x_778 : f32 = u_xlat31;
  u_xlat20 = (x_777 * x_778);
  let x_780 : f32 = u_xlat20;
  u_xlat20 = max(x_780, 0.002f);
  let x_783 : f32 = u_xlat20;
  u_xlat1.x = (-(x_783) + 1.0f);
  let x_787 : f32 = u_xlat30;
  let x_790 : f32 = u_xlat1.x;
  let x_792 : f32 = u_xlat20;
  u_xlat11 = ((abs(x_787) * x_790) + x_792);
  let x_794 : f32 = u_xlat32;
  let x_796 : f32 = u_xlat1.x;
  let x_798 : f32 = u_xlat20;
  u_xlat1.x = ((x_794 * x_796) + x_798);
  let x_801 : f32 = u_xlat30;
  let x_804 : f32 = u_xlat1.x;
  u_xlat30 = (abs(x_801) * x_804);
  let x_806 : f32 = u_xlat32;
  let x_807 : f32 = u_xlat11;
  let x_809 : f32 = u_xlat30;
  u_xlat30 = ((x_806 * x_807) + x_809);
  let x_811 : f32 = u_xlat30;
  u_xlat30 = (x_811 + 0.00001f);
  let x_813 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_813);
  let x_815 : f32 = u_xlat20;
  let x_816 : f32 = u_xlat20;
  u_xlat20 = (x_815 * x_816);
  let x_819 : f32 = u_xlat2.x;
  let x_820 : f32 = u_xlat20;
  let x_823 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_819 * x_820) + -(x_823));
  let x_828 : f32 = u_xlat1.x;
  let x_830 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_828 * x_830) + 1.0f);
  let x_834 : f32 = u_xlat20;
  u_xlat20 = (x_834 * 0.318309873f);
  let x_838 : f32 = u_xlat1.x;
  let x_840 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_838 * x_840) + 0.0000001f);
  let x_845 : f32 = u_xlat20;
  let x_847 : f32 = u_xlat1.x;
  u_xlat20 = (x_845 / x_847);
  let x_849 : f32 = u_xlat20;
  let x_850 : f32 = u_xlat30;
  u_xlat10.y = (x_849 * x_850);
  let x_853 : f32 = u_xlat32;
  let x_855 : vec3<f32> = u_xlat10;
  let x_857 : vec2<f32> = (vec2<f32>(x_853, x_853) * vec2<f32>(x_855.x, x_855.y));
  let x_858 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_857.x, x_857.y, x_858.z);
  let x_861 : f32 = u_xlat10.y;
  u_xlat20 = (x_861 * 3.141592741f);
  let x_864 : f32 = u_xlat20;
  u_xlat20 = max(x_864, 0.0f);
  let x_866 : vec4<f32> = u_xlat4;
  let x_868 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(vec3<f32>(x_866.x, x_866.y, x_866.z), vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_872 : f32 = u_xlat30;
  u_xlatb30 = !((x_872 == 0.0f));
  let x_874 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_874);
  let x_876 : f32 = u_xlat30;
  let x_877 : f32 = u_xlat20;
  u_xlat20 = (x_876 * x_877);
  let x_879 : vec3<f32> = u_xlat10;
  let x_881 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_879.x, x_879.x, x_879.x) * x_881);
  let x_883 : vec3<f32> = u_xlat6;
  let x_884 : f32 = u_xlat20;
  u_xlat10 = (x_883 * vec3<f32>(x_884, x_884, x_884));
  let x_888 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_888) + 1.0f);
  let x_893 : f32 = u_xlat0.x;
  let x_895 : f32 = u_xlat0.x;
  u_xlat31 = (x_893 * x_895);
  let x_897 : f32 = u_xlat31;
  let x_898 : f32 = u_xlat31;
  u_xlat31 = (x_897 * x_898);
  let x_901 : f32 = u_xlat0.x;
  let x_902 : f32 = u_xlat31;
  u_xlat0.x = (x_901 * x_902);
  let x_905 : vec4<f32> = u_xlat4;
  let x_909 : vec3<f32> = (-(vec3<f32>(x_905.x, x_905.y, x_905.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_910 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec3<f32> = u_xlat0;
  let x_917 : vec4<f32> = u_xlat4;
  let x_919 : vec3<f32> = ((vec3<f32>(x_912.x, x_912.y, x_912.z) * vec3<f32>(x_914.x, x_914.x, x_914.x)) + vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : vec3<f32> = u_xlat10;
  let x_923 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_922 * vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_928 : vec3<f32> = u_xlat5;
  let x_929 : vec3<f32> = u_xlat1;
  let x_931 : vec3<f32> = u_xlat0;
  let x_932 : vec3<f32> = ((x_928 * x_929) + x_931);
  let x_933 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

