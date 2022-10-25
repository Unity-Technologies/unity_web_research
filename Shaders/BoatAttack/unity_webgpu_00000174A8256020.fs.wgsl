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

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_303 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1626 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1812 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2065 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2170 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb63 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat4 : vec3<f32>;
  var x_107 : f32;
  var x_121 : f32;
  var x_133 : f32;
  var u_xlat63 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlatb48 : vec2<bool>;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlatb69 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat69 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat28 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec3<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
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
  var u_xlatb7 : bool;
  var u_xlatb8 : vec2<bool>;
  var x_1709 : f32;
  var x_1720 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlatu63 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat71 : f32;
  var u_xlat73 : f32;
  var u_xlatu73 : u32;
  var u_xlati11 : i32;
  var u_xlati73 : i32;
  var u_xlati32 : i32;
  var u_xlatb73 : bool;
  var u_xlatb32 : vec3<bool>;
  var u_xlat32 : vec3<f32>;
  var x_2485 : f32;
  var x_2498 : f32;
  var x_2560 : f32;
  var x_2571 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2724 : f32;
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
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb63 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat65 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat65;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_106 : bool = u_xlatb63;
  if (x_106) {
    let x_111 : f32 = u_xlat3.x;
    x_107 = x_111;
  } else {
    let x_117 : f32 = x_44.unity_MatrixV[0i].z;
    x_107 = x_117;
  }
  let x_118 : f32 = x_107;
  u_xlat4.x = x_118;
  let x_120 : bool = u_xlatb63;
  if (x_120) {
    let x_126 : f32 = u_xlat3.y;
    x_121 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[1i].z;
    x_121 = x_129;
  }
  let x_130 : f32 = x_121;
  u_xlat4.y = x_130;
  let x_132 : bool = u_xlatb63;
  if (x_132) {
    let x_137 : f32 = u_xlat3.z;
    x_133 = x_137;
  } else {
    let x_140 : f32 = x_44.unity_MatrixV[2i].z;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat4.z = x_141;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_145, x_146);
  let x_148 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat63;
  let x_152 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_150, x_150, x_150) * x_152);
  let x_161 : vec2<f32> = vs_TEXCOORD8;
  let x_163 : f32 = x_44.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_161, x_163);
  u_xlat5 = vec3<f32>(x_164.x, x_164.y, x_164.z);
  let x_169 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_170 : vec2<f32> = vec2<f32>(x_169.x, x_169.y);
  let x_174 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_170.x, x_170.y));
  let x_175 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_174.x, x_174.y, x_175.z);
  let x_177 : vec3<f32> = u_xlat6;
  let x_179 : vec4<f32> = hlslcc_FragCoord;
  let x_181 : vec2<f32> = (vec2<f32>(x_177.x, x_177.y) * vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_181.x, x_181.y, x_182.z);
  let x_185 : f32 = u_xlat6.y;
  let x_188 : f32 = x_44.x_ScaleBiasRt.x;
  let x_191 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_185 * x_188) + x_191);
  let x_193 : f32 = u_xlat63;
  u_xlat6.z = (-(x_193) + 1.0f);
  let x_198 : f32 = x_57.x_Metallic;
  u_xlat63 = ((-(x_198) * 0.959999979f) + 0.959999979f);
  let x_203 : f32 = u_xlat63;
  let x_206 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_203) + x_206);
  let x_209 : f32 = u_xlat63;
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat22 = (vec3<f32>(x_209, x_209, x_209) * vec3<f32>(x_211.y, x_211.z, x_211.w));
  let x_214 : vec4<f32> = u_xlat0;
  let x_217 : vec4<f32> = x_57.x_BaseColor;
  let x_222 : vec3<f32> = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_217.x, x_217.y, x_217.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_223 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : f32 = x_57.x_Metallic;
  let x_228 : f32 = x_57.x_Metallic;
  let x_230 : f32 = x_57.x_Metallic;
  let x_231 : vec3<f32> = vec3<f32>(x_226, x_228, x_230);
  let x_236 : vec4<f32> = u_xlat0;
  let x_241 : vec3<f32> = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_236.x, x_236.y, x_236.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : f32 = x_57.x_Smoothness;
  u_xlat63 = (-(x_245) + 1.0f);
  let x_249 : f32 = u_xlat63;
  let x_250 : f32 = u_xlat63;
  u_xlat66 = (x_249 * x_250);
  let x_252 : f32 = u_xlat66;
  u_xlat66 = max(x_252, 0.0078125f);
  let x_256 : f32 = u_xlat66;
  let x_257 : f32 = u_xlat66;
  u_xlat67 = (x_256 * x_257);
  let x_259 : f32 = u_xlat65;
  u_xlat65 = (x_259 + 1.0f);
  let x_261 : f32 = u_xlat65;
  u_xlat65 = clamp(x_261, 0.0f, 1.0f);
  let x_264 : f32 = u_xlat66;
  u_xlat68 = ((x_264 * 4.0f) + 2.0f);
  let x_274 : vec3<f32> = u_xlat6;
  let x_277 : f32 = x_44.x_GlobalMipBias.x;
  let x_278 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_274.x, x_274.z), x_277);
  u_xlat6.x = x_278.x;
  let x_283 : f32 = u_xlat6.x;
  u_xlat27 = (x_283 + -1.0f);
  let x_288 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_289 : f32 = u_xlat27;
  u_xlat27 = ((x_288 * x_289) + 1.0f);
  let x_293 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_293, 1.0f);
  let x_305 : f32 = x_303.x_MainLightShadowParams.y;
  u_xlatb48.x = (0.0f < x_305);
  let x_309 : bool = u_xlatb48.x;
  if (x_309) {
    let x_313 : f32 = x_303.x_MainLightShadowParams.y;
    u_xlatb48.x = (x_313 == 1.0f);
    let x_317 : bool = u_xlatb48.x;
    if (x_317) {
      let x_322 : vec4<f32> = vs_TEXCOORD6;
      let x_325 : vec4<f32> = x_303.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_322.x, x_322.y, x_322.x, x_322.y) + x_325);
      let x_328 : vec4<f32> = u_xlat7;
      let x_329 : vec2<f32> = vec2<f32>(x_328.x, x_328.y);
      let x_331 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_329.x, x_329.y, x_331);
      let x_344 : vec3<f32> = txVec0;
      let x_346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_344.xy, x_344.z);
      u_xlat8.x = x_346;
      let x_349 : vec4<f32> = u_xlat7;
      let x_350 : vec2<f32> = vec2<f32>(x_349.z, x_349.w);
      let x_352 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_359 : vec3<f32> = txVec1;
      let x_361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_359.xy, x_359.z);
      u_xlat8.y = x_361;
      let x_363 : vec4<f32> = vs_TEXCOORD6;
      let x_366 : vec4<f32> = x_303.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_363.x, x_363.y, x_363.x, x_363.y) + x_366);
      let x_369 : vec4<f32> = u_xlat7;
      let x_370 : vec2<f32> = vec2<f32>(x_369.x, x_369.y);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec2;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_379.xy, x_379.z);
      u_xlat8.z = x_381;
      let x_384 : vec4<f32> = u_xlat7;
      let x_385 : vec2<f32> = vec2<f32>(x_384.z, x_384.w);
      let x_387 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_385.x, x_385.y, x_387);
      let x_394 : vec3<f32> = txVec3;
      let x_396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_394.xy, x_394.z);
      u_xlat8.w = x_396;
      let x_399 : vec4<f32> = u_xlat8;
      u_xlat48 = dot(x_399, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_406 : f32 = x_303.x_MainLightShadowParams.y;
      u_xlatb69 = (x_406 == 2.0f);
      let x_408 : bool = u_xlatb69;
      if (x_408) {
        let x_411 : vec4<f32> = vs_TEXCOORD6;
        let x_414 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_419 : vec2<f32> = ((vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414.z, x_414.w)) + vec2<f32>(0.5f, 0.5f));
        let x_420 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
        let x_422 : vec4<f32> = u_xlat7;
        let x_424 : vec2<f32> = floor(vec2<f32>(x_422.x, x_422.y));
        let x_425 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
        let x_429 : vec4<f32> = vs_TEXCOORD6;
        let x_432 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_435 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_429.x, x_429.y) * vec2<f32>(x_432.z, x_432.w)) + -(vec2<f32>(x_435.x, x_435.y)));
        let x_439 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_439.x, x_439.x, x_439.y, x_439.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_444 : vec4<f32> = u_xlat8;
        let x_446 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_444.x, x_444.x, x_444.z, x_444.z) * vec4<f32>(x_446.x, x_446.x, x_446.z, x_446.z));
        let x_449 : vec4<f32> = u_xlat9;
        let x_453 : vec2<f32> = (vec2<f32>(x_449.y, x_449.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_454 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_453.x, x_454.y, x_453.y, x_454.w);
        let x_456 : vec4<f32> = u_xlat9;
        let x_459 : vec2<f32> = u_xlat49;
        let x_461 : vec2<f32> = ((vec2<f32>(x_456.x, x_456.z) * vec2<f32>(0.5f, 0.5f)) + -(x_459));
        let x_462 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
        let x_465 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_465) + vec2<f32>(1.0f, 1.0f));
        let x_469 : vec2<f32> = u_xlat49;
        let x_471 : vec2<f32> = min(x_469, vec2<f32>(0.0f, 0.0f));
        let x_472 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_474 : vec4<f32> = u_xlat10;
        let x_477 : vec4<f32> = u_xlat10;
        let x_480 : vec2<f32> = u_xlat51;
        let x_481 : vec2<f32> = ((-(vec2<f32>(x_474.x, x_474.y)) * vec2<f32>(x_477.x, x_477.y)) + x_480);
        let x_482 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_484 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_484, vec2<f32>(0.0f, 0.0f));
        let x_486 : vec2<f32> = u_xlat49;
        let x_488 : vec2<f32> = u_xlat49;
        let x_490 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_486) * x_488) + vec2<f32>(x_490.y, x_490.w));
        let x_493 : vec4<f32> = u_xlat10;
        let x_495 : vec2<f32> = (vec2<f32>(x_493.x, x_493.y) + vec2<f32>(1.0f, 1.0f));
        let x_496 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
        let x_498 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_498 + vec2<f32>(1.0f, 1.0f));
        let x_501 : vec4<f32> = u_xlat9;
        let x_505 : vec2<f32> = (vec2<f32>(x_501.x, x_501.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_506 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_508 : vec2<f32> = u_xlat51;
        let x_509 : vec2<f32> = (x_508 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_510 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
        let x_512 : vec4<f32> = u_xlat10;
        let x_514 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_515 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
        let x_518 : vec2<f32> = u_xlat49;
        let x_519 : vec2<f32> = (x_518 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_520 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
        let x_522 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_522.y, x_522.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_526 : f32 = u_xlat10.x;
        u_xlat11.z = x_526;
        let x_529 : f32 = u_xlat49.x;
        u_xlat11.w = x_529;
        let x_532 : f32 = u_xlat12.x;
        u_xlat9.z = x_532;
        let x_535 : f32 = u_xlat8.x;
        u_xlat9.w = x_535;
        let x_538 : vec4<f32> = u_xlat9;
        let x_540 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_538.z, x_538.w, x_538.x, x_538.z) + vec4<f32>(x_540.z, x_540.w, x_540.x, x_540.z));
        let x_544 : f32 = u_xlat11.y;
        u_xlat10.z = x_544;
        let x_547 : f32 = u_xlat49.y;
        u_xlat10.w = x_547;
        let x_550 : f32 = u_xlat9.y;
        u_xlat12.z = x_550;
        let x_553 : f32 = u_xlat8.z;
        u_xlat12.w = x_553;
        let x_555 : vec4<f32> = u_xlat10;
        let x_557 : vec4<f32> = u_xlat12;
        let x_559 : vec3<f32> = (vec3<f32>(x_555.z, x_555.y, x_555.w) + vec3<f32>(x_557.z, x_557.y, x_557.w));
        let x_560 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat9;
        let x_564 : vec4<f32> = u_xlat13;
        let x_566 : vec3<f32> = (vec3<f32>(x_562.x, x_562.z, x_562.w) / vec3<f32>(x_564.z, x_564.w, x_564.y));
        let x_567 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat9;
        let x_575 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_576 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
        let x_578 : vec4<f32> = u_xlat12;
        let x_580 : vec4<f32> = u_xlat8;
        let x_582 : vec3<f32> = (vec3<f32>(x_578.z, x_578.y, x_578.w) / vec3<f32>(x_580.x, x_580.y, x_580.z));
        let x_583 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat10;
        let x_587 : vec3<f32> = (vec3<f32>(x_585.x, x_585.y, x_585.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_588 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
        let x_590 : vec4<f32> = u_xlat9;
        let x_593 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_595 : vec3<f32> = (vec3<f32>(x_590.y, x_590.x, x_590.z) * vec3<f32>(x_593.x, x_593.x, x_593.x));
        let x_596 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat10;
        let x_601 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_603 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) * vec3<f32>(x_601.y, x_601.y, x_601.y));
        let x_604 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
        let x_607 : f32 = u_xlat10.x;
        u_xlat9.w = x_607;
        let x_609 : vec4<f32> = u_xlat7;
        let x_612 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_615 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_609.x, x_609.y, x_609.x, x_609.y) * vec4<f32>(x_612.x, x_612.y, x_612.x, x_612.y)) + vec4<f32>(x_615.y, x_615.w, x_615.x, x_615.w));
        let x_618 : vec4<f32> = u_xlat7;
        let x_621 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_624 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_618.x, x_618.y) * vec2<f32>(x_621.x, x_621.y)) + vec2<f32>(x_624.z, x_624.w));
        let x_628 : f32 = u_xlat9.y;
        u_xlat10.w = x_628;
        let x_630 : vec4<f32> = u_xlat10;
        let x_631 : vec2<f32> = vec2<f32>(x_630.y, x_630.z);
        let x_632 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_632.x, x_631.x, x_632.z, x_631.y);
        let x_634 : vec4<f32> = u_xlat7;
        let x_637 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_640 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) * vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y)) + vec4<f32>(x_640.x, x_640.y, x_640.z, x_640.y));
        let x_643 : vec4<f32> = u_xlat7;
        let x_646 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_649 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.w, x_649.y, x_649.w, x_649.z));
        let x_652 : vec4<f32> = u_xlat7;
        let x_655 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_658 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_652.x, x_652.y, x_652.x, x_652.y) * vec4<f32>(x_655.x, x_655.y, x_655.x, x_655.y)) + vec4<f32>(x_658.x, x_658.w, x_658.z, x_658.w));
        let x_662 : vec4<f32> = u_xlat8;
        let x_664 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_662.x, x_662.x, x_662.x, x_662.y) * vec4<f32>(x_664.z, x_664.w, x_664.y, x_664.z));
        let x_668 : vec4<f32> = u_xlat8;
        let x_670 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_668.y, x_668.y, x_668.z, x_668.z) * x_670);
        let x_674 : f32 = u_xlat8.z;
        let x_676 : f32 = u_xlat13.y;
        u_xlat69 = (x_674 * x_676);
        let x_679 : vec4<f32> = u_xlat11;
        let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
        let x_682 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_680.x, x_680.y, x_682);
        let x_689 : vec3<f32> = txVec4;
        let x_691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_689.xy, x_689.z);
        u_xlat7.x = x_691;
        let x_694 : vec4<f32> = u_xlat11;
        let x_695 : vec2<f32> = vec2<f32>(x_694.z, x_694.w);
        let x_697 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_695.x, x_695.y, x_697);
        let x_705 : vec3<f32> = txVec5;
        let x_707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_705.xy, x_705.z);
        u_xlat28 = x_707;
        let x_708 : f32 = u_xlat28;
        let x_710 : f32 = u_xlat14.y;
        u_xlat28 = (x_708 * x_710);
        let x_713 : f32 = u_xlat14.x;
        let x_715 : f32 = u_xlat7.x;
        let x_717 : f32 = u_xlat28;
        u_xlat7.x = ((x_713 * x_715) + x_717);
        let x_721 : vec2<f32> = u_xlat49;
        let x_723 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_721.x, x_721.y, x_723);
        let x_730 : vec3<f32> = txVec6;
        let x_732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_730.xy, x_730.z);
        u_xlat28 = x_732;
        let x_734 : f32 = u_xlat14.z;
        let x_735 : f32 = u_xlat28;
        let x_738 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_734 * x_735) + x_738);
        let x_742 : vec4<f32> = u_xlat10;
        let x_743 : vec2<f32> = vec2<f32>(x_742.x, x_742.y);
        let x_745 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_743.x, x_743.y, x_745);
        let x_752 : vec3<f32> = txVec7;
        let x_754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_752.xy, x_752.z);
        u_xlat28 = x_754;
        let x_756 : f32 = u_xlat14.w;
        let x_757 : f32 = u_xlat28;
        let x_760 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_756 * x_757) + x_760);
        let x_764 : vec4<f32> = u_xlat12;
        let x_765 : vec2<f32> = vec2<f32>(x_764.x, x_764.y);
        let x_767 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_765.x, x_765.y, x_767);
        let x_774 : vec3<f32> = txVec8;
        let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_774.xy, x_774.z);
        u_xlat28 = x_776;
        let x_778 : f32 = u_xlat15.x;
        let x_779 : f32 = u_xlat28;
        let x_782 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_778 * x_779) + x_782);
        let x_786 : vec4<f32> = u_xlat12;
        let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
        let x_789 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_796 : vec3<f32> = txVec9;
        let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_796.xy, x_796.z);
        u_xlat28 = x_798;
        let x_800 : f32 = u_xlat15.y;
        let x_801 : f32 = u_xlat28;
        let x_804 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_800 * x_801) + x_804);
        let x_808 : vec4<f32> = u_xlat10;
        let x_809 : vec2<f32> = vec2<f32>(x_808.z, x_808.w);
        let x_811 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_809.x, x_809.y, x_811);
        let x_818 : vec3<f32> = txVec10;
        let x_820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_818.xy, x_818.z);
        u_xlat28 = x_820;
        let x_822 : f32 = u_xlat15.z;
        let x_823 : f32 = u_xlat28;
        let x_826 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_822 * x_823) + x_826);
        let x_830 : vec4<f32> = u_xlat9;
        let x_831 : vec2<f32> = vec2<f32>(x_830.x, x_830.y);
        let x_833 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_840 : vec3<f32> = txVec11;
        let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_840.xy, x_840.z);
        u_xlat28 = x_842;
        let x_844 : f32 = u_xlat15.w;
        let x_845 : f32 = u_xlat28;
        let x_848 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_844 * x_845) + x_848);
        let x_852 : vec4<f32> = u_xlat9;
        let x_853 : vec2<f32> = vec2<f32>(x_852.z, x_852.w);
        let x_855 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_862 : vec3<f32> = txVec12;
        let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_862.xy, x_862.z);
        u_xlat28 = x_864;
        let x_865 : f32 = u_xlat69;
        let x_866 : f32 = u_xlat28;
        let x_869 : f32 = u_xlat7.x;
        u_xlat48 = ((x_865 * x_866) + x_869);
      } else {
        let x_872 : vec4<f32> = vs_TEXCOORD6;
        let x_875 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_878 : vec2<f32> = ((vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_875.z, x_875.w)) + vec2<f32>(0.5f, 0.5f));
        let x_879 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec4<f32> = u_xlat7;
        let x_883 : vec2<f32> = floor(vec2<f32>(x_881.x, x_881.y));
        let x_884 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_883.x, x_883.y, x_884.z, x_884.w);
        let x_886 : vec4<f32> = vs_TEXCOORD6;
        let x_889 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_892 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_886.x, x_886.y) * vec2<f32>(x_889.z, x_889.w)) + -(vec2<f32>(x_892.x, x_892.y)));
        let x_896 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_896.x, x_896.x, x_896.y, x_896.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_899 : vec4<f32> = u_xlat8;
        let x_901 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_899.x, x_899.x, x_899.z, x_899.z) * vec4<f32>(x_901.x, x_901.x, x_901.z, x_901.z));
        let x_904 : vec4<f32> = u_xlat9;
        let x_908 : vec2<f32> = (vec2<f32>(x_904.y, x_904.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_909 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_909.x, x_908.x, x_909.z, x_908.y);
        let x_911 : vec4<f32> = u_xlat9;
        let x_914 : vec2<f32> = u_xlat49;
        let x_916 : vec2<f32> = ((vec2<f32>(x_911.x, x_911.z) * vec2<f32>(0.5f, 0.5f)) + -(x_914));
        let x_917 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_916.x, x_917.y, x_916.y, x_917.w);
        let x_919 : vec2<f32> = u_xlat49;
        let x_921 : vec2<f32> = (-(x_919) + vec2<f32>(1.0f, 1.0f));
        let x_922 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_924, vec2<f32>(0.0f, 0.0f));
        let x_926 : vec2<f32> = u_xlat51;
        let x_928 : vec2<f32> = u_xlat51;
        let x_930 : vec4<f32> = u_xlat9;
        let x_932 : vec2<f32> = ((-(x_926) * x_928) + vec2<f32>(x_930.x, x_930.y));
        let x_933 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
        let x_935 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_935, vec2<f32>(0.0f, 0.0f));
        let x_938 : vec2<f32> = u_xlat51;
        let x_940 : vec2<f32> = u_xlat51;
        let x_942 : vec4<f32> = u_xlat8;
        let x_944 : vec2<f32> = ((-(x_938) * x_940) + vec2<f32>(x_942.y, x_942.w));
        let x_945 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_944.x, x_945.y, x_944.y);
        let x_947 : vec4<f32> = u_xlat9;
        let x_950 : vec2<f32> = (vec2<f32>(x_947.x, x_947.y) + vec2<f32>(2.0f, 2.0f));
        let x_951 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_950.x, x_950.y, x_951.z, x_951.w);
        let x_953 : vec3<f32> = u_xlat29;
        let x_955 : vec2<f32> = (vec2<f32>(x_953.x, x_953.z) + vec2<f32>(2.0f, 2.0f));
        let x_956 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_956.x, x_955.x, x_956.z, x_955.y);
        let x_959 : f32 = u_xlat8.y;
        u_xlat11.z = (x_959 * 0.081632003f);
        let x_963 : vec4<f32> = u_xlat8;
        let x_966 : vec3<f32> = (vec3<f32>(x_963.z, x_963.x, x_963.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_967 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
        let x_969 : vec4<f32> = u_xlat9;
        let x_972 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_976 : f32 = u_xlat12.y;
        u_xlat11.x = x_976;
        let x_978 : vec2<f32> = u_xlat49;
        let x_985 : vec2<f32> = ((vec2<f32>(x_978.x, x_978.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_986 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_986.x, x_985.x, x_986.z, x_985.y);
        let x_988 : vec2<f32> = u_xlat49;
        let x_992 : vec2<f32> = ((vec2<f32>(x_988.x, x_988.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_993 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_992.x, x_993.y, x_992.y, x_993.w);
        let x_996 : f32 = u_xlat8.x;
        u_xlat9.y = x_996;
        let x_999 : f32 = u_xlat10.y;
        u_xlat9.w = x_999;
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1002 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1001 + x_1002);
        let x_1004 : vec2<f32> = u_xlat49;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1004.y, x_1004.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1008 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1008.x, x_1007.x, x_1008.z, x_1007.y);
        let x_1010 : vec2<f32> = u_xlat49;
        let x_1013 : vec2<f32> = ((vec2<f32>(x_1010.y, x_1010.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1014 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1013.x, x_1014.y, x_1013.y, x_1014.w);
        let x_1017 : f32 = u_xlat8.y;
        u_xlat10.y = x_1017;
        let x_1019 : vec4<f32> = u_xlat10;
        let x_1020 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1019 + x_1020);
        let x_1022 : vec4<f32> = u_xlat9;
        let x_1023 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1022 / x_1023);
        let x_1025 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1025 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1031 : vec4<f32> = u_xlat10;
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1031 / x_1032);
        let x_1034 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1034 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1036 : vec4<f32> = u_xlat9;
        let x_1039 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1036.w, x_1036.x, x_1036.y, x_1036.z) * vec4<f32>(x_1039.x, x_1039.x, x_1039.x, x_1039.x));
        let x_1042 : vec4<f32> = u_xlat10;
        let x_1045 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1042.x, x_1042.w, x_1042.y, x_1042.z) * vec4<f32>(x_1045.y, x_1045.y, x_1045.y, x_1045.y));
        let x_1048 : vec4<f32> = u_xlat9;
        let x_1049 : vec3<f32> = vec3<f32>(x_1048.y, x_1048.z, x_1048.w);
        let x_1050 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1049.x, x_1050.y, x_1049.y, x_1049.z);
        let x_1053 : f32 = u_xlat10.x;
        u_xlat12.y = x_1053;
        let x_1055 : vec4<f32> = u_xlat7;
        let x_1058 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1061 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y) * vec4<f32>(x_1058.x, x_1058.y, x_1058.x, x_1058.y)) + vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1061.y));
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1067 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1067.x, x_1067.y)) + vec2<f32>(x_1070.w, x_1070.y));
        let x_1074 : f32 = u_xlat12.y;
        u_xlat9.y = x_1074;
        let x_1077 : f32 = u_xlat10.z;
        u_xlat12.y = x_1077;
        let x_1079 : vec4<f32> = u_xlat7;
        let x_1082 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1085 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y) * vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y)) + vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1085.y));
        let x_1088 : vec4<f32> = u_xlat7;
        let x_1091 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1094 : vec4<f32> = u_xlat12;
        let x_1096 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(x_1091.x, x_1091.y)) + vec2<f32>(x_1094.w, x_1094.y));
        let x_1097 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1100 : f32 = u_xlat12.y;
        u_xlat9.z = x_1100;
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1106 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1103.x, x_1103.y, x_1103.x, x_1103.y) * vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.y)) + vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.z));
        let x_1113 : f32 = u_xlat10.w;
        u_xlat12.y = x_1113;
        let x_1116 : vec4<f32> = u_xlat7;
        let x_1119 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y) * vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y)) + vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1122.y));
        let x_1126 : vec4<f32> = u_xlat7;
        let x_1129 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat12;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1126.x, x_1126.y) * vec2<f32>(x_1129.x, x_1129.y)) + vec2<f32>(x_1132.w, x_1132.y));
        let x_1135 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1134.x, x_1134.y, x_1135.z);
        let x_1138 : f32 = u_xlat12.y;
        u_xlat9.w = x_1138;
        let x_1141 : vec4<f32> = u_xlat7;
        let x_1144 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1141.x, x_1141.y) * vec2<f32>(x_1144.x, x_1144.y)) + vec2<f32>(x_1147.x, x_1147.w));
        let x_1150 : vec4<f32> = u_xlat12;
        let x_1151 : vec3<f32> = vec3<f32>(x_1150.x, x_1150.z, x_1150.w);
        let x_1152 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1151.x, x_1152.y, x_1151.y, x_1151.z);
        let x_1154 : vec4<f32> = u_xlat7;
        let x_1157 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y) * vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y)) + vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1160.y));
        let x_1164 : vec4<f32> = u_xlat7;
        let x_1167 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.w, x_1170.y));
        let x_1174 : f32 = u_xlat9.x;
        u_xlat10.x = x_1174;
        let x_1176 : vec4<f32> = u_xlat7;
        let x_1179 : vec4<f32> = x_303.x_MainLightShadowmapSize;
        let x_1182 : vec4<f32> = u_xlat10;
        let x_1184 : vec2<f32> = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(x_1179.x, x_1179.y)) + vec2<f32>(x_1182.x, x_1182.y));
        let x_1185 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1188 : vec4<f32> = u_xlat8;
        let x_1190 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1188.x, x_1188.x, x_1188.x, x_1188.x) * x_1190);
        let x_1193 : vec4<f32> = u_xlat8;
        let x_1195 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1193.y, x_1193.y, x_1193.y, x_1193.y) * x_1195);
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1200 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1198.z, x_1198.z, x_1198.z, x_1198.z) * x_1200);
        let x_1202 : vec4<f32> = u_xlat8;
        let x_1204 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1202.w, x_1202.w, x_1202.w, x_1202.w) * x_1204);
        let x_1207 : vec4<f32> = u_xlat13;
        let x_1208 : vec2<f32> = vec2<f32>(x_1207.x, x_1207.y);
        let x_1210 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1208.x, x_1208.y, x_1210);
        let x_1217 : vec3<f32> = txVec13;
        let x_1219 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1217.xy, x_1217.z);
        u_xlat69 = x_1219;
        let x_1221 : vec4<f32> = u_xlat13;
        let x_1222 : vec2<f32> = vec2<f32>(x_1221.z, x_1221.w);
        let x_1224 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1222.x, x_1222.y, x_1224);
        let x_1231 : vec3<f32> = txVec14;
        let x_1233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1231.xy, x_1231.z);
        u_xlat9.x = x_1233;
        let x_1236 : f32 = u_xlat9.x;
        let x_1238 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1236 * x_1238);
        let x_1242 : f32 = u_xlat18.x;
        let x_1243 : f32 = u_xlat69;
        let x_1246 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1242 * x_1243) + x_1246);
        let x_1249 : vec2<f32> = u_xlat49;
        let x_1251 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1249.x, x_1249.y, x_1251);
        let x_1258 : vec3<f32> = txVec15;
        let x_1260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1258.xy, x_1258.z);
        u_xlat49.x = x_1260;
        let x_1263 : f32 = u_xlat18.z;
        let x_1265 : f32 = u_xlat49.x;
        let x_1267 : f32 = u_xlat69;
        u_xlat69 = ((x_1263 * x_1265) + x_1267);
        let x_1270 : vec4<f32> = u_xlat16;
        let x_1271 : vec2<f32> = vec2<f32>(x_1270.x, x_1270.y);
        let x_1273 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1271.x, x_1271.y, x_1273);
        let x_1280 : vec3<f32> = txVec16;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1280.xy, x_1280.z);
        u_xlat49.x = x_1282;
        let x_1285 : f32 = u_xlat18.w;
        let x_1287 : f32 = u_xlat49.x;
        let x_1289 : f32 = u_xlat69;
        u_xlat69 = ((x_1285 * x_1287) + x_1289);
        let x_1292 : vec4<f32> = u_xlat14;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.x, x_1292.y);
        let x_1295 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec17;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1302.xy, x_1302.z);
        u_xlat49.x = x_1304;
        let x_1307 : f32 = u_xlat19.x;
        let x_1309 : f32 = u_xlat49.x;
        let x_1311 : f32 = u_xlat69;
        u_xlat69 = ((x_1307 * x_1309) + x_1311);
        let x_1314 : vec4<f32> = u_xlat14;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.z, x_1314.w);
        let x_1317 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec18;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1324.xy, x_1324.z);
        u_xlat49.x = x_1326;
        let x_1329 : f32 = u_xlat19.y;
        let x_1331 : f32 = u_xlat49.x;
        let x_1333 : f32 = u_xlat69;
        u_xlat69 = ((x_1329 * x_1331) + x_1333);
        let x_1336 : vec4<f32> = u_xlat15;
        let x_1337 : vec2<f32> = vec2<f32>(x_1336.x, x_1336.y);
        let x_1339 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1337.x, x_1337.y, x_1339);
        let x_1346 : vec3<f32> = txVec19;
        let x_1348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1346.xy, x_1346.z);
        u_xlat49.x = x_1348;
        let x_1351 : f32 = u_xlat19.z;
        let x_1353 : f32 = u_xlat49.x;
        let x_1355 : f32 = u_xlat69;
        u_xlat69 = ((x_1351 * x_1353) + x_1355);
        let x_1358 : vec4<f32> = u_xlat16;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.z, x_1358.w);
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec20;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat49.x = x_1370;
        let x_1373 : f32 = u_xlat19.w;
        let x_1375 : f32 = u_xlat49.x;
        let x_1377 : f32 = u_xlat69;
        u_xlat69 = ((x_1373 * x_1375) + x_1377);
        let x_1380 : vec4<f32> = u_xlat17;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.x, x_1380.y);
        let x_1383 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1390 : vec3<f32> = txVec21;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1390.xy, x_1390.z);
        u_xlat49.x = x_1392;
        let x_1395 : f32 = u_xlat20.x;
        let x_1397 : f32 = u_xlat49.x;
        let x_1399 : f32 = u_xlat69;
        u_xlat69 = ((x_1395 * x_1397) + x_1399);
        let x_1402 : vec4<f32> = u_xlat17;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.z, x_1402.w);
        let x_1405 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec22;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1412.xy, x_1412.z);
        u_xlat49.x = x_1414;
        let x_1417 : f32 = u_xlat20.y;
        let x_1419 : f32 = u_xlat49.x;
        let x_1421 : f32 = u_xlat69;
        u_xlat69 = ((x_1417 * x_1419) + x_1421);
        let x_1424 : vec3<f32> = u_xlat30;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.x, x_1424.y);
        let x_1427 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec23;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1434.xy, x_1434.z);
        u_xlat49.x = x_1436;
        let x_1439 : f32 = u_xlat20.z;
        let x_1441 : f32 = u_xlat49.x;
        let x_1443 : f32 = u_xlat69;
        u_xlat69 = ((x_1439 * x_1441) + x_1443);
        let x_1446 : vec2<f32> = u_xlat57;
        let x_1448 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec24;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1455.xy, x_1455.z);
        u_xlat49.x = x_1457;
        let x_1460 : f32 = u_xlat20.w;
        let x_1462 : f32 = u_xlat49.x;
        let x_1464 : f32 = u_xlat69;
        u_xlat69 = ((x_1460 * x_1462) + x_1464);
        let x_1467 : vec4<f32> = u_xlat12;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.x, x_1467.y);
        let x_1470 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec25;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1477.xy, x_1477.z);
        u_xlat49.x = x_1479;
        let x_1482 : f32 = u_xlat8.x;
        let x_1484 : f32 = u_xlat49.x;
        let x_1486 : f32 = u_xlat69;
        u_xlat69 = ((x_1482 * x_1484) + x_1486);
        let x_1489 : vec4<f32> = u_xlat12;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.z, x_1489.w);
        let x_1492 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec26;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat49.x = x_1501;
        let x_1504 : f32 = u_xlat8.y;
        let x_1506 : f32 = u_xlat49.x;
        let x_1508 : f32 = u_xlat69;
        u_xlat69 = ((x_1504 * x_1506) + x_1508);
        let x_1511 : vec2<f32> = u_xlat52;
        let x_1513 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec27;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat49.x = x_1522;
        let x_1525 : f32 = u_xlat8.z;
        let x_1527 : f32 = u_xlat49.x;
        let x_1529 : f32 = u_xlat69;
        u_xlat69 = ((x_1525 * x_1527) + x_1529);
        let x_1532 : vec4<f32> = u_xlat7;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.x, x_1532.y);
        let x_1535 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec28;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1542.xy, x_1542.z);
        u_xlat7.x = x_1544;
        let x_1547 : f32 = u_xlat8.w;
        let x_1549 : f32 = u_xlat7.x;
        let x_1551 : f32 = u_xlat69;
        u_xlat48 = ((x_1547 * x_1549) + x_1551);
      }
    }
  } else {
    let x_1555 : vec4<f32> = vs_TEXCOORD6;
    let x_1556 : vec2<f32> = vec2<f32>(x_1555.x, x_1555.y);
    let x_1558 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
    let x_1565 : vec3<f32> = txVec29;
    let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
    u_xlat48 = x_1567;
  }
  let x_1569 : f32 = x_303.x_MainLightShadowParams.x;
  u_xlat69 = (-(x_1569) + 1.0f);
  let x_1572 : f32 = u_xlat48;
  let x_1574 : f32 = x_303.x_MainLightShadowParams.x;
  let x_1576 : f32 = u_xlat69;
  u_xlat48 = ((x_1572 * x_1574) + x_1576);
  let x_1579 : f32 = vs_TEXCOORD6.z;
  u_xlatb69 = (0.0f >= x_1579);
  let x_1583 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (x_1583 >= 1.0f);
  let x_1585 : bool = u_xlatb69;
  let x_1586 : bool = u_xlatb7;
  u_xlatb69 = (x_1585 | x_1586);
  let x_1588 : bool = u_xlatb69;
  let x_1589 : f32 = u_xlat48;
  u_xlat48 = select(x_1589, 1.0f, x_1588);
  let x_1591 : vec3<f32> = vs_TEXCOORD1;
  let x_1593 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1595 : vec3<f32> = (x_1591 + -(x_1593));
  let x_1596 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);
  let x_1598 : vec4<f32> = u_xlat7;
  let x_1600 : vec4<f32> = u_xlat7;
  u_xlat69 = dot(vec3<f32>(x_1598.x, x_1598.y, x_1598.z), vec3<f32>(x_1600.x, x_1600.y, x_1600.z));
  let x_1603 : f32 = u_xlat69;
  let x_1605 : f32 = x_303.x_MainLightShadowParams.z;
  let x_1608 : f32 = x_303.x_MainLightShadowParams.w;
  u_xlat69 = ((x_1603 * x_1605) + x_1608);
  let x_1610 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1610, 0.0f, 1.0f);
  let x_1612 : f32 = u_xlat48;
  u_xlat7.x = (-(x_1612) + 1.0f);
  let x_1616 : f32 = u_xlat69;
  let x_1618 : f32 = u_xlat7.x;
  let x_1620 : f32 = u_xlat48;
  u_xlat48 = ((x_1616 * x_1618) + x_1620);
  let x_1628 : f32 = x_1626.x_MainLightCookieTextureFormat;
  u_xlatb69 = !((x_1628 == -1.0f));
  let x_1630 : bool = u_xlatb69;
  if (x_1630) {
    let x_1633 : vec3<f32> = vs_TEXCOORD1;
    let x_1636 : vec4<f32> = x_1626.x_MainLightWorldToLight[1i];
    let x_1638 : vec2<f32> = (vec2<f32>(x_1633.y, x_1633.y) * vec2<f32>(x_1636.x, x_1636.y));
    let x_1639 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1638.x, x_1638.y, x_1639.z, x_1639.w);
    let x_1642 : vec4<f32> = x_1626.x_MainLightWorldToLight[0i];
    let x_1644 : vec3<f32> = vs_TEXCOORD1;
    let x_1647 : vec4<f32> = u_xlat7;
    let x_1649 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.y) * vec2<f32>(x_1644.x, x_1644.x)) + vec2<f32>(x_1647.x, x_1647.y));
    let x_1650 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1649.x, x_1649.y, x_1650.z, x_1650.w);
    let x_1653 : vec4<f32> = x_1626.x_MainLightWorldToLight[2i];
    let x_1655 : vec3<f32> = vs_TEXCOORD1;
    let x_1658 : vec4<f32> = u_xlat7;
    let x_1660 : vec2<f32> = ((vec2<f32>(x_1653.x, x_1653.y) * vec2<f32>(x_1655.z, x_1655.z)) + vec2<f32>(x_1658.x, x_1658.y));
    let x_1661 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1660.x, x_1660.y, x_1661.z, x_1661.w);
    let x_1663 : vec4<f32> = u_xlat7;
    let x_1667 : vec4<f32> = x_1626.x_MainLightWorldToLight[3i];
    let x_1669 : vec2<f32> = (vec2<f32>(x_1663.x, x_1663.y) + vec2<f32>(x_1667.x, x_1667.y));
    let x_1670 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1669.x, x_1669.y, x_1670.z, x_1670.w);
    let x_1672 : vec4<f32> = u_xlat7;
    let x_1675 : vec2<f32> = ((vec2<f32>(x_1672.x, x_1672.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1676 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1675.x, x_1675.y, x_1676.z, x_1676.w);
    let x_1683 : vec4<f32> = u_xlat7;
    let x_1686 : f32 = x_44.x_GlobalMipBias.x;
    let x_1687 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1683.x, x_1683.y), x_1686);
    u_xlat7 = x_1687;
    let x_1690 : f32 = x_1626.x_MainLightCookieTextureFormat;
    let x_1692 : f32 = x_1626.x_MainLightCookieTextureFormat;
    let x_1694 : f32 = x_1626.x_MainLightCookieTextureFormat;
    let x_1696 : f32 = x_1626.x_MainLightCookieTextureFormat;
    let x_1697 : vec4<f32> = vec4<f32>(x_1690, x_1692, x_1694, x_1696);
    let x_1705 : vec4<bool> = (vec4<f32>(x_1697.x, x_1697.y, x_1697.z, x_1697.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1705.x, x_1705.y);
    let x_1708 : bool = u_xlatb8.y;
    if (x_1708) {
      let x_1713 : f32 = u_xlat7.w;
      x_1709 = x_1713;
    } else {
      let x_1716 : f32 = u_xlat7.x;
      x_1709 = x_1716;
    }
    let x_1717 : f32 = x_1709;
    u_xlat69 = x_1717;
    let x_1719 : bool = u_xlatb8.x;
    if (x_1719) {
      let x_1723 : vec4<f32> = u_xlat7;
      x_1720 = vec3<f32>(x_1723.x, x_1723.y, x_1723.z);
    } else {
      let x_1726 : f32 = u_xlat69;
      x_1720 = vec3<f32>(x_1726, x_1726, x_1726);
    }
    let x_1728 : vec3<f32> = x_1720;
    let x_1729 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1735 : vec4<f32> = u_xlat7;
  let x_1738 : vec4<f32> = x_44.x_MainLightColor;
  let x_1740 : vec3<f32> = (vec3<f32>(x_1735.x, x_1735.y, x_1735.z) * vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
  let x_1741 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1741.w);
  let x_1743 : f32 = u_xlat27;
  let x_1745 : vec4<f32> = u_xlat7;
  let x_1747 : vec3<f32> = (vec3<f32>(x_1743, x_1743, x_1743) * vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
  let x_1748 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1748.w);
  let x_1750 : vec3<f32> = u_xlat4;
  let x_1752 : vec3<f32> = u_xlat3;
  u_xlat69 = dot(-(x_1750), x_1752);
  let x_1754 : f32 = u_xlat69;
  let x_1755 : f32 = u_xlat69;
  u_xlat69 = (x_1754 + x_1755);
  let x_1757 : vec3<f32> = u_xlat3;
  let x_1758 : f32 = u_xlat69;
  let x_1762 : vec3<f32> = u_xlat4;
  let x_1764 : vec3<f32> = ((x_1757 * -(vec3<f32>(x_1758, x_1758, x_1758))) + -(x_1762));
  let x_1765 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1767 : vec3<f32> = u_xlat3;
  let x_1768 : vec3<f32> = u_xlat4;
  u_xlat69 = dot(x_1767, x_1768);
  let x_1770 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1770, 0.0f, 1.0f);
  let x_1772 : f32 = u_xlat69;
  u_xlat69 = (-(x_1772) + 1.0f);
  let x_1775 : f32 = u_xlat69;
  let x_1776 : f32 = u_xlat69;
  u_xlat69 = (x_1775 * x_1776);
  let x_1778 : f32 = u_xlat69;
  let x_1779 : f32 = u_xlat69;
  u_xlat69 = (x_1778 * x_1779);
  let x_1782 : f32 = u_xlat63;
  u_xlat70 = ((-(x_1782) * 0.699999988f) + 1.700000048f);
  let x_1788 : f32 = u_xlat63;
  let x_1789 : f32 = u_xlat70;
  u_xlat63 = (x_1788 * x_1789);
  let x_1791 : f32 = u_xlat63;
  u_xlat63 = (x_1791 * 6.0f);
  let x_1802 : vec4<f32> = u_xlat8;
  let x_1804 : f32 = u_xlat63;
  let x_1805 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1802.x, x_1802.y, x_1802.z), x_1804);
  u_xlat8 = x_1805;
  let x_1807 : f32 = u_xlat8.w;
  u_xlat63 = (x_1807 + -1.0f);
  let x_1814 : f32 = x_1812.unity_SpecCube0_HDR.w;
  let x_1815 : f32 = u_xlat63;
  u_xlat63 = ((x_1814 * x_1815) + 1.0f);
  let x_1818 : f32 = u_xlat63;
  u_xlat63 = max(x_1818, 0.0f);
  let x_1820 : f32 = u_xlat63;
  u_xlat63 = log2(x_1820);
  let x_1822 : f32 = u_xlat63;
  let x_1824 : f32 = x_1812.unity_SpecCube0_HDR.y;
  u_xlat63 = (x_1822 * x_1824);
  let x_1826 : f32 = u_xlat63;
  u_xlat63 = exp2(x_1826);
  let x_1828 : f32 = u_xlat63;
  let x_1830 : f32 = x_1812.unity_SpecCube0_HDR.x;
  u_xlat63 = (x_1828 * x_1830);
  let x_1832 : vec4<f32> = u_xlat8;
  let x_1834 : f32 = u_xlat63;
  let x_1836 : vec3<f32> = (vec3<f32>(x_1832.x, x_1832.y, x_1832.z) * vec3<f32>(x_1834, x_1834, x_1834));
  let x_1837 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1836.x, x_1836.y, x_1836.z, x_1837.w);
  let x_1839 : f32 = u_xlat66;
  let x_1841 : f32 = u_xlat66;
  let x_1845 : vec2<f32> = ((vec2<f32>(x_1839, x_1839) * vec2<f32>(x_1841, x_1841)) + vec2<f32>(-1.0f, 1.0f));
  let x_1846 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1845.x, x_1845.y, x_1846.z, x_1846.w);
  let x_1849 : f32 = u_xlat9.y;
  u_xlat63 = (1.0f / x_1849);
  let x_1851 : vec4<f32> = u_xlat0;
  let x_1854 : f32 = u_xlat65;
  u_xlat30 = (-(vec3<f32>(x_1851.x, x_1851.y, x_1851.z)) + vec3<f32>(x_1854, x_1854, x_1854));
  let x_1857 : f32 = u_xlat69;
  let x_1859 : vec3<f32> = u_xlat30;
  let x_1861 : vec4<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_1857, x_1857, x_1857) * x_1859) + vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
  let x_1864 : f32 = u_xlat63;
  let x_1866 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1864, x_1864, x_1864) * x_1866);
  let x_1868 : vec4<f32> = u_xlat8;
  let x_1870 : vec3<f32> = u_xlat30;
  let x_1871 : vec3<f32> = (vec3<f32>(x_1868.x, x_1868.y, x_1868.z) * x_1870);
  let x_1872 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
  let x_1874 : vec3<f32> = u_xlat5;
  let x_1875 : vec3<f32> = u_xlat22;
  let x_1877 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_1874 * x_1875) + vec3<f32>(x_1877.x, x_1877.y, x_1877.z));
  let x_1880 : f32 = u_xlat48;
  let x_1883 : f32 = x_1812.unity_LightData.z;
  u_xlat63 = (x_1880 * x_1883);
  let x_1885 : vec3<f32> = u_xlat3;
  let x_1887 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_1885, vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1890 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1890, 0.0f, 1.0f);
  let x_1892 : f32 = u_xlat63;
  let x_1893 : f32 = u_xlat65;
  u_xlat63 = (x_1892 * x_1893);
  let x_1895 : f32 = u_xlat63;
  let x_1897 : vec4<f32> = u_xlat7;
  let x_1899 : vec3<f32> = (vec3<f32>(x_1895, x_1895, x_1895) * vec3<f32>(x_1897.x, x_1897.y, x_1897.z));
  let x_1900 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
  let x_1902 : vec3<f32> = u_xlat4;
  let x_1904 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1906 : vec3<f32> = (x_1902 + vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
  let x_1907 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
  let x_1909 : vec4<f32> = u_xlat8;
  let x_1911 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(vec3<f32>(x_1909.x, x_1909.y, x_1909.z), vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1914 : f32 = u_xlat63;
  u_xlat63 = max(x_1914, 1.17549435e-37f);
  let x_1917 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_1917);
  let x_1919 : f32 = u_xlat63;
  let x_1921 : vec4<f32> = u_xlat8;
  let x_1923 : vec3<f32> = (vec3<f32>(x_1919, x_1919, x_1919) * vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
  let x_1924 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
  let x_1926 : vec3<f32> = u_xlat3;
  let x_1927 : vec4<f32> = u_xlat8;
  u_xlat63 = dot(x_1926, vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
  let x_1930 : f32 = u_xlat63;
  u_xlat63 = clamp(x_1930, 0.0f, 1.0f);
  let x_1933 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1935 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_1933.x, x_1933.y, x_1933.z), vec3<f32>(x_1935.x, x_1935.y, x_1935.z));
  let x_1938 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1938, 0.0f, 1.0f);
  let x_1940 : f32 = u_xlat63;
  let x_1941 : f32 = u_xlat63;
  u_xlat63 = (x_1940 * x_1941);
  let x_1943 : f32 = u_xlat63;
  let x_1945 : f32 = u_xlat9.x;
  u_xlat63 = ((x_1943 * x_1945) + 1.000010014f);
  let x_1949 : f32 = u_xlat65;
  let x_1950 : f32 = u_xlat65;
  u_xlat65 = (x_1949 * x_1950);
  let x_1952 : f32 = u_xlat63;
  let x_1953 : f32 = u_xlat63;
  u_xlat63 = (x_1952 * x_1953);
  let x_1955 : f32 = u_xlat65;
  u_xlat65 = max(x_1955, 0.100000001f);
  let x_1958 : f32 = u_xlat63;
  let x_1959 : f32 = u_xlat65;
  u_xlat63 = (x_1958 * x_1959);
  let x_1961 : f32 = u_xlat68;
  let x_1962 : f32 = u_xlat63;
  u_xlat63 = (x_1961 * x_1962);
  let x_1964 : f32 = u_xlat67;
  let x_1965 : f32 = u_xlat63;
  u_xlat63 = (x_1964 / x_1965);
  let x_1967 : vec4<f32> = u_xlat0;
  let x_1969 : f32 = u_xlat63;
  let x_1972 : vec3<f32> = u_xlat22;
  let x_1973 : vec3<f32> = ((vec3<f32>(x_1967.x, x_1967.y, x_1967.z) * vec3<f32>(x_1969, x_1969, x_1969)) + x_1972);
  let x_1974 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec4<f32> = u_xlat7;
  let x_1978 : vec4<f32> = u_xlat8;
  let x_1980 : vec3<f32> = (vec3<f32>(x_1976.x, x_1976.y, x_1976.z) * vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1984 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1986 : f32 = x_1812.unity_LightData.y;
  u_xlat63 = min(x_1984, x_1986);
  let x_1990 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_1990));
  let x_1994 : f32 = x_1626.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1996 : f32 = x_1626.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1998 : f32 = x_1626.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2000 : f32 = x_1626.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2001 : vec4<f32> = vec4<f32>(x_1994, x_1996, x_1998, x_2000);
  let x_2008 : vec4<bool> = (vec4<f32>(x_2001.x, x_2001.y, x_2001.z, x_2001.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb48 = vec2<bool>(x_2008.x, x_2008.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2019 : u32 = u_xlatu_loop_1;
    let x_2020 : u32 = u_xlatu63;
    if ((x_2019 < x_2020)) {
    } else {
      break;
    }
    let x_2023 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2023 >> 2u);
    let x_2027 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2027 & 3u));
    let x_2030 : u32 = u_xlatu66;
    let x_2033 : vec4<f32> = x_1812.unity_LightIndices[bitcast<i32>(x_2030)];
    let x_2043 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2048 : vec4<u32> = indexable[x_2043];
    u_xlat66 = dot(x_2033, bitcast<vec4<f32>>(x_2048));
    let x_2051 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2051));
    let x_2054 : vec3<f32> = vs_TEXCOORD1;
    let x_2066 : u32 = u_xlatu66;
    let x_2069 : vec4<f32> = x_2065.x_AdditionalLightsPosition[bitcast<i32>(x_2066)];
    let x_2072 : u32 = u_xlatu66;
    let x_2075 : vec4<f32> = x_2065.x_AdditionalLightsPosition[bitcast<i32>(x_2072)];
    u_xlat30 = ((-(x_2054) * vec3<f32>(x_2069.w, x_2069.w, x_2069.w)) + vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
    let x_2078 : vec3<f32> = u_xlat30;
    let x_2079 : vec3<f32> = u_xlat30;
    u_xlat70 = dot(x_2078, x_2079);
    let x_2081 : f32 = u_xlat70;
    u_xlat70 = max(x_2081, 6.10351562e-05f);
    let x_2085 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2085);
    let x_2087 : f32 = u_xlat71;
    let x_2089 : vec3<f32> = u_xlat30;
    let x_2090 : vec3<f32> = (vec3<f32>(x_2087, x_2087, x_2087) * x_2089);
    let x_2091 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
    let x_2094 : f32 = u_xlat70;
    u_xlat73 = (1.0f / x_2094);
    let x_2096 : f32 = u_xlat70;
    let x_2097 : u32 = u_xlatu66;
    let x_2100 : f32 = x_2065.x_AdditionalLightsAttenuation[bitcast<i32>(x_2097)].x;
    u_xlat70 = (x_2096 * x_2100);
    let x_2102 : f32 = u_xlat70;
    let x_2104 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2102) * x_2104) + 1.0f);
    let x_2107 : f32 = u_xlat70;
    u_xlat70 = max(x_2107, 0.0f);
    let x_2109 : f32 = u_xlat70;
    let x_2110 : f32 = u_xlat70;
    u_xlat70 = (x_2109 * x_2110);
    let x_2112 : f32 = u_xlat70;
    let x_2113 : f32 = u_xlat73;
    u_xlat70 = (x_2112 * x_2113);
    let x_2115 : u32 = u_xlatu66;
    let x_2118 : vec4<f32> = x_2065.x_AdditionalLightsSpotDir[bitcast<i32>(x_2115)];
    let x_2120 : vec4<f32> = u_xlat10;
    u_xlat73 = dot(vec3<f32>(x_2118.x, x_2118.y, x_2118.z), vec3<f32>(x_2120.x, x_2120.y, x_2120.z));
    let x_2123 : f32 = u_xlat73;
    let x_2124 : u32 = u_xlatu66;
    let x_2127 : f32 = x_2065.x_AdditionalLightsAttenuation[bitcast<i32>(x_2124)].z;
    let x_2129 : u32 = u_xlatu66;
    let x_2132 : f32 = x_2065.x_AdditionalLightsAttenuation[bitcast<i32>(x_2129)].w;
    u_xlat73 = ((x_2123 * x_2127) + x_2132);
    let x_2134 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2134, 0.0f, 1.0f);
    let x_2136 : f32 = u_xlat73;
    let x_2137 : f32 = u_xlat73;
    u_xlat73 = (x_2136 * x_2137);
    let x_2139 : f32 = u_xlat70;
    let x_2140 : f32 = u_xlat73;
    u_xlat70 = (x_2139 * x_2140);
    let x_2143 : u32 = u_xlatu66;
    u_xlatu73 = (x_2143 >> 5u);
    let x_2146 : u32 = u_xlatu66;
    u_xlati11 = (1i << bitcast<u32>((bitcast<i32>(x_2146) & 31i)));
    let x_2152 : i32 = u_xlati11;
    let x_2154 : u32 = u_xlatu73;
    let x_2157 : f32 = x_1626.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2154)].el;
    u_xlati73 = bitcast<i32>((bitcast<u32>(x_2152) & bitcast<u32>(x_2157)));
    let x_2161 : i32 = u_xlati73;
    if ((x_2161 != 0i)) {
      let x_2171 : u32 = u_xlatu66;
      let x_2174 : f32 = x_2170.x_AdditionalLightsLightTypes[bitcast<i32>(x_2171)].el;
      u_xlati73 = i32(x_2174);
      let x_2176 : i32 = u_xlati73;
      u_xlati11 = select(1i, 0i, (x_2176 != 0i));
      let x_2180 : u32 = u_xlatu66;
      u_xlati32 = (bitcast<i32>(x_2180) << bitcast<u32>(2i));
      let x_2183 : i32 = u_xlati11;
      if ((x_2183 != 0i)) {
        let x_2187 : vec3<f32> = vs_TEXCOORD1;
        let x_2189 : i32 = u_xlati32;
        let x_2192 : i32 = u_xlati32;
        let x_2196 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[((x_2189 + 1i) / 4i)][((x_2192 + 1i) % 4i)];
        let x_2198 : vec3<f32> = (vec3<f32>(x_2187.y, x_2187.y, x_2187.y) * vec3<f32>(x_2196.x, x_2196.y, x_2196.w));
        let x_2199 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2198.x, x_2199.y, x_2198.y, x_2198.z);
        let x_2201 : i32 = u_xlati32;
        let x_2203 : i32 = u_xlati32;
        let x_2206 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[(x_2201 / 4i)][(x_2203 % 4i)];
        let x_2208 : vec3<f32> = vs_TEXCOORD1;
        let x_2211 : vec4<f32> = u_xlat11;
        let x_2213 : vec3<f32> = ((vec3<f32>(x_2206.x, x_2206.y, x_2206.w) * vec3<f32>(x_2208.x, x_2208.x, x_2208.x)) + vec3<f32>(x_2211.x, x_2211.z, x_2211.w));
        let x_2214 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2213.x, x_2214.y, x_2213.y, x_2213.z);
        let x_2216 : i32 = u_xlati32;
        let x_2219 : i32 = u_xlati32;
        let x_2223 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[((x_2216 + 2i) / 4i)][((x_2219 + 2i) % 4i)];
        let x_2225 : vec3<f32> = vs_TEXCOORD1;
        let x_2228 : vec4<f32> = u_xlat11;
        let x_2230 : vec3<f32> = ((vec3<f32>(x_2223.x, x_2223.y, x_2223.w) * vec3<f32>(x_2225.z, x_2225.z, x_2225.z)) + vec3<f32>(x_2228.x, x_2228.z, x_2228.w));
        let x_2231 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2230.x, x_2231.y, x_2230.y, x_2230.z);
        let x_2233 : vec4<f32> = u_xlat11;
        let x_2235 : i32 = u_xlati32;
        let x_2238 : i32 = u_xlati32;
        let x_2242 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[((x_2235 + 3i) / 4i)][((x_2238 + 3i) % 4i)];
        let x_2244 : vec3<f32> = (vec3<f32>(x_2233.x, x_2233.z, x_2233.w) + vec3<f32>(x_2242.x, x_2242.y, x_2242.w));
        let x_2245 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2244.x, x_2245.y, x_2244.y, x_2244.z);
        let x_2247 : vec4<f32> = u_xlat11;
        let x_2249 : vec4<f32> = u_xlat11;
        let x_2251 : vec2<f32> = (vec2<f32>(x_2247.x, x_2247.z) / vec2<f32>(x_2249.w, x_2249.w));
        let x_2252 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2251.x, x_2252.y, x_2251.y, x_2252.w);
        let x_2254 : vec4<f32> = u_xlat11;
        let x_2257 : vec2<f32> = ((vec2<f32>(x_2254.x, x_2254.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2258 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2257.x, x_2258.y, x_2257.y, x_2258.w);
        let x_2260 : vec4<f32> = u_xlat11;
        let x_2264 : vec2<f32> = clamp(vec2<f32>(x_2260.x, x_2260.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2265 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2264.x, x_2265.y, x_2264.y, x_2265.w);
        let x_2267 : u32 = u_xlatu66;
        let x_2270 : vec4<f32> = x_2170.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2267)];
        let x_2272 : vec4<f32> = u_xlat11;
        let x_2275 : u32 = u_xlatu66;
        let x_2278 : vec4<f32> = x_2170.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2275)];
        let x_2280 : vec2<f32> = ((vec2<f32>(x_2270.x, x_2270.y) * vec2<f32>(x_2272.x, x_2272.z)) + vec2<f32>(x_2278.z, x_2278.w));
        let x_2281 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2280.x, x_2281.y, x_2280.y, x_2281.w);
      } else {
        let x_2285 : i32 = u_xlati73;
        u_xlatb73 = (x_2285 == 1i);
        let x_2287 : bool = u_xlatb73;
        u_xlati73 = select(0i, 1i, x_2287);
        let x_2289 : i32 = u_xlati73;
        if ((x_2289 != 0i)) {
          let x_2293 : vec3<f32> = vs_TEXCOORD1;
          let x_2295 : i32 = u_xlati32;
          let x_2298 : i32 = u_xlati32;
          let x_2302 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[((x_2295 + 1i) / 4i)][((x_2298 + 1i) % 4i)];
          let x_2304 : vec2<f32> = (vec2<f32>(x_2293.y, x_2293.y) * vec2<f32>(x_2302.x, x_2302.y));
          let x_2305 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2304.x, x_2304.y, x_2305.z, x_2305.w);
          let x_2307 : i32 = u_xlati32;
          let x_2309 : i32 = u_xlati32;
          let x_2312 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[(x_2307 / 4i)][(x_2309 % 4i)];
          let x_2314 : vec3<f32> = vs_TEXCOORD1;
          let x_2317 : vec4<f32> = u_xlat12;
          let x_2319 : vec2<f32> = ((vec2<f32>(x_2312.x, x_2312.y) * vec2<f32>(x_2314.x, x_2314.x)) + vec2<f32>(x_2317.x, x_2317.y));
          let x_2320 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2319.x, x_2319.y, x_2320.z, x_2320.w);
          let x_2322 : i32 = u_xlati32;
          let x_2325 : i32 = u_xlati32;
          let x_2329 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[((x_2322 + 2i) / 4i)][((x_2325 + 2i) % 4i)];
          let x_2331 : vec3<f32> = vs_TEXCOORD1;
          let x_2334 : vec4<f32> = u_xlat12;
          let x_2336 : vec2<f32> = ((vec2<f32>(x_2329.x, x_2329.y) * vec2<f32>(x_2331.z, x_2331.z)) + vec2<f32>(x_2334.x, x_2334.y));
          let x_2337 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2336.x, x_2336.y, x_2337.z, x_2337.w);
          let x_2339 : vec4<f32> = u_xlat12;
          let x_2341 : i32 = u_xlati32;
          let x_2344 : i32 = u_xlati32;
          let x_2348 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[((x_2341 + 3i) / 4i)][((x_2344 + 3i) % 4i)];
          let x_2350 : vec2<f32> = (vec2<f32>(x_2339.x, x_2339.y) + vec2<f32>(x_2348.x, x_2348.y));
          let x_2351 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2350.x, x_2350.y, x_2351.z, x_2351.w);
          let x_2353 : vec4<f32> = u_xlat12;
          let x_2356 : vec2<f32> = ((vec2<f32>(x_2353.x, x_2353.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2357 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2356.x, x_2356.y, x_2357.z, x_2357.w);
          let x_2359 : vec4<f32> = u_xlat12;
          let x_2361 : vec2<f32> = fract(vec2<f32>(x_2359.x, x_2359.y));
          let x_2362 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2361.x, x_2361.y, x_2362.z, x_2362.w);
          let x_2364 : u32 = u_xlatu66;
          let x_2367 : vec4<f32> = x_2170.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2364)];
          let x_2369 : vec4<f32> = u_xlat12;
          let x_2372 : u32 = u_xlatu66;
          let x_2375 : vec4<f32> = x_2170.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2372)];
          let x_2377 : vec2<f32> = ((vec2<f32>(x_2367.x, x_2367.y) * vec2<f32>(x_2369.x, x_2369.y)) + vec2<f32>(x_2375.z, x_2375.w));
          let x_2378 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2377.x, x_2378.y, x_2377.y, x_2378.w);
        } else {
          let x_2381 : vec3<f32> = vs_TEXCOORD1;
          let x_2383 : i32 = u_xlati32;
          let x_2386 : i32 = u_xlati32;
          let x_2390 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[((x_2383 + 1i) / 4i)][((x_2386 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2381.y, x_2381.y, x_2381.y, x_2381.y) * x_2390);
          let x_2392 : i32 = u_xlati32;
          let x_2394 : i32 = u_xlati32;
          let x_2397 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[(x_2392 / 4i)][(x_2394 % 4i)];
          let x_2398 : vec3<f32> = vs_TEXCOORD1;
          let x_2401 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2397 * vec4<f32>(x_2398.x, x_2398.x, x_2398.x, x_2398.x)) + x_2401);
          let x_2403 : i32 = u_xlati32;
          let x_2406 : i32 = u_xlati32;
          let x_2410 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[((x_2403 + 2i) / 4i)][((x_2406 + 2i) % 4i)];
          let x_2411 : vec3<f32> = vs_TEXCOORD1;
          let x_2414 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2410 * vec4<f32>(x_2411.z, x_2411.z, x_2411.z, x_2411.z)) + x_2414);
          let x_2416 : vec4<f32> = u_xlat12;
          let x_2417 : i32 = u_xlati32;
          let x_2420 : i32 = u_xlati32;
          let x_2424 : vec4<f32> = x_2170.x_AdditionalLightsWorldToLights[((x_2417 + 3i) / 4i)][((x_2420 + 3i) % 4i)];
          u_xlat12 = (x_2416 + x_2424);
          let x_2426 : vec4<f32> = u_xlat12;
          let x_2428 : vec4<f32> = u_xlat12;
          let x_2430 : vec3<f32> = (vec3<f32>(x_2426.x, x_2426.y, x_2426.z) / vec3<f32>(x_2428.w, x_2428.w, x_2428.w));
          let x_2431 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
          let x_2433 : vec4<f32> = u_xlat12;
          let x_2435 : vec4<f32> = u_xlat12;
          u_xlat73 = dot(vec3<f32>(x_2433.x, x_2433.y, x_2433.z), vec3<f32>(x_2435.x, x_2435.y, x_2435.z));
          let x_2438 : f32 = u_xlat73;
          u_xlat73 = inverseSqrt(x_2438);
          let x_2440 : f32 = u_xlat73;
          let x_2442 : vec4<f32> = u_xlat12;
          let x_2444 : vec3<f32> = (vec3<f32>(x_2440, x_2440, x_2440) * vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
          let x_2445 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
          let x_2447 : vec4<f32> = u_xlat12;
          u_xlat73 = dot(abs(vec3<f32>(x_2447.x, x_2447.y, x_2447.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2452 : f32 = u_xlat73;
          u_xlat73 = max(x_2452, 0.000001f);
          let x_2455 : f32 = u_xlat73;
          u_xlat73 = (1.0f / x_2455);
          let x_2457 : f32 = u_xlat73;
          let x_2459 : vec4<f32> = u_xlat12;
          let x_2461 : vec3<f32> = (vec3<f32>(x_2457, x_2457, x_2457) * vec3<f32>(x_2459.z, x_2459.x, x_2459.y));
          let x_2462 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
          let x_2465 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2465);
          let x_2469 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2469, 0.0f, 1.0f);
          let x_2475 : vec4<f32> = u_xlat13;
          let x_2478 : vec4<bool> = (vec4<f32>(x_2475.y, x_2475.y, x_2475.z, x_2475.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2479 : vec2<bool> = vec2<bool>(x_2478.x, x_2478.z);
          let x_2480 : vec3<bool> = u_xlatb32;
          u_xlatb32 = vec3<bool>(x_2479.x, x_2480.y, x_2479.y);
          let x_2484 : bool = u_xlatb32.x;
          if (x_2484) {
            let x_2489 : f32 = u_xlat13.x;
            x_2485 = x_2489;
          } else {
            let x_2492 : f32 = u_xlat13.x;
            x_2485 = -(x_2492);
          }
          let x_2494 : f32 = x_2485;
          u_xlat32.x = x_2494;
          let x_2497 : bool = u_xlatb32.z;
          if (x_2497) {
            let x_2502 : f32 = u_xlat13.x;
            x_2498 = x_2502;
          } else {
            let x_2505 : f32 = u_xlat13.x;
            x_2498 = -(x_2505);
          }
          let x_2507 : f32 = x_2498;
          u_xlat32.z = x_2507;
          let x_2509 : vec4<f32> = u_xlat12;
          let x_2511 : f32 = u_xlat73;
          let x_2514 : vec3<f32> = u_xlat32;
          let x_2516 : vec2<f32> = ((vec2<f32>(x_2509.x, x_2509.y) * vec2<f32>(x_2511, x_2511)) + vec2<f32>(x_2514.x, x_2514.z));
          let x_2517 : vec3<f32> = u_xlat32;
          u_xlat32 = vec3<f32>(x_2516.x, x_2517.y, x_2516.y);
          let x_2519 : vec3<f32> = u_xlat32;
          let x_2522 : vec2<f32> = ((vec2<f32>(x_2519.x, x_2519.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2523 : vec3<f32> = u_xlat32;
          u_xlat32 = vec3<f32>(x_2522.x, x_2523.y, x_2522.y);
          let x_2525 : vec3<f32> = u_xlat32;
          let x_2529 : vec2<f32> = clamp(vec2<f32>(x_2525.x, x_2525.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2530 : vec3<f32> = u_xlat32;
          u_xlat32 = vec3<f32>(x_2529.x, x_2530.y, x_2529.y);
          let x_2532 : u32 = u_xlatu66;
          let x_2535 : vec4<f32> = x_2170.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2532)];
          let x_2537 : vec3<f32> = u_xlat32;
          let x_2540 : u32 = u_xlatu66;
          let x_2543 : vec4<f32> = x_2170.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2540)];
          let x_2545 : vec2<f32> = ((vec2<f32>(x_2535.x, x_2535.y) * vec2<f32>(x_2537.x, x_2537.z)) + vec2<f32>(x_2543.z, x_2543.w));
          let x_2546 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2545.x, x_2546.y, x_2545.y, x_2546.w);
        }
      }
      let x_2553 : vec4<f32> = u_xlat11;
      let x_2556 : f32 = x_44.x_GlobalMipBias.x;
      let x_2557 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2553.x, x_2553.z), x_2556);
      u_xlat11 = x_2557;
      let x_2559 : bool = u_xlatb48.y;
      if (x_2559) {
        let x_2564 : f32 = u_xlat11.w;
        x_2560 = x_2564;
      } else {
        let x_2567 : f32 = u_xlat11.x;
        x_2560 = x_2567;
      }
      let x_2568 : f32 = x_2560;
      u_xlat73 = x_2568;
      let x_2570 : bool = u_xlatb48.x;
      if (x_2570) {
        let x_2574 : vec4<f32> = u_xlat11;
        x_2571 = vec3<f32>(x_2574.x, x_2574.y, x_2574.z);
      } else {
        let x_2577 : f32 = u_xlat73;
        x_2571 = vec3<f32>(x_2577, x_2577, x_2577);
      }
      let x_2579 : vec3<f32> = x_2571;
      let x_2580 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2586 : vec4<f32> = u_xlat11;
    let x_2588 : u32 = u_xlatu66;
    let x_2591 : vec4<f32> = x_2065.x_AdditionalLightsColor[bitcast<i32>(x_2588)];
    let x_2593 : vec3<f32> = (vec3<f32>(x_2586.x, x_2586.y, x_2586.z) * vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
    let x_2594 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
    let x_2596 : f32 = u_xlat27;
    let x_2598 : vec4<f32> = u_xlat11;
    let x_2600 : vec3<f32> = (vec3<f32>(x_2596, x_2596, x_2596) * vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
    let x_2601 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2601.w);
    let x_2603 : vec3<f32> = u_xlat3;
    let x_2604 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_2603, vec3<f32>(x_2604.x, x_2604.y, x_2604.z));
    let x_2607 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2607, 0.0f, 1.0f);
    let x_2609 : f32 = u_xlat66;
    let x_2610 : f32 = u_xlat70;
    u_xlat66 = (x_2609 * x_2610);
    let x_2612 : f32 = u_xlat66;
    let x_2614 : vec4<f32> = u_xlat11;
    let x_2616 : vec3<f32> = (vec3<f32>(x_2612, x_2612, x_2612) * vec3<f32>(x_2614.x, x_2614.y, x_2614.z));
    let x_2617 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2616.x, x_2616.y, x_2616.z, x_2617.w);
    let x_2619 : vec3<f32> = u_xlat30;
    let x_2620 : f32 = u_xlat71;
    let x_2623 : vec3<f32> = u_xlat4;
    u_xlat30 = ((x_2619 * vec3<f32>(x_2620, x_2620, x_2620)) + x_2623);
    let x_2625 : vec3<f32> = u_xlat30;
    let x_2626 : vec3<f32> = u_xlat30;
    u_xlat66 = dot(x_2625, x_2626);
    let x_2628 : f32 = u_xlat66;
    u_xlat66 = max(x_2628, 1.17549435e-37f);
    let x_2630 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_2630);
    let x_2632 : f32 = u_xlat66;
    let x_2634 : vec3<f32> = u_xlat30;
    u_xlat30 = (vec3<f32>(x_2632, x_2632, x_2632) * x_2634);
    let x_2636 : vec3<f32> = u_xlat3;
    let x_2637 : vec3<f32> = u_xlat30;
    u_xlat66 = dot(x_2636, x_2637);
    let x_2639 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2639, 0.0f, 1.0f);
    let x_2641 : vec4<f32> = u_xlat10;
    let x_2643 : vec3<f32> = u_xlat30;
    u_xlat70 = dot(vec3<f32>(x_2641.x, x_2641.y, x_2641.z), x_2643);
    let x_2645 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2645, 0.0f, 1.0f);
    let x_2647 : f32 = u_xlat66;
    let x_2648 : f32 = u_xlat66;
    u_xlat66 = (x_2647 * x_2648);
    let x_2650 : f32 = u_xlat66;
    let x_2652 : f32 = u_xlat9.x;
    u_xlat66 = ((x_2650 * x_2652) + 1.000010014f);
    let x_2655 : f32 = u_xlat70;
    let x_2656 : f32 = u_xlat70;
    u_xlat70 = (x_2655 * x_2656);
    let x_2658 : f32 = u_xlat66;
    let x_2659 : f32 = u_xlat66;
    u_xlat66 = (x_2658 * x_2659);
    let x_2661 : f32 = u_xlat70;
    u_xlat70 = max(x_2661, 0.100000001f);
    let x_2663 : f32 = u_xlat66;
    let x_2664 : f32 = u_xlat70;
    u_xlat66 = (x_2663 * x_2664);
    let x_2666 : f32 = u_xlat68;
    let x_2667 : f32 = u_xlat66;
    u_xlat66 = (x_2666 * x_2667);
    let x_2669 : f32 = u_xlat67;
    let x_2670 : f32 = u_xlat66;
    u_xlat66 = (x_2669 / x_2670);
    let x_2672 : vec4<f32> = u_xlat0;
    let x_2674 : f32 = u_xlat66;
    let x_2677 : vec3<f32> = u_xlat22;
    u_xlat30 = ((vec3<f32>(x_2672.x, x_2672.y, x_2672.z) * vec3<f32>(x_2674, x_2674, x_2674)) + x_2677);
    let x_2679 : vec3<f32> = u_xlat30;
    let x_2680 : vec4<f32> = u_xlat11;
    let x_2683 : vec4<f32> = u_xlat8;
    let x_2685 : vec3<f32> = ((x_2679 * vec3<f32>(x_2680.x, x_2680.y, x_2680.z)) + vec3<f32>(x_2683.x, x_2683.y, x_2683.z));
    let x_2686 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);

    continuing {
      let x_2688 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2688 + bitcast<u32>(1i));
    }
  }
  let x_2690 : vec3<f32> = u_xlat5;
  let x_2691 : vec3<f32> = u_xlat6;
  let x_2694 : vec4<f32> = u_xlat7;
  let x_2696 : vec3<f32> = ((x_2690 * vec3<f32>(x_2691.x, x_2691.x, x_2691.x)) + vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
  let x_2697 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
  let x_2699 : vec4<f32> = u_xlat8;
  let x_2701 : vec4<f32> = u_xlat0;
  let x_2703 : vec3<f32> = (vec3<f32>(x_2699.x, x_2699.y, x_2699.z) + vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
  let x_2704 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2703.x, x_2703.y, x_2703.z, x_2704.w);
  let x_2708 : vec3<f32> = u_xlat2;
  let x_2710 : vec4<f32> = x_57.x_EmissionColor;
  let x_2713 : vec4<f32> = u_xlat0;
  let x_2715 : vec3<f32> = ((x_2708 * vec3<f32>(x_2710.x, x_2710.y, x_2710.z)) + vec3<f32>(x_2713.x, x_2713.y, x_2713.z));
  let x_2716 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2715.x, x_2715.y, x_2715.z, x_2716.w);
  let x_2721 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2721 == 1.0f);
  let x_2723 : bool = u_xlatb0;
  if (x_2723) {
    let x_2728 : f32 = u_xlat1.x;
    x_2724 = x_2728;
  } else {
    x_2724 = 1.0f;
  }
  let x_2730 : f32 = x_2724;
  SV_Target0.w = x_2730;
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

