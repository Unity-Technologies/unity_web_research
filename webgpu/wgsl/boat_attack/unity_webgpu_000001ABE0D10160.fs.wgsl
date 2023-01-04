struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_350 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_480 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_714 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb33 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat33 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb17 : bool;
  var u_xlat17 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_894 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat35;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_95 : bool = u_xlatb33;
  if (x_95) {
    let x_100 : f32 = u_xlat2.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat3.x = x_107;
  let x_109 : bool = u_xlatb33;
  if (x_109) {
    let x_115 : f32 = u_xlat2.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat3.y = x_119;
  let x_121 : bool = u_xlatb33;
  if (x_121) {
    let x_126 : f32 = u_xlat2.z;
    x_122 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_129;
  }
  let x_130 : f32 = x_122;
  u_xlat3.z = x_130;
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_134, x_135);
  let x_137 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_137);
  let x_139 : f32 = u_xlat33;
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_139, x_139, x_139) * x_141);
  let x_150 : vec2<f32> = vs_TEXCOORD8;
  let x_152 : f32 = x_44.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_150, x_152);
  u_xlat4 = x_153;
  let x_159 : vec2<f32> = vs_TEXCOORD8;
  let x_161 : f32 = x_44.x_GlobalMipBias.x;
  let x_162 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_159, x_161);
  u_xlat5 = vec3<f32>(x_162.x, x_162.y, x_162.z);
  let x_164 : vec4<f32> = u_xlat4;
  let x_168 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_171 : vec3<f32> = u_xlat2;
  let x_172 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_171, vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : f32 = u_xlat33;
  u_xlat33 = (x_175 + 0.5f);
  let x_178 : f32 = u_xlat33;
  let x_180 : vec3<f32> = u_xlat5;
  let x_181 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * x_180);
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : f32 = u_xlat4.w;
  u_xlat33 = max(x_185, 0.0001f);
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : f32 = u_xlat33;
  let x_192 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) / vec3<f32>(x_190, x_190, x_190));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_197 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_198 : vec2<f32> = vec2<f32>(x_197.x, x_197.y);
  let x_202 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_198.x, x_198.y));
  let x_203 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_202.x, x_202.y, x_203.z);
  let x_205 : vec3<f32> = u_xlat5;
  let x_207 : vec4<f32> = hlslcc_FragCoord;
  let x_209 : vec2<f32> = (vec2<f32>(x_205.x, x_205.y) * vec2<f32>(x_207.x, x_207.y));
  let x_210 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_209.x, x_209.y, x_210.z);
  let x_213 : f32 = u_xlat5.y;
  let x_216 : f32 = x_44.x_ScaleBiasRt.x;
  let x_219 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_213 * x_216) + x_219);
  let x_221 : f32 = u_xlat33;
  u_xlat5.z = (-(x_221) + 1.0f);
  let x_226 : f32 = x_57.x_Metallic;
  u_xlat33 = ((-(x_226) * 0.959999979f) + 0.959999979f);
  let x_231 : f32 = u_xlat33;
  let x_234 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_231) + x_234);
  let x_237 : f32 = u_xlat33;
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_237, x_237, x_237) * vec3<f32>(x_239.y, x_239.z, x_239.w));
  let x_242 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = x_57.x_BaseColor;
  let x_250 : vec3<f32> = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_245.x, x_245.y, x_245.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_254 : f32 = x_57.x_Metallic;
  let x_256 : f32 = x_57.x_Metallic;
  let x_258 : f32 = x_57.x_Metallic;
  let x_259 : vec3<f32> = vec3<f32>(x_254, x_256, x_258);
  let x_264 : vec4<f32> = u_xlat0;
  let x_269 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_264.x, x_264.y, x_264.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : f32 = x_57.x_Smoothness;
  u_xlat33 = (-(x_273) + 1.0f);
  let x_277 : f32 = u_xlat33;
  let x_278 : f32 = u_xlat33;
  u_xlat36 = (x_277 * x_278);
  let x_280 : f32 = u_xlat36;
  u_xlat36 = max(x_280, 0.0078125f);
  let x_284 : f32 = u_xlat36;
  let x_285 : f32 = u_xlat36;
  u_xlat37 = (x_284 * x_285);
  let x_287 : f32 = u_xlat35;
  u_xlat35 = (x_287 + 1.0f);
  let x_289 : f32 = u_xlat35;
  u_xlat35 = clamp(x_289, 0.0f, 1.0f);
  let x_292 : f32 = u_xlat36;
  u_xlat16 = ((x_292 * 4.0f) + 2.0f);
  let x_302 : vec3<f32> = u_xlat5;
  let x_305 : f32 = x_44.x_GlobalMipBias.x;
  let x_306 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_302.x, x_302.z), x_305);
  u_xlat5.x = x_306.x;
  let x_311 : f32 = u_xlat5.x;
  u_xlat27 = (x_311 + -1.0f);
  let x_316 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_317 : f32 = u_xlat27;
  u_xlat27 = ((x_316 * x_317) + 1.0f);
  let x_321 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_321, 1.0f);
  let x_326 : vec4<f32> = vs_TEXCOORD6;
  let x_327 : vec2<f32> = vec2<f32>(x_326.x, x_326.y);
  let x_329 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_327.x, x_327.y, x_329);
  let x_342 : vec3<f32> = txVec0;
  let x_344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_342.xy, x_342.z);
  u_xlat38 = x_344;
  let x_352 : f32 = x_350.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_352) + 1.0f);
  let x_356 : f32 = u_xlat38;
  let x_358 : f32 = x_350.x_MainLightShadowParams.x;
  let x_361 : f32 = u_xlat6.x;
  u_xlat38 = ((x_356 * x_358) + x_361);
  let x_365 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_365);
  let x_369 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_369 >= 1.0f);
  let x_371 : bool = u_xlatb17;
  let x_372 : bool = u_xlatb6;
  u_xlatb6 = (x_371 | x_372);
  let x_374 : bool = u_xlatb6;
  let x_375 : f32 = u_xlat38;
  u_xlat38 = select(x_375, 1.0f, x_374);
  let x_377 : vec3<f32> = vs_TEXCOORD1;
  let x_379 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_377 + -(x_379));
  let x_382 : vec3<f32> = u_xlat6;
  let x_383 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_382, x_383);
  let x_387 : f32 = u_xlat6.x;
  let x_389 : f32 = x_350.x_MainLightShadowParams.z;
  let x_392 : f32 = x_350.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_387 * x_389) + x_392);
  let x_396 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_396, 0.0f, 1.0f);
  let x_400 : f32 = u_xlat38;
  u_xlat17 = (-(x_400) + 1.0f);
  let x_404 : f32 = u_xlat6.x;
  let x_405 : f32 = u_xlat17;
  let x_407 : f32 = u_xlat38;
  u_xlat38 = ((x_404 * x_405) + x_407);
  let x_409 : f32 = u_xlat27;
  let x_413 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_409, x_409, x_409) * vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_417 : vec3<f32> = u_xlat3;
  let x_419 : vec3<f32> = u_xlat2;
  u_xlat39 = dot(-(x_417), x_419);
  let x_421 : f32 = u_xlat39;
  let x_422 : f32 = u_xlat39;
  u_xlat39 = (x_421 + x_422);
  let x_425 : vec3<f32> = u_xlat2;
  let x_426 : f32 = u_xlat39;
  let x_430 : vec3<f32> = u_xlat3;
  let x_432 : vec3<f32> = ((x_425 * -(vec3<f32>(x_426, x_426, x_426))) + -(x_430));
  let x_433 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : vec3<f32> = u_xlat2;
  let x_436 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_435, x_436);
  let x_438 : f32 = u_xlat39;
  u_xlat39 = clamp(x_438, 0.0f, 1.0f);
  let x_440 : f32 = u_xlat39;
  u_xlat39 = (-(x_440) + 1.0f);
  let x_443 : f32 = u_xlat39;
  let x_444 : f32 = u_xlat39;
  u_xlat39 = (x_443 * x_444);
  let x_446 : f32 = u_xlat39;
  let x_447 : f32 = u_xlat39;
  u_xlat39 = (x_446 * x_447);
  let x_450 : f32 = u_xlat33;
  u_xlat40 = ((-(x_450) * 0.699999988f) + 1.700000048f);
  let x_456 : f32 = u_xlat33;
  let x_457 : f32 = u_xlat40;
  u_xlat33 = (x_456 * x_457);
  let x_459 : f32 = u_xlat33;
  u_xlat33 = (x_459 * 6.0f);
  let x_470 : vec4<f32> = u_xlat7;
  let x_472 : f32 = u_xlat33;
  let x_473 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_470.x, x_470.y, x_470.z), x_472);
  u_xlat7 = x_473;
  let x_475 : f32 = u_xlat7.w;
  u_xlat33 = (x_475 + -1.0f);
  let x_482 : f32 = x_480.unity_SpecCube0_HDR.w;
  let x_483 : f32 = u_xlat33;
  u_xlat33 = ((x_482 * x_483) + 1.0f);
  let x_486 : f32 = u_xlat33;
  u_xlat33 = max(x_486, 0.0f);
  let x_488 : f32 = u_xlat33;
  u_xlat33 = log2(x_488);
  let x_490 : f32 = u_xlat33;
  let x_492 : f32 = x_480.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_490 * x_492);
  let x_494 : f32 = u_xlat33;
  u_xlat33 = exp2(x_494);
  let x_496 : f32 = u_xlat33;
  let x_498 : f32 = x_480.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_496 * x_498);
  let x_500 : vec4<f32> = u_xlat7;
  let x_502 : f32 = u_xlat33;
  let x_504 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) * vec3<f32>(x_502, x_502, x_502));
  let x_505 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_509 : f32 = u_xlat36;
  let x_511 : f32 = u_xlat36;
  u_xlat8 = ((vec2<f32>(x_509, x_509) * vec2<f32>(x_511, x_511)) + vec2<f32>(-1.0f, 1.0f));
  let x_517 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_517);
  let x_520 : vec4<f32> = u_xlat0;
  let x_523 : f32 = u_xlat35;
  u_xlat19 = (-(vec3<f32>(x_520.x, x_520.y, x_520.z)) + vec3<f32>(x_523, x_523, x_523));
  let x_526 : f32 = u_xlat39;
  let x_528 : vec3<f32> = u_xlat19;
  let x_530 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_526, x_526, x_526) * x_528) + vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : f32 = u_xlat33;
  let x_535 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_533, x_533, x_533) * x_535);
  let x_537 : vec4<f32> = u_xlat7;
  let x_539 : vec3<f32> = u_xlat19;
  let x_540 : vec3<f32> = (vec3<f32>(x_537.x, x_537.y, x_537.z) * x_539);
  let x_541 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec4<f32> = u_xlat4;
  let x_545 : vec3<f32> = u_xlat12;
  let x_547 : vec4<f32> = u_xlat7;
  let x_549 : vec3<f32> = ((vec3<f32>(x_543.x, x_543.y, x_543.z) * x_545) + vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_552 : f32 = u_xlat38;
  let x_555 : f32 = x_480.unity_LightData.z;
  u_xlat33 = (x_552 * x_555);
  let x_557 : vec3<f32> = u_xlat2;
  let x_559 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_557, vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : f32 = u_xlat35;
  u_xlat35 = clamp(x_562, 0.0f, 1.0f);
  let x_564 : f32 = u_xlat33;
  let x_565 : f32 = u_xlat35;
  u_xlat33 = (x_564 * x_565);
  let x_567 : f32 = u_xlat33;
  let x_569 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_567, x_567, x_567) * x_569);
  let x_571 : vec3<f32> = u_xlat3;
  let x_573 : vec4<f32> = x_44.x_MainLightPosition;
  let x_575 : vec3<f32> = (x_571 + vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat7;
  let x_580 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_578.x, x_578.y, x_578.z), vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : f32 = u_xlat33;
  u_xlat33 = max(x_583, 1.17549435e-37f);
  let x_586 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_586);
  let x_588 : f32 = u_xlat33;
  let x_590 : vec4<f32> = u_xlat7;
  let x_592 : vec3<f32> = (vec3<f32>(x_588, x_588, x_588) * vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec3<f32> = u_xlat2;
  let x_596 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_595, vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : f32 = u_xlat33;
  u_xlat33 = clamp(x_599, 0.0f, 1.0f);
  let x_602 : vec4<f32> = x_44.x_MainLightPosition;
  let x_604 : vec4<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_602.x, x_602.y, x_602.z), vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_607 : f32 = u_xlat35;
  u_xlat35 = clamp(x_607, 0.0f, 1.0f);
  let x_609 : f32 = u_xlat33;
  let x_610 : f32 = u_xlat33;
  u_xlat33 = (x_609 * x_610);
  let x_612 : f32 = u_xlat33;
  let x_614 : f32 = u_xlat8.x;
  u_xlat33 = ((x_612 * x_614) + 1.000010014f);
  let x_618 : f32 = u_xlat35;
  let x_619 : f32 = u_xlat35;
  u_xlat35 = (x_618 * x_619);
  let x_621 : f32 = u_xlat33;
  let x_622 : f32 = u_xlat33;
  u_xlat33 = (x_621 * x_622);
  let x_624 : f32 = u_xlat35;
  u_xlat35 = max(x_624, 0.100000001f);
  let x_627 : f32 = u_xlat33;
  let x_628 : f32 = u_xlat35;
  u_xlat33 = (x_627 * x_628);
  let x_630 : f32 = u_xlat16;
  let x_631 : f32 = u_xlat33;
  u_xlat33 = (x_630 * x_631);
  let x_633 : f32 = u_xlat37;
  let x_634 : f32 = u_xlat33;
  u_xlat33 = (x_633 / x_634);
  let x_636 : vec4<f32> = u_xlat0;
  let x_638 : f32 = u_xlat33;
  let x_641 : vec3<f32> = u_xlat12;
  let x_642 : vec3<f32> = ((vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(x_638, x_638, x_638)) + x_641);
  let x_643 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = u_xlat6;
  let x_646 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_645 * vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_650 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_652 : f32 = x_480.unity_LightData.y;
  u_xlat33 = min(x_650, x_652);
  let x_656 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_656));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_668 : u32 = u_xlatu_loop_1;
    let x_669 : u32 = u_xlatu33;
    if ((x_668 < x_669)) {
    } else {
      break;
    }
    let x_672 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_672 >> 2u);
    let x_676 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_676 & 3u));
    let x_679 : u32 = u_xlatu36;
    let x_682 : vec4<f32> = x_480.unity_LightIndices[bitcast<i32>(x_679)];
    let x_692 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_697 : vec4<u32> = indexable[x_692];
    u_xlat36 = dot(x_682, bitcast<vec4<f32>>(x_697));
    let x_701 : f32 = u_xlat36;
    u_xlati36 = i32(x_701);
    let x_703 : vec3<f32> = vs_TEXCOORD1;
    let x_715 : i32 = u_xlati36;
    let x_717 : vec4<f32> = x_714.x_AdditionalLightsPosition[x_715];
    let x_720 : i32 = u_xlati36;
    let x_722 : vec4<f32> = x_714.x_AdditionalLightsPosition[x_720];
    u_xlat19 = ((-(x_703) * vec3<f32>(x_717.w, x_717.w, x_717.w)) + vec3<f32>(x_722.x, x_722.y, x_722.z));
    let x_725 : vec3<f32> = u_xlat19;
    let x_726 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_725, x_726);
    let x_728 : f32 = u_xlat38;
    u_xlat38 = max(x_728, 6.10351562e-05f);
    let x_731 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_731);
    let x_734 : f32 = u_xlat39;
    let x_736 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_734, x_734, x_734) * x_736);
    let x_738 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_738);
    let x_740 : f32 = u_xlat38;
    let x_741 : i32 = u_xlati36;
    let x_743 : f32 = x_714.x_AdditionalLightsAttenuation[x_741].x;
    u_xlat38 = (x_740 * x_743);
    let x_745 : f32 = u_xlat38;
    let x_747 : f32 = u_xlat38;
    u_xlat38 = ((-(x_745) * x_747) + 1.0f);
    let x_750 : f32 = u_xlat38;
    u_xlat38 = max(x_750, 0.0f);
    let x_752 : f32 = u_xlat38;
    let x_753 : f32 = u_xlat38;
    u_xlat38 = (x_752 * x_753);
    let x_755 : f32 = u_xlat38;
    let x_756 : f32 = u_xlat40;
    u_xlat38 = (x_755 * x_756);
    let x_758 : i32 = u_xlati36;
    let x_760 : vec4<f32> = x_714.x_AdditionalLightsSpotDir[x_758];
    let x_762 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_760.x, x_760.y, x_760.z), x_762);
    let x_764 : f32 = u_xlat40;
    let x_765 : i32 = u_xlati36;
    let x_767 : f32 = x_714.x_AdditionalLightsAttenuation[x_765].z;
    let x_769 : i32 = u_xlati36;
    let x_771 : f32 = x_714.x_AdditionalLightsAttenuation[x_769].w;
    u_xlat40 = ((x_764 * x_767) + x_771);
    let x_773 : f32 = u_xlat40;
    u_xlat40 = clamp(x_773, 0.0f, 1.0f);
    let x_775 : f32 = u_xlat40;
    let x_776 : f32 = u_xlat40;
    u_xlat40 = (x_775 * x_776);
    let x_778 : f32 = u_xlat38;
    let x_779 : f32 = u_xlat40;
    u_xlat38 = (x_778 * x_779);
    let x_782 : f32 = u_xlat27;
    let x_784 : i32 = u_xlati36;
    let x_786 : vec4<f32> = x_714.x_AdditionalLightsColor[x_784];
    u_xlat10 = (vec3<f32>(x_782, x_782, x_782) * vec3<f32>(x_786.x, x_786.y, x_786.z));
    let x_789 : vec3<f32> = u_xlat2;
    let x_790 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_789, x_790);
    let x_792 : f32 = u_xlat36;
    u_xlat36 = clamp(x_792, 0.0f, 1.0f);
    let x_794 : f32 = u_xlat36;
    let x_795 : f32 = u_xlat38;
    u_xlat36 = (x_794 * x_795);
    let x_797 : f32 = u_xlat36;
    let x_799 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_797, x_797, x_797) * x_799);
    let x_801 : vec3<f32> = u_xlat19;
    let x_802 : f32 = u_xlat39;
    let x_805 : vec3<f32> = u_xlat3;
    u_xlat19 = ((x_801 * vec3<f32>(x_802, x_802, x_802)) + x_805);
    let x_807 : vec3<f32> = u_xlat19;
    let x_808 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_807, x_808);
    let x_810 : f32 = u_xlat36;
    u_xlat36 = max(x_810, 1.17549435e-37f);
    let x_812 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_812);
    let x_814 : f32 = u_xlat36;
    let x_816 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_814, x_814, x_814) * x_816);
    let x_818 : vec3<f32> = u_xlat2;
    let x_819 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_818, x_819);
    let x_821 : f32 = u_xlat36;
    u_xlat36 = clamp(x_821, 0.0f, 1.0f);
    let x_823 : vec3<f32> = u_xlat9;
    let x_824 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_823, x_824);
    let x_826 : f32 = u_xlat38;
    u_xlat38 = clamp(x_826, 0.0f, 1.0f);
    let x_828 : f32 = u_xlat36;
    let x_829 : f32 = u_xlat36;
    u_xlat36 = (x_828 * x_829);
    let x_831 : f32 = u_xlat36;
    let x_833 : f32 = u_xlat8.x;
    u_xlat36 = ((x_831 * x_833) + 1.000010014f);
    let x_836 : f32 = u_xlat38;
    let x_837 : f32 = u_xlat38;
    u_xlat38 = (x_836 * x_837);
    let x_839 : f32 = u_xlat36;
    let x_840 : f32 = u_xlat36;
    u_xlat36 = (x_839 * x_840);
    let x_842 : f32 = u_xlat38;
    u_xlat38 = max(x_842, 0.100000001f);
    let x_844 : f32 = u_xlat36;
    let x_845 : f32 = u_xlat38;
    u_xlat36 = (x_844 * x_845);
    let x_847 : f32 = u_xlat16;
    let x_848 : f32 = u_xlat36;
    u_xlat36 = (x_847 * x_848);
    let x_850 : f32 = u_xlat37;
    let x_851 : f32 = u_xlat36;
    u_xlat36 = (x_850 / x_851);
    let x_853 : vec4<f32> = u_xlat0;
    let x_855 : f32 = u_xlat36;
    let x_858 : vec3<f32> = u_xlat12;
    u_xlat19 = ((vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_855, x_855, x_855)) + x_858);
    let x_860 : vec3<f32> = u_xlat19;
    let x_861 : vec3<f32> = u_xlat10;
    let x_863 : vec4<f32> = u_xlat7;
    let x_865 : vec3<f32> = ((x_860 * x_861) + vec3<f32>(x_863.x, x_863.y, x_863.z));
    let x_866 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);

    continuing {
      let x_868 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_868 + bitcast<u32>(1i));
    }
  }
  let x_870 : vec4<f32> = u_xlat4;
  let x_872 : vec3<f32> = u_xlat5;
  let x_875 : vec3<f32> = u_xlat6;
  let x_876 : vec3<f32> = ((vec3<f32>(x_870.x, x_870.y, x_870.z) * vec3<f32>(x_872.x, x_872.x, x_872.x)) + x_875);
  let x_877 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_881 : vec4<f32> = u_xlat7;
  let x_883 : vec4<f32> = u_xlat0;
  let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) + vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_891 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_891 == 1.0f);
  let x_893 : bool = u_xlatb0;
  if (x_893) {
    let x_898 : f32 = u_xlat1.x;
    x_894 = x_898;
  } else {
    x_894 = 1.0f;
  }
  let x_900 : f32 = x_894;
  SV_Target0.w = x_900;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

