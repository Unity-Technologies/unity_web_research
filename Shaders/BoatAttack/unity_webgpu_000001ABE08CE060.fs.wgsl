struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_171 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_406 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_737 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_119 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var u_xlat25 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb11 : bool;
  var u_xlat11 : f32;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati28 : i32;
  var u_xlat27 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_52 * x_54);
  let x_61 : f32 = u_xlat1.w;
  let x_67 : f32 = x_64.x_Cutoff;
  u_xlatb0 = (x_61 >= x_67);
  let x_69 : bool = u_xlatb0;
  if (x_69) {
    let x_74 : f32 = u_xlat1.w;
    x_70 = x_74;
  } else {
    x_70 = 0.0f;
  }
  let x_77 : f32 = x_70;
  u_xlat0.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  let x_83 : f32 = vs_TEXCOORD7.w;
  let x_86 : f32 = x_64.x_Cutoff;
  u_xlat8 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat24;
  let x_99 : f32 = u_xlat16;
  u_xlat16 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat16;
  u_xlat16 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat8;
  let x_106 : f32 = u_xlat16;
  u_xlat8 = (x_105 / x_106);
  let x_108 : f32 = u_xlat8;
  u_xlat8 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat8;
  u_xlat8 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb16;
  if (x_118) {
    let x_122 : f32 = u_xlat8;
    x_119 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_119 = x_125;
  }
  let x_126 : f32 = x_119;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_129 + -0.0001f);
  let x_134 : f32 = u_xlat0.x;
  u_xlatb0 = (x_134 < 0.0f);
  let x_136 : bool = u_xlatb0;
  if (((select(0i, 1i, x_136) * -1i) != 0i)) {
    discard;
  }
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_152);
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = vs_TEXCOORD3;
  let x_159 : vec3<f32> = (vec3<f32>(x_156.x, x_156.x, x_156.x) * x_158);
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_174 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres0;
  let x_177 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  let x_184 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres1;
  let x_187 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : vec4<f32> = vs_TEXCOORD2;
  let x_195 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres2;
  let x_198 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_203 : vec4<f32> = vs_TEXCOORD2;
  let x_206 : vec4<f32> = x_171.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_203.x, x_203.y, x_203.z) + -(vec3<f32>(x_206.x, x_206.y, x_206.z)));
  let x_210 : vec4<f32> = u_xlat3;
  let x_212 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_223 : vec4<f32> = u_xlat5;
  let x_225 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_230 : vec3<f32> = u_xlat6;
  let x_231 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_230, x_231);
  let x_237 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = x_171.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_237 < x_240);
  let x_243 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_243);
  let x_247 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_247);
  let x_251 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_251);
  let x_255 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_255);
  let x_259 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_259);
  let x_265 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_265);
  let x_269 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_269);
  let x_272 : vec4<f32> = u_xlat3;
  let x_274 : vec4<f32> = u_xlat4;
  let x_276 : vec3<f32> = (vec3<f32>(x_272.x, x_272.y, x_272.z) + vec3<f32>(x_274.y, x_274.z, x_274.w));
  let x_277 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat3;
  let x_282 : vec3<f32> = max(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_283.x, x_282.x, x_282.y, x_282.z);
  let x_285 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_285, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_293 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_293) + 4.0f);
  let x_300 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_300);
  let x_304 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_304) << bitcast<u32>(2i));
  let x_307 : vec4<f32> = vs_TEXCOORD2;
  let x_309 : i32 = u_xlati0;
  let x_312 : i32 = u_xlati0;
  let x_316 : vec4<f32> = x_171.x_MainLightWorldToShadow[((x_309 + 1i) / 4i)][((x_312 + 1i) % 4i)];
  let x_318 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : i32 = u_xlati0;
  let x_323 : i32 = u_xlati0;
  let x_326 : vec4<f32> = x_171.x_MainLightWorldToShadow[(x_321 / 4i)][(x_323 % 4i)];
  let x_328 : vec4<f32> = vs_TEXCOORD2;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.x, x_328.x)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : i32 = u_xlati0;
  let x_339 : i32 = u_xlati0;
  let x_343 : vec4<f32> = x_171.x_MainLightWorldToShadow[((x_336 + 2i) / 4i)][((x_339 + 2i) % 4i)];
  let x_345 : vec4<f32> = vs_TEXCOORD2;
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.z, x_345.z, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : i32 = u_xlati0;
  let x_358 : i32 = u_xlati0;
  let x_362 : vec4<f32> = x_171.x_MainLightWorldToShadow[((x_355 + 3i) / 4i)][((x_358 + 3i) % 4i)];
  let x_364 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = hlslcc_FragCoord.w;
  let x_370 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_368 * x_370);
  let x_374 : f32 = u_xlat0.x;
  let x_377 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_374 / x_377);
  let x_381 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_381) + 1.0f);
  let x_386 : f32 = u_xlat0.x;
  let x_388 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_386 * x_388);
  let x_392 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_392, 0.0f);
  let x_396 : f32 = u_xlat0.x;
  let x_399 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_396 * x_399);
  u_xlat2.w = 1.0f;
  let x_409 : vec4<f32> = x_406.unity_SHAr;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_409, x_410);
  let x_415 : vec4<f32> = x_406.unity_SHAg;
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_415, x_416);
  let x_421 : vec4<f32> = x_406.unity_SHAb;
  let x_422 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_421, x_422);
  let x_425 : vec4<f32> = u_xlat2;
  let x_427 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_425.y, x_425.z, x_425.z, x_425.x) * vec4<f32>(x_427.x, x_427.y, x_427.z, x_427.z));
  let x_432 : vec4<f32> = x_406.unity_SHBr;
  let x_433 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_432, x_433);
  let x_438 : vec4<f32> = x_406.unity_SHBg;
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_438, x_439);
  let x_444 : vec4<f32> = x_406.unity_SHBb;
  let x_445 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_444, x_445);
  let x_449 : f32 = u_xlat2.y;
  let x_451 : f32 = u_xlat2.y;
  u_xlat24 = (x_449 * x_451);
  let x_454 : f32 = u_xlat2.x;
  let x_456 : f32 = u_xlat2.x;
  let x_458 : f32 = u_xlat24;
  u_xlat24 = ((x_454 * x_456) + -(x_458));
  let x_463 : vec4<f32> = x_406.unity_SHC;
  let x_465 : f32 = u_xlat24;
  let x_468 : vec3<f32> = u_xlat6;
  let x_469 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(x_465, x_465, x_465)) + x_468);
  let x_470 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat4;
  let x_474 : vec4<f32> = u_xlat5;
  let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : vec3<f32> = max(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_482 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_486 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_487 : vec2<f32> = vec2<f32>(x_486.x, x_486.y);
  let x_491 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_487.x, x_487.y));
  let x_492 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat5;
  let x_496 : vec4<f32> = hlslcc_FragCoord;
  let x_498 : vec2<f32> = (vec2<f32>(x_494.x, x_494.y) * vec2<f32>(x_496.x, x_496.y));
  let x_499 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_498.x, x_498.y, x_499.z, x_499.w);
  let x_502 : f32 = u_xlat5.y;
  let x_505 : f32 = x_43.x_ScaleBiasRt.x;
  let x_508 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat24 = ((x_502 * x_505) + x_508);
  let x_510 : f32 = u_xlat24;
  u_xlat5.z = (-(x_510) + 1.0f);
  let x_519 : vec4<f32> = u_xlat5;
  let x_522 : f32 = x_43.x_GlobalMipBias.x;
  let x_523 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_519.x, x_519.z), x_522);
  u_xlat24 = x_523.x;
  let x_526 : f32 = u_xlat24;
  u_xlat25 = (x_526 + -1.0f);
  let x_529 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_530 : f32 = u_xlat25;
  u_xlat25 = ((x_529 * x_530) + 1.0f);
  let x_533 : f32 = u_xlat24;
  u_xlat24 = min(x_533, 1.0f);
  let x_536 : vec4<f32> = u_xlat3;
  let x_537 : vec2<f32> = vec2<f32>(x_536.x, x_536.y);
  let x_539 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_537.x, x_537.y, x_539);
  let x_552 : vec3<f32> = txVec0;
  let x_554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_552.xy, x_552.z);
  u_xlat26 = x_554;
  let x_556 : f32 = x_171.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_556) + 1.0f);
  let x_560 : f32 = u_xlat26;
  let x_562 : f32 = x_171.x_MainLightShadowParams.x;
  let x_565 : f32 = u_xlat3.x;
  u_xlat26 = ((x_560 * x_562) + x_565);
  let x_568 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_568);
  let x_573 : f32 = u_xlat3.z;
  u_xlatb11 = (x_573 >= 1.0f);
  let x_575 : bool = u_xlatb11;
  let x_577 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_575 | x_577);
  let x_581 : bool = u_xlatb3.x;
  let x_582 : f32 = u_xlat26;
  u_xlat26 = select(x_582, 1.0f, x_581);
  let x_584 : vec4<f32> = vs_TEXCOORD2;
  let x_589 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_591 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) + -(x_589));
  let x_592 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat3;
  let x_596 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_594.x, x_594.y, x_594.z), vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_601 : f32 = u_xlat3.x;
  let x_603 : f32 = x_171.x_MainLightShadowParams.z;
  let x_606 : f32 = x_171.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_601 * x_603) + x_606);
  let x_610 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_610, 0.0f, 1.0f);
  let x_614 : f32 = u_xlat26;
  u_xlat11 = (-(x_614) + 1.0f);
  let x_618 : f32 = u_xlat3.x;
  let x_619 : f32 = u_xlat11;
  let x_621 : f32 = u_xlat26;
  u_xlat26 = ((x_618 * x_619) + x_621);
  let x_623 : f32 = u_xlat25;
  let x_626 : vec4<f32> = x_43.x_MainLightColor;
  let x_628 : vec3<f32> = (vec3<f32>(x_623, x_623, x_623) * vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : f32 = u_xlat24;
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec3<f32> = (vec3<f32>(x_631, x_631, x_631) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : f32 = u_xlat26;
  let x_640 : f32 = x_406.unity_LightData.z;
  u_xlat24 = (x_638 * x_640);
  let x_642 : f32 = u_xlat24;
  let x_644 : vec4<f32> = u_xlat3;
  let x_646 : vec3<f32> = (vec3<f32>(x_642, x_642, x_642) * vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec4<f32> = u_xlat2;
  let x_652 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : f32 = u_xlat24;
  u_xlat24 = clamp(x_655, 0.0f, 1.0f);
  let x_657 : f32 = u_xlat24;
  let x_659 : vec4<f32> = u_xlat3;
  let x_661 : vec3<f32> = (vec3<f32>(x_657, x_657, x_657) * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat1;
  let x_666 : vec4<f32> = u_xlat3;
  let x_668 : vec3<f32> = (vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(x_666.x, x_666.y, x_666.z));
  let x_669 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_673 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_675 : f32 = x_406.unity_LightData.y;
  u_xlat24 = min(x_673, x_675);
  let x_678 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_678));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_690 : u32 = u_xlatu_loop_1;
    let x_691 : u32 = u_xlatu24;
    if ((x_690 < x_691)) {
    } else {
      break;
    }
    let x_694 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_694 >> 2u);
    let x_697 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_697 & 3u));
    let x_701 : u32 = u_xlatu27;
    let x_704 : vec4<f32> = x_406.unity_LightIndices[bitcast<i32>(x_701)];
    let x_714 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_719 : vec4<u32> = indexable[x_714];
    u_xlat27 = dot(x_704, bitcast<vec4<f32>>(x_719));
    let x_723 : f32 = u_xlat27;
    u_xlati27 = i32(x_723);
    let x_725 : vec4<f32> = vs_TEXCOORD2;
    let x_738 : i32 = u_xlati27;
    let x_740 : vec4<f32> = x_737.x_AdditionalLightsPosition[x_738];
    let x_743 : i32 = u_xlati27;
    let x_745 : vec4<f32> = x_737.x_AdditionalLightsPosition[x_743];
    u_xlat6 = ((-(vec3<f32>(x_725.x, x_725.y, x_725.z)) * vec3<f32>(x_740.w, x_740.w, x_740.w)) + vec3<f32>(x_745.x, x_745.y, x_745.z));
    let x_749 : vec3<f32> = u_xlat6;
    let x_750 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_749, x_750);
    let x_752 : f32 = u_xlat28;
    u_xlat28 = max(x_752, 6.10351562e-05f);
    let x_756 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_756);
    let x_758 : f32 = u_xlat29;
    let x_760 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_758, x_758, x_758) * x_760);
    let x_762 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_762);
    let x_764 : f32 = u_xlat28;
    let x_765 : i32 = u_xlati27;
    let x_767 : f32 = x_737.x_AdditionalLightsAttenuation[x_765].x;
    u_xlat28 = (x_764 * x_767);
    let x_769 : f32 = u_xlat28;
    let x_771 : f32 = u_xlat28;
    u_xlat28 = ((-(x_769) * x_771) + 1.0f);
    let x_774 : f32 = u_xlat28;
    u_xlat28 = max(x_774, 0.0f);
    let x_776 : f32 = u_xlat28;
    let x_777 : f32 = u_xlat28;
    u_xlat28 = (x_776 * x_777);
    let x_779 : f32 = u_xlat28;
    let x_780 : f32 = u_xlat29;
    u_xlat28 = (x_779 * x_780);
    let x_782 : i32 = u_xlati27;
    let x_784 : vec4<f32> = x_737.x_AdditionalLightsSpotDir[x_782];
    let x_786 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_784.x, x_784.y, x_784.z), x_786);
    let x_788 : f32 = u_xlat29;
    let x_789 : i32 = u_xlati27;
    let x_791 : f32 = x_737.x_AdditionalLightsAttenuation[x_789].z;
    let x_793 : i32 = u_xlati27;
    let x_795 : f32 = x_737.x_AdditionalLightsAttenuation[x_793].w;
    u_xlat29 = ((x_788 * x_791) + x_795);
    let x_797 : f32 = u_xlat29;
    u_xlat29 = clamp(x_797, 0.0f, 1.0f);
    let x_799 : f32 = u_xlat29;
    let x_800 : f32 = u_xlat29;
    u_xlat29 = (x_799 * x_800);
    let x_802 : f32 = u_xlat28;
    let x_803 : f32 = u_xlat29;
    u_xlat28 = (x_802 * x_803);
    let x_806 : f32 = u_xlat25;
    let x_808 : i32 = u_xlati27;
    let x_810 : vec4<f32> = x_737.x_AdditionalLightsColor[x_808];
    u_xlat7 = (vec3<f32>(x_806, x_806, x_806) * vec3<f32>(x_810.x, x_810.y, x_810.z));
    let x_813 : f32 = u_xlat28;
    let x_815 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_813, x_813, x_813) * x_815);
    let x_817 : vec4<f32> = u_xlat2;
    let x_819 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_817.x, x_817.y, x_817.z), x_819);
    let x_821 : f32 = u_xlat27;
    u_xlat27 = clamp(x_821, 0.0f, 1.0f);
    let x_823 : f32 = u_xlat27;
    let x_825 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_823, x_823, x_823) * x_825);
    let x_827 : vec3<f32> = u_xlat6;
    let x_828 : vec4<f32> = u_xlat1;
    let x_831 : vec4<f32> = u_xlat5;
    let x_833 : vec3<f32> = ((x_827 * vec3<f32>(x_828.x, x_828.y, x_828.z)) + vec3<f32>(x_831.x, x_831.y, x_831.z));
    let x_834 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);

    continuing {
      let x_836 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_836 + bitcast<u32>(1i));
    }
  }
  let x_838 : vec4<f32> = u_xlat4;
  let x_840 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = u_xlat3;
  let x_845 : vec3<f32> = ((vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(x_840.x, x_840.y, x_840.z)) + vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat5;
  let x_850 : vec4<f32> = u_xlat1;
  let x_852 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) + vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_856 : f32 = u_xlat0.x;
  let x_858 : f32 = u_xlat0.x;
  u_xlat0.x = (x_856 * -(x_858));
  let x_863 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_863);
  let x_866 : vec4<f32> = u_xlat1;
  let x_870 : vec4<f32> = x_43.unity_FogColor;
  let x_873 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
  let x_874 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_878 : vec4<f32> = u_xlat0;
  let x_880 : vec4<f32> = u_xlat1;
  let x_884 : vec4<f32> = x_43.unity_FogColor;
  let x_886 : vec3<f32> = ((vec3<f32>(x_878.x, x_878.x, x_878.x) * vec3<f32>(x_880.x, x_880.y, x_880.z)) + vec3<f32>(x_884.x, x_884.y, x_884.z));
  let x_887 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : bool = u_xlatb16;
  let x_890 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_890, x_889);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

