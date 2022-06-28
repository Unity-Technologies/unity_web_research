type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
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
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_21 : PGlobals;

var<private> u_xlat30 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat32 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> u_xlat33 : f32;

var<private> u_xlatb33 : bool;

var<private> u_xlat24 : f32;

var<private> u_xlat34 : f32;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlat35 : f32;

var<private> u_xlatb31 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat12 : vec3<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(8) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat22 : f32;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

@group(0) @binding(6) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_474 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_26 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_31 : vec3<f32> = u_xlat0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_31, x_32);
  let x_34 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat30;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_37, x_37, x_37) * x_39);
  let x_43 : vec3<f32> = vs_TEXCOORD4;
  let x_48 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_58);
  let x_61 : f32 = u_xlat31;
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_61, x_61, x_61) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_81 : vec2<f32> = vs_TEXCOORD0;
  let x_82 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_81);
  u_xlat4 = vec2<f32>(x_82.x, x_82.w);
  let x_85 : vec3<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat5 = (vec3<f32>(x_85.z, x_85.y, x_85.x) + -(vec3<f32>(x_90.z, x_90.y, x_90.x)));
  let x_95 : vec3<f32> = u_xlat5;
  let x_99 : vec2<f32> = (vec2<f32>(x_95.x, x_95.z) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_100 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_100.x, x_99.x, x_100.z, x_99.y);
  let x_105 : f32 = x_21.x_Cutoff;
  let x_107 : f32 = x_21.x_Cutoff;
  u_xlat31 = (x_105 + x_107);
  let x_111 : f32 = u_xlat5.y;
  let x_114 : f32 = u_xlat31;
  u_xlat6.x = ((x_111 * 2.0f) + x_114);
  let x_120 : f32 = u_xlat5.y;
  let x_124 : f32 = x_21.x_Cutoff;
  u_xlat7.x = ((x_120 * 4.0f) + x_124);
  let x_129 : f32 = x_21.x_bounds.y;
  u_xlat31 = (x_129 + 0.200000003f);
  let x_137 : vec4<f32> = u_xlat6;
  let x_139 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_137.x, x_137.y));
  u_xlat32 = x_139.x;
  let x_143 : f32 = u_xlat6.w;
  u_xlat7.y = x_143;
  let x_149 : vec3<f32> = u_xlat7;
  let x_151 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_149.x, x_149.y));
  u_xlat33 = x_151.x;
  let x_153 : f32 = u_xlat32;
  let x_155 : f32 = u_xlat33;
  u_xlat32 = dot(vec2<f32>(x_153, x_153), vec2<f32>(x_155, x_155));
  let x_158 : f32 = u_xlat31;
  u_xlat33 = (x_158 * 0.5f);
  let x_162 : f32 = x_21.x_Cutoff;
  let x_163 : f32 = u_xlat31;
  let x_165 : f32 = u_xlat33;
  u_xlat31 = ((x_162 * x_163) + -(x_165));
  let x_172 : f32 = u_xlat5.y;
  let x_173 : f32 = u_xlat31;
  u_xlatb33 = (x_172 >= x_173);
  let x_176 : f32 = u_xlat31;
  let x_179 : f32 = x_21.x_EdgeSizeBot;
  u_xlat24 = (x_176 + -(x_179));
  let x_183 : f32 = u_xlat31;
  let x_184 : f32 = u_xlat24;
  u_xlat34 = (x_183 + -(x_184));
  let x_187 : f32 = u_xlat24;
  let x_190 : f32 = u_xlat5.y;
  u_xlat24 = (-(x_187) + x_190);
  let x_193 : f32 = u_xlat34;
  u_xlat34 = (1.0f / x_193);
  let x_195 : f32 = u_xlat34;
  let x_196 : f32 = u_xlat24;
  u_xlat24 = (x_195 * x_196);
  let x_198 : f32 = u_xlat24;
  u_xlat24 = clamp(x_198, 0.0f, 1.0f);
  let x_201 : f32 = u_xlat24;
  u_xlat34 = ((x_201 * -2.0f) + 3.0f);
  let x_206 : f32 = u_xlat24;
  let x_207 : f32 = u_xlat24;
  u_xlat24 = (x_206 * x_207);
  let x_209 : f32 = u_xlat31;
  let x_212 : f32 = x_21.x_EdgeSizeTop;
  u_xlat5.x = (x_209 + x_212);
  let x_215 : f32 = u_xlat31;
  let x_217 : f32 = u_xlat5.x;
  u_xlat31 = (x_215 + -(x_217));
  let x_221 : f32 = u_xlat5.x;
  let x_224 : f32 = u_xlat5.y;
  u_xlat5.x = (-(x_221) + x_224);
  let x_227 : f32 = u_xlat31;
  u_xlat31 = (1.0f / x_227);
  let x_229 : f32 = u_xlat31;
  let x_231 : f32 = u_xlat5.x;
  u_xlat31 = (x_229 * x_231);
  let x_233 : f32 = u_xlat31;
  u_xlat31 = clamp(x_233, 0.0f, 1.0f);
  let x_235 : f32 = u_xlat31;
  u_xlat5.x = ((x_235 * -2.0f) + 3.0f);
  let x_239 : f32 = u_xlat31;
  let x_240 : f32 = u_xlat31;
  u_xlat31 = (x_239 * x_240);
  let x_242 : f32 = u_xlat31;
  let x_244 : f32 = u_xlat5.x;
  u_xlat31 = (x_242 * x_244);
  let x_251 : vec2<f32> = vs_TEXCOORD0;
  let x_252 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_251);
  u_xlat5 = vec3<f32>(x_252.x, x_252.y, x_252.z);
  let x_254 : vec3<f32> = u_xlat5;
  let x_257 : vec4<f32> = x_21.x_Color;
  let x_259 : vec3<f32> = (x_254 * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_267 : vec2<f32> = vs_TEXCOORD0;
  let x_268 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_267);
  u_xlat7 = vec3<f32>(x_268.x, x_268.y, x_268.w);
  let x_272 : f32 = u_xlat7.z;
  let x_274 : f32 = u_xlat7.x;
  u_xlat7.x = (x_272 * x_274);
  let x_277 : vec3<f32> = u_xlat7;
  let x_283 : vec2<f32> = ((vec2<f32>(x_277.x, x_277.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_284 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_283.x, x_283.y, x_284.z);
  let x_287 : vec3<f32> = u_xlat7;
  let x_289 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec2<f32>(x_287.x, x_287.y), vec2<f32>(x_289.x, x_289.y));
  let x_292 : f32 = u_xlat35;
  u_xlat35 = min(x_292, 1.0f);
  let x_294 : f32 = u_xlat35;
  u_xlat35 = (-(x_294) + 1.0f);
  let x_297 : f32 = u_xlat35;
  u_xlat7.z = sqrt(x_297);
  let x_300 : vec2<f32> = u_xlat4;
  let x_303 : f32 = x_21.x_Metallic;
  let x_306 : f32 = x_21.x_Glossiness;
  u_xlat4 = (x_300 * vec2<f32>(x_303, x_306));
  let x_309 : f32 = u_xlat34;
  let x_311 : f32 = u_xlat24;
  u_xlat24 = ((-(x_309) * x_311) + 1.0f);
  let x_314 : f32 = u_xlat24;
  let x_316 : f32 = u_xlat4.x;
  u_xlat4.x = (x_314 * x_316);
  let x_319 : bool = u_xlatb33;
  u_xlat33 = select(1.0f, 0.0f, x_319);
  let x_321 : f32 = u_xlat32;
  let x_322 : f32 = u_xlat31;
  let x_324 : f32 = u_xlat33;
  u_xlat31 = ((x_321 * x_322) + x_324);
  let x_326 : f32 = u_xlat31;
  let x_328 : f32 = x_21.x_Cutoff;
  u_xlat31 = (x_326 + -(x_328));
  let x_331 : f32 = u_xlat31;
  let x_334 : f32 = x_21.x_Cutoff2;
  u_xlat31 = (x_331 + -(x_334));
  let x_338 : f32 = u_xlat31;
  u_xlatb31 = (x_338 < 0.0f);
  let x_340 : bool = u_xlatb31;
  if (((select(0i, 1i, x_340) * -1i) != 0i)) {
    discard;
  }
  let x_349 : vec3<f32> = vs_TEXCOORD4;
  let x_353 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat8 = (vec4<f32>(x_349.y, x_349.y, x_349.y, x_349.y) * x_353);
  let x_356 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_357 : vec3<f32> = vs_TEXCOORD4;
  let x_360 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_356 * vec4<f32>(x_357.x, x_357.x, x_357.x, x_357.x)) + x_360);
  let x_364 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_365 : vec3<f32> = vs_TEXCOORD4;
  let x_368 : vec4<f32> = u_xlat8;
  u_xlat8 = ((x_364 * vec4<f32>(x_365.z, x_365.z, x_365.z, x_365.z)) + x_368);
  let x_370 : vec4<f32> = u_xlat8;
  let x_372 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat8 = (x_370 + x_372);
  let x_377 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat9.x = x_377;
  let x_380 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat9.y = x_380;
  let x_383 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat9.z = x_383;
  let x_385 : vec4<f32> = u_xlat2;
  let x_387 : vec4<f32> = u_xlat9;
  u_xlat31 = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec3<f32> = vs_TEXCOORD4;
  let x_393 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_396 : vec3<f32> = (x_390 + -(vec3<f32>(x_393.x, x_393.y, x_393.z)));
  let x_397 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat2;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_406 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_406);
  let x_409 : f32 = u_xlat31;
  let x_412 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_409) + x_412);
  let x_416 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_418 : f32 = u_xlat2.x;
  let x_420 : f32 = u_xlat31;
  u_xlat31 = ((x_416 * x_418) + x_420);
  let x_422 : f32 = u_xlat31;
  let x_425 : f32 = x_21.x_LightShadowData.z;
  let x_428 : f32 = x_21.x_LightShadowData.w;
  u_xlat31 = ((x_422 * x_425) + x_428);
  let x_430 : f32 = u_xlat31;
  u_xlat31 = clamp(x_430, 0.0f, 1.0f);
  let x_435 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_435 == 1.0f);
  let x_437 : bool = u_xlatb2;
  if (x_437) {
    let x_441 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_441 == 1.0f);
    let x_444 : vec3<f32> = vs_TEXCOORD4;
    let x_448 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat12 = (vec3<f32>(x_444.y, x_444.y, x_444.y) * vec3<f32>(x_448.x, x_448.y, x_448.z));
    let x_452 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_454 : vec3<f32> = vs_TEXCOORD4;
    let x_457 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_454.x, x_454.x, x_454.x)) + x_457);
    let x_460 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_462 : vec3<f32> = vs_TEXCOORD4;
    let x_465 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_462.z, x_462.z, x_462.z)) + x_465);
    let x_467 : vec3<f32> = u_xlat12;
    let x_469 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat12 = (x_467 + vec3<f32>(x_469.x, x_469.y, x_469.z));
    let x_472 : bool = u_xlatb2;
    if (x_472) {
      let x_477 : vec3<f32> = u_xlat12;
      x_474 = x_477;
    } else {
      let x_479 : vec3<f32> = vs_TEXCOORD4;
      x_474 = x_479;
    }
    let x_480 : vec3<f32> = x_474;
    let x_481 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
    let x_483 : vec4<f32> = u_xlat2;
    let x_487 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_489 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) + -(x_487));
    let x_490 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
    let x_492 : vec4<f32> = u_xlat2;
    let x_496 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_497 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) * x_496);
    let x_498 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_498.x, x_497.x, x_497.y, x_497.z);
    let x_501 : f32 = u_xlat2.y;
    u_xlat12.x = ((x_501 * 0.25f) + 0.75f);
    let x_508 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat33 = ((x_508 * 0.5f) + 0.75f);
    let x_512 : f32 = u_xlat12.x;
    let x_513 : f32 = u_xlat33;
    u_xlat2.x = max(x_512, x_513);
    let x_524 : vec4<f32> = u_xlat2;
    let x_526 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_524.x, x_524.z, x_524.w));
    u_xlat2 = x_526;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_532 : vec4<f32> = u_xlat2;
  let x_534 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_532, x_534);
  let x_538 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_538, 0.0f, 1.0f);
  let x_541 : vec3<f32> = vs_TEXCOORD4;
  let x_544 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat9 = (vec4<f32>(x_541.y, x_541.y, x_541.y, x_541.y) * x_544);
  let x_547 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_548 : vec3<f32> = vs_TEXCOORD4;
  let x_551 : vec4<f32> = u_xlat9;
  u_xlat9 = ((x_547 * vec4<f32>(x_548.x, x_548.x, x_548.x, x_548.x)) + x_551);
  let x_554 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_555 : vec3<f32> = vs_TEXCOORD4;
  let x_558 : vec4<f32> = u_xlat9;
  u_xlat9 = ((x_554 * vec4<f32>(x_555.z, x_555.z, x_555.z, x_555.z)) + x_558);
  let x_560 : vec4<f32> = u_xlat9;
  let x_562 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat9 = (x_560 + x_562);
  let x_564 : vec4<f32> = u_xlat9;
  let x_566 : vec4<f32> = u_xlat9;
  u_xlat12 = (vec3<f32>(x_564.x, x_564.y, x_564.z) / vec3<f32>(x_566.w, x_566.w, x_566.w));
  let x_570 : vec3<f32> = u_xlat12;
  let x_571 : vec2<f32> = vec2<f32>(x_570.x, x_570.y);
  let x_573 : f32 = u_xlat12.z;
  txVec0 = vec3<f32>(x_571.x, x_571.y, x_573);
  let x_585 : vec3<f32> = txVec0;
  let x_587 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_585.xy, x_585.z);
  u_xlat12.x = x_587;
  let x_591 : f32 = x_21.x_LightShadowData.x;
  u_xlat22 = (-(x_591) + 1.0f);
  let x_595 : f32 = u_xlat12.x;
  let x_596 : f32 = u_xlat22;
  let x_599 : f32 = x_21.x_LightShadowData.x;
  u_xlat12.x = ((x_595 * x_596) + x_599);
  let x_603 : f32 = u_xlat12.x;
  let x_606 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_603) + x_606);
  let x_609 : f32 = u_xlat31;
  let x_611 : f32 = u_xlat2.x;
  let x_614 : f32 = u_xlat12.x;
  u_xlat31 = ((x_609 * x_611) + x_614);
  let x_617 : f32 = u_xlat8.z;
  u_xlatb2 = (0.0f < x_617);
  let x_619 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_619);
  let x_622 : vec4<f32> = u_xlat8;
  let x_624 : vec4<f32> = u_xlat8;
  let x_626 : vec2<f32> = (vec2<f32>(x_622.x, x_622.y) / vec2<f32>(x_624.w, x_624.w));
  let x_627 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_626.x, x_626.y, x_627.z);
  let x_629 : vec3<f32> = u_xlat12;
  let x_632 : vec2<f32> = (vec2<f32>(x_629.x, x_629.y) + vec2<f32>(0.5f, 0.5f));
  let x_633 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_632.x, x_632.y, x_633.z);
  let x_640 : vec3<f32> = u_xlat12;
  let x_642 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_640.x, x_640.y));
  u_xlat12.x = x_642.w;
  let x_646 : f32 = u_xlat12.x;
  let x_648 : f32 = u_xlat2.x;
  u_xlat2.x = (x_646 * x_648);
  let x_651 : vec4<f32> = u_xlat8;
  let x_653 : vec4<f32> = u_xlat8;
  u_xlat12.x = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_662 : vec3<f32> = u_xlat12;
  let x_664 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_662.x, x_662.x));
  u_xlat12.x = x_664.x;
  let x_668 : f32 = u_xlat12.x;
  let x_670 : f32 = u_xlat2.x;
  u_xlat2.x = (x_668 * x_670);
  let x_673 : f32 = u_xlat31;
  let x_675 : f32 = u_xlat2.x;
  u_xlat31 = (x_673 * x_675);
  let x_678 : vec3<f32> = vs_TEXCOORD1;
  let x_679 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_678, x_679);
  let x_683 : vec3<f32> = vs_TEXCOORD2;
  let x_684 : vec3<f32> = u_xlat7;
  u_xlat2.y = dot(x_683, x_684);
  let x_688 : vec3<f32> = vs_TEXCOORD3;
  let x_689 : vec3<f32> = u_xlat7;
  u_xlat2.z = dot(x_688, x_689);
  let x_692 : vec4<f32> = u_xlat2;
  let x_694 : vec4<f32> = u_xlat2;
  u_xlat32 = dot(vec3<f32>(x_692.x, x_692.y, x_692.z), vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_697);
  let x_699 : f32 = u_xlat32;
  let x_701 : vec4<f32> = u_xlat2;
  let x_703 : vec3<f32> = (vec3<f32>(x_699, x_699, x_699) * vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : f32 = u_xlat31;
  let x_710 : vec4<f32> = x_21.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_706, x_706, x_706) * vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_713 : vec3<f32> = u_xlat5;
  let x_715 : vec4<f32> = x_21.x_Color;
  u_xlat5 = ((x_713 * vec3<f32>(x_715.x, x_715.y, x_715.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_721 : vec2<f32> = u_xlat4;
  let x_723 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_721.x, x_721.x, x_721.x) * x_723) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_729 : f32 = u_xlat4.x;
  u_xlat31 = ((-(x_729) * 0.959999979f) + 0.959999979f);
  let x_734 : f32 = u_xlat31;
  let x_736 : vec4<f32> = u_xlat6;
  let x_738 : vec3<f32> = (vec3<f32>(x_734, x_734, x_734) * vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_742 : f32 = u_xlat4.y;
  let x_744 : f32 = u_xlat24;
  u_xlat31 = ((-(x_742) * x_744) + 1.0f);
  let x_747 : vec3<f32> = u_xlat0;
  let x_748 : f32 = u_xlat30;
  let x_751 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_747 * vec3<f32>(x_748, x_748, x_748)) + x_751);
  let x_753 : vec3<f32> = u_xlat0;
  let x_754 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_753, x_754);
  let x_756 : f32 = u_xlat30;
  u_xlat30 = max(x_756, 0.001f);
  let x_759 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_759);
  let x_761 : f32 = u_xlat30;
  let x_763 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_761, x_761, x_761) * x_763);
  let x_765 : vec4<f32> = u_xlat2;
  let x_767 : vec3<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_765.x, x_765.y, x_765.z), x_767);
  let x_769 : vec4<f32> = u_xlat2;
  let x_771 : vec3<f32> = u_xlat1;
  u_xlat32 = dot(vec3<f32>(x_769.x, x_769.y, x_769.z), x_771);
  let x_773 : f32 = u_xlat32;
  u_xlat32 = clamp(x_773, 0.0f, 1.0f);
  let x_775 : vec4<f32> = u_xlat2;
  let x_777 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_775.x, x_775.y, x_775.z), x_777);
  let x_781 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_781, 0.0f, 1.0f);
  let x_784 : vec3<f32> = u_xlat1;
  let x_785 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_784, x_785);
  let x_789 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_789, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat0.x;
  let x_796 : f32 = u_xlat0.x;
  u_xlat10.x = (x_794 * x_796);
  let x_799 : vec3<f32> = u_xlat10;
  let x_801 : f32 = u_xlat31;
  u_xlat10.x = dot(vec2<f32>(x_799.x, x_799.x), vec2<f32>(x_801, x_801));
  let x_806 : f32 = u_xlat10.x;
  u_xlat10.x = (x_806 + -0.5f);
  let x_811 : f32 = u_xlat32;
  u_xlat20 = (-(x_811) + 1.0f);
  let x_814 : f32 = u_xlat20;
  let x_815 : f32 = u_xlat20;
  u_xlat1.x = (x_814 * x_815);
  let x_819 : f32 = u_xlat1.x;
  let x_821 : f32 = u_xlat1.x;
  u_xlat1.x = (x_819 * x_821);
  let x_824 : f32 = u_xlat20;
  let x_826 : f32 = u_xlat1.x;
  u_xlat20 = (x_824 * x_826);
  let x_829 : f32 = u_xlat10.x;
  let x_830 : f32 = u_xlat20;
  u_xlat20 = ((x_829 * x_830) + 1.0f);
  let x_833 : f32 = u_xlat30;
  u_xlat1.x = (-(abs(x_833)) + 1.0f);
  let x_840 : f32 = u_xlat1.x;
  let x_842 : f32 = u_xlat1.x;
  u_xlat11 = (x_840 * x_842);
  let x_844 : f32 = u_xlat11;
  let x_845 : f32 = u_xlat11;
  u_xlat11 = (x_844 * x_845);
  let x_848 : f32 = u_xlat1.x;
  let x_849 : f32 = u_xlat11;
  u_xlat1.x = (x_848 * x_849);
  let x_853 : f32 = u_xlat10.x;
  let x_855 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_853 * x_855) + 1.0f);
  let x_860 : f32 = u_xlat10.x;
  let x_861 : f32 = u_xlat20;
  u_xlat10.x = (x_860 * x_861);
  let x_864 : f32 = u_xlat31;
  let x_865 : f32 = u_xlat31;
  u_xlat20 = (x_864 * x_865);
  let x_867 : f32 = u_xlat20;
  u_xlat20 = max(x_867, 0.002f);
  let x_870 : f32 = u_xlat20;
  u_xlat1.x = (-(x_870) + 1.0f);
  let x_874 : f32 = u_xlat30;
  let x_877 : f32 = u_xlat1.x;
  let x_879 : f32 = u_xlat20;
  u_xlat11 = ((abs(x_874) * x_877) + x_879);
  let x_881 : f32 = u_xlat32;
  let x_883 : f32 = u_xlat1.x;
  let x_885 : f32 = u_xlat20;
  u_xlat1.x = ((x_881 * x_883) + x_885);
  let x_888 : f32 = u_xlat30;
  let x_891 : f32 = u_xlat1.x;
  u_xlat30 = (abs(x_888) * x_891);
  let x_893 : f32 = u_xlat32;
  let x_894 : f32 = u_xlat11;
  let x_896 : f32 = u_xlat30;
  u_xlat30 = ((x_893 * x_894) + x_896);
  let x_898 : f32 = u_xlat30;
  u_xlat30 = (x_898 + 0.00001f);
  let x_901 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_901);
  let x_903 : f32 = u_xlat20;
  let x_904 : f32 = u_xlat20;
  u_xlat20 = (x_903 * x_904);
  let x_907 : f32 = u_xlat2.x;
  let x_908 : f32 = u_xlat20;
  let x_911 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_907 * x_908) + -(x_911));
  let x_916 : f32 = u_xlat1.x;
  let x_918 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_916 * x_918) + 1.0f);
  let x_922 : f32 = u_xlat20;
  u_xlat20 = (x_922 * 0.318309873f);
  let x_926 : f32 = u_xlat1.x;
  let x_928 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_926 * x_928) + 0.0000001f);
  let x_933 : f32 = u_xlat20;
  let x_935 : f32 = u_xlat1.x;
  u_xlat20 = (x_933 / x_935);
  let x_937 : f32 = u_xlat20;
  let x_938 : f32 = u_xlat30;
  u_xlat10.y = (x_937 * x_938);
  let x_941 : f32 = u_xlat32;
  let x_943 : vec3<f32> = u_xlat10;
  let x_945 : vec2<f32> = (vec2<f32>(x_941, x_941) * vec2<f32>(x_943.x, x_943.y));
  let x_946 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_945.x, x_945.y, x_946.z);
  let x_949 : f32 = u_xlat10.y;
  u_xlat20 = (x_949 * 3.141592741f);
  let x_952 : f32 = u_xlat20;
  u_xlat20 = max(x_952, 0.0f);
  let x_954 : vec3<f32> = u_xlat5;
  let x_955 : vec3<f32> = u_xlat5;
  u_xlat30 = dot(x_954, x_955);
  let x_958 : f32 = u_xlat30;
  u_xlatb30 = !((x_958 == 0.0f));
  let x_960 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_960);
  let x_962 : f32 = u_xlat30;
  let x_963 : f32 = u_xlat20;
  u_xlat20 = (x_962 * x_963);
  let x_965 : vec3<f32> = u_xlat10;
  let x_967 : vec3<f32> = u_xlat7;
  u_xlat1 = (vec3<f32>(x_965.x, x_965.x, x_965.x) * x_967);
  let x_969 : vec3<f32> = u_xlat7;
  let x_970 : f32 = u_xlat20;
  u_xlat10 = (x_969 * vec3<f32>(x_970, x_970, x_970));
  let x_974 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_974) + 1.0f);
  let x_979 : f32 = u_xlat0.x;
  let x_981 : f32 = u_xlat0.x;
  u_xlat31 = (x_979 * x_981);
  let x_983 : f32 = u_xlat31;
  let x_984 : f32 = u_xlat31;
  u_xlat31 = (x_983 * x_984);
  let x_987 : f32 = u_xlat0.x;
  let x_988 : f32 = u_xlat31;
  u_xlat0.x = (x_987 * x_988);
  let x_991 : vec3<f32> = u_xlat5;
  let x_994 : vec3<f32> = (-(x_991) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_995 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat2;
  let x_999 : vec3<f32> = u_xlat0;
  let x_1002 : vec3<f32> = u_xlat5;
  let x_1003 : vec3<f32> = ((vec3<f32>(x_997.x, x_997.y, x_997.z) * vec3<f32>(x_999.x, x_999.x, x_999.x)) + x_1002);
  let x_1004 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec3<f32> = u_xlat10;
  let x_1007 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_1006 * vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1012 : vec4<f32> = u_xlat6;
  let x_1014 : vec3<f32> = u_xlat1;
  let x_1016 : vec3<f32> = u_xlat0;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1012.x, x_1012.y, x_1012.z) * x_1014) + x_1016);
  let x_1018 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

