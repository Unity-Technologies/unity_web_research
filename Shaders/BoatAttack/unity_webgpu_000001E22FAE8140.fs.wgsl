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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_290 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1622 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1810 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2062 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2182 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb60 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlat3 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat60 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat25 : f32;
  var u_xlat45 : f32;
  var u_xlatb65 : bool;
  var u_xlat6 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlatb6 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat26 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat66 : f32;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb26 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_1707 : f32;
  var x_1718 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu63 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : vec2<f32>;
  var u_xlatu47 : u32;
  var u_xlati67 : i32;
  var u_xlati47 : i32;
  var u_xlati69 : i32;
  var u_xlatb47 : bool;
  var u_xlatb51 : vec2<bool>;
  var u_xlat51 : vec2<f32>;
  var x_2483 : f32;
  var x_2496 : f32;
  var x_2548 : f32;
  var x_2560 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2712 : f32;
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
  u_xlatb60 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat62 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat62;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_95 : bool = u_xlatb60;
  if (x_95) {
    let x_100 : f32 = u_xlat2.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat3.x = x_107;
  let x_109 : bool = u_xlatb60;
  if (x_109) {
    let x_115 : f32 = u_xlat2.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat3.y = x_119;
  let x_121 : bool = u_xlatb60;
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
  u_xlat60 = dot(x_134, x_135);
  let x_137 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_137);
  let x_139 : f32 = u_xlat60;
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_139, x_139, x_139) * x_141);
  let x_150 : vec2<f32> = vs_TEXCOORD8;
  let x_152 : f32 = x_44.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_150, x_152);
  u_xlat4 = vec3<f32>(x_153.x, x_153.y, x_153.z);
  let x_158 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_159 : vec2<f32> = vec2<f32>(x_158.x, x_158.y);
  let x_163 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_159.x, x_159.y));
  let x_164 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_163.x, x_163.y, x_164.z);
  let x_166 : vec3<f32> = u_xlat5;
  let x_168 : vec4<f32> = hlslcc_FragCoord;
  let x_170 : vec2<f32> = (vec2<f32>(x_166.x, x_166.y) * vec2<f32>(x_168.x, x_168.y));
  let x_171 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_170.x, x_170.y, x_171.z);
  let x_174 : f32 = u_xlat5.y;
  let x_177 : f32 = x_44.x_ScaleBiasRt.x;
  let x_180 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_174 * x_177) + x_180);
  let x_182 : f32 = u_xlat60;
  u_xlat5.z = (-(x_182) + 1.0f);
  let x_187 : f32 = x_57.x_Metallic;
  u_xlat60 = ((-(x_187) * 0.959999979f) + 0.959999979f);
  let x_192 : f32 = u_xlat60;
  let x_195 : f32 = x_57.x_Smoothness;
  u_xlat62 = (-(x_192) + x_195);
  let x_198 : f32 = u_xlat60;
  let x_200 : vec4<f32> = u_xlat1;
  u_xlat21 = (vec3<f32>(x_198, x_198, x_198) * vec3<f32>(x_200.y, x_200.z, x_200.w));
  let x_203 : vec4<f32> = u_xlat0;
  let x_206 : vec4<f32> = x_57.x_BaseColor;
  let x_211 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * vec3<f32>(x_206.x, x_206.y, x_206.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_212 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_215 : f32 = x_57.x_Metallic;
  let x_217 : f32 = x_57.x_Metallic;
  let x_219 : f32 = x_57.x_Metallic;
  let x_220 : vec3<f32> = vec3<f32>(x_215, x_217, x_219);
  let x_225 : vec4<f32> = u_xlat0;
  let x_230 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_225.x, x_225.y, x_225.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_234 : f32 = x_57.x_Smoothness;
  u_xlat60 = (-(x_234) + 1.0f);
  let x_238 : f32 = u_xlat60;
  let x_239 : f32 = u_xlat60;
  u_xlat63 = (x_238 * x_239);
  let x_241 : f32 = u_xlat63;
  u_xlat63 = max(x_241, 0.0078125f);
  let x_245 : f32 = u_xlat63;
  let x_246 : f32 = u_xlat63;
  u_xlat64 = (x_245 * x_246);
  let x_248 : f32 = u_xlat62;
  u_xlat62 = (x_248 + 1.0f);
  let x_250 : f32 = u_xlat62;
  u_xlat62 = clamp(x_250, 0.0f, 1.0f);
  let x_253 : f32 = u_xlat63;
  u_xlat25 = ((x_253 * 4.0f) + 2.0f);
  let x_263 : vec3<f32> = u_xlat5;
  let x_266 : f32 = x_44.x_GlobalMipBias.x;
  let x_267 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_263.x, x_263.z), x_266);
  u_xlat5.x = x_267.x;
  let x_272 : f32 = u_xlat5.x;
  u_xlat45 = (x_272 + -1.0f);
  let x_277 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_278 : f32 = u_xlat45;
  u_xlat45 = ((x_277 * x_278) + 1.0f);
  let x_282 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_282, 1.0f);
  let x_292 : f32 = x_290.x_MainLightShadowParams.y;
  u_xlatb65 = (0.0f < x_292);
  let x_294 : bool = u_xlatb65;
  if (x_294) {
    let x_298 : f32 = x_290.x_MainLightShadowParams.y;
    u_xlatb65 = (x_298 == 1.0f);
    let x_300 : bool = u_xlatb65;
    if (x_300) {
      let x_305 : vec4<f32> = vs_TEXCOORD6;
      let x_308 : vec4<f32> = x_290.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_305.x, x_305.y, x_305.x, x_305.y) + x_308);
      let x_311 : vec4<f32> = u_xlat6;
      let x_312 : vec2<f32> = vec2<f32>(x_311.x, x_311.y);
      let x_314 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_312.x, x_312.y, x_314);
      let x_327 : vec3<f32> = txVec0;
      let x_329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_327.xy, x_327.z);
      u_xlat7.x = x_329;
      let x_332 : vec4<f32> = u_xlat6;
      let x_333 : vec2<f32> = vec2<f32>(x_332.z, x_332.w);
      let x_335 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_333.x, x_333.y, x_335);
      let x_342 : vec3<f32> = txVec1;
      let x_344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_342.xy, x_342.z);
      u_xlat7.y = x_344;
      let x_346 : vec4<f32> = vs_TEXCOORD6;
      let x_349 : vec4<f32> = x_290.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_346.x, x_346.y, x_346.x, x_346.y) + x_349);
      let x_352 : vec4<f32> = u_xlat6;
      let x_353 : vec2<f32> = vec2<f32>(x_352.x, x_352.y);
      let x_355 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_353.x, x_353.y, x_355);
      let x_362 : vec3<f32> = txVec2;
      let x_364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_362.xy, x_362.z);
      u_xlat7.z = x_364;
      let x_367 : vec4<f32> = u_xlat6;
      let x_368 : vec2<f32> = vec2<f32>(x_367.z, x_367.w);
      let x_370 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_368.x, x_368.y, x_370);
      let x_377 : vec3<f32> = txVec3;
      let x_379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_377.xy, x_377.z);
      u_xlat7.w = x_379;
      let x_382 : vec4<f32> = u_xlat7;
      u_xlat65 = dot(x_382, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_389 : f32 = x_290.x_MainLightShadowParams.y;
      u_xlatb6 = (x_389 == 2.0f);
      let x_391 : bool = u_xlatb6;
      if (x_391) {
        let x_394 : vec4<f32> = vs_TEXCOORD6;
        let x_397 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_402 : vec2<f32> = ((vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_397.z, x_397.w)) + vec2<f32>(0.5f, 0.5f));
        let x_403 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
        let x_405 : vec4<f32> = u_xlat6;
        let x_407 : vec2<f32> = floor(vec2<f32>(x_405.x, x_405.y));
        let x_408 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
        let x_412 : vec4<f32> = vs_TEXCOORD6;
        let x_415 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_418 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_412.x, x_412.y) * vec2<f32>(x_415.z, x_415.w)) + -(vec2<f32>(x_418.x, x_418.y)));
        let x_422 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_422.x, x_422.x, x_422.y, x_422.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_427 : vec4<f32> = u_xlat7;
        let x_429 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_427.x, x_427.x, x_427.z, x_427.z) * vec4<f32>(x_429.x, x_429.x, x_429.z, x_429.z));
        let x_432 : vec4<f32> = u_xlat8;
        let x_436 : vec2<f32> = (vec2<f32>(x_432.y, x_432.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_437 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_436.x, x_437.y, x_436.y, x_437.w);
        let x_439 : vec4<f32> = u_xlat8;
        let x_442 : vec2<f32> = u_xlat46;
        let x_444 : vec2<f32> = ((vec2<f32>(x_439.x, x_439.z) * vec2<f32>(0.5f, 0.5f)) + -(x_442));
        let x_445 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
        let x_448 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_448) + vec2<f32>(1.0f, 1.0f));
        let x_452 : vec2<f32> = u_xlat46;
        let x_454 : vec2<f32> = min(x_452, vec2<f32>(0.0f, 0.0f));
        let x_455 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
        let x_457 : vec4<f32> = u_xlat9;
        let x_460 : vec4<f32> = u_xlat9;
        let x_463 : vec2<f32> = u_xlat48;
        let x_464 : vec2<f32> = ((-(vec2<f32>(x_457.x, x_457.y)) * vec2<f32>(x_460.x, x_460.y)) + x_463);
        let x_465 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
        let x_467 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_467, vec2<f32>(0.0f, 0.0f));
        let x_469 : vec2<f32> = u_xlat46;
        let x_471 : vec2<f32> = u_xlat46;
        let x_473 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_469) * x_471) + vec2<f32>(x_473.y, x_473.w));
        let x_476 : vec4<f32> = u_xlat9;
        let x_478 : vec2<f32> = (vec2<f32>(x_476.x, x_476.y) + vec2<f32>(1.0f, 1.0f));
        let x_479 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
        let x_481 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_481 + vec2<f32>(1.0f, 1.0f));
        let x_484 : vec4<f32> = u_xlat8;
        let x_488 : vec2<f32> = (vec2<f32>(x_484.x, x_484.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_489 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
        let x_491 : vec2<f32> = u_xlat48;
        let x_492 : vec2<f32> = (x_491 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_493 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat9;
        let x_497 : vec2<f32> = (vec2<f32>(x_495.x, x_495.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_498 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_501 : vec2<f32> = u_xlat46;
        let x_502 : vec2<f32> = (x_501 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_503 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
        let x_505 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_505.y, x_505.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_509 : f32 = u_xlat9.x;
        u_xlat10.z = x_509;
        let x_512 : f32 = u_xlat46.x;
        u_xlat10.w = x_512;
        let x_515 : f32 = u_xlat11.x;
        u_xlat8.z = x_515;
        let x_518 : f32 = u_xlat7.x;
        u_xlat8.w = x_518;
        let x_521 : vec4<f32> = u_xlat8;
        let x_523 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_521.z, x_521.w, x_521.x, x_521.z) + vec4<f32>(x_523.z, x_523.w, x_523.x, x_523.z));
        let x_527 : f32 = u_xlat10.y;
        u_xlat9.z = x_527;
        let x_530 : f32 = u_xlat46.y;
        u_xlat9.w = x_530;
        let x_533 : f32 = u_xlat8.y;
        u_xlat11.z = x_533;
        let x_536 : f32 = u_xlat7.z;
        u_xlat11.w = x_536;
        let x_538 : vec4<f32> = u_xlat9;
        let x_540 : vec4<f32> = u_xlat11;
        let x_542 : vec3<f32> = (vec3<f32>(x_538.z, x_538.y, x_538.w) + vec3<f32>(x_540.z, x_540.y, x_540.w));
        let x_543 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
        let x_545 : vec4<f32> = u_xlat8;
        let x_547 : vec4<f32> = u_xlat12;
        let x_549 : vec3<f32> = (vec3<f32>(x_545.x, x_545.z, x_545.w) / vec3<f32>(x_547.z, x_547.w, x_547.y));
        let x_550 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
        let x_552 : vec4<f32> = u_xlat8;
        let x_558 : vec3<f32> = (vec3<f32>(x_552.x, x_552.y, x_552.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_559 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
        let x_561 : vec4<f32> = u_xlat11;
        let x_563 : vec4<f32> = u_xlat7;
        let x_565 : vec3<f32> = (vec3<f32>(x_561.z, x_561.y, x_561.w) / vec3<f32>(x_563.x, x_563.y, x_563.z));
        let x_566 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
        let x_568 : vec4<f32> = u_xlat9;
        let x_570 : vec3<f32> = (vec3<f32>(x_568.x, x_568.y, x_568.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_571 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
        let x_573 : vec4<f32> = u_xlat8;
        let x_576 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_578 : vec3<f32> = (vec3<f32>(x_573.y, x_573.x, x_573.z) * vec3<f32>(x_576.x, x_576.x, x_576.x));
        let x_579 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
        let x_581 : vec4<f32> = u_xlat9;
        let x_584 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_586 : vec3<f32> = (vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(x_584.y, x_584.y, x_584.y));
        let x_587 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
        let x_590 : f32 = u_xlat9.x;
        u_xlat8.w = x_590;
        let x_592 : vec4<f32> = u_xlat6;
        let x_595 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_598 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_592.x, x_592.y, x_592.x, x_592.y) * vec4<f32>(x_595.x, x_595.y, x_595.x, x_595.y)) + vec4<f32>(x_598.y, x_598.w, x_598.x, x_598.w));
        let x_601 : vec4<f32> = u_xlat6;
        let x_604 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_607 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_601.x, x_601.y) * vec2<f32>(x_604.x, x_604.y)) + vec2<f32>(x_607.z, x_607.w));
        let x_611 : f32 = u_xlat8.y;
        u_xlat9.w = x_611;
        let x_613 : vec4<f32> = u_xlat9;
        let x_614 : vec2<f32> = vec2<f32>(x_613.y, x_613.z);
        let x_615 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_615.x, x_614.x, x_615.z, x_614.y);
        let x_617 : vec4<f32> = u_xlat6;
        let x_620 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_623 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y) * vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y)) + vec4<f32>(x_623.x, x_623.y, x_623.z, x_623.y));
        let x_626 : vec4<f32> = u_xlat6;
        let x_629 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_632 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_626.x, x_626.y, x_626.x, x_626.y) * vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y)) + vec4<f32>(x_632.w, x_632.y, x_632.w, x_632.z));
        let x_635 : vec4<f32> = u_xlat6;
        let x_638 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_641 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_635.x, x_635.y, x_635.x, x_635.y) * vec4<f32>(x_638.x, x_638.y, x_638.x, x_638.y)) + vec4<f32>(x_641.x, x_641.w, x_641.z, x_641.w));
        let x_645 : vec4<f32> = u_xlat7;
        let x_647 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_645.x, x_645.x, x_645.x, x_645.y) * vec4<f32>(x_647.z, x_647.w, x_647.y, x_647.z));
        let x_651 : vec4<f32> = u_xlat7;
        let x_653 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_651.y, x_651.y, x_651.z, x_651.z) * x_653);
        let x_656 : f32 = u_xlat7.z;
        let x_658 : f32 = u_xlat12.y;
        u_xlat6.x = (x_656 * x_658);
        let x_662 : vec4<f32> = u_xlat10;
        let x_663 : vec2<f32> = vec2<f32>(x_662.x, x_662.y);
        let x_665 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_663.x, x_663.y, x_665);
        let x_673 : vec3<f32> = txVec4;
        let x_675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_673.xy, x_673.z);
        u_xlat26 = x_675;
        let x_677 : vec4<f32> = u_xlat10;
        let x_678 : vec2<f32> = vec2<f32>(x_677.z, x_677.w);
        let x_680 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_678.x, x_678.y, x_680);
        let x_687 : vec3<f32> = txVec5;
        let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_687.xy, x_687.z);
        u_xlat7.x = x_689;
        let x_692 : f32 = u_xlat7.x;
        let x_694 : f32 = u_xlat13.y;
        u_xlat7.x = (x_692 * x_694);
        let x_698 : f32 = u_xlat13.x;
        let x_699 : f32 = u_xlat26;
        let x_702 : f32 = u_xlat7.x;
        u_xlat26 = ((x_698 * x_699) + x_702);
        let x_705 : vec2<f32> = u_xlat46;
        let x_707 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_705.x, x_705.y, x_707);
        let x_714 : vec3<f32> = txVec6;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_714.xy, x_714.z);
        u_xlat46.x = x_716;
        let x_719 : f32 = u_xlat13.z;
        let x_721 : f32 = u_xlat46.x;
        let x_723 : f32 = u_xlat26;
        u_xlat26 = ((x_719 * x_721) + x_723);
        let x_726 : vec4<f32> = u_xlat9;
        let x_727 : vec2<f32> = vec2<f32>(x_726.x, x_726.y);
        let x_729 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_727.x, x_727.y, x_729);
        let x_736 : vec3<f32> = txVec7;
        let x_738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_736.xy, x_736.z);
        u_xlat46.x = x_738;
        let x_741 : f32 = u_xlat13.w;
        let x_743 : f32 = u_xlat46.x;
        let x_745 : f32 = u_xlat26;
        u_xlat26 = ((x_741 * x_743) + x_745);
        let x_748 : vec4<f32> = u_xlat11;
        let x_749 : vec2<f32> = vec2<f32>(x_748.x, x_748.y);
        let x_751 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_749.x, x_749.y, x_751);
        let x_758 : vec3<f32> = txVec8;
        let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_758.xy, x_758.z);
        u_xlat46.x = x_760;
        let x_763 : f32 = u_xlat14.x;
        let x_765 : f32 = u_xlat46.x;
        let x_767 : f32 = u_xlat26;
        u_xlat26 = ((x_763 * x_765) + x_767);
        let x_770 : vec4<f32> = u_xlat11;
        let x_771 : vec2<f32> = vec2<f32>(x_770.z, x_770.w);
        let x_773 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_771.x, x_771.y, x_773);
        let x_780 : vec3<f32> = txVec9;
        let x_782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_780.xy, x_780.z);
        u_xlat46.x = x_782;
        let x_785 : f32 = u_xlat14.y;
        let x_787 : f32 = u_xlat46.x;
        let x_789 : f32 = u_xlat26;
        u_xlat26 = ((x_785 * x_787) + x_789);
        let x_792 : vec4<f32> = u_xlat9;
        let x_793 : vec2<f32> = vec2<f32>(x_792.z, x_792.w);
        let x_795 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_793.x, x_793.y, x_795);
        let x_802 : vec3<f32> = txVec10;
        let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_802.xy, x_802.z);
        u_xlat46.x = x_804;
        let x_807 : f32 = u_xlat14.z;
        let x_809 : f32 = u_xlat46.x;
        let x_811 : f32 = u_xlat26;
        u_xlat26 = ((x_807 * x_809) + x_811);
        let x_814 : vec4<f32> = u_xlat8;
        let x_815 : vec2<f32> = vec2<f32>(x_814.x, x_814.y);
        let x_817 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_815.x, x_815.y, x_817);
        let x_824 : vec3<f32> = txVec11;
        let x_826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_824.xy, x_824.z);
        u_xlat46.x = x_826;
        let x_829 : f32 = u_xlat14.w;
        let x_831 : f32 = u_xlat46.x;
        let x_833 : f32 = u_xlat26;
        u_xlat26 = ((x_829 * x_831) + x_833);
        let x_836 : vec4<f32> = u_xlat8;
        let x_837 : vec2<f32> = vec2<f32>(x_836.z, x_836.w);
        let x_839 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_837.x, x_837.y, x_839);
        let x_846 : vec3<f32> = txVec12;
        let x_848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_846.xy, x_846.z);
        u_xlat46.x = x_848;
        let x_851 : f32 = u_xlat6.x;
        let x_853 : f32 = u_xlat46.x;
        let x_855 : f32 = u_xlat26;
        u_xlat65 = ((x_851 * x_853) + x_855);
      } else {
        let x_858 : vec4<f32> = vs_TEXCOORD6;
        let x_861 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_864 : vec2<f32> = ((vec2<f32>(x_858.x, x_858.y) * vec2<f32>(x_861.z, x_861.w)) + vec2<f32>(0.5f, 0.5f));
        let x_865 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec4<f32> = u_xlat6;
        let x_869 : vec2<f32> = floor(vec2<f32>(x_867.x, x_867.y));
        let x_870 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
        let x_872 : vec4<f32> = vs_TEXCOORD6;
        let x_875 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_878 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_875.z, x_875.w)) + -(vec2<f32>(x_878.x, x_878.y)));
        let x_882 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_882.x, x_882.x, x_882.y, x_882.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_885 : vec4<f32> = u_xlat7;
        let x_887 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_885.x, x_885.x, x_885.z, x_885.z) * vec4<f32>(x_887.x, x_887.x, x_887.z, x_887.z));
        let x_890 : vec4<f32> = u_xlat8;
        let x_894 : vec2<f32> = (vec2<f32>(x_890.y, x_890.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_895 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_895.x, x_894.x, x_895.z, x_894.y);
        let x_897 : vec4<f32> = u_xlat8;
        let x_900 : vec2<f32> = u_xlat46;
        let x_902 : vec2<f32> = ((vec2<f32>(x_897.x, x_897.z) * vec2<f32>(0.5f, 0.5f)) + -(x_900));
        let x_903 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_902.x, x_903.y, x_902.y, x_903.w);
        let x_905 : vec2<f32> = u_xlat46;
        let x_907 : vec2<f32> = (-(x_905) + vec2<f32>(1.0f, 1.0f));
        let x_908 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_910 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_910, vec2<f32>(0.0f, 0.0f));
        let x_912 : vec2<f32> = u_xlat48;
        let x_914 : vec2<f32> = u_xlat48;
        let x_916 : vec4<f32> = u_xlat8;
        let x_918 : vec2<f32> = ((-(x_912) * x_914) + vec2<f32>(x_916.x, x_916.y));
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
        let x_921 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_921, vec2<f32>(0.0f, 0.0f));
        let x_924 : vec2<f32> = u_xlat48;
        let x_926 : vec2<f32> = u_xlat48;
        let x_928 : vec4<f32> = u_xlat7;
        let x_930 : vec2<f32> = ((-(x_924) * x_926) + vec2<f32>(x_928.y, x_928.w));
        let x_931 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_930.x, x_931.y, x_930.y);
        let x_933 : vec4<f32> = u_xlat8;
        let x_936 : vec2<f32> = (vec2<f32>(x_933.x, x_933.y) + vec2<f32>(2.0f, 2.0f));
        let x_937 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_939 : vec3<f32> = u_xlat27;
        let x_941 : vec2<f32> = (vec2<f32>(x_939.x, x_939.z) + vec2<f32>(2.0f, 2.0f));
        let x_942 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_942.x, x_941.x, x_942.z, x_941.y);
        let x_945 : f32 = u_xlat7.y;
        u_xlat10.z = (x_945 * 0.081632003f);
        let x_949 : vec4<f32> = u_xlat7;
        let x_952 : vec3<f32> = (vec3<f32>(x_949.z, x_949.x, x_949.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_953 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat8;
        let x_958 : vec2<f32> = (vec2<f32>(x_955.x, x_955.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_959 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_962 : f32 = u_xlat11.y;
        u_xlat10.x = x_962;
        let x_964 : vec2<f32> = u_xlat46;
        let x_971 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_972 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_972.x, x_971.x, x_972.z, x_971.y);
        let x_974 : vec2<f32> = u_xlat46;
        let x_978 : vec2<f32> = ((vec2<f32>(x_974.x, x_974.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_979 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_978.x, x_979.y, x_978.y, x_979.w);
        let x_982 : f32 = u_xlat7.x;
        u_xlat8.y = x_982;
        let x_985 : f32 = u_xlat9.y;
        u_xlat8.w = x_985;
        let x_987 : vec4<f32> = u_xlat8;
        let x_988 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_987 + x_988);
        let x_990 : vec2<f32> = u_xlat46;
        let x_993 : vec2<f32> = ((vec2<f32>(x_990.y, x_990.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_994 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_994.x, x_993.x, x_994.z, x_993.y);
        let x_996 : vec2<f32> = u_xlat46;
        let x_999 : vec2<f32> = ((vec2<f32>(x_996.y, x_996.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1000 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_999.x, x_1000.y, x_999.y, x_1000.w);
        let x_1003 : f32 = u_xlat7.y;
        u_xlat9.y = x_1003;
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1006 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1005 + x_1006);
        let x_1008 : vec4<f32> = u_xlat8;
        let x_1009 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1008 / x_1009);
        let x_1011 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1011 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1017 : vec4<f32> = u_xlat9;
        let x_1018 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1017 / x_1018);
        let x_1020 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1020 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1022 : vec4<f32> = u_xlat8;
        let x_1025 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1022.w, x_1022.x, x_1022.y, x_1022.z) * vec4<f32>(x_1025.x, x_1025.x, x_1025.x, x_1025.x));
        let x_1028 : vec4<f32> = u_xlat9;
        let x_1031 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1028.x, x_1028.w, x_1028.y, x_1028.z) * vec4<f32>(x_1031.y, x_1031.y, x_1031.y, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1035 : vec3<f32> = vec3<f32>(x_1034.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1035.x, x_1036.y, x_1035.y, x_1035.z);
        let x_1039 : f32 = u_xlat9.x;
        u_xlat11.y = x_1039;
        let x_1041 : vec4<f32> = u_xlat6;
        let x_1044 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y) * vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y)) + vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1047.y));
        let x_1050 : vec4<f32> = u_xlat6;
        let x_1053 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1056 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1050.x, x_1050.y) * vec2<f32>(x_1053.x, x_1053.y)) + vec2<f32>(x_1056.w, x_1056.y));
        let x_1060 : f32 = u_xlat11.y;
        u_xlat8.y = x_1060;
        let x_1063 : f32 = u_xlat9.z;
        u_xlat11.y = x_1063;
        let x_1065 : vec4<f32> = u_xlat6;
        let x_1068 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1065.x, x_1065.y, x_1065.x, x_1065.y) * vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y)) + vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1071.y));
        let x_1074 : vec4<f32> = u_xlat6;
        let x_1077 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat11;
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.y) * vec2<f32>(x_1077.x, x_1077.y)) + vec2<f32>(x_1080.w, x_1080.y));
        let x_1083 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1082.x, x_1082.y, x_1083.z, x_1083.w);
        let x_1086 : f32 = u_xlat11.y;
        u_xlat8.z = x_1086;
        let x_1089 : vec4<f32> = u_xlat6;
        let x_1092 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y) * vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.y)) + vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.z));
        let x_1099 : f32 = u_xlat9.w;
        u_xlat11.y = x_1099;
        let x_1102 : vec4<f32> = u_xlat6;
        let x_1105 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1102.x, x_1102.y, x_1102.x, x_1102.y) * vec4<f32>(x_1105.x, x_1105.y, x_1105.x, x_1105.y)) + vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1108.y));
        let x_1112 : vec4<f32> = u_xlat6;
        let x_1115 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1118 : vec4<f32> = u_xlat11;
        let x_1120 : vec2<f32> = ((vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(x_1115.x, x_1115.y)) + vec2<f32>(x_1118.w, x_1118.y));
        let x_1121 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1120.x, x_1120.y, x_1121.z);
        let x_1124 : f32 = u_xlat11.y;
        u_xlat8.w = x_1124;
        let x_1127 : vec4<f32> = u_xlat6;
        let x_1130 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(x_1133.x, x_1133.w));
        let x_1136 : vec4<f32> = u_xlat11;
        let x_1137 : vec3<f32> = vec3<f32>(x_1136.x, x_1136.z, x_1136.w);
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1137.x, x_1138.y, x_1137.y, x_1137.z);
        let x_1140 : vec4<f32> = u_xlat6;
        let x_1143 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1140.x, x_1140.y, x_1140.x, x_1140.y) * vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.y)) + vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1146.y));
        let x_1150 : vec4<f32> = u_xlat6;
        let x_1153 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1156 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1150.x, x_1150.y) * vec2<f32>(x_1153.x, x_1153.y)) + vec2<f32>(x_1156.w, x_1156.y));
        let x_1160 : f32 = u_xlat8.x;
        u_xlat9.x = x_1160;
        let x_1162 : vec4<f32> = u_xlat6;
        let x_1165 : vec4<f32> = x_290.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat9;
        let x_1170 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(x_1165.x, x_1165.y)) + vec2<f32>(x_1168.x, x_1168.y));
        let x_1171 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
        let x_1174 : vec4<f32> = u_xlat7;
        let x_1176 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1174.x, x_1174.x, x_1174.x, x_1174.x) * x_1176);
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1181 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1179.y, x_1179.y, x_1179.y, x_1179.y) * x_1181);
        let x_1184 : vec4<f32> = u_xlat7;
        let x_1186 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1184.z, x_1184.z, x_1184.z, x_1184.z) * x_1186);
        let x_1188 : vec4<f32> = u_xlat7;
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1188.w, x_1188.w, x_1188.w, x_1188.w) * x_1190);
        let x_1193 : vec4<f32> = u_xlat12;
        let x_1194 : vec2<f32> = vec2<f32>(x_1193.x, x_1193.y);
        let x_1196 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec13;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1203.xy, x_1203.z);
        u_xlat8.x = x_1205;
        let x_1208 : vec4<f32> = u_xlat12;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.z, x_1208.w);
        let x_1211 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1219 : vec3<f32> = txVec14;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1219.xy, x_1219.z);
        u_xlat68 = x_1221;
        let x_1222 : f32 = u_xlat68;
        let x_1224 : f32 = u_xlat17.y;
        u_xlat68 = (x_1222 * x_1224);
        let x_1227 : f32 = u_xlat17.x;
        let x_1229 : f32 = u_xlat8.x;
        let x_1231 : f32 = u_xlat68;
        u_xlat8.x = ((x_1227 * x_1229) + x_1231);
        let x_1235 : vec2<f32> = u_xlat46;
        let x_1237 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
        let x_1244 : vec3<f32> = txVec15;
        let x_1246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1244.xy, x_1244.z);
        u_xlat46.x = x_1246;
        let x_1249 : f32 = u_xlat17.z;
        let x_1251 : f32 = u_xlat46.x;
        let x_1254 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1249 * x_1251) + x_1254);
        let x_1258 : vec4<f32> = u_xlat15;
        let x_1259 : vec2<f32> = vec2<f32>(x_1258.x, x_1258.y);
        let x_1261 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1269 : vec3<f32> = txVec16;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1269.xy, x_1269.z);
        u_xlat66 = x_1271;
        let x_1273 : f32 = u_xlat17.w;
        let x_1274 : f32 = u_xlat66;
        let x_1277 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1273 * x_1274) + x_1277);
        let x_1281 : vec4<f32> = u_xlat13;
        let x_1282 : vec2<f32> = vec2<f32>(x_1281.x, x_1281.y);
        let x_1284 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1282.x, x_1282.y, x_1284);
        let x_1291 : vec3<f32> = txVec17;
        let x_1293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1291.xy, x_1291.z);
        u_xlat66 = x_1293;
        let x_1295 : f32 = u_xlat18.x;
        let x_1296 : f32 = u_xlat66;
        let x_1299 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1295 * x_1296) + x_1299);
        let x_1303 : vec4<f32> = u_xlat13;
        let x_1304 : vec2<f32> = vec2<f32>(x_1303.z, x_1303.w);
        let x_1306 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1304.x, x_1304.y, x_1306);
        let x_1313 : vec3<f32> = txVec18;
        let x_1315 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1313.xy, x_1313.z);
        u_xlat66 = x_1315;
        let x_1317 : f32 = u_xlat18.y;
        let x_1318 : f32 = u_xlat66;
        let x_1321 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1317 * x_1318) + x_1321);
        let x_1325 : vec4<f32> = u_xlat14;
        let x_1326 : vec2<f32> = vec2<f32>(x_1325.x, x_1325.y);
        let x_1328 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1335 : vec3<f32> = txVec19;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1335.xy, x_1335.z);
        u_xlat66 = x_1337;
        let x_1339 : f32 = u_xlat18.z;
        let x_1340 : f32 = u_xlat66;
        let x_1343 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1339 * x_1340) + x_1343);
        let x_1347 : vec4<f32> = u_xlat15;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.z, x_1347.w);
        let x_1350 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec20;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1357.xy, x_1357.z);
        u_xlat66 = x_1359;
        let x_1361 : f32 = u_xlat18.w;
        let x_1362 : f32 = u_xlat66;
        let x_1365 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1361 * x_1362) + x_1365);
        let x_1369 : vec4<f32> = u_xlat16;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec21;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1379.xy, x_1379.z);
        u_xlat66 = x_1381;
        let x_1383 : f32 = u_xlat19.x;
        let x_1384 : f32 = u_xlat66;
        let x_1387 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1383 * x_1384) + x_1387);
        let x_1391 : vec4<f32> = u_xlat16;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.z, x_1391.w);
        let x_1394 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec22;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1401.xy, x_1401.z);
        u_xlat66 = x_1403;
        let x_1405 : f32 = u_xlat19.y;
        let x_1406 : f32 = u_xlat66;
        let x_1409 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1405 * x_1406) + x_1409);
        let x_1413 : vec3<f32> = u_xlat28;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.x, x_1413.y);
        let x_1416 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec23;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1423.xy, x_1423.z);
        u_xlat66 = x_1425;
        let x_1427 : f32 = u_xlat19.z;
        let x_1428 : f32 = u_xlat66;
        let x_1431 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1427 * x_1428) + x_1431);
        let x_1435 : vec2<f32> = u_xlat54;
        let x_1437 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec24;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat66 = x_1446;
        let x_1448 : f32 = u_xlat19.w;
        let x_1449 : f32 = u_xlat66;
        let x_1452 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1448 * x_1449) + x_1452);
        let x_1456 : vec4<f32> = u_xlat11;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec25;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat66 = x_1468;
        let x_1470 : f32 = u_xlat7.x;
        let x_1471 : f32 = u_xlat66;
        let x_1474 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1470 * x_1471) + x_1474);
        let x_1478 : vec4<f32> = u_xlat11;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec26;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat66 = x_1490;
        let x_1492 : f32 = u_xlat7.y;
        let x_1493 : f32 = u_xlat66;
        let x_1496 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1492 * x_1493) + x_1496);
        let x_1500 : vec2<f32> = u_xlat49;
        let x_1502 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec27;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1509.xy, x_1509.z);
        u_xlat66 = x_1511;
        let x_1513 : f32 = u_xlat7.z;
        let x_1514 : f32 = u_xlat66;
        let x_1517 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1513 * x_1514) + x_1517);
        let x_1521 : vec4<f32> = u_xlat6;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec28;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1531.xy, x_1531.z);
        u_xlat6.x = x_1533;
        let x_1536 : f32 = u_xlat7.w;
        let x_1538 : f32 = u_xlat6.x;
        let x_1541 : f32 = u_xlat46.x;
        u_xlat65 = ((x_1536 * x_1538) + x_1541);
      }
    }
  } else {
    let x_1545 : vec4<f32> = vs_TEXCOORD6;
    let x_1546 : vec2<f32> = vec2<f32>(x_1545.x, x_1545.y);
    let x_1548 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
    let x_1555 : vec3<f32> = txVec29;
    let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1555.xy, x_1555.z);
    u_xlat65 = x_1557;
  }
  let x_1559 : f32 = x_290.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1559) + 1.0f);
  let x_1563 : f32 = u_xlat65;
  let x_1565 : f32 = x_290.x_MainLightShadowParams.x;
  let x_1568 : f32 = u_xlat6.x;
  u_xlat65 = ((x_1563 * x_1565) + x_1568);
  let x_1571 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1571);
  let x_1575 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_1575 >= 1.0f);
  let x_1577 : bool = u_xlatb26;
  let x_1578 : bool = u_xlatb6;
  u_xlatb6 = (x_1577 | x_1578);
  let x_1580 : bool = u_xlatb6;
  let x_1581 : f32 = u_xlat65;
  u_xlat65 = select(x_1581, 1.0f, x_1580);
  let x_1583 : vec3<f32> = vs_TEXCOORD1;
  let x_1585 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1587 : vec3<f32> = (x_1583 + -(x_1585));
  let x_1588 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
  let x_1590 : vec4<f32> = u_xlat6;
  let x_1592 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1590.x, x_1590.y, x_1590.z), vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
  let x_1597 : f32 = u_xlat6.x;
  let x_1599 : f32 = x_290.x_MainLightShadowParams.z;
  let x_1602 : f32 = x_290.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1597 * x_1599) + x_1602);
  let x_1606 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1606, 0.0f, 1.0f);
  let x_1609 : f32 = u_xlat65;
  u_xlat26 = (-(x_1609) + 1.0f);
  let x_1613 : f32 = u_xlat6.x;
  let x_1614 : f32 = u_xlat26;
  let x_1616 : f32 = u_xlat65;
  u_xlat65 = ((x_1613 * x_1614) + x_1616);
  let x_1624 : f32 = x_1622.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1624 == -1.0f));
  let x_1626 : bool = u_xlatb6;
  if (x_1626) {
    let x_1629 : vec3<f32> = vs_TEXCOORD1;
    let x_1632 : vec4<f32> = x_1622.x_MainLightWorldToLight[1i];
    let x_1634 : vec2<f32> = (vec2<f32>(x_1629.y, x_1629.y) * vec2<f32>(x_1632.x, x_1632.y));
    let x_1635 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
    let x_1638 : vec4<f32> = x_1622.x_MainLightWorldToLight[0i];
    let x_1640 : vec3<f32> = vs_TEXCOORD1;
    let x_1643 : vec4<f32> = u_xlat6;
    let x_1645 : vec2<f32> = ((vec2<f32>(x_1638.x, x_1638.y) * vec2<f32>(x_1640.x, x_1640.x)) + vec2<f32>(x_1643.x, x_1643.y));
    let x_1646 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1645.x, x_1645.y, x_1646.z, x_1646.w);
    let x_1649 : vec4<f32> = x_1622.x_MainLightWorldToLight[2i];
    let x_1651 : vec3<f32> = vs_TEXCOORD1;
    let x_1654 : vec4<f32> = u_xlat6;
    let x_1656 : vec2<f32> = ((vec2<f32>(x_1649.x, x_1649.y) * vec2<f32>(x_1651.z, x_1651.z)) + vec2<f32>(x_1654.x, x_1654.y));
    let x_1657 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1656.x, x_1656.y, x_1657.z, x_1657.w);
    let x_1659 : vec4<f32> = u_xlat6;
    let x_1663 : vec4<f32> = x_1622.x_MainLightWorldToLight[3i];
    let x_1665 : vec2<f32> = (vec2<f32>(x_1659.x, x_1659.y) + vec2<f32>(x_1663.x, x_1663.y));
    let x_1666 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1665.x, x_1665.y, x_1666.z, x_1666.w);
    let x_1668 : vec4<f32> = u_xlat6;
    let x_1671 : vec2<f32> = ((vec2<f32>(x_1668.x, x_1668.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1672 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1671.x, x_1671.y, x_1672.z, x_1672.w);
    let x_1679 : vec4<f32> = u_xlat6;
    let x_1682 : f32 = x_44.x_GlobalMipBias.x;
    let x_1683 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1679.x, x_1679.y), x_1682);
    u_xlat6 = x_1683;
    let x_1688 : f32 = x_1622.x_MainLightCookieTextureFormat;
    let x_1690 : f32 = x_1622.x_MainLightCookieTextureFormat;
    let x_1692 : f32 = x_1622.x_MainLightCookieTextureFormat;
    let x_1694 : f32 = x_1622.x_MainLightCookieTextureFormat;
    let x_1695 : vec4<f32> = vec4<f32>(x_1688, x_1690, x_1692, x_1694);
    let x_1703 : vec4<bool> = (vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1695.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1703.x, x_1703.y);
    let x_1706 : bool = u_xlatb7.y;
    if (x_1706) {
      let x_1711 : f32 = u_xlat6.w;
      x_1707 = x_1711;
    } else {
      let x_1714 : f32 = u_xlat6.x;
      x_1707 = x_1714;
    }
    let x_1715 : f32 = x_1707;
    u_xlat66 = x_1715;
    let x_1717 : bool = u_xlatb7.x;
    if (x_1717) {
      let x_1721 : vec4<f32> = u_xlat6;
      x_1718 = vec3<f32>(x_1721.x, x_1721.y, x_1721.z);
    } else {
      let x_1724 : f32 = u_xlat66;
      x_1718 = vec3<f32>(x_1724, x_1724, x_1724);
    }
    let x_1726 : vec3<f32> = x_1718;
    let x_1727 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1727.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1733 : vec4<f32> = u_xlat6;
  let x_1736 : vec4<f32> = x_44.x_MainLightColor;
  let x_1738 : vec3<f32> = (vec3<f32>(x_1733.x, x_1733.y, x_1733.z) * vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
  let x_1739 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1738.x, x_1738.y, x_1738.z, x_1739.w);
  let x_1741 : f32 = u_xlat45;
  let x_1743 : vec4<f32> = u_xlat6;
  let x_1745 : vec3<f32> = (vec3<f32>(x_1741, x_1741, x_1741) * vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
  let x_1746 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
  let x_1748 : vec3<f32> = u_xlat3;
  let x_1750 : vec3<f32> = u_xlat2;
  u_xlat66 = dot(-(x_1748), x_1750);
  let x_1752 : f32 = u_xlat66;
  let x_1753 : f32 = u_xlat66;
  u_xlat66 = (x_1752 + x_1753);
  let x_1755 : vec3<f32> = u_xlat2;
  let x_1756 : f32 = u_xlat66;
  let x_1760 : vec3<f32> = u_xlat3;
  let x_1762 : vec3<f32> = ((x_1755 * -(vec3<f32>(x_1756, x_1756, x_1756))) + -(x_1760));
  let x_1763 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
  let x_1765 : vec3<f32> = u_xlat2;
  let x_1766 : vec3<f32> = u_xlat3;
  u_xlat66 = dot(x_1765, x_1766);
  let x_1768 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1768, 0.0f, 1.0f);
  let x_1770 : f32 = u_xlat66;
  u_xlat66 = (-(x_1770) + 1.0f);
  let x_1773 : f32 = u_xlat66;
  let x_1774 : f32 = u_xlat66;
  u_xlat66 = (x_1773 * x_1774);
  let x_1776 : f32 = u_xlat66;
  let x_1777 : f32 = u_xlat66;
  u_xlat66 = (x_1776 * x_1777);
  let x_1780 : f32 = u_xlat60;
  u_xlat67 = ((-(x_1780) * 0.699999988f) + 1.700000048f);
  let x_1786 : f32 = u_xlat60;
  let x_1787 : f32 = u_xlat67;
  u_xlat60 = (x_1786 * x_1787);
  let x_1789 : f32 = u_xlat60;
  u_xlat60 = (x_1789 * 6.0f);
  let x_1800 : vec4<f32> = u_xlat7;
  let x_1802 : f32 = u_xlat60;
  let x_1803 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1800.x, x_1800.y, x_1800.z), x_1802);
  u_xlat7 = x_1803;
  let x_1805 : f32 = u_xlat7.w;
  u_xlat60 = (x_1805 + -1.0f);
  let x_1812 : f32 = x_1810.unity_SpecCube0_HDR.w;
  let x_1813 : f32 = u_xlat60;
  u_xlat60 = ((x_1812 * x_1813) + 1.0f);
  let x_1816 : f32 = u_xlat60;
  u_xlat60 = max(x_1816, 0.0f);
  let x_1818 : f32 = u_xlat60;
  u_xlat60 = log2(x_1818);
  let x_1820 : f32 = u_xlat60;
  let x_1822 : f32 = x_1810.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_1820 * x_1822);
  let x_1824 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1824);
  let x_1826 : f32 = u_xlat60;
  let x_1828 : f32 = x_1810.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_1826 * x_1828);
  let x_1830 : vec4<f32> = u_xlat7;
  let x_1832 : f32 = u_xlat60;
  let x_1834 : vec3<f32> = (vec3<f32>(x_1830.x, x_1830.y, x_1830.z) * vec3<f32>(x_1832, x_1832, x_1832));
  let x_1835 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
  let x_1837 : f32 = u_xlat63;
  let x_1839 : f32 = u_xlat63;
  let x_1843 : vec2<f32> = ((vec2<f32>(x_1837, x_1837) * vec2<f32>(x_1839, x_1839)) + vec2<f32>(-1.0f, 1.0f));
  let x_1844 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1843.x, x_1843.y, x_1844.z, x_1844.w);
  let x_1847 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_1847);
  let x_1849 : vec4<f32> = u_xlat0;
  let x_1852 : f32 = u_xlat62;
  u_xlat28 = (-(vec3<f32>(x_1849.x, x_1849.y, x_1849.z)) + vec3<f32>(x_1852, x_1852, x_1852));
  let x_1855 : f32 = u_xlat66;
  let x_1857 : vec3<f32> = u_xlat28;
  let x_1859 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1855, x_1855, x_1855) * x_1857) + vec3<f32>(x_1859.x, x_1859.y, x_1859.z));
  let x_1862 : f32 = u_xlat60;
  let x_1864 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1862, x_1862, x_1862) * x_1864);
  let x_1866 : vec4<f32> = u_xlat7;
  let x_1868 : vec3<f32> = u_xlat28;
  let x_1869 : vec3<f32> = (vec3<f32>(x_1866.x, x_1866.y, x_1866.z) * x_1868);
  let x_1870 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
  let x_1872 : vec3<f32> = u_xlat4;
  let x_1873 : vec3<f32> = u_xlat21;
  let x_1875 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1872 * x_1873) + vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : f32 = u_xlat65;
  let x_1881 : f32 = x_1810.unity_LightData.z;
  u_xlat60 = (x_1878 * x_1881);
  let x_1883 : vec3<f32> = u_xlat2;
  let x_1885 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat62 = dot(x_1883, vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
  let x_1888 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1888, 0.0f, 1.0f);
  let x_1890 : f32 = u_xlat60;
  let x_1891 : f32 = u_xlat62;
  u_xlat60 = (x_1890 * x_1891);
  let x_1893 : f32 = u_xlat60;
  let x_1895 : vec4<f32> = u_xlat6;
  let x_1897 : vec3<f32> = (vec3<f32>(x_1893, x_1893, x_1893) * vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
  let x_1898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1897.x, x_1897.y, x_1897.z, x_1898.w);
  let x_1900 : vec3<f32> = u_xlat3;
  let x_1902 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1904 : vec3<f32> = (x_1900 + vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
  let x_1905 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
  let x_1907 : vec4<f32> = u_xlat7;
  let x_1909 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1907.x, x_1907.y, x_1907.z), vec3<f32>(x_1909.x, x_1909.y, x_1909.z));
  let x_1912 : f32 = u_xlat60;
  u_xlat60 = max(x_1912, 1.17549435e-37f);
  let x_1915 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1915);
  let x_1917 : f32 = u_xlat60;
  let x_1919 : vec4<f32> = u_xlat7;
  let x_1921 : vec3<f32> = (vec3<f32>(x_1917, x_1917, x_1917) * vec3<f32>(x_1919.x, x_1919.y, x_1919.z));
  let x_1922 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1921.x, x_1921.y, x_1921.z, x_1922.w);
  let x_1924 : vec3<f32> = u_xlat2;
  let x_1925 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1924, vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
  let x_1928 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1928, 0.0f, 1.0f);
  let x_1931 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1933 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(vec3<f32>(x_1931.x, x_1931.y, x_1931.z), vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
  let x_1936 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1936, 0.0f, 1.0f);
  let x_1938 : f32 = u_xlat60;
  let x_1939 : f32 = u_xlat60;
  u_xlat60 = (x_1938 * x_1939);
  let x_1941 : f32 = u_xlat60;
  let x_1943 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1941 * x_1943) + 1.000010014f);
  let x_1947 : f32 = u_xlat62;
  let x_1948 : f32 = u_xlat62;
  u_xlat62 = (x_1947 * x_1948);
  let x_1950 : f32 = u_xlat60;
  let x_1951 : f32 = u_xlat60;
  u_xlat60 = (x_1950 * x_1951);
  let x_1953 : f32 = u_xlat62;
  u_xlat62 = max(x_1953, 0.100000001f);
  let x_1956 : f32 = u_xlat60;
  let x_1957 : f32 = u_xlat62;
  u_xlat60 = (x_1956 * x_1957);
  let x_1959 : f32 = u_xlat25;
  let x_1960 : f32 = u_xlat60;
  u_xlat60 = (x_1959 * x_1960);
  let x_1962 : f32 = u_xlat64;
  let x_1963 : f32 = u_xlat60;
  u_xlat60 = (x_1962 / x_1963);
  let x_1965 : vec4<f32> = u_xlat0;
  let x_1967 : f32 = u_xlat60;
  let x_1970 : vec3<f32> = u_xlat21;
  let x_1971 : vec3<f32> = ((vec3<f32>(x_1965.x, x_1965.y, x_1965.z) * vec3<f32>(x_1967, x_1967, x_1967)) + x_1970);
  let x_1972 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
  let x_1974 : vec4<f32> = u_xlat6;
  let x_1976 : vec4<f32> = u_xlat7;
  let x_1978 : vec3<f32> = (vec3<f32>(x_1974.x, x_1974.y, x_1974.z) * vec3<f32>(x_1976.x, x_1976.y, x_1976.z));
  let x_1979 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1982 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1984 : f32 = x_1810.unity_LightData.y;
  u_xlat60 = min(x_1982, x_1984);
  let x_1988 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_1988));
  let x_1992 : f32 = x_1622.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1994 : f32 = x_1622.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1996 : f32 = x_1622.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1998 : f32 = x_1622.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1999 : vec4<f32> = vec4<f32>(x_1992, x_1994, x_1996, x_1998);
  let x_2005 : vec4<bool> = (vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_1999.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2005.x, x_2005.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2016 : u32 = u_xlatu_loop_1;
    let x_2017 : u32 = u_xlatu60;
    if ((x_2016 < x_2017)) {
    } else {
      break;
    }
    let x_2020 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2020 >> 2u);
    let x_2024 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2024 & 3u));
    let x_2027 : u32 = u_xlatu63;
    let x_2030 : vec4<f32> = x_1810.unity_LightIndices[bitcast<i32>(x_2027)];
    let x_2040 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2045 : vec4<u32> = indexable[x_2040];
    u_xlat63 = dot(x_2030, bitcast<vec4<f32>>(x_2045));
    let x_2048 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2048));
    let x_2051 : vec3<f32> = vs_TEXCOORD1;
    let x_2063 : u32 = u_xlatu63;
    let x_2066 : vec4<f32> = x_2062.x_AdditionalLightsPosition[bitcast<i32>(x_2063)];
    let x_2069 : u32 = u_xlatu63;
    let x_2072 : vec4<f32> = x_2062.x_AdditionalLightsPosition[bitcast<i32>(x_2069)];
    let x_2074 : vec3<f32> = ((-(x_2051) * vec3<f32>(x_2066.w, x_2066.w, x_2066.w)) + vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
    let x_2075 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
    let x_2077 : vec4<f32> = u_xlat9;
    let x_2079 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2077.x, x_2077.y, x_2077.z), vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
    let x_2082 : f32 = u_xlat65;
    u_xlat65 = max(x_2082, 6.10351562e-05f);
    let x_2085 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2085);
    let x_2087 : f32 = u_xlat66;
    let x_2089 : vec4<f32> = u_xlat9;
    let x_2091 : vec3<f32> = (vec3<f32>(x_2087, x_2087, x_2087) * vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
    let x_2092 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
    let x_2095 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2095);
    let x_2098 : f32 = u_xlat65;
    let x_2099 : u32 = u_xlatu63;
    let x_2102 : f32 = x_2062.x_AdditionalLightsAttenuation[bitcast<i32>(x_2099)].x;
    u_xlat65 = (x_2098 * x_2102);
    let x_2104 : f32 = u_xlat65;
    let x_2106 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2104) * x_2106) + 1.0f);
    let x_2109 : f32 = u_xlat65;
    u_xlat65 = max(x_2109, 0.0f);
    let x_2111 : f32 = u_xlat65;
    let x_2112 : f32 = u_xlat65;
    u_xlat65 = (x_2111 * x_2112);
    let x_2114 : f32 = u_xlat65;
    let x_2116 : f32 = u_xlat47.x;
    u_xlat65 = (x_2114 * x_2116);
    let x_2118 : u32 = u_xlatu63;
    let x_2121 : vec4<f32> = x_2062.x_AdditionalLightsSpotDir[bitcast<i32>(x_2118)];
    let x_2123 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2121.x, x_2121.y, x_2121.z), vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
    let x_2128 : f32 = u_xlat47.x;
    let x_2129 : u32 = u_xlatu63;
    let x_2132 : f32 = x_2062.x_AdditionalLightsAttenuation[bitcast<i32>(x_2129)].z;
    let x_2134 : u32 = u_xlatu63;
    let x_2137 : f32 = x_2062.x_AdditionalLightsAttenuation[bitcast<i32>(x_2134)].w;
    u_xlat47.x = ((x_2128 * x_2132) + x_2137);
    let x_2141 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2141, 0.0f, 1.0f);
    let x_2145 : f32 = u_xlat47.x;
    let x_2147 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2145 * x_2147);
    let x_2150 : f32 = u_xlat65;
    let x_2152 : f32 = u_xlat47.x;
    u_xlat65 = (x_2150 * x_2152);
    let x_2155 : u32 = u_xlatu63;
    u_xlatu47 = (x_2155 >> 5u);
    let x_2158 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2158) & 31i)));
    let x_2164 : i32 = u_xlati67;
    let x_2166 : u32 = u_xlatu47;
    let x_2169 : f32 = x_1622.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2166)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2164) & bitcast<u32>(x_2169)));
    let x_2173 : i32 = u_xlati47;
    if ((x_2173 != 0i)) {
      let x_2183 : u32 = u_xlatu63;
      let x_2186 : f32 = x_2182.x_AdditionalLightsLightTypes[bitcast<i32>(x_2183)].el;
      u_xlati47 = i32(x_2186);
      let x_2188 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2188 != 0i));
      let x_2192 : u32 = u_xlatu63;
      u_xlati69 = (bitcast<i32>(x_2192) << bitcast<u32>(2i));
      let x_2195 : i32 = u_xlati67;
      if ((x_2195 != 0i)) {
        let x_2199 : vec3<f32> = vs_TEXCOORD1;
        let x_2201 : i32 = u_xlati69;
        let x_2204 : i32 = u_xlati69;
        let x_2208 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2201 + 1i) / 4i)][((x_2204 + 1i) % 4i)];
        let x_2210 : vec3<f32> = (vec3<f32>(x_2199.y, x_2199.y, x_2199.y) * vec3<f32>(x_2208.x, x_2208.y, x_2208.w));
        let x_2211 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
        let x_2213 : i32 = u_xlati69;
        let x_2215 : i32 = u_xlati69;
        let x_2218 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[(x_2213 / 4i)][(x_2215 % 4i)];
        let x_2220 : vec3<f32> = vs_TEXCOORD1;
        let x_2223 : vec4<f32> = u_xlat11;
        let x_2225 : vec3<f32> = ((vec3<f32>(x_2218.x, x_2218.y, x_2218.w) * vec3<f32>(x_2220.x, x_2220.x, x_2220.x)) + vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
        let x_2226 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
        let x_2228 : i32 = u_xlati69;
        let x_2231 : i32 = u_xlati69;
        let x_2235 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2228 + 2i) / 4i)][((x_2231 + 2i) % 4i)];
        let x_2237 : vec3<f32> = vs_TEXCOORD1;
        let x_2240 : vec4<f32> = u_xlat11;
        let x_2242 : vec3<f32> = ((vec3<f32>(x_2235.x, x_2235.y, x_2235.w) * vec3<f32>(x_2237.z, x_2237.z, x_2237.z)) + vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
        let x_2243 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
        let x_2245 : vec4<f32> = u_xlat11;
        let x_2247 : i32 = u_xlati69;
        let x_2250 : i32 = u_xlati69;
        let x_2254 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2247 + 3i) / 4i)][((x_2250 + 3i) % 4i)];
        let x_2256 : vec3<f32> = (vec3<f32>(x_2245.x, x_2245.y, x_2245.z) + vec3<f32>(x_2254.x, x_2254.y, x_2254.w));
        let x_2257 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
        let x_2259 : vec4<f32> = u_xlat11;
        let x_2261 : vec4<f32> = u_xlat11;
        let x_2263 : vec2<f32> = (vec2<f32>(x_2259.x, x_2259.y) / vec2<f32>(x_2261.z, x_2261.z));
        let x_2264 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
        let x_2266 : vec4<f32> = u_xlat11;
        let x_2269 : vec2<f32> = ((vec2<f32>(x_2266.x, x_2266.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2270 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2269.x, x_2269.y, x_2270.z, x_2270.w);
        let x_2272 : vec4<f32> = u_xlat11;
        let x_2276 : vec2<f32> = clamp(vec2<f32>(x_2272.x, x_2272.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2277 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2276.x, x_2276.y, x_2277.z, x_2277.w);
        let x_2279 : u32 = u_xlatu63;
        let x_2282 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2279)];
        let x_2284 : vec4<f32> = u_xlat11;
        let x_2287 : u32 = u_xlatu63;
        let x_2290 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2287)];
        let x_2292 : vec2<f32> = ((vec2<f32>(x_2282.x, x_2282.y) * vec2<f32>(x_2284.x, x_2284.y)) + vec2<f32>(x_2290.z, x_2290.w));
        let x_2293 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2292.x, x_2292.y, x_2293.z, x_2293.w);
      } else {
        let x_2297 : i32 = u_xlati47;
        u_xlatb47 = (x_2297 == 1i);
        let x_2299 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2299);
        let x_2301 : i32 = u_xlati47;
        if ((x_2301 != 0i)) {
          let x_2305 : vec3<f32> = vs_TEXCOORD1;
          let x_2307 : i32 = u_xlati69;
          let x_2310 : i32 = u_xlati69;
          let x_2314 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2307 + 1i) / 4i)][((x_2310 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2305.y, x_2305.y) * vec2<f32>(x_2314.x, x_2314.y));
          let x_2317 : i32 = u_xlati69;
          let x_2319 : i32 = u_xlati69;
          let x_2322 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[(x_2317 / 4i)][(x_2319 % 4i)];
          let x_2324 : vec3<f32> = vs_TEXCOORD1;
          let x_2327 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2322.x, x_2322.y) * vec2<f32>(x_2324.x, x_2324.x)) + x_2327);
          let x_2329 : i32 = u_xlati69;
          let x_2332 : i32 = u_xlati69;
          let x_2336 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2329 + 2i) / 4i)][((x_2332 + 2i) % 4i)];
          let x_2338 : vec3<f32> = vs_TEXCOORD1;
          let x_2341 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2336.x, x_2336.y) * vec2<f32>(x_2338.z, x_2338.z)) + x_2341);
          let x_2343 : vec2<f32> = u_xlat47;
          let x_2344 : i32 = u_xlati69;
          let x_2347 : i32 = u_xlati69;
          let x_2351 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2344 + 3i) / 4i)][((x_2347 + 3i) % 4i)];
          u_xlat47 = (x_2343 + vec2<f32>(x_2351.x, x_2351.y));
          let x_2354 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2354 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2357 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2357);
          let x_2359 : u32 = u_xlatu63;
          let x_2362 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2359)];
          let x_2364 : vec2<f32> = u_xlat47;
          let x_2366 : u32 = u_xlatu63;
          let x_2369 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2366)];
          let x_2371 : vec2<f32> = ((vec2<f32>(x_2362.x, x_2362.y) * x_2364) + vec2<f32>(x_2369.z, x_2369.w));
          let x_2372 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2371.x, x_2371.y, x_2372.z, x_2372.w);
        } else {
          let x_2375 : vec3<f32> = vs_TEXCOORD1;
          let x_2377 : i32 = u_xlati69;
          let x_2380 : i32 = u_xlati69;
          let x_2384 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2377 + 1i) / 4i)][((x_2380 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2375.y, x_2375.y, x_2375.y, x_2375.y) * x_2384);
          let x_2386 : i32 = u_xlati69;
          let x_2388 : i32 = u_xlati69;
          let x_2391 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[(x_2386 / 4i)][(x_2388 % 4i)];
          let x_2392 : vec3<f32> = vs_TEXCOORD1;
          let x_2395 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2391 * vec4<f32>(x_2392.x, x_2392.x, x_2392.x, x_2392.x)) + x_2395);
          let x_2397 : i32 = u_xlati69;
          let x_2400 : i32 = u_xlati69;
          let x_2404 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2397 + 2i) / 4i)][((x_2400 + 2i) % 4i)];
          let x_2405 : vec3<f32> = vs_TEXCOORD1;
          let x_2408 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2404 * vec4<f32>(x_2405.z, x_2405.z, x_2405.z, x_2405.z)) + x_2408);
          let x_2410 : vec4<f32> = u_xlat12;
          let x_2411 : i32 = u_xlati69;
          let x_2414 : i32 = u_xlati69;
          let x_2418 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2411 + 3i) / 4i)][((x_2414 + 3i) % 4i)];
          u_xlat12 = (x_2410 + x_2418);
          let x_2420 : vec4<f32> = u_xlat12;
          let x_2422 : vec4<f32> = u_xlat12;
          let x_2424 : vec3<f32> = (vec3<f32>(x_2420.x, x_2420.y, x_2420.z) / vec3<f32>(x_2422.w, x_2422.w, x_2422.w));
          let x_2425 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2425.w);
          let x_2427 : vec4<f32> = u_xlat12;
          let x_2429 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2427.x, x_2427.y, x_2427.z), vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
          let x_2434 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2434);
          let x_2437 : vec2<f32> = u_xlat47;
          let x_2439 : vec4<f32> = u_xlat12;
          let x_2441 : vec3<f32> = (vec3<f32>(x_2437.x, x_2437.x, x_2437.x) * vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
          let x_2442 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
          let x_2444 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2444.x, x_2444.y, x_2444.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2451 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2451, 0.000001f);
          let x_2456 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2456);
          let x_2459 : vec2<f32> = u_xlat47;
          let x_2461 : vec4<f32> = u_xlat12;
          let x_2463 : vec3<f32> = (vec3<f32>(x_2459.x, x_2459.x, x_2459.x) * vec3<f32>(x_2461.z, x_2461.x, x_2461.y));
          let x_2464 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
          let x_2467 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2467);
          let x_2471 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2471, 0.0f, 1.0f);
          let x_2475 : vec4<f32> = u_xlat13;
          let x_2478 : vec4<bool> = (vec4<f32>(x_2475.y, x_2475.z, x_2475.y, x_2475.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2478.x, x_2478.y);
          let x_2482 : bool = u_xlatb51.x;
          if (x_2482) {
            let x_2487 : f32 = u_xlat13.x;
            x_2483 = x_2487;
          } else {
            let x_2490 : f32 = u_xlat13.x;
            x_2483 = -(x_2490);
          }
          let x_2492 : f32 = x_2483;
          u_xlat51.x = x_2492;
          let x_2495 : bool = u_xlatb51.y;
          if (x_2495) {
            let x_2500 : f32 = u_xlat13.x;
            x_2496 = x_2500;
          } else {
            let x_2503 : f32 = u_xlat13.x;
            x_2496 = -(x_2503);
          }
          let x_2505 : f32 = x_2496;
          u_xlat51.y = x_2505;
          let x_2507 : vec4<f32> = u_xlat12;
          let x_2509 : vec2<f32> = u_xlat47;
          let x_2512 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2507.x, x_2507.y) * vec2<f32>(x_2509.x, x_2509.x)) + x_2512);
          let x_2514 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2514 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2517 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2517, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2521 : u32 = u_xlatu63;
          let x_2524 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2521)];
          let x_2526 : vec2<f32> = u_xlat47;
          let x_2528 : u32 = u_xlatu63;
          let x_2531 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2528)];
          let x_2533 : vec2<f32> = ((vec2<f32>(x_2524.x, x_2524.y) * x_2526) + vec2<f32>(x_2531.z, x_2531.w));
          let x_2534 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2533.x, x_2533.y, x_2534.z, x_2534.w);
        }
      }
      let x_2541 : vec4<f32> = u_xlat11;
      let x_2544 : f32 = x_44.x_GlobalMipBias.x;
      let x_2545 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2541.x, x_2541.y), x_2544);
      u_xlat11 = x_2545;
      let x_2547 : bool = u_xlatb7.y;
      if (x_2547) {
        let x_2552 : f32 = u_xlat11.w;
        x_2548 = x_2552;
      } else {
        let x_2555 : f32 = u_xlat11.x;
        x_2548 = x_2555;
      }
      let x_2556 : f32 = x_2548;
      u_xlat47.x = x_2556;
      let x_2559 : bool = u_xlatb7.x;
      if (x_2559) {
        let x_2563 : vec4<f32> = u_xlat11;
        x_2560 = vec3<f32>(x_2563.x, x_2563.y, x_2563.z);
      } else {
        let x_2566 : vec2<f32> = u_xlat47;
        x_2560 = vec3<f32>(x_2566.x, x_2566.x, x_2566.x);
      }
      let x_2568 : vec3<f32> = x_2560;
      let x_2569 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2575 : vec4<f32> = u_xlat11;
    let x_2577 : u32 = u_xlatu63;
    let x_2580 : vec4<f32> = x_2062.x_AdditionalLightsColor[bitcast<i32>(x_2577)];
    let x_2582 : vec3<f32> = (vec3<f32>(x_2575.x, x_2575.y, x_2575.z) * vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
    let x_2583 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
    let x_2585 : f32 = u_xlat45;
    let x_2587 : vec4<f32> = u_xlat11;
    let x_2589 : vec3<f32> = (vec3<f32>(x_2585, x_2585, x_2585) * vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
    let x_2590 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2589.x, x_2589.y, x_2589.z, x_2590.w);
    let x_2592 : vec3<f32> = u_xlat2;
    let x_2593 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(x_2592, vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
    let x_2596 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2596, 0.0f, 1.0f);
    let x_2598 : f32 = u_xlat63;
    let x_2599 : f32 = u_xlat65;
    u_xlat63 = (x_2598 * x_2599);
    let x_2601 : f32 = u_xlat63;
    let x_2603 : vec4<f32> = u_xlat11;
    let x_2605 : vec3<f32> = (vec3<f32>(x_2601, x_2601, x_2601) * vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
    let x_2606 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
    let x_2608 : vec4<f32> = u_xlat9;
    let x_2610 : f32 = u_xlat66;
    let x_2613 : vec3<f32> = u_xlat3;
    let x_2614 : vec3<f32> = ((vec3<f32>(x_2608.x, x_2608.y, x_2608.z) * vec3<f32>(x_2610, x_2610, x_2610)) + x_2613);
    let x_2615 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2614.x, x_2614.y, x_2614.z, x_2615.w);
    let x_2617 : vec4<f32> = u_xlat9;
    let x_2619 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2617.x, x_2617.y, x_2617.z), vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
    let x_2622 : f32 = u_xlat63;
    u_xlat63 = max(x_2622, 1.17549435e-37f);
    let x_2624 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2624);
    let x_2626 : f32 = u_xlat63;
    let x_2628 : vec4<f32> = u_xlat9;
    let x_2630 : vec3<f32> = (vec3<f32>(x_2626, x_2626, x_2626) * vec3<f32>(x_2628.x, x_2628.y, x_2628.z));
    let x_2631 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2630.x, x_2630.y, x_2630.z, x_2631.w);
    let x_2633 : vec3<f32> = u_xlat2;
    let x_2634 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_2633, vec3<f32>(x_2634.x, x_2634.y, x_2634.z));
    let x_2637 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2637, 0.0f, 1.0f);
    let x_2639 : vec4<f32> = u_xlat10;
    let x_2641 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2639.x, x_2639.y, x_2639.z), vec3<f32>(x_2641.x, x_2641.y, x_2641.z));
    let x_2644 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2644, 0.0f, 1.0f);
    let x_2646 : f32 = u_xlat63;
    let x_2647 : f32 = u_xlat63;
    u_xlat63 = (x_2646 * x_2647);
    let x_2649 : f32 = u_xlat63;
    let x_2651 : f32 = u_xlat8.x;
    u_xlat63 = ((x_2649 * x_2651) + 1.000010014f);
    let x_2654 : f32 = u_xlat65;
    let x_2655 : f32 = u_xlat65;
    u_xlat65 = (x_2654 * x_2655);
    let x_2657 : f32 = u_xlat63;
    let x_2658 : f32 = u_xlat63;
    u_xlat63 = (x_2657 * x_2658);
    let x_2660 : f32 = u_xlat65;
    u_xlat65 = max(x_2660, 0.100000001f);
    let x_2662 : f32 = u_xlat63;
    let x_2663 : f32 = u_xlat65;
    u_xlat63 = (x_2662 * x_2663);
    let x_2665 : f32 = u_xlat25;
    let x_2666 : f32 = u_xlat63;
    u_xlat63 = (x_2665 * x_2666);
    let x_2668 : f32 = u_xlat64;
    let x_2669 : f32 = u_xlat63;
    u_xlat63 = (x_2668 / x_2669);
    let x_2671 : vec4<f32> = u_xlat0;
    let x_2673 : f32 = u_xlat63;
    let x_2676 : vec3<f32> = u_xlat21;
    let x_2677 : vec3<f32> = ((vec3<f32>(x_2671.x, x_2671.y, x_2671.z) * vec3<f32>(x_2673, x_2673, x_2673)) + x_2676);
    let x_2678 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2678.w);
    let x_2680 : vec4<f32> = u_xlat9;
    let x_2682 : vec4<f32> = u_xlat11;
    let x_2685 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2680.x, x_2680.y, x_2680.z) * vec3<f32>(x_2682.x, x_2682.y, x_2682.z)) + x_2685);

    continuing {
      let x_2687 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2687 + bitcast<u32>(1i));
    }
  }
  let x_2689 : vec3<f32> = u_xlat4;
  let x_2690 : vec3<f32> = u_xlat5;
  let x_2693 : vec4<f32> = u_xlat6;
  let x_2695 : vec3<f32> = ((x_2689 * vec3<f32>(x_2690.x, x_2690.x, x_2690.x)) + vec3<f32>(x_2693.x, x_2693.y, x_2693.z));
  let x_2696 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2696.w);
  let x_2700 : vec3<f32> = u_xlat28;
  let x_2701 : vec4<f32> = u_xlat0;
  let x_2703 : vec3<f32> = (x_2700 + vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
  let x_2704 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2703.x, x_2703.y, x_2703.z, x_2704.w);
  let x_2709 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2709 == 1.0f);
  let x_2711 : bool = u_xlatb0;
  if (x_2711) {
    let x_2716 : f32 = u_xlat1.x;
    x_2712 = x_2716;
  } else {
    x_2712 = 1.0f;
  }
  let x_2718 : f32 = x_2712;
  SV_Target0.w = x_2718;
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

