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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_363 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1693 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1880 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2135 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2255 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_120 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat27 : f32;
  var u_xlat48 : f32;
  var u_xlatb69 : bool;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat69 : f32;
  var u_xlatb7 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat28 : f32;
  var txVec5 : vec3<f32>;
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
  var u_xlat72 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat70 : f32;
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
  var u_xlatb28 : bool;
  var u_xlatb8 : vec2<bool>;
  var x_1777 : f32;
  var x_1788 : vec3<f32>;
  var u_xlat71 : f32;
  var u_xlatu65 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat50 : vec2<f32>;
  var u_xlatu50 : u32;
  var u_xlati71 : i32;
  var u_xlati50 : i32;
  var u_xlati73 : i32;
  var u_xlatb50 : bool;
  var u_xlatb54 : vec2<bool>;
  var u_xlat54 : vec2<f32>;
  var x_2556 : f32;
  var x_2569 : f32;
  var x_2621 : f32;
  var x_2633 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2823 : f32;
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
  let x_110 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_110;
  let x_113 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_113;
  let x_117 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_117;
  let x_119 : bool = u_xlatb63;
  if (x_119) {
    let x_123 : vec3<f32> = u_xlat3;
    x_120 = x_123;
  } else {
    let x_125 : vec3<f32> = u_xlat4;
    x_120 = x_125;
  }
  let x_126 : vec3<f32> = x_120;
  u_xlat3 = x_126;
  let x_129 : vec3<f32> = vs_TEXCOORD2;
  let x_130 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_132);
  let x_134 : f32 = u_xlat63;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat4 = (vec3<f32>(x_134, x_134, x_134) * x_136);
  let x_139 : f32 = vs_TEXCOORD1.y;
  let x_141 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_139 * x_141);
  let x_144 : f32 = x_44.unity_MatrixV[0i].z;
  let x_146 : f32 = vs_TEXCOORD1.x;
  let x_148 : f32 = u_xlat63;
  u_xlat63 = ((x_144 * x_146) + x_148);
  let x_151 : f32 = x_44.unity_MatrixV[2i].z;
  let x_153 : f32 = vs_TEXCOORD1.z;
  let x_155 : f32 = u_xlat63;
  u_xlat63 = ((x_151 * x_153) + x_155);
  let x_157 : f32 = u_xlat63;
  let x_160 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_157 + x_160);
  let x_162 : f32 = u_xlat63;
  let x_166 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_162) + -(x_166));
  let x_169 : f32 = u_xlat63;
  u_xlat63 = max(x_169, 0.0f);
  let x_171 : f32 = u_xlat63;
  let x_174 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_171 * x_174);
  let x_183 : vec2<f32> = vs_TEXCOORD8;
  let x_185 : f32 = x_44.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_183, x_185);
  u_xlat5 = x_186;
  let x_192 : vec2<f32> = vs_TEXCOORD8;
  let x_194 : f32 = x_44.x_GlobalMipBias.x;
  let x_195 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_192, x_194);
  u_xlat6 = vec3<f32>(x_195.x, x_195.y, x_195.z);
  let x_197 : vec4<f32> = u_xlat5;
  let x_201 : vec3<f32> = (vec3<f32>(x_197.x, x_197.y, x_197.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_204 : vec3<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat65 = dot(x_204, vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : f32 = u_xlat65;
  u_xlat65 = (x_208 + 0.5f);
  let x_211 : f32 = u_xlat65;
  let x_213 : vec3<f32> = u_xlat6;
  let x_214 : vec3<f32> = (vec3<f32>(x_211, x_211, x_211) * x_213);
  let x_215 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : f32 = u_xlat5.w;
  u_xlat65 = max(x_218, 0.0001f);
  let x_221 : vec4<f32> = u_xlat5;
  let x_223 : f32 = u_xlat65;
  let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) / vec3<f32>(x_223, x_223, x_223));
  let x_226 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_230 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_231 : vec2<f32> = vec2<f32>(x_230.x, x_230.y);
  let x_235 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_231.x, x_231.y));
  let x_236 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_235.x, x_235.y, x_236.z);
  let x_238 : vec3<f32> = u_xlat6;
  let x_240 : vec4<f32> = hlslcc_FragCoord;
  let x_242 : vec2<f32> = (vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.x, x_240.y));
  let x_243 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_242.x, x_242.y, x_243.z);
  let x_246 : f32 = u_xlat6.y;
  let x_249 : f32 = x_44.x_ScaleBiasRt.x;
  let x_252 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat65 = ((x_246 * x_249) + x_252);
  let x_254 : f32 = u_xlat65;
  u_xlat6.z = (-(x_254) + 1.0f);
  let x_259 : f32 = x_57.x_Metallic;
  u_xlat65 = ((-(x_259) * 0.959999979f) + 0.959999979f);
  let x_265 : f32 = u_xlat65;
  let x_268 : f32 = x_57.x_Smoothness;
  u_xlat66 = (-(x_265) + x_268);
  let x_271 : vec4<f32> = u_xlat1;
  let x_273 : f32 = u_xlat65;
  u_xlat22 = (vec3<f32>(x_271.y, x_271.z, x_271.w) * vec3<f32>(x_273, x_273, x_273));
  let x_276 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = x_57.x_BaseColor;
  let x_284 : vec3<f32> = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(x_279.x, x_279.y, x_279.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : f32 = x_57.x_Metallic;
  let x_290 : f32 = x_57.x_Metallic;
  let x_292 : f32 = x_57.x_Metallic;
  let x_293 : vec3<f32> = vec3<f32>(x_288, x_290, x_292);
  let x_298 : vec4<f32> = u_xlat0;
  let x_303 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_298.x, x_298.y, x_298.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_304 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_307) + 1.0f);
  let x_311 : f32 = u_xlat65;
  let x_312 : f32 = u_xlat65;
  u_xlat67 = (x_311 * x_312);
  let x_314 : f32 = u_xlat67;
  u_xlat67 = max(x_314, 0.0078125f);
  let x_318 : f32 = u_xlat67;
  let x_319 : f32 = u_xlat67;
  u_xlat68 = (x_318 * x_319);
  let x_321 : f32 = u_xlat66;
  u_xlat66 = (x_321 + 1.0f);
  let x_323 : f32 = u_xlat66;
  u_xlat66 = clamp(x_323, 0.0f, 1.0f);
  let x_326 : f32 = u_xlat67;
  u_xlat27 = ((x_326 * 4.0f) + 2.0f);
  let x_336 : vec3<f32> = u_xlat6;
  let x_339 : f32 = x_44.x_GlobalMipBias.x;
  let x_340 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_336.x, x_336.z), x_339);
  u_xlat6.x = x_340.x;
  let x_345 : f32 = u_xlat6.x;
  u_xlat48 = (x_345 + -1.0f);
  let x_350 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_351 : f32 = u_xlat48;
  u_xlat48 = ((x_350 * x_351) + 1.0f);
  let x_355 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_355, 1.0f);
  let x_365 : f32 = x_363.x_MainLightShadowParams.y;
  u_xlatb69 = (0.0f < x_365);
  let x_367 : bool = u_xlatb69;
  if (x_367) {
    let x_371 : f32 = x_363.x_MainLightShadowParams.y;
    u_xlatb69 = (x_371 == 1.0f);
    let x_373 : bool = u_xlatb69;
    if (x_373) {
      let x_378 : vec4<f32> = vs_TEXCOORD6;
      let x_381 : vec4<f32> = x_363.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_378.x, x_378.y, x_378.x, x_378.y) + x_381);
      let x_384 : vec4<f32> = u_xlat7;
      let x_385 : vec2<f32> = vec2<f32>(x_384.x, x_384.y);
      let x_387 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_385.x, x_385.y, x_387);
      let x_400 : vec3<f32> = txVec0;
      let x_402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_400.xy, x_400.z);
      u_xlat8.x = x_402;
      let x_405 : vec4<f32> = u_xlat7;
      let x_406 : vec2<f32> = vec2<f32>(x_405.z, x_405.w);
      let x_408 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_406.x, x_406.y, x_408);
      let x_415 : vec3<f32> = txVec1;
      let x_417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_415.xy, x_415.z);
      u_xlat8.y = x_417;
      let x_419 : vec4<f32> = vs_TEXCOORD6;
      let x_422 : vec4<f32> = x_363.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_419.x, x_419.y, x_419.x, x_419.y) + x_422);
      let x_425 : vec4<f32> = u_xlat7;
      let x_426 : vec2<f32> = vec2<f32>(x_425.x, x_425.y);
      let x_428 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_426.x, x_426.y, x_428);
      let x_435 : vec3<f32> = txVec2;
      let x_437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_435.xy, x_435.z);
      u_xlat8.z = x_437;
      let x_440 : vec4<f32> = u_xlat7;
      let x_441 : vec2<f32> = vec2<f32>(x_440.z, x_440.w);
      let x_443 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_441.x, x_441.y, x_443);
      let x_450 : vec3<f32> = txVec3;
      let x_452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_450.xy, x_450.z);
      u_xlat8.w = x_452;
      let x_455 : vec4<f32> = u_xlat8;
      u_xlat69 = dot(x_455, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_462 : f32 = x_363.x_MainLightShadowParams.y;
      u_xlatb7 = (x_462 == 2.0f);
      let x_464 : bool = u_xlatb7;
      if (x_464) {
        let x_467 : vec4<f32> = vs_TEXCOORD6;
        let x_470 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_474 : vec2<f32> = ((vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_470.z, x_470.w)) + vec2<f32>(0.5f, 0.5f));
        let x_475 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
        let x_477 : vec4<f32> = u_xlat7;
        let x_479 : vec2<f32> = floor(vec2<f32>(x_477.x, x_477.y));
        let x_480 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_484 : vec4<f32> = vs_TEXCOORD6;
        let x_487 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_490 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_484.x, x_484.y) * vec2<f32>(x_487.z, x_487.w)) + -(vec2<f32>(x_490.x, x_490.y)));
        let x_494 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_494.x, x_494.x, x_494.y, x_494.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_499 : vec4<f32> = u_xlat8;
        let x_501 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_499.x, x_499.x, x_499.z, x_499.z) * vec4<f32>(x_501.x, x_501.x, x_501.z, x_501.z));
        let x_504 : vec4<f32> = u_xlat9;
        let x_508 : vec2<f32> = (vec2<f32>(x_504.y, x_504.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_509 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_508.x, x_509.y, x_508.y, x_509.w);
        let x_511 : vec4<f32> = u_xlat9;
        let x_514 : vec2<f32> = u_xlat49;
        let x_516 : vec2<f32> = ((vec2<f32>(x_511.x, x_511.z) * vec2<f32>(0.5f, 0.5f)) + -(x_514));
        let x_517 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_520 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_520) + vec2<f32>(1.0f, 1.0f));
        let x_524 : vec2<f32> = u_xlat49;
        let x_526 : vec2<f32> = min(x_524, vec2<f32>(0.0f, 0.0f));
        let x_527 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
        let x_529 : vec4<f32> = u_xlat10;
        let x_532 : vec4<f32> = u_xlat10;
        let x_535 : vec2<f32> = u_xlat51;
        let x_536 : vec2<f32> = ((-(vec2<f32>(x_529.x, x_529.y)) * vec2<f32>(x_532.x, x_532.y)) + x_535);
        let x_537 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
        let x_539 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_539, vec2<f32>(0.0f, 0.0f));
        let x_541 : vec2<f32> = u_xlat49;
        let x_543 : vec2<f32> = u_xlat49;
        let x_545 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_541) * x_543) + vec2<f32>(x_545.y, x_545.w));
        let x_548 : vec4<f32> = u_xlat10;
        let x_550 : vec2<f32> = (vec2<f32>(x_548.x, x_548.y) + vec2<f32>(1.0f, 1.0f));
        let x_551 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
        let x_553 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_553 + vec2<f32>(1.0f, 1.0f));
        let x_556 : vec4<f32> = u_xlat9;
        let x_560 : vec2<f32> = (vec2<f32>(x_556.x, x_556.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_561 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
        let x_563 : vec2<f32> = u_xlat51;
        let x_564 : vec2<f32> = (x_563 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_565 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat10;
        let x_569 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_570 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_573 : vec2<f32> = u_xlat49;
        let x_574 : vec2<f32> = (x_573 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_575 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
        let x_577 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_577.y, x_577.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_581 : f32 = u_xlat10.x;
        u_xlat11.z = x_581;
        let x_584 : f32 = u_xlat49.x;
        u_xlat11.w = x_584;
        let x_587 : f32 = u_xlat12.x;
        u_xlat9.z = x_587;
        let x_590 : f32 = u_xlat8.x;
        u_xlat9.w = x_590;
        let x_593 : vec4<f32> = u_xlat9;
        let x_595 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_593.z, x_593.w, x_593.x, x_593.z) + vec4<f32>(x_595.z, x_595.w, x_595.x, x_595.z));
        let x_599 : f32 = u_xlat11.y;
        u_xlat10.z = x_599;
        let x_602 : f32 = u_xlat49.y;
        u_xlat10.w = x_602;
        let x_605 : f32 = u_xlat9.y;
        u_xlat12.z = x_605;
        let x_608 : f32 = u_xlat8.z;
        u_xlat12.w = x_608;
        let x_610 : vec4<f32> = u_xlat10;
        let x_612 : vec4<f32> = u_xlat12;
        let x_614 : vec3<f32> = (vec3<f32>(x_610.z, x_610.y, x_610.w) + vec3<f32>(x_612.z, x_612.y, x_612.w));
        let x_615 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat9;
        let x_619 : vec4<f32> = u_xlat13;
        let x_621 : vec3<f32> = (vec3<f32>(x_617.x, x_617.z, x_617.w) / vec3<f32>(x_619.z, x_619.w, x_619.y));
        let x_622 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
        let x_624 : vec4<f32> = u_xlat9;
        let x_629 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
        let x_632 : vec4<f32> = u_xlat12;
        let x_634 : vec4<f32> = u_xlat8;
        let x_636 : vec3<f32> = (vec3<f32>(x_632.z, x_632.y, x_632.w) / vec3<f32>(x_634.x, x_634.y, x_634.z));
        let x_637 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat10;
        let x_641 : vec3<f32> = (vec3<f32>(x_639.x, x_639.y, x_639.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_642 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
        let x_644 : vec4<f32> = u_xlat9;
        let x_647 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_649 : vec3<f32> = (vec3<f32>(x_644.y, x_644.x, x_644.z) * vec3<f32>(x_647.x, x_647.x, x_647.x));
        let x_650 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat10;
        let x_655 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_657 : vec3<f32> = (vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(x_655.y, x_655.y, x_655.y));
        let x_658 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
        let x_661 : f32 = u_xlat10.x;
        u_xlat9.w = x_661;
        let x_663 : vec4<f32> = u_xlat7;
        let x_666 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_669 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y) * vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y)) + vec4<f32>(x_669.y, x_669.w, x_669.x, x_669.w));
        let x_672 : vec4<f32> = u_xlat7;
        let x_675 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_672.x, x_672.y) * vec2<f32>(x_675.x, x_675.y)) + vec2<f32>(x_678.z, x_678.w));
        let x_682 : f32 = u_xlat9.y;
        u_xlat10.w = x_682;
        let x_684 : vec4<f32> = u_xlat10;
        let x_685 : vec2<f32> = vec2<f32>(x_684.y, x_684.z);
        let x_686 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_686.x, x_685.x, x_686.z, x_685.y);
        let x_688 : vec4<f32> = u_xlat7;
        let x_691 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_688.x, x_688.y, x_688.x, x_688.y) * vec4<f32>(x_691.x, x_691.y, x_691.x, x_691.y)) + vec4<f32>(x_694.x, x_694.y, x_694.z, x_694.y));
        let x_697 : vec4<f32> = u_xlat7;
        let x_700 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_703 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_697.x, x_697.y, x_697.x, x_697.y) * vec4<f32>(x_700.x, x_700.y, x_700.x, x_700.y)) + vec4<f32>(x_703.w, x_703.y, x_703.w, x_703.z));
        let x_706 : vec4<f32> = u_xlat7;
        let x_709 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_712 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_706.x, x_706.y, x_706.x, x_706.y) * vec4<f32>(x_709.x, x_709.y, x_709.x, x_709.y)) + vec4<f32>(x_712.x, x_712.w, x_712.z, x_712.w));
        let x_716 : vec4<f32> = u_xlat8;
        let x_718 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_716.x, x_716.x, x_716.x, x_716.y) * vec4<f32>(x_718.z, x_718.w, x_718.y, x_718.z));
        let x_722 : vec4<f32> = u_xlat8;
        let x_724 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_722.y, x_722.y, x_722.z, x_722.z) * x_724);
        let x_727 : f32 = u_xlat8.z;
        let x_729 : f32 = u_xlat13.y;
        u_xlat7.x = (x_727 * x_729);
        let x_733 : vec4<f32> = u_xlat11;
        let x_734 : vec2<f32> = vec2<f32>(x_733.x, x_733.y);
        let x_736 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_734.x, x_734.y, x_736);
        let x_744 : vec3<f32> = txVec4;
        let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_744.xy, x_744.z);
        u_xlat28 = x_746;
        let x_748 : vec4<f32> = u_xlat11;
        let x_749 : vec2<f32> = vec2<f32>(x_748.z, x_748.w);
        let x_751 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_749.x, x_749.y, x_751);
        let x_758 : vec3<f32> = txVec5;
        let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_758.xy, x_758.z);
        u_xlat8.x = x_760;
        let x_763 : f32 = u_xlat8.x;
        let x_765 : f32 = u_xlat14.y;
        u_xlat8.x = (x_763 * x_765);
        let x_769 : f32 = u_xlat14.x;
        let x_770 : f32 = u_xlat28;
        let x_773 : f32 = u_xlat8.x;
        u_xlat28 = ((x_769 * x_770) + x_773);
        let x_776 : vec2<f32> = u_xlat49;
        let x_778 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec6;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_785.xy, x_785.z);
        u_xlat49.x = x_787;
        let x_790 : f32 = u_xlat14.z;
        let x_792 : f32 = u_xlat49.x;
        let x_794 : f32 = u_xlat28;
        u_xlat28 = ((x_790 * x_792) + x_794);
        let x_797 : vec4<f32> = u_xlat10;
        let x_798 : vec2<f32> = vec2<f32>(x_797.x, x_797.y);
        let x_800 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_798.x, x_798.y, x_800);
        let x_807 : vec3<f32> = txVec7;
        let x_809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_807.xy, x_807.z);
        u_xlat49.x = x_809;
        let x_812 : f32 = u_xlat14.w;
        let x_814 : f32 = u_xlat49.x;
        let x_816 : f32 = u_xlat28;
        u_xlat28 = ((x_812 * x_814) + x_816);
        let x_819 : vec4<f32> = u_xlat12;
        let x_820 : vec2<f32> = vec2<f32>(x_819.x, x_819.y);
        let x_822 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_820.x, x_820.y, x_822);
        let x_829 : vec3<f32> = txVec8;
        let x_831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_829.xy, x_829.z);
        u_xlat49.x = x_831;
        let x_834 : f32 = u_xlat15.x;
        let x_836 : f32 = u_xlat49.x;
        let x_838 : f32 = u_xlat28;
        u_xlat28 = ((x_834 * x_836) + x_838);
        let x_841 : vec4<f32> = u_xlat12;
        let x_842 : vec2<f32> = vec2<f32>(x_841.z, x_841.w);
        let x_844 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_842.x, x_842.y, x_844);
        let x_851 : vec3<f32> = txVec9;
        let x_853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_851.xy, x_851.z);
        u_xlat49.x = x_853;
        let x_856 : f32 = u_xlat15.y;
        let x_858 : f32 = u_xlat49.x;
        let x_860 : f32 = u_xlat28;
        u_xlat28 = ((x_856 * x_858) + x_860);
        let x_863 : vec4<f32> = u_xlat10;
        let x_864 : vec2<f32> = vec2<f32>(x_863.z, x_863.w);
        let x_866 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_864.x, x_864.y, x_866);
        let x_873 : vec3<f32> = txVec10;
        let x_875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_873.xy, x_873.z);
        u_xlat49.x = x_875;
        let x_878 : f32 = u_xlat15.z;
        let x_880 : f32 = u_xlat49.x;
        let x_882 : f32 = u_xlat28;
        u_xlat28 = ((x_878 * x_880) + x_882);
        let x_885 : vec4<f32> = u_xlat9;
        let x_886 : vec2<f32> = vec2<f32>(x_885.x, x_885.y);
        let x_888 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_886.x, x_886.y, x_888);
        let x_895 : vec3<f32> = txVec11;
        let x_897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_895.xy, x_895.z);
        u_xlat49.x = x_897;
        let x_900 : f32 = u_xlat15.w;
        let x_902 : f32 = u_xlat49.x;
        let x_904 : f32 = u_xlat28;
        u_xlat28 = ((x_900 * x_902) + x_904);
        let x_907 : vec4<f32> = u_xlat9;
        let x_908 : vec2<f32> = vec2<f32>(x_907.z, x_907.w);
        let x_910 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_917 : vec3<f32> = txVec12;
        let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_917.xy, x_917.z);
        u_xlat49.x = x_919;
        let x_922 : f32 = u_xlat7.x;
        let x_924 : f32 = u_xlat49.x;
        let x_926 : f32 = u_xlat28;
        u_xlat69 = ((x_922 * x_924) + x_926);
      } else {
        let x_929 : vec4<f32> = vs_TEXCOORD6;
        let x_932 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_935 : vec2<f32> = ((vec2<f32>(x_929.x, x_929.y) * vec2<f32>(x_932.z, x_932.w)) + vec2<f32>(0.5f, 0.5f));
        let x_936 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_938 : vec4<f32> = u_xlat7;
        let x_940 : vec2<f32> = floor(vec2<f32>(x_938.x, x_938.y));
        let x_941 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec4<f32> = vs_TEXCOORD6;
        let x_946 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_949 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_943.x, x_943.y) * vec2<f32>(x_946.z, x_946.w)) + -(vec2<f32>(x_949.x, x_949.y)));
        let x_953 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_953.x, x_953.x, x_953.y, x_953.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_956 : vec4<f32> = u_xlat8;
        let x_958 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_956.x, x_956.x, x_956.z, x_956.z) * vec4<f32>(x_958.x, x_958.x, x_958.z, x_958.z));
        let x_961 : vec4<f32> = u_xlat9;
        let x_965 : vec2<f32> = (vec2<f32>(x_961.y, x_961.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_966 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_966.x, x_965.x, x_966.z, x_965.y);
        let x_968 : vec4<f32> = u_xlat9;
        let x_971 : vec2<f32> = u_xlat49;
        let x_973 : vec2<f32> = ((vec2<f32>(x_968.x, x_968.z) * vec2<f32>(0.5f, 0.5f)) + -(x_971));
        let x_974 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_973.x, x_974.y, x_973.y, x_974.w);
        let x_976 : vec2<f32> = u_xlat49;
        let x_978 : vec2<f32> = (-(x_976) + vec2<f32>(1.0f, 1.0f));
        let x_979 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_978.x, x_978.y, x_979.z, x_979.w);
        let x_981 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_981, vec2<f32>(0.0f, 0.0f));
        let x_983 : vec2<f32> = u_xlat51;
        let x_985 : vec2<f32> = u_xlat51;
        let x_987 : vec4<f32> = u_xlat9;
        let x_989 : vec2<f32> = ((-(x_983) * x_985) + vec2<f32>(x_987.x, x_987.y));
        let x_990 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_992, vec2<f32>(0.0f, 0.0f));
        let x_995 : vec2<f32> = u_xlat51;
        let x_997 : vec2<f32> = u_xlat51;
        let x_999 : vec4<f32> = u_xlat8;
        let x_1001 : vec2<f32> = ((-(x_995) * x_997) + vec2<f32>(x_999.y, x_999.w));
        let x_1002 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1001.x, x_1002.y, x_1001.y);
        let x_1004 : vec4<f32> = u_xlat9;
        let x_1007 : vec2<f32> = (vec2<f32>(x_1004.x, x_1004.y) + vec2<f32>(2.0f, 2.0f));
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec3<f32> = u_xlat29;
        let x_1012 : vec2<f32> = (vec2<f32>(x_1010.x, x_1010.z) + vec2<f32>(2.0f, 2.0f));
        let x_1013 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1013.x, x_1012.x, x_1013.z, x_1012.y);
        let x_1016 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1016 * 0.081632003f);
        let x_1020 : vec4<f32> = u_xlat8;
        let x_1023 : vec3<f32> = (vec3<f32>(x_1020.z, x_1020.x, x_1020.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1024 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
        let x_1026 : vec4<f32> = u_xlat9;
        let x_1029 : vec2<f32> = (vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1030 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
        let x_1033 : f32 = u_xlat12.y;
        u_xlat11.x = x_1033;
        let x_1035 : vec2<f32> = u_xlat49;
        let x_1042 : vec2<f32> = ((vec2<f32>(x_1035.x, x_1035.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1043 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1043.x, x_1042.x, x_1043.z, x_1042.y);
        let x_1045 : vec2<f32> = u_xlat49;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1049.x, x_1050.y, x_1049.y, x_1050.w);
        let x_1053 : f32 = u_xlat8.x;
        u_xlat9.y = x_1053;
        let x_1056 : f32 = u_xlat10.y;
        u_xlat9.w = x_1056;
        let x_1058 : vec4<f32> = u_xlat9;
        let x_1059 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1058 + x_1059);
        let x_1061 : vec2<f32> = u_xlat49;
        let x_1064 : vec2<f32> = ((vec2<f32>(x_1061.y, x_1061.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1065 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1065.x, x_1064.x, x_1065.z, x_1064.y);
        let x_1067 : vec2<f32> = u_xlat49;
        let x_1070 : vec2<f32> = ((vec2<f32>(x_1067.y, x_1067.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1071 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1070.x, x_1071.y, x_1070.y, x_1071.w);
        let x_1074 : f32 = u_xlat8.y;
        u_xlat10.y = x_1074;
        let x_1076 : vec4<f32> = u_xlat10;
        let x_1077 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1076 + x_1077);
        let x_1079 : vec4<f32> = u_xlat9;
        let x_1080 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1079 / x_1080);
        let x_1082 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1082 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1088 : vec4<f32> = u_xlat10;
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1088 / x_1089);
        let x_1091 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1091 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1093 : vec4<f32> = u_xlat9;
        let x_1096 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1093.w, x_1093.x, x_1093.y, x_1093.z) * vec4<f32>(x_1096.x, x_1096.x, x_1096.x, x_1096.x));
        let x_1099 : vec4<f32> = u_xlat10;
        let x_1102 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1099.x, x_1099.w, x_1099.y, x_1099.z) * vec4<f32>(x_1102.y, x_1102.y, x_1102.y, x_1102.y));
        let x_1105 : vec4<f32> = u_xlat9;
        let x_1106 : vec3<f32> = vec3<f32>(x_1105.y, x_1105.z, x_1105.w);
        let x_1107 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1106.x, x_1107.y, x_1106.y, x_1106.z);
        let x_1110 : f32 = u_xlat10.x;
        u_xlat12.y = x_1110;
        let x_1112 : vec4<f32> = u_xlat7;
        let x_1115 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1118 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y) * vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y)) + vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1118.y));
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1124 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1127 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.x, x_1124.y)) + vec2<f32>(x_1127.w, x_1127.y));
        let x_1131 : f32 = u_xlat12.y;
        u_xlat9.y = x_1131;
        let x_1134 : f32 = u_xlat10.z;
        u_xlat12.y = x_1134;
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1139 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1142 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y) * vec4<f32>(x_1139.x, x_1139.y, x_1139.x, x_1139.y)) + vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1142.y));
        let x_1145 : vec4<f32> = u_xlat7;
        let x_1148 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat12;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.w, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1157 : f32 = u_xlat12.y;
        u_xlat9.z = x_1157;
        let x_1160 : vec4<f32> = u_xlat7;
        let x_1163 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1160.x, x_1160.y, x_1160.x, x_1160.y) * vec4<f32>(x_1163.x, x_1163.y, x_1163.x, x_1163.y)) + vec4<f32>(x_1166.x, x_1166.y, x_1166.x, x_1166.z));
        let x_1170 : f32 = u_xlat10.w;
        u_xlat12.y = x_1170;
        let x_1173 : vec4<f32> = u_xlat7;
        let x_1176 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1173.x, x_1173.y, x_1173.x, x_1173.y) * vec4<f32>(x_1176.x, x_1176.y, x_1176.x, x_1176.y)) + vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1179.y));
        let x_1183 : vec4<f32> = u_xlat7;
        let x_1186 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat12;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1186.x, x_1186.y)) + vec2<f32>(x_1189.w, x_1189.y));
        let x_1192 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_1191.x, x_1191.y, x_1192.z);
        let x_1195 : f32 = u_xlat12.y;
        u_xlat9.w = x_1195;
        let x_1198 : vec4<f32> = u_xlat7;
        let x_1201 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(x_1201.x, x_1201.y)) + vec2<f32>(x_1204.x, x_1204.w));
        let x_1207 : vec4<f32> = u_xlat12;
        let x_1208 : vec3<f32> = vec3<f32>(x_1207.x, x_1207.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1208.x, x_1209.y, x_1208.y, x_1208.z);
        let x_1211 : vec4<f32> = u_xlat7;
        let x_1214 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.y));
        let x_1221 : vec4<f32> = u_xlat7;
        let x_1224 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1221.x, x_1221.y) * vec2<f32>(x_1224.x, x_1224.y)) + vec2<f32>(x_1227.w, x_1227.y));
        let x_1231 : f32 = u_xlat9.x;
        u_xlat10.x = x_1231;
        let x_1233 : vec4<f32> = u_xlat7;
        let x_1236 : vec4<f32> = x_363.x_MainLightShadowmapSize;
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1233.x, x_1233.y) * vec2<f32>(x_1236.x, x_1236.y)) + vec2<f32>(x_1239.x, x_1239.y));
        let x_1242 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1245 : vec4<f32> = u_xlat8;
        let x_1247 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1245.x, x_1245.x, x_1245.x, x_1245.x) * x_1247);
        let x_1250 : vec4<f32> = u_xlat8;
        let x_1252 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1250.y, x_1250.y, x_1250.y, x_1250.y) * x_1252);
        let x_1255 : vec4<f32> = u_xlat8;
        let x_1257 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1255.z, x_1255.z, x_1255.z, x_1255.z) * x_1257);
        let x_1259 : vec4<f32> = u_xlat8;
        let x_1261 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1259.w, x_1259.w, x_1259.w, x_1259.w) * x_1261);
        let x_1264 : vec4<f32> = u_xlat13;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.x, x_1264.y);
        let x_1267 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec13;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1274.xy, x_1274.z);
        u_xlat9.x = x_1276;
        let x_1279 : vec4<f32> = u_xlat13;
        let x_1280 : vec2<f32> = vec2<f32>(x_1279.z, x_1279.w);
        let x_1282 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1280.x, x_1280.y, x_1282);
        let x_1290 : vec3<f32> = txVec14;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1290.xy, x_1290.z);
        u_xlat72 = x_1292;
        let x_1293 : f32 = u_xlat72;
        let x_1295 : f32 = u_xlat18.y;
        u_xlat72 = (x_1293 * x_1295);
        let x_1298 : f32 = u_xlat18.x;
        let x_1300 : f32 = u_xlat9.x;
        let x_1302 : f32 = u_xlat72;
        u_xlat9.x = ((x_1298 * x_1300) + x_1302);
        let x_1306 : vec2<f32> = u_xlat49;
        let x_1308 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec15;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1315.xy, x_1315.z);
        u_xlat49.x = x_1317;
        let x_1320 : f32 = u_xlat18.z;
        let x_1322 : f32 = u_xlat49.x;
        let x_1325 : f32 = u_xlat9.x;
        u_xlat49.x = ((x_1320 * x_1322) + x_1325);
        let x_1329 : vec4<f32> = u_xlat16;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1340 : vec3<f32> = txVec16;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1340.xy, x_1340.z);
        u_xlat70 = x_1342;
        let x_1344 : f32 = u_xlat18.w;
        let x_1345 : f32 = u_xlat70;
        let x_1348 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1344 * x_1345) + x_1348);
        let x_1352 : vec4<f32> = u_xlat14;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.x, x_1352.y);
        let x_1355 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec17;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1362.xy, x_1362.z);
        u_xlat70 = x_1364;
        let x_1366 : f32 = u_xlat19.x;
        let x_1367 : f32 = u_xlat70;
        let x_1370 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1366 * x_1367) + x_1370);
        let x_1374 : vec4<f32> = u_xlat14;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.z, x_1374.w);
        let x_1377 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec18;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1384.xy, x_1384.z);
        u_xlat70 = x_1386;
        let x_1388 : f32 = u_xlat19.y;
        let x_1389 : f32 = u_xlat70;
        let x_1392 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1388 * x_1389) + x_1392);
        let x_1396 : vec4<f32> = u_xlat15;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.x, x_1396.y);
        let x_1399 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec19;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1406.xy, x_1406.z);
        u_xlat70 = x_1408;
        let x_1410 : f32 = u_xlat19.z;
        let x_1411 : f32 = u_xlat70;
        let x_1414 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1410 * x_1411) + x_1414);
        let x_1418 : vec4<f32> = u_xlat16;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.z, x_1418.w);
        let x_1421 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec20;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat70 = x_1430;
        let x_1432 : f32 = u_xlat19.w;
        let x_1433 : f32 = u_xlat70;
        let x_1436 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1432 * x_1433) + x_1436);
        let x_1440 : vec4<f32> = u_xlat17;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.x, x_1440.y);
        let x_1443 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec21;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1450.xy, x_1450.z);
        u_xlat70 = x_1452;
        let x_1454 : f32 = u_xlat20.x;
        let x_1455 : f32 = u_xlat70;
        let x_1458 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1454 * x_1455) + x_1458);
        let x_1462 : vec4<f32> = u_xlat17;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec22;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1472.xy, x_1472.z);
        u_xlat70 = x_1474;
        let x_1476 : f32 = u_xlat20.y;
        let x_1477 : f32 = u_xlat70;
        let x_1480 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1476 * x_1477) + x_1480);
        let x_1484 : vec3<f32> = u_xlat30;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.x, x_1484.y);
        let x_1487 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec23;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1494.xy, x_1494.z);
        u_xlat70 = x_1496;
        let x_1498 : f32 = u_xlat20.z;
        let x_1499 : f32 = u_xlat70;
        let x_1502 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1498 * x_1499) + x_1502);
        let x_1506 : vec2<f32> = u_xlat57;
        let x_1508 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec24;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1515.xy, x_1515.z);
        u_xlat70 = x_1517;
        let x_1519 : f32 = u_xlat20.w;
        let x_1520 : f32 = u_xlat70;
        let x_1523 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1519 * x_1520) + x_1523);
        let x_1527 : vec4<f32> = u_xlat12;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.x, x_1527.y);
        let x_1530 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec25;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1537.xy, x_1537.z);
        u_xlat70 = x_1539;
        let x_1541 : f32 = u_xlat8.x;
        let x_1542 : f32 = u_xlat70;
        let x_1545 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1541 * x_1542) + x_1545);
        let x_1549 : vec4<f32> = u_xlat12;
        let x_1550 : vec2<f32> = vec2<f32>(x_1549.z, x_1549.w);
        let x_1552 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec26;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1559.xy, x_1559.z);
        u_xlat70 = x_1561;
        let x_1563 : f32 = u_xlat8.y;
        let x_1564 : f32 = u_xlat70;
        let x_1567 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1563 * x_1564) + x_1567);
        let x_1571 : vec2<f32> = u_xlat52;
        let x_1573 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec27;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1580.xy, x_1580.z);
        u_xlat70 = x_1582;
        let x_1584 : f32 = u_xlat8.z;
        let x_1585 : f32 = u_xlat70;
        let x_1588 : f32 = u_xlat49.x;
        u_xlat49.x = ((x_1584 * x_1585) + x_1588);
        let x_1592 : vec4<f32> = u_xlat7;
        let x_1593 : vec2<f32> = vec2<f32>(x_1592.x, x_1592.y);
        let x_1595 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec28;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1602.xy, x_1602.z);
        u_xlat7.x = x_1604;
        let x_1607 : f32 = u_xlat8.w;
        let x_1609 : f32 = u_xlat7.x;
        let x_1612 : f32 = u_xlat49.x;
        u_xlat69 = ((x_1607 * x_1609) + x_1612);
      }
    }
  } else {
    let x_1616 : vec4<f32> = vs_TEXCOORD6;
    let x_1617 : vec2<f32> = vec2<f32>(x_1616.x, x_1616.y);
    let x_1619 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
    let x_1626 : vec3<f32> = txVec29;
    let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1626.xy, x_1626.z);
    u_xlat69 = x_1628;
  }
  let x_1630 : f32 = x_363.x_MainLightShadowParams.x;
  u_xlat7.x = (-(x_1630) + 1.0f);
  let x_1634 : f32 = u_xlat69;
  let x_1636 : f32 = x_363.x_MainLightShadowParams.x;
  let x_1639 : f32 = u_xlat7.x;
  u_xlat69 = ((x_1634 * x_1636) + x_1639);
  let x_1642 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (0.0f >= x_1642);
  let x_1646 : f32 = vs_TEXCOORD6.z;
  u_xlatb28 = (x_1646 >= 1.0f);
  let x_1648 : bool = u_xlatb28;
  let x_1649 : bool = u_xlatb7;
  u_xlatb7 = (x_1648 | x_1649);
  let x_1651 : bool = u_xlatb7;
  let x_1652 : f32 = u_xlat69;
  u_xlat69 = select(x_1652, 1.0f, x_1651);
  let x_1654 : vec3<f32> = vs_TEXCOORD1;
  let x_1656 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1658 : vec3<f32> = (x_1654 + -(x_1656));
  let x_1659 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1659.w);
  let x_1661 : vec4<f32> = u_xlat7;
  let x_1663 : vec4<f32> = u_xlat7;
  u_xlat7.x = dot(vec3<f32>(x_1661.x, x_1661.y, x_1661.z), vec3<f32>(x_1663.x, x_1663.y, x_1663.z));
  let x_1668 : f32 = u_xlat7.x;
  let x_1670 : f32 = x_363.x_MainLightShadowParams.z;
  let x_1673 : f32 = x_363.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_1668 * x_1670) + x_1673);
  let x_1677 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1677, 0.0f, 1.0f);
  let x_1680 : f32 = u_xlat69;
  u_xlat28 = (-(x_1680) + 1.0f);
  let x_1684 : f32 = u_xlat7.x;
  let x_1685 : f32 = u_xlat28;
  let x_1687 : f32 = u_xlat69;
  u_xlat69 = ((x_1684 * x_1685) + x_1687);
  let x_1695 : f32 = x_1693.x_MainLightCookieTextureFormat;
  u_xlatb7 = !((x_1695 == -1.0f));
  let x_1697 : bool = u_xlatb7;
  if (x_1697) {
    let x_1700 : vec3<f32> = vs_TEXCOORD1;
    let x_1703 : vec4<f32> = x_1693.x_MainLightWorldToLight[1i];
    let x_1705 : vec2<f32> = (vec2<f32>(x_1700.y, x_1700.y) * vec2<f32>(x_1703.x, x_1703.y));
    let x_1706 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1705.x, x_1705.y, x_1706.z, x_1706.w);
    let x_1709 : vec4<f32> = x_1693.x_MainLightWorldToLight[0i];
    let x_1711 : vec3<f32> = vs_TEXCOORD1;
    let x_1714 : vec4<f32> = u_xlat7;
    let x_1716 : vec2<f32> = ((vec2<f32>(x_1709.x, x_1709.y) * vec2<f32>(x_1711.x, x_1711.x)) + vec2<f32>(x_1714.x, x_1714.y));
    let x_1717 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1716.x, x_1716.y, x_1717.z, x_1717.w);
    let x_1720 : vec4<f32> = x_1693.x_MainLightWorldToLight[2i];
    let x_1722 : vec3<f32> = vs_TEXCOORD1;
    let x_1725 : vec4<f32> = u_xlat7;
    let x_1727 : vec2<f32> = ((vec2<f32>(x_1720.x, x_1720.y) * vec2<f32>(x_1722.z, x_1722.z)) + vec2<f32>(x_1725.x, x_1725.y));
    let x_1728 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1727.x, x_1727.y, x_1728.z, x_1728.w);
    let x_1730 : vec4<f32> = u_xlat7;
    let x_1733 : vec4<f32> = x_1693.x_MainLightWorldToLight[3i];
    let x_1735 : vec2<f32> = (vec2<f32>(x_1730.x, x_1730.y) + vec2<f32>(x_1733.x, x_1733.y));
    let x_1736 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1735.x, x_1735.y, x_1736.z, x_1736.w);
    let x_1738 : vec4<f32> = u_xlat7;
    let x_1741 : vec2<f32> = ((vec2<f32>(x_1738.x, x_1738.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1742 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1741.x, x_1741.y, x_1742.z, x_1742.w);
    let x_1749 : vec4<f32> = u_xlat7;
    let x_1752 : f32 = x_44.x_GlobalMipBias.x;
    let x_1753 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1749.x, x_1749.y), x_1752);
    u_xlat7 = x_1753;
    let x_1758 : f32 = x_1693.x_MainLightCookieTextureFormat;
    let x_1760 : f32 = x_1693.x_MainLightCookieTextureFormat;
    let x_1762 : f32 = x_1693.x_MainLightCookieTextureFormat;
    let x_1764 : f32 = x_1693.x_MainLightCookieTextureFormat;
    let x_1765 : vec4<f32> = vec4<f32>(x_1758, x_1760, x_1762, x_1764);
    let x_1773 : vec4<bool> = (vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1765.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1773.x, x_1773.y);
    let x_1776 : bool = u_xlatb8.y;
    if (x_1776) {
      let x_1781 : f32 = u_xlat7.w;
      x_1777 = x_1781;
    } else {
      let x_1784 : f32 = u_xlat7.x;
      x_1777 = x_1784;
    }
    let x_1785 : f32 = x_1777;
    u_xlat70 = x_1785;
    let x_1787 : bool = u_xlatb8.x;
    if (x_1787) {
      let x_1791 : vec4<f32> = u_xlat7;
      x_1788 = vec3<f32>(x_1791.x, x_1791.y, x_1791.z);
    } else {
      let x_1794 : f32 = u_xlat70;
      x_1788 = vec3<f32>(x_1794, x_1794, x_1794);
    }
    let x_1796 : vec3<f32> = x_1788;
    let x_1797 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1796.x, x_1796.y, x_1796.z, x_1797.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1803 : vec4<f32> = u_xlat7;
  let x_1806 : vec4<f32> = x_44.x_MainLightColor;
  let x_1808 : vec3<f32> = (vec3<f32>(x_1803.x, x_1803.y, x_1803.z) * vec3<f32>(x_1806.x, x_1806.y, x_1806.z));
  let x_1809 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1808.x, x_1808.y, x_1808.z, x_1809.w);
  let x_1811 : f32 = u_xlat48;
  let x_1813 : vec4<f32> = u_xlat7;
  let x_1815 : vec3<f32> = (vec3<f32>(x_1811, x_1811, x_1811) * vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
  let x_1816 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
  let x_1818 : vec3<f32> = u_xlat3;
  let x_1820 : vec3<f32> = u_xlat4;
  u_xlat70 = dot(-(x_1818), x_1820);
  let x_1822 : f32 = u_xlat70;
  let x_1823 : f32 = u_xlat70;
  u_xlat70 = (x_1822 + x_1823);
  let x_1825 : vec3<f32> = u_xlat4;
  let x_1826 : f32 = u_xlat70;
  let x_1830 : vec3<f32> = u_xlat3;
  let x_1832 : vec3<f32> = ((x_1825 * -(vec3<f32>(x_1826, x_1826, x_1826))) + -(x_1830));
  let x_1833 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
  let x_1835 : vec3<f32> = u_xlat4;
  let x_1836 : vec3<f32> = u_xlat3;
  u_xlat70 = dot(x_1835, x_1836);
  let x_1838 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1838, 0.0f, 1.0f);
  let x_1840 : f32 = u_xlat70;
  u_xlat70 = (-(x_1840) + 1.0f);
  let x_1843 : f32 = u_xlat70;
  let x_1844 : f32 = u_xlat70;
  u_xlat70 = (x_1843 * x_1844);
  let x_1846 : f32 = u_xlat70;
  let x_1847 : f32 = u_xlat70;
  u_xlat70 = (x_1846 * x_1847);
  let x_1850 : f32 = u_xlat65;
  u_xlat71 = ((-(x_1850) * 0.699999988f) + 1.700000048f);
  let x_1856 : f32 = u_xlat65;
  let x_1857 : f32 = u_xlat71;
  u_xlat65 = (x_1856 * x_1857);
  let x_1859 : f32 = u_xlat65;
  u_xlat65 = (x_1859 * 6.0f);
  let x_1870 : vec4<f32> = u_xlat8;
  let x_1872 : f32 = u_xlat65;
  let x_1873 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1870.x, x_1870.y, x_1870.z), x_1872);
  u_xlat8 = x_1873;
  let x_1875 : f32 = u_xlat8.w;
  u_xlat65 = (x_1875 + -1.0f);
  let x_1882 : f32 = x_1880.unity_SpecCube0_HDR.w;
  let x_1883 : f32 = u_xlat65;
  u_xlat65 = ((x_1882 * x_1883) + 1.0f);
  let x_1886 : f32 = u_xlat65;
  u_xlat65 = max(x_1886, 0.0f);
  let x_1888 : f32 = u_xlat65;
  u_xlat65 = log2(x_1888);
  let x_1890 : f32 = u_xlat65;
  let x_1892 : f32 = x_1880.unity_SpecCube0_HDR.y;
  u_xlat65 = (x_1890 * x_1892);
  let x_1894 : f32 = u_xlat65;
  u_xlat65 = exp2(x_1894);
  let x_1896 : f32 = u_xlat65;
  let x_1898 : f32 = x_1880.unity_SpecCube0_HDR.x;
  u_xlat65 = (x_1896 * x_1898);
  let x_1900 : vec4<f32> = u_xlat8;
  let x_1902 : f32 = u_xlat65;
  let x_1904 : vec3<f32> = (vec3<f32>(x_1900.x, x_1900.y, x_1900.z) * vec3<f32>(x_1902, x_1902, x_1902));
  let x_1905 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
  let x_1907 : f32 = u_xlat67;
  let x_1909 : f32 = u_xlat67;
  let x_1913 : vec2<f32> = ((vec2<f32>(x_1907, x_1907) * vec2<f32>(x_1909, x_1909)) + vec2<f32>(-1.0f, 1.0f));
  let x_1914 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1913.x, x_1913.y, x_1914.z, x_1914.w);
  let x_1917 : f32 = u_xlat9.y;
  u_xlat65 = (1.0f / x_1917);
  let x_1919 : vec4<f32> = u_xlat0;
  let x_1922 : f32 = u_xlat66;
  u_xlat30 = (-(vec3<f32>(x_1919.x, x_1919.y, x_1919.z)) + vec3<f32>(x_1922, x_1922, x_1922));
  let x_1925 : f32 = u_xlat70;
  let x_1927 : vec3<f32> = u_xlat30;
  let x_1929 : vec4<f32> = u_xlat0;
  u_xlat30 = ((vec3<f32>(x_1925, x_1925, x_1925) * x_1927) + vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
  let x_1932 : f32 = u_xlat65;
  let x_1934 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1932, x_1932, x_1932) * x_1934);
  let x_1936 : vec4<f32> = u_xlat8;
  let x_1938 : vec3<f32> = u_xlat30;
  let x_1939 : vec3<f32> = (vec3<f32>(x_1936.x, x_1936.y, x_1936.z) * x_1938);
  let x_1940 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1939.x, x_1939.y, x_1939.z, x_1940.w);
  let x_1942 : vec4<f32> = u_xlat5;
  let x_1944 : vec3<f32> = u_xlat22;
  let x_1946 : vec4<f32> = u_xlat8;
  let x_1948 : vec3<f32> = ((vec3<f32>(x_1942.x, x_1942.y, x_1942.z) * x_1944) + vec3<f32>(x_1946.x, x_1946.y, x_1946.z));
  let x_1949 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
  let x_1951 : f32 = u_xlat69;
  let x_1954 : f32 = x_1880.unity_LightData.z;
  u_xlat65 = (x_1951 * x_1954);
  let x_1956 : vec3<f32> = u_xlat4;
  let x_1958 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(x_1956, vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
  let x_1961 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1961, 0.0f, 1.0f);
  let x_1963 : f32 = u_xlat65;
  let x_1964 : f32 = u_xlat66;
  u_xlat65 = (x_1963 * x_1964);
  let x_1966 : f32 = u_xlat65;
  let x_1968 : vec4<f32> = u_xlat7;
  let x_1970 : vec3<f32> = (vec3<f32>(x_1966, x_1966, x_1966) * vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
  let x_1971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1973 : vec3<f32> = u_xlat3;
  let x_1975 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1977 : vec3<f32> = (x_1973 + vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
  let x_1980 : vec4<f32> = u_xlat8;
  let x_1982 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(vec3<f32>(x_1980.x, x_1980.y, x_1980.z), vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
  let x_1985 : f32 = u_xlat65;
  u_xlat65 = max(x_1985, 1.17549435e-37f);
  let x_1988 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_1988);
  let x_1990 : f32 = u_xlat65;
  let x_1992 : vec4<f32> = u_xlat8;
  let x_1994 : vec3<f32> = (vec3<f32>(x_1990, x_1990, x_1990) * vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
  let x_1995 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
  let x_1997 : vec3<f32> = u_xlat4;
  let x_1998 : vec4<f32> = u_xlat8;
  u_xlat65 = dot(x_1997, vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
  let x_2001 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2001, 0.0f, 1.0f);
  let x_2004 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2006 : vec4<f32> = u_xlat8;
  u_xlat66 = dot(vec3<f32>(x_2004.x, x_2004.y, x_2004.z), vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
  let x_2009 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2009, 0.0f, 1.0f);
  let x_2011 : f32 = u_xlat65;
  let x_2012 : f32 = u_xlat65;
  u_xlat65 = (x_2011 * x_2012);
  let x_2014 : f32 = u_xlat65;
  let x_2016 : f32 = u_xlat9.x;
  u_xlat65 = ((x_2014 * x_2016) + 1.000010014f);
  let x_2020 : f32 = u_xlat66;
  let x_2021 : f32 = u_xlat66;
  u_xlat66 = (x_2020 * x_2021);
  let x_2023 : f32 = u_xlat65;
  let x_2024 : f32 = u_xlat65;
  u_xlat65 = (x_2023 * x_2024);
  let x_2026 : f32 = u_xlat66;
  u_xlat66 = max(x_2026, 0.100000001f);
  let x_2029 : f32 = u_xlat65;
  let x_2030 : f32 = u_xlat66;
  u_xlat65 = (x_2029 * x_2030);
  let x_2032 : f32 = u_xlat27;
  let x_2033 : f32 = u_xlat65;
  u_xlat65 = (x_2032 * x_2033);
  let x_2035 : f32 = u_xlat68;
  let x_2036 : f32 = u_xlat65;
  u_xlat65 = (x_2035 / x_2036);
  let x_2038 : vec4<f32> = u_xlat0;
  let x_2040 : f32 = u_xlat65;
  let x_2043 : vec3<f32> = u_xlat22;
  let x_2044 : vec3<f32> = ((vec3<f32>(x_2038.x, x_2038.y, x_2038.z) * vec3<f32>(x_2040, x_2040, x_2040)) + x_2043);
  let x_2045 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2044.x, x_2044.y, x_2044.z, x_2045.w);
  let x_2047 : vec4<f32> = u_xlat7;
  let x_2049 : vec4<f32> = u_xlat8;
  let x_2051 : vec3<f32> = (vec3<f32>(x_2047.x, x_2047.y, x_2047.z) * vec3<f32>(x_2049.x, x_2049.y, x_2049.z));
  let x_2052 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2051.x, x_2051.y, x_2051.z, x_2052.w);
  let x_2055 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2057 : f32 = x_1880.unity_LightData.y;
  u_xlat65 = min(x_2055, x_2057);
  let x_2061 : f32 = u_xlat65;
  u_xlatu65 = bitcast<u32>(i32(x_2061));
  let x_2065 : f32 = x_1693.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2067 : f32 = x_1693.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2069 : f32 = x_1693.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2071 : f32 = x_1693.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2072 : vec4<f32> = vec4<f32>(x_2065, x_2067, x_2069, x_2071);
  let x_2078 : vec4<bool> = (vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2072.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb8 = vec2<bool>(x_2078.x, x_2078.y);
  u_xlat30.x = 0.0f;
  u_xlat30.y = 0.0f;
  u_xlat30.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2089 : u32 = u_xlatu_loop_1;
    let x_2090 : u32 = u_xlatu65;
    if ((x_2089 < x_2090)) {
    } else {
      break;
    }
    let x_2093 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2093 >> 2u);
    let x_2097 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2097 & 3u));
    let x_2100 : u32 = u_xlatu67;
    let x_2103 : vec4<f32> = x_1880.unity_LightIndices[bitcast<i32>(x_2100)];
    let x_2113 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2118 : vec4<u32> = indexable[x_2113];
    u_xlat67 = dot(x_2103, bitcast<vec4<f32>>(x_2118));
    let x_2121 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2121));
    let x_2124 : vec3<f32> = vs_TEXCOORD1;
    let x_2136 : u32 = u_xlatu67;
    let x_2139 : vec4<f32> = x_2135.x_AdditionalLightsPosition[bitcast<i32>(x_2136)];
    let x_2142 : u32 = u_xlatu67;
    let x_2145 : vec4<f32> = x_2135.x_AdditionalLightsPosition[bitcast<i32>(x_2142)];
    let x_2147 : vec3<f32> = ((-(x_2124) * vec3<f32>(x_2139.w, x_2139.w, x_2139.w)) + vec3<f32>(x_2145.x, x_2145.y, x_2145.z));
    let x_2148 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2147.x, x_2147.y, x_2147.z, x_2148.w);
    let x_2150 : vec4<f32> = u_xlat10;
    let x_2152 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2150.x, x_2150.y, x_2150.z), vec3<f32>(x_2152.x, x_2152.y, x_2152.z));
    let x_2155 : f32 = u_xlat69;
    u_xlat69 = max(x_2155, 6.10351562e-05f);
    let x_2158 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2158);
    let x_2160 : f32 = u_xlat70;
    let x_2162 : vec4<f32> = u_xlat10;
    let x_2164 : vec3<f32> = (vec3<f32>(x_2160, x_2160, x_2160) * vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
    let x_2165 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2164.x, x_2164.y, x_2164.z, x_2165.w);
    let x_2168 : f32 = u_xlat69;
    u_xlat50.x = (1.0f / x_2168);
    let x_2171 : f32 = u_xlat69;
    let x_2172 : u32 = u_xlatu67;
    let x_2175 : f32 = x_2135.x_AdditionalLightsAttenuation[bitcast<i32>(x_2172)].x;
    u_xlat69 = (x_2171 * x_2175);
    let x_2177 : f32 = u_xlat69;
    let x_2179 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2177) * x_2179) + 1.0f);
    let x_2182 : f32 = u_xlat69;
    u_xlat69 = max(x_2182, 0.0f);
    let x_2184 : f32 = u_xlat69;
    let x_2185 : f32 = u_xlat69;
    u_xlat69 = (x_2184 * x_2185);
    let x_2187 : f32 = u_xlat69;
    let x_2189 : f32 = u_xlat50.x;
    u_xlat69 = (x_2187 * x_2189);
    let x_2191 : u32 = u_xlatu67;
    let x_2194 : vec4<f32> = x_2135.x_AdditionalLightsSpotDir[bitcast<i32>(x_2191)];
    let x_2196 : vec4<f32> = u_xlat11;
    u_xlat50.x = dot(vec3<f32>(x_2194.x, x_2194.y, x_2194.z), vec3<f32>(x_2196.x, x_2196.y, x_2196.z));
    let x_2201 : f32 = u_xlat50.x;
    let x_2202 : u32 = u_xlatu67;
    let x_2205 : f32 = x_2135.x_AdditionalLightsAttenuation[bitcast<i32>(x_2202)].z;
    let x_2207 : u32 = u_xlatu67;
    let x_2210 : f32 = x_2135.x_AdditionalLightsAttenuation[bitcast<i32>(x_2207)].w;
    u_xlat50.x = ((x_2201 * x_2205) + x_2210);
    let x_2214 : f32 = u_xlat50.x;
    u_xlat50.x = clamp(x_2214, 0.0f, 1.0f);
    let x_2218 : f32 = u_xlat50.x;
    let x_2220 : f32 = u_xlat50.x;
    u_xlat50.x = (x_2218 * x_2220);
    let x_2223 : f32 = u_xlat69;
    let x_2225 : f32 = u_xlat50.x;
    u_xlat69 = (x_2223 * x_2225);
    let x_2228 : u32 = u_xlatu67;
    u_xlatu50 = (x_2228 >> 5u);
    let x_2231 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2231) & 31i)));
    let x_2237 : i32 = u_xlati71;
    let x_2239 : u32 = u_xlatu50;
    let x_2242 : f32 = x_1693.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2239)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_2237) & bitcast<u32>(x_2242)));
    let x_2246 : i32 = u_xlati50;
    if ((x_2246 != 0i)) {
      let x_2256 : u32 = u_xlatu67;
      let x_2259 : f32 = x_2255.x_AdditionalLightsLightTypes[bitcast<i32>(x_2256)].el;
      u_xlati50 = i32(x_2259);
      let x_2261 : i32 = u_xlati50;
      u_xlati71 = select(1i, 0i, (x_2261 != 0i));
      let x_2265 : u32 = u_xlatu67;
      u_xlati73 = (bitcast<i32>(x_2265) << bitcast<u32>(2i));
      let x_2268 : i32 = u_xlati71;
      if ((x_2268 != 0i)) {
        let x_2272 : vec3<f32> = vs_TEXCOORD1;
        let x_2274 : i32 = u_xlati73;
        let x_2277 : i32 = u_xlati73;
        let x_2281 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2274 + 1i) / 4i)][((x_2277 + 1i) % 4i)];
        let x_2283 : vec3<f32> = (vec3<f32>(x_2272.y, x_2272.y, x_2272.y) * vec3<f32>(x_2281.x, x_2281.y, x_2281.w));
        let x_2284 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
        let x_2286 : i32 = u_xlati73;
        let x_2288 : i32 = u_xlati73;
        let x_2291 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[(x_2286 / 4i)][(x_2288 % 4i)];
        let x_2293 : vec3<f32> = vs_TEXCOORD1;
        let x_2296 : vec4<f32> = u_xlat12;
        let x_2298 : vec3<f32> = ((vec3<f32>(x_2291.x, x_2291.y, x_2291.w) * vec3<f32>(x_2293.x, x_2293.x, x_2293.x)) + vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
        let x_2299 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
        let x_2301 : i32 = u_xlati73;
        let x_2304 : i32 = u_xlati73;
        let x_2308 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2301 + 2i) / 4i)][((x_2304 + 2i) % 4i)];
        let x_2310 : vec3<f32> = vs_TEXCOORD1;
        let x_2313 : vec4<f32> = u_xlat12;
        let x_2315 : vec3<f32> = ((vec3<f32>(x_2308.x, x_2308.y, x_2308.w) * vec3<f32>(x_2310.z, x_2310.z, x_2310.z)) + vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
        let x_2316 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
        let x_2318 : vec4<f32> = u_xlat12;
        let x_2320 : i32 = u_xlati73;
        let x_2323 : i32 = u_xlati73;
        let x_2327 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2320 + 3i) / 4i)][((x_2323 + 3i) % 4i)];
        let x_2329 : vec3<f32> = (vec3<f32>(x_2318.x, x_2318.y, x_2318.z) + vec3<f32>(x_2327.x, x_2327.y, x_2327.w));
        let x_2330 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
        let x_2332 : vec4<f32> = u_xlat12;
        let x_2334 : vec4<f32> = u_xlat12;
        let x_2336 : vec2<f32> = (vec2<f32>(x_2332.x, x_2332.y) / vec2<f32>(x_2334.z, x_2334.z));
        let x_2337 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2336.x, x_2336.y, x_2337.z, x_2337.w);
        let x_2339 : vec4<f32> = u_xlat12;
        let x_2342 : vec2<f32> = ((vec2<f32>(x_2339.x, x_2339.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2343 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2342.x, x_2342.y, x_2343.z, x_2343.w);
        let x_2345 : vec4<f32> = u_xlat12;
        let x_2349 : vec2<f32> = clamp(vec2<f32>(x_2345.x, x_2345.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2350 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2349.x, x_2349.y, x_2350.z, x_2350.w);
        let x_2352 : u32 = u_xlatu67;
        let x_2355 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2352)];
        let x_2357 : vec4<f32> = u_xlat12;
        let x_2360 : u32 = u_xlatu67;
        let x_2363 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2360)];
        let x_2365 : vec2<f32> = ((vec2<f32>(x_2355.x, x_2355.y) * vec2<f32>(x_2357.x, x_2357.y)) + vec2<f32>(x_2363.z, x_2363.w));
        let x_2366 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2365.x, x_2365.y, x_2366.z, x_2366.w);
      } else {
        let x_2370 : i32 = u_xlati50;
        u_xlatb50 = (x_2370 == 1i);
        let x_2372 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_2372);
        let x_2374 : i32 = u_xlati50;
        if ((x_2374 != 0i)) {
          let x_2378 : vec3<f32> = vs_TEXCOORD1;
          let x_2380 : i32 = u_xlati73;
          let x_2383 : i32 = u_xlati73;
          let x_2387 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2380 + 1i) / 4i)][((x_2383 + 1i) % 4i)];
          u_xlat50 = (vec2<f32>(x_2378.y, x_2378.y) * vec2<f32>(x_2387.x, x_2387.y));
          let x_2390 : i32 = u_xlati73;
          let x_2392 : i32 = u_xlati73;
          let x_2395 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[(x_2390 / 4i)][(x_2392 % 4i)];
          let x_2397 : vec3<f32> = vs_TEXCOORD1;
          let x_2400 : vec2<f32> = u_xlat50;
          u_xlat50 = ((vec2<f32>(x_2395.x, x_2395.y) * vec2<f32>(x_2397.x, x_2397.x)) + x_2400);
          let x_2402 : i32 = u_xlati73;
          let x_2405 : i32 = u_xlati73;
          let x_2409 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2402 + 2i) / 4i)][((x_2405 + 2i) % 4i)];
          let x_2411 : vec3<f32> = vs_TEXCOORD1;
          let x_2414 : vec2<f32> = u_xlat50;
          u_xlat50 = ((vec2<f32>(x_2409.x, x_2409.y) * vec2<f32>(x_2411.z, x_2411.z)) + x_2414);
          let x_2416 : vec2<f32> = u_xlat50;
          let x_2417 : i32 = u_xlati73;
          let x_2420 : i32 = u_xlati73;
          let x_2424 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2417 + 3i) / 4i)][((x_2420 + 3i) % 4i)];
          u_xlat50 = (x_2416 + vec2<f32>(x_2424.x, x_2424.y));
          let x_2427 : vec2<f32> = u_xlat50;
          u_xlat50 = ((x_2427 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2430 : vec2<f32> = u_xlat50;
          u_xlat50 = fract(x_2430);
          let x_2432 : u32 = u_xlatu67;
          let x_2435 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2432)];
          let x_2437 : vec2<f32> = u_xlat50;
          let x_2439 : u32 = u_xlatu67;
          let x_2442 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2439)];
          let x_2444 : vec2<f32> = ((vec2<f32>(x_2435.x, x_2435.y) * x_2437) + vec2<f32>(x_2442.z, x_2442.w));
          let x_2445 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2444.x, x_2444.y, x_2445.z, x_2445.w);
        } else {
          let x_2448 : vec3<f32> = vs_TEXCOORD1;
          let x_2450 : i32 = u_xlati73;
          let x_2453 : i32 = u_xlati73;
          let x_2457 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2450 + 1i) / 4i)][((x_2453 + 1i) % 4i)];
          u_xlat13 = (vec4<f32>(x_2448.y, x_2448.y, x_2448.y, x_2448.y) * x_2457);
          let x_2459 : i32 = u_xlati73;
          let x_2461 : i32 = u_xlati73;
          let x_2464 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[(x_2459 / 4i)][(x_2461 % 4i)];
          let x_2465 : vec3<f32> = vs_TEXCOORD1;
          let x_2468 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2464 * vec4<f32>(x_2465.x, x_2465.x, x_2465.x, x_2465.x)) + x_2468);
          let x_2470 : i32 = u_xlati73;
          let x_2473 : i32 = u_xlati73;
          let x_2477 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2470 + 2i) / 4i)][((x_2473 + 2i) % 4i)];
          let x_2478 : vec3<f32> = vs_TEXCOORD1;
          let x_2481 : vec4<f32> = u_xlat13;
          u_xlat13 = ((x_2477 * vec4<f32>(x_2478.z, x_2478.z, x_2478.z, x_2478.z)) + x_2481);
          let x_2483 : vec4<f32> = u_xlat13;
          let x_2484 : i32 = u_xlati73;
          let x_2487 : i32 = u_xlati73;
          let x_2491 : vec4<f32> = x_2255.x_AdditionalLightsWorldToLights[((x_2484 + 3i) / 4i)][((x_2487 + 3i) % 4i)];
          u_xlat13 = (x_2483 + x_2491);
          let x_2493 : vec4<f32> = u_xlat13;
          let x_2495 : vec4<f32> = u_xlat13;
          let x_2497 : vec3<f32> = (vec3<f32>(x_2493.x, x_2493.y, x_2493.z) / vec3<f32>(x_2495.w, x_2495.w, x_2495.w));
          let x_2498 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2497.x, x_2497.y, x_2497.z, x_2498.w);
          let x_2500 : vec4<f32> = u_xlat13;
          let x_2502 : vec4<f32> = u_xlat13;
          u_xlat50.x = dot(vec3<f32>(x_2500.x, x_2500.y, x_2500.z), vec3<f32>(x_2502.x, x_2502.y, x_2502.z));
          let x_2507 : f32 = u_xlat50.x;
          u_xlat50.x = inverseSqrt(x_2507);
          let x_2510 : vec2<f32> = u_xlat50;
          let x_2512 : vec4<f32> = u_xlat13;
          let x_2514 : vec3<f32> = (vec3<f32>(x_2510.x, x_2510.x, x_2510.x) * vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
          let x_2515 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);
          let x_2517 : vec4<f32> = u_xlat13;
          u_xlat50.x = dot(abs(vec3<f32>(x_2517.x, x_2517.y, x_2517.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2524 : f32 = u_xlat50.x;
          u_xlat50.x = max(x_2524, 0.000001f);
          let x_2529 : f32 = u_xlat50.x;
          u_xlat50.x = (1.0f / x_2529);
          let x_2532 : vec2<f32> = u_xlat50;
          let x_2534 : vec4<f32> = u_xlat13;
          let x_2536 : vec3<f32> = (vec3<f32>(x_2532.x, x_2532.x, x_2532.x) * vec3<f32>(x_2534.z, x_2534.x, x_2534.y));
          let x_2537 : vec4<f32> = u_xlat14;
          u_xlat14 = vec4<f32>(x_2536.x, x_2536.y, x_2536.z, x_2537.w);
          let x_2540 : f32 = u_xlat14.x;
          u_xlat14.x = -(x_2540);
          let x_2544 : f32 = u_xlat14.x;
          u_xlat14.x = clamp(x_2544, 0.0f, 1.0f);
          let x_2548 : vec4<f32> = u_xlat14;
          let x_2551 : vec4<bool> = (vec4<f32>(x_2548.y, x_2548.z, x_2548.y, x_2548.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb54 = vec2<bool>(x_2551.x, x_2551.y);
          let x_2555 : bool = u_xlatb54.x;
          if (x_2555) {
            let x_2560 : f32 = u_xlat14.x;
            x_2556 = x_2560;
          } else {
            let x_2563 : f32 = u_xlat14.x;
            x_2556 = -(x_2563);
          }
          let x_2565 : f32 = x_2556;
          u_xlat54.x = x_2565;
          let x_2568 : bool = u_xlatb54.y;
          if (x_2568) {
            let x_2573 : f32 = u_xlat14.x;
            x_2569 = x_2573;
          } else {
            let x_2576 : f32 = u_xlat14.x;
            x_2569 = -(x_2576);
          }
          let x_2578 : f32 = x_2569;
          u_xlat54.y = x_2578;
          let x_2580 : vec4<f32> = u_xlat13;
          let x_2582 : vec2<f32> = u_xlat50;
          let x_2585 : vec2<f32> = u_xlat54;
          u_xlat50 = ((vec2<f32>(x_2580.x, x_2580.y) * vec2<f32>(x_2582.x, x_2582.x)) + x_2585);
          let x_2587 : vec2<f32> = u_xlat50;
          u_xlat50 = ((x_2587 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2590 : vec2<f32> = u_xlat50;
          u_xlat50 = clamp(x_2590, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2594 : u32 = u_xlatu67;
          let x_2597 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2594)];
          let x_2599 : vec2<f32> = u_xlat50;
          let x_2601 : u32 = u_xlatu67;
          let x_2604 : vec4<f32> = x_2255.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2601)];
          let x_2606 : vec2<f32> = ((vec2<f32>(x_2597.x, x_2597.y) * x_2599) + vec2<f32>(x_2604.z, x_2604.w));
          let x_2607 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2606.x, x_2606.y, x_2607.z, x_2607.w);
        }
      }
      let x_2614 : vec4<f32> = u_xlat12;
      let x_2617 : f32 = x_44.x_GlobalMipBias.x;
      let x_2618 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2614.x, x_2614.y), x_2617);
      u_xlat12 = x_2618;
      let x_2620 : bool = u_xlatb8.y;
      if (x_2620) {
        let x_2625 : f32 = u_xlat12.w;
        x_2621 = x_2625;
      } else {
        let x_2628 : f32 = u_xlat12.x;
        x_2621 = x_2628;
      }
      let x_2629 : f32 = x_2621;
      u_xlat50.x = x_2629;
      let x_2632 : bool = u_xlatb8.x;
      if (x_2632) {
        let x_2636 : vec4<f32> = u_xlat12;
        x_2633 = vec3<f32>(x_2636.x, x_2636.y, x_2636.z);
      } else {
        let x_2639 : vec2<f32> = u_xlat50;
        x_2633 = vec3<f32>(x_2639.x, x_2639.x, x_2639.x);
      }
      let x_2641 : vec3<f32> = x_2633;
      let x_2642 : vec4<f32> = u_xlat12;
      u_xlat12 = vec4<f32>(x_2641.x, x_2641.y, x_2641.z, x_2642.w);
    } else {
      u_xlat12.x = 1.0f;
      u_xlat12.y = 1.0f;
      u_xlat12.z = 1.0f;
    }
    let x_2648 : vec4<f32> = u_xlat12;
    let x_2650 : u32 = u_xlatu67;
    let x_2653 : vec4<f32> = x_2135.x_AdditionalLightsColor[bitcast<i32>(x_2650)];
    let x_2655 : vec3<f32> = (vec3<f32>(x_2648.x, x_2648.y, x_2648.z) * vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
    let x_2656 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2655.x, x_2655.y, x_2655.z, x_2656.w);
    let x_2658 : f32 = u_xlat48;
    let x_2660 : vec4<f32> = u_xlat12;
    let x_2662 : vec3<f32> = (vec3<f32>(x_2658, x_2658, x_2658) * vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
    let x_2663 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2662.x, x_2662.y, x_2662.z, x_2663.w);
    let x_2665 : vec3<f32> = u_xlat4;
    let x_2666 : vec4<f32> = u_xlat11;
    u_xlat67 = dot(x_2665, vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
    let x_2669 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2669, 0.0f, 1.0f);
    let x_2671 : f32 = u_xlat67;
    let x_2672 : f32 = u_xlat69;
    u_xlat67 = (x_2671 * x_2672);
    let x_2674 : f32 = u_xlat67;
    let x_2676 : vec4<f32> = u_xlat12;
    let x_2678 : vec3<f32> = (vec3<f32>(x_2674, x_2674, x_2674) * vec3<f32>(x_2676.x, x_2676.y, x_2676.z));
    let x_2679 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_2678.x, x_2678.y, x_2678.z, x_2679.w);
    let x_2681 : vec4<f32> = u_xlat10;
    let x_2683 : f32 = u_xlat70;
    let x_2686 : vec3<f32> = u_xlat3;
    let x_2687 : vec3<f32> = ((vec3<f32>(x_2681.x, x_2681.y, x_2681.z) * vec3<f32>(x_2683, x_2683, x_2683)) + x_2686);
    let x_2688 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2687.x, x_2687.y, x_2687.z, x_2688.w);
    let x_2690 : vec4<f32> = u_xlat10;
    let x_2692 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_2690.x, x_2690.y, x_2690.z), vec3<f32>(x_2692.x, x_2692.y, x_2692.z));
    let x_2695 : f32 = u_xlat67;
    u_xlat67 = max(x_2695, 1.17549435e-37f);
    let x_2697 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2697);
    let x_2699 : f32 = u_xlat67;
    let x_2701 : vec4<f32> = u_xlat10;
    let x_2703 : vec3<f32> = (vec3<f32>(x_2699, x_2699, x_2699) * vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
    let x_2704 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2703.x, x_2703.y, x_2703.z, x_2704.w);
    let x_2706 : vec3<f32> = u_xlat4;
    let x_2707 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(x_2706, vec3<f32>(x_2707.x, x_2707.y, x_2707.z));
    let x_2710 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2710, 0.0f, 1.0f);
    let x_2712 : vec4<f32> = u_xlat11;
    let x_2714 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2712.x, x_2712.y, x_2712.z), vec3<f32>(x_2714.x, x_2714.y, x_2714.z));
    let x_2717 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2717, 0.0f, 1.0f);
    let x_2719 : f32 = u_xlat67;
    let x_2720 : f32 = u_xlat67;
    u_xlat67 = (x_2719 * x_2720);
    let x_2722 : f32 = u_xlat67;
    let x_2724 : f32 = u_xlat9.x;
    u_xlat67 = ((x_2722 * x_2724) + 1.000010014f);
    let x_2727 : f32 = u_xlat69;
    let x_2728 : f32 = u_xlat69;
    u_xlat69 = (x_2727 * x_2728);
    let x_2730 : f32 = u_xlat67;
    let x_2731 : f32 = u_xlat67;
    u_xlat67 = (x_2730 * x_2731);
    let x_2733 : f32 = u_xlat69;
    u_xlat69 = max(x_2733, 0.100000001f);
    let x_2735 : f32 = u_xlat67;
    let x_2736 : f32 = u_xlat69;
    u_xlat67 = (x_2735 * x_2736);
    let x_2738 : f32 = u_xlat27;
    let x_2739 : f32 = u_xlat67;
    u_xlat67 = (x_2738 * x_2739);
    let x_2741 : f32 = u_xlat68;
    let x_2742 : f32 = u_xlat67;
    u_xlat67 = (x_2741 / x_2742);
    let x_2744 : vec4<f32> = u_xlat0;
    let x_2746 : f32 = u_xlat67;
    let x_2749 : vec3<f32> = u_xlat22;
    let x_2750 : vec3<f32> = ((vec3<f32>(x_2744.x, x_2744.y, x_2744.z) * vec3<f32>(x_2746, x_2746, x_2746)) + x_2749);
    let x_2751 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2750.x, x_2750.y, x_2750.z, x_2751.w);
    let x_2753 : vec4<f32> = u_xlat10;
    let x_2755 : vec4<f32> = u_xlat12;
    let x_2758 : vec3<f32> = u_xlat30;
    u_xlat30 = ((vec3<f32>(x_2753.x, x_2753.y, x_2753.z) * vec3<f32>(x_2755.x, x_2755.y, x_2755.z)) + x_2758);

    continuing {
      let x_2760 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2760 + bitcast<u32>(1i));
    }
  }
  let x_2762 : vec4<f32> = u_xlat5;
  let x_2764 : vec3<f32> = u_xlat6;
  let x_2767 : vec4<f32> = u_xlat7;
  let x_2769 : vec3<f32> = ((vec3<f32>(x_2762.x, x_2762.y, x_2762.z) * vec3<f32>(x_2764.x, x_2764.x, x_2764.x)) + vec3<f32>(x_2767.x, x_2767.y, x_2767.z));
  let x_2770 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2769.x, x_2769.y, x_2769.z, x_2770.w);
  let x_2772 : vec3<f32> = u_xlat30;
  let x_2773 : vec4<f32> = u_xlat0;
  let x_2775 : vec3<f32> = (x_2772 + vec3<f32>(x_2773.x, x_2773.y, x_2773.z));
  let x_2776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2775.x, x_2775.y, x_2775.z, x_2776.w);
  let x_2778 : vec3<f32> = u_xlat2;
  let x_2780 : vec4<f32> = x_57.x_EmissionColor;
  let x_2783 : vec4<f32> = u_xlat0;
  let x_2785 : vec3<f32> = ((x_2778 * vec3<f32>(x_2780.x, x_2780.y, x_2780.z)) + vec3<f32>(x_2783.x, x_2783.y, x_2783.z));
  let x_2786 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2785.x, x_2785.y, x_2785.z, x_2786.w);
  let x_2788 : f32 = u_xlat63;
  let x_2789 : f32 = u_xlat63;
  u_xlat63 = (x_2788 * -(x_2789));
  let x_2792 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2792);
  let x_2794 : vec4<f32> = u_xlat0;
  let x_2798 : vec4<f32> = x_44.unity_FogColor;
  let x_2801 : vec3<f32> = (vec3<f32>(x_2794.x, x_2794.y, x_2794.z) + -(vec3<f32>(x_2798.x, x_2798.y, x_2798.z)));
  let x_2802 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2801.x, x_2801.y, x_2801.z, x_2802.w);
  let x_2806 : f32 = u_xlat63;
  let x_2808 : vec4<f32> = u_xlat0;
  let x_2812 : vec4<f32> = x_44.unity_FogColor;
  let x_2814 : vec3<f32> = ((vec3<f32>(x_2806, x_2806, x_2806) * vec3<f32>(x_2808.x, x_2808.y, x_2808.z)) + vec3<f32>(x_2812.x, x_2812.y, x_2812.z));
  let x_2815 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2814.x, x_2814.y, x_2814.z, x_2815.w);
  let x_2820 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2820 == 1.0f);
  let x_2822 : bool = u_xlatb0;
  if (x_2822) {
    let x_2827 : f32 = u_xlat1.x;
    x_2823 = x_2827;
  } else {
    x_2823 = 1.0f;
  }
  let x_2829 : f32 = x_2823;
  SV_Target0.w = x_2829;
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

