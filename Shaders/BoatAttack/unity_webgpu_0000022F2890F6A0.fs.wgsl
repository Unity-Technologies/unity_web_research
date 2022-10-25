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

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_352 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1698 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1882 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2138 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2247 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb63 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat3 : vec3<f32>;
  var x_109 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat26 : f32;
  var u_xlat68 : f32;
  var u_xlat47 : f32;
  var u_xlatb6 : bool;
  var u_xlat6 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat48 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat17 : vec2<f32>;
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
  var u_xlatb48 : bool;
  var x_1652 : f32;
  var x_1781 : f32;
  var x_1792 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlatu65 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu70 : u32;
  var u_xlati72 : i32;
  var u_xlati70 : i32;
  var u_xlati73 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2540 : f32;
  var x_2553 : f32;
  var x_2605 : f32;
  var x_2616 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2796 : f32;
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
  u_xlatb63 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat65 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat65;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_106 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_106;
  let x_108 : bool = u_xlatb63;
  if (x_108) {
    let x_112 : vec3<f32> = u_xlat2;
    x_109 = x_112;
  } else {
    let x_114 : vec3<f32> = u_xlat3;
    x_109 = x_114;
  }
  let x_115 : vec3<f32> = x_109;
  u_xlat2 = x_115;
  let x_118 : vec3<f32> = vs_TEXCOORD2;
  let x_119 : vec3<f32> = vs_TEXCOORD2;
  u_xlat63 = dot(x_118, x_119);
  let x_121 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_121);
  let x_123 : f32 = u_xlat63;
  let x_125 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_123, x_123, x_123) * x_125);
  let x_128 : f32 = vs_TEXCOORD1.y;
  let x_130 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_128 * x_130);
  let x_133 : f32 = x_44.unity_MatrixV[0i].z;
  let x_135 : f32 = vs_TEXCOORD1.x;
  let x_137 : f32 = u_xlat63;
  u_xlat63 = ((x_133 * x_135) + x_137);
  let x_140 : f32 = x_44.unity_MatrixV[2i].z;
  let x_142 : f32 = vs_TEXCOORD1.z;
  let x_144 : f32 = u_xlat63;
  u_xlat63 = ((x_140 * x_142) + x_144);
  let x_146 : f32 = u_xlat63;
  let x_149 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_146 + x_149);
  let x_151 : f32 = u_xlat63;
  let x_155 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_151) + -(x_155));
  let x_158 : f32 = u_xlat63;
  u_xlat63 = max(x_158, 0.0f);
  let x_160 : f32 = u_xlat63;
  let x_163 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_160 * x_163);
  let x_172 : vec2<f32> = vs_TEXCOORD8;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_172, x_174);
  u_xlat4 = x_175;
  let x_181 : vec2<f32> = vs_TEXCOORD8;
  let x_183 : f32 = x_44.x_GlobalMipBias.x;
  let x_184 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_181, x_183);
  u_xlat5 = vec3<f32>(x_184.x, x_184.y, x_184.z);
  let x_186 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_186.x, x_186.y, x_186.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec3<f32> = u_xlat3;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat65 = dot(x_193, vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_197 : f32 = u_xlat65;
  u_xlat65 = (x_197 + 0.5f);
  let x_200 : f32 = u_xlat65;
  let x_202 : vec3<f32> = u_xlat5;
  let x_203 : vec3<f32> = (vec3<f32>(x_200, x_200, x_200) * x_202);
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : f32 = u_xlat4.w;
  u_xlat65 = max(x_207, 0.0001f);
  let x_210 : vec4<f32> = u_xlat4;
  let x_212 : f32 = u_xlat65;
  let x_214 : vec3<f32> = (vec3<f32>(x_210.x, x_210.y, x_210.z) / vec3<f32>(x_212, x_212, x_212));
  let x_215 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_219 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_220 : vec2<f32> = vec2<f32>(x_219.x, x_219.y);
  let x_224 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_220.x, x_220.y));
  let x_225 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_224.x, x_224.y, x_225.z);
  let x_227 : vec3<f32> = u_xlat5;
  let x_229 : vec4<f32> = hlslcc_FragCoord;
  let x_231 : vec2<f32> = (vec2<f32>(x_227.x, x_227.y) * vec2<f32>(x_229.x, x_229.y));
  let x_232 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_231.x, x_231.y, x_232.z);
  let x_235 : f32 = u_xlat5.y;
  let x_238 : f32 = x_44.x_ScaleBiasRt.x;
  let x_241 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat65 = ((x_235 * x_238) + x_241);
  let x_243 : f32 = u_xlat65;
  u_xlat5.z = (-(x_243) + 1.0f);
  let x_248 : f32 = x_57.x_Metallic;
  u_xlat65 = ((-(x_248) * 0.959999979f) + 0.959999979f);
  let x_254 : f32 = u_xlat65;
  let x_257 : f32 = x_57.x_Smoothness;
  u_xlat66 = (-(x_254) + x_257);
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : f32 = u_xlat65;
  u_xlat22 = (vec3<f32>(x_260.y, x_260.z, x_260.w) * vec3<f32>(x_262, x_262, x_262));
  let x_265 : vec4<f32> = u_xlat0;
  let x_268 : vec4<f32> = x_57.x_BaseColor;
  let x_273 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_268.x, x_268.y, x_268.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : f32 = x_57.x_Metallic;
  let x_279 : f32 = x_57.x_Metallic;
  let x_281 : f32 = x_57.x_Metallic;
  let x_282 : vec3<f32> = vec3<f32>(x_277, x_279, x_281);
  let x_287 : vec4<f32> = u_xlat0;
  let x_292 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_293 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : f32 = x_57.x_Smoothness;
  u_xlat65 = (-(x_296) + 1.0f);
  let x_300 : f32 = u_xlat65;
  let x_301 : f32 = u_xlat65;
  u_xlat67 = (x_300 * x_301);
  let x_303 : f32 = u_xlat67;
  u_xlat67 = max(x_303, 0.0078125f);
  let x_307 : f32 = u_xlat67;
  let x_308 : f32 = u_xlat67;
  u_xlat26 = (x_307 * x_308);
  let x_310 : f32 = u_xlat66;
  u_xlat66 = (x_310 + 1.0f);
  let x_312 : f32 = u_xlat66;
  u_xlat66 = clamp(x_312, 0.0f, 1.0f);
  let x_315 : f32 = u_xlat67;
  u_xlat68 = ((x_315 * 4.0f) + 2.0f);
  let x_325 : vec3<f32> = u_xlat5;
  let x_328 : f32 = x_44.x_GlobalMipBias.x;
  let x_329 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_325.x, x_325.z), x_328);
  u_xlat5.x = x_329.x;
  let x_334 : f32 = u_xlat5.x;
  u_xlat47 = (x_334 + -1.0f);
  let x_339 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_340 : f32 = u_xlat47;
  u_xlat47 = ((x_339 * x_340) + 1.0f);
  let x_344 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_344, 1.0f);
  let x_354 : f32 = x_352.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_354);
  let x_356 : bool = u_xlatb6;
  if (x_356) {
    let x_360 : f32 = x_352.x_MainLightShadowParams.y;
    u_xlatb6 = (x_360 == 1.0f);
    let x_362 : bool = u_xlatb6;
    if (x_362) {
      let x_367 : vec4<f32> = vs_TEXCOORD6;
      let x_370 : vec4<f32> = x_352.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_367.x, x_367.y, x_367.x, x_367.y) + x_370);
      let x_373 : vec4<f32> = u_xlat6;
      let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
      let x_376 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_374.x, x_374.y, x_376);
      let x_389 : vec3<f32> = txVec0;
      let x_391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_389.xy, x_389.z);
      u_xlat7.x = x_391;
      let x_394 : vec4<f32> = u_xlat6;
      let x_395 : vec2<f32> = vec2<f32>(x_394.z, x_394.w);
      let x_397 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_395.x, x_395.y, x_397);
      let x_404 : vec3<f32> = txVec1;
      let x_406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_404.xy, x_404.z);
      u_xlat7.y = x_406;
      let x_408 : vec4<f32> = vs_TEXCOORD6;
      let x_411 : vec4<f32> = x_352.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_408.x, x_408.y, x_408.x, x_408.y) + x_411);
      let x_414 : vec4<f32> = u_xlat6;
      let x_415 : vec2<f32> = vec2<f32>(x_414.x, x_414.y);
      let x_417 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_415.x, x_415.y, x_417);
      let x_424 : vec3<f32> = txVec2;
      let x_426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_424.xy, x_424.z);
      u_xlat7.z = x_426;
      let x_429 : vec4<f32> = u_xlat6;
      let x_430 : vec2<f32> = vec2<f32>(x_429.z, x_429.w);
      let x_432 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_430.x, x_430.y, x_432);
      let x_439 : vec3<f32> = txVec3;
      let x_441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_439.xy, x_439.z);
      u_xlat7.w = x_441;
      let x_443 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_443, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_453 : f32 = x_352.x_MainLightShadowParams.y;
      u_xlatb27.x = (x_453 == 2.0f);
      let x_457 : bool = u_xlatb27.x;
      if (x_457) {
        let x_461 : vec4<f32> = vs_TEXCOORD6;
        let x_464 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_468 : vec2<f32> = ((vec2<f32>(x_461.x, x_461.y) * vec2<f32>(x_464.z, x_464.w)) + vec2<f32>(0.5f, 0.5f));
        let x_469 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_468.x, x_468.y, x_469.z);
        let x_471 : vec3<f32> = u_xlat27;
        let x_473 : vec2<f32> = floor(vec2<f32>(x_471.x, x_471.y));
        let x_474 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_473.x, x_473.y, x_474.z);
        let x_476 : vec4<f32> = vs_TEXCOORD6;
        let x_479 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_482 : vec3<f32> = u_xlat27;
        let x_485 : vec2<f32> = ((vec2<f32>(x_476.x, x_476.y) * vec2<f32>(x_479.z, x_479.w)) + -(vec2<f32>(x_482.x, x_482.y)));
        let x_486 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
        let x_489 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_489.x, x_489.x, x_489.y, x_489.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_494 : vec4<f32> = u_xlat8;
        let x_496 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_494.x, x_494.x, x_494.z, x_494.z) * vec4<f32>(x_496.x, x_496.x, x_496.z, x_496.z));
        let x_501 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_501.y, x_501.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_506 : vec4<f32> = u_xlat9;
        let x_509 : vec4<f32> = u_xlat7;
        let x_512 : vec2<f32> = ((vec2<f32>(x_506.x, x_506.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_509.x, x_509.y)));
        let x_513 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_512.x, x_513.y, x_512.y, x_513.w);
        let x_515 : vec4<f32> = u_xlat7;
        let x_518 : vec2<f32> = (-(vec2<f32>(x_515.x, x_515.y)) + vec2<f32>(1.0f, 1.0f));
        let x_519 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_522 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_522.x, x_522.y), vec2<f32>(0.0f, 0.0f));
        let x_526 : vec2<f32> = u_xlat51;
        let x_528 : vec2<f32> = u_xlat51;
        let x_530 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_526) * x_528) + vec2<f32>(x_530.x, x_530.y));
        let x_533 : vec4<f32> = u_xlat7;
        let x_535 : vec2<f32> = max(vec2<f32>(x_533.x, x_533.y), vec2<f32>(0.0f, 0.0f));
        let x_536 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
        let x_538 : vec4<f32> = u_xlat7;
        let x_541 : vec4<f32> = u_xlat7;
        let x_544 : vec4<f32> = u_xlat8;
        let x_546 : vec2<f32> = ((-(vec2<f32>(x_538.x, x_538.y)) * vec2<f32>(x_541.x, x_541.y)) + vec2<f32>(x_544.y, x_544.w));
        let x_547 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
        let x_549 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_549 + vec2<f32>(1.0f, 1.0f));
        let x_551 : vec4<f32> = u_xlat7;
        let x_553 : vec2<f32> = (vec2<f32>(x_551.x, x_551.y) + vec2<f32>(1.0f, 1.0f));
        let x_554 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_557 : vec4<f32> = u_xlat8;
        let x_561 : vec2<f32> = (vec2<f32>(x_557.x, x_557.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_562 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
        let x_565 : vec4<f32> = u_xlat9;
        let x_567 : vec2<f32> = (vec2<f32>(x_565.x, x_565.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_568 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_570 : vec2<f32> = u_xlat51;
        let x_571 : vec2<f32> = (x_570 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_572 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
        let x_575 : vec4<f32> = u_xlat7;
        let x_577 : vec2<f32> = (vec2<f32>(x_575.x, x_575.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_578 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat8;
        let x_582 : vec2<f32> = (vec2<f32>(x_580.y, x_580.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_583 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_586 : f32 = u_xlat9.x;
        u_xlat10.z = x_586;
        let x_589 : f32 = u_xlat7.x;
        u_xlat10.w = x_589;
        let x_592 : f32 = u_xlat12.x;
        u_xlat11.z = x_592;
        let x_595 : f32 = u_xlat49.x;
        u_xlat11.w = x_595;
        let x_597 : vec4<f32> = u_xlat10;
        let x_599 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_597.z, x_597.w, x_597.x, x_597.z) + vec4<f32>(x_599.z, x_599.w, x_599.x, x_599.z));
        let x_603 : f32 = u_xlat10.y;
        u_xlat9.z = x_603;
        let x_606 : f32 = u_xlat7.y;
        u_xlat9.w = x_606;
        let x_609 : f32 = u_xlat11.y;
        u_xlat12.z = x_609;
        let x_612 : f32 = u_xlat49.y;
        u_xlat12.w = x_612;
        let x_614 : vec4<f32> = u_xlat9;
        let x_616 : vec4<f32> = u_xlat12;
        let x_618 : vec3<f32> = (vec3<f32>(x_614.z, x_614.y, x_614.w) + vec3<f32>(x_616.z, x_616.y, x_616.w));
        let x_619 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
        let x_621 : vec4<f32> = u_xlat11;
        let x_623 : vec4<f32> = u_xlat8;
        let x_625 : vec3<f32> = (vec3<f32>(x_621.x, x_621.z, x_621.w) / vec3<f32>(x_623.z, x_623.w, x_623.y));
        let x_626 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat9;
        let x_633 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_634 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
        let x_636 : vec4<f32> = u_xlat12;
        let x_638 : vec4<f32> = u_xlat7;
        let x_640 : vec3<f32> = (vec3<f32>(x_636.z, x_636.y, x_636.w) / vec3<f32>(x_638.x, x_638.y, x_638.z));
        let x_641 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
        let x_643 : vec4<f32> = u_xlat10;
        let x_645 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_646 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
        let x_648 : vec4<f32> = u_xlat9;
        let x_651 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_653 : vec3<f32> = (vec3<f32>(x_648.y, x_648.x, x_648.z) * vec3<f32>(x_651.x, x_651.x, x_651.x));
        let x_654 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
        let x_656 : vec4<f32> = u_xlat10;
        let x_659 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_661 : vec3<f32> = (vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(x_659.y, x_659.y, x_659.y));
        let x_662 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_665 : f32 = u_xlat10.x;
        u_xlat9.w = x_665;
        let x_667 : vec3<f32> = u_xlat27;
        let x_670 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_673 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_667.x, x_667.y, x_667.x, x_667.y) * vec4<f32>(x_670.x, x_670.y, x_670.x, x_670.y)) + vec4<f32>(x_673.y, x_673.w, x_673.x, x_673.w));
        let x_676 : vec3<f32> = u_xlat27;
        let x_679 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_682 : vec4<f32> = u_xlat9;
        let x_684 : vec2<f32> = ((vec2<f32>(x_676.x, x_676.y) * vec2<f32>(x_679.x, x_679.y)) + vec2<f32>(x_682.z, x_682.w));
        let x_685 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
        let x_688 : f32 = u_xlat9.y;
        u_xlat10.w = x_688;
        let x_690 : vec4<f32> = u_xlat10;
        let x_691 : vec2<f32> = vec2<f32>(x_690.y, x_690.z);
        let x_692 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_692.x, x_691.x, x_692.z, x_691.y);
        let x_695 : vec3<f32> = u_xlat27;
        let x_698 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_701 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_695.x, x_695.y, x_695.x, x_695.y) * vec4<f32>(x_698.x, x_698.y, x_698.x, x_698.y)) + vec4<f32>(x_701.x, x_701.y, x_701.z, x_701.y));
        let x_704 : vec3<f32> = u_xlat27;
        let x_707 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_710 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_704.x, x_704.y, x_704.x, x_704.y) * vec4<f32>(x_707.x, x_707.y, x_707.x, x_707.y)) + vec4<f32>(x_710.w, x_710.y, x_710.w, x_710.z));
        let x_713 : vec3<f32> = u_xlat27;
        let x_716 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_719 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_713.x, x_713.y, x_713.x, x_713.y) * vec4<f32>(x_716.x, x_716.y, x_716.x, x_716.y)) + vec4<f32>(x_719.x, x_719.w, x_719.z, x_719.w));
        let x_723 : vec4<f32> = u_xlat7;
        let x_725 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_723.x, x_723.x, x_723.x, x_723.y) * vec4<f32>(x_725.z, x_725.w, x_725.y, x_725.z));
        let x_729 : vec4<f32> = u_xlat7;
        let x_731 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_729.y, x_729.y, x_729.z, x_729.z) * x_731);
        let x_734 : f32 = u_xlat7.z;
        let x_736 : f32 = u_xlat8.y;
        u_xlat27.x = (x_734 * x_736);
        let x_740 : vec4<f32> = u_xlat11;
        let x_741 : vec2<f32> = vec2<f32>(x_740.x, x_740.y);
        let x_743 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_741.x, x_741.y, x_743);
        let x_751 : vec3<f32> = txVec4;
        let x_753 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_751.xy, x_751.z);
        u_xlat48 = x_753;
        let x_755 : vec4<f32> = u_xlat11;
        let x_756 : vec2<f32> = vec2<f32>(x_755.z, x_755.w);
        let x_758 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_766 : vec3<f32> = txVec5;
        let x_768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_766.xy, x_766.z);
        u_xlat69 = x_768;
        let x_769 : f32 = u_xlat69;
        let x_771 : f32 = u_xlat14.y;
        u_xlat69 = (x_769 * x_771);
        let x_774 : f32 = u_xlat14.x;
        let x_775 : f32 = u_xlat48;
        let x_777 : f32 = u_xlat69;
        u_xlat48 = ((x_774 * x_775) + x_777);
        let x_780 : vec4<f32> = u_xlat12;
        let x_781 : vec2<f32> = vec2<f32>(x_780.x, x_780.y);
        let x_783 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_781.x, x_781.y, x_783);
        let x_790 : vec3<f32> = txVec6;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_790.xy, x_790.z);
        u_xlat69 = x_792;
        let x_794 : f32 = u_xlat14.z;
        let x_795 : f32 = u_xlat69;
        let x_797 : f32 = u_xlat48;
        u_xlat48 = ((x_794 * x_795) + x_797);
        let x_800 : vec4<f32> = u_xlat10;
        let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
        let x_803 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec7;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_810.xy, x_810.z);
        u_xlat69 = x_812;
        let x_814 : f32 = u_xlat14.w;
        let x_815 : f32 = u_xlat69;
        let x_817 : f32 = u_xlat48;
        u_xlat48 = ((x_814 * x_815) + x_817);
        let x_820 : vec4<f32> = u_xlat13;
        let x_821 : vec2<f32> = vec2<f32>(x_820.x, x_820.y);
        let x_823 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec8;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_830.xy, x_830.z);
        u_xlat69 = x_832;
        let x_834 : f32 = u_xlat15.x;
        let x_835 : f32 = u_xlat69;
        let x_837 : f32 = u_xlat48;
        u_xlat48 = ((x_834 * x_835) + x_837);
        let x_840 : vec4<f32> = u_xlat13;
        let x_841 : vec2<f32> = vec2<f32>(x_840.z, x_840.w);
        let x_843 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_850 : vec3<f32> = txVec9;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_850.xy, x_850.z);
        u_xlat69 = x_852;
        let x_854 : f32 = u_xlat15.y;
        let x_855 : f32 = u_xlat69;
        let x_857 : f32 = u_xlat48;
        u_xlat48 = ((x_854 * x_855) + x_857);
        let x_860 : vec4<f32> = u_xlat10;
        let x_861 : vec2<f32> = vec2<f32>(x_860.z, x_860.w);
        let x_863 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_870 : vec3<f32> = txVec10;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_870.xy, x_870.z);
        u_xlat69 = x_872;
        let x_874 : f32 = u_xlat15.z;
        let x_875 : f32 = u_xlat69;
        let x_877 : f32 = u_xlat48;
        u_xlat48 = ((x_874 * x_875) + x_877);
        let x_880 : vec4<f32> = u_xlat9;
        let x_881 : vec2<f32> = vec2<f32>(x_880.x, x_880.y);
        let x_883 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec11;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_890.xy, x_890.z);
        u_xlat69 = x_892;
        let x_894 : f32 = u_xlat15.w;
        let x_895 : f32 = u_xlat69;
        let x_897 : f32 = u_xlat48;
        u_xlat48 = ((x_894 * x_895) + x_897);
        let x_900 : vec4<f32> = u_xlat9;
        let x_901 : vec2<f32> = vec2<f32>(x_900.z, x_900.w);
        let x_903 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec12;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_910.xy, x_910.z);
        u_xlat69 = x_912;
        let x_914 : f32 = u_xlat27.x;
        let x_915 : f32 = u_xlat69;
        let x_917 : f32 = u_xlat48;
        u_xlat6.x = ((x_914 * x_915) + x_917);
      } else {
        let x_921 : vec4<f32> = vs_TEXCOORD6;
        let x_924 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_927 : vec2<f32> = ((vec2<f32>(x_921.x, x_921.y) * vec2<f32>(x_924.z, x_924.w)) + vec2<f32>(0.5f, 0.5f));
        let x_928 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_927.x, x_927.y, x_928.z);
        let x_930 : vec3<f32> = u_xlat27;
        let x_932 : vec2<f32> = floor(vec2<f32>(x_930.x, x_930.y));
        let x_933 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_932.x, x_932.y, x_933.z);
        let x_935 : vec4<f32> = vs_TEXCOORD6;
        let x_938 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_941 : vec3<f32> = u_xlat27;
        let x_944 : vec2<f32> = ((vec2<f32>(x_935.x, x_935.y) * vec2<f32>(x_938.z, x_938.w)) + -(vec2<f32>(x_941.x, x_941.y)));
        let x_945 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
        let x_947 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_947.x, x_947.x, x_947.y, x_947.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_950 : vec4<f32> = u_xlat8;
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_950.x, x_950.x, x_950.z, x_950.z) * vec4<f32>(x_952.x, x_952.x, x_952.z, x_952.z));
        let x_955 : vec4<f32> = u_xlat9;
        let x_959 : vec2<f32> = (vec2<f32>(x_955.y, x_955.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_960 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_960.x, x_959.x, x_960.z, x_959.y);
        let x_962 : vec4<f32> = u_xlat9;
        let x_965 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_962.x, x_962.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_965.x, x_965.y)));
        let x_969 : vec4<f32> = u_xlat7;
        let x_972 : vec2<f32> = (-(vec2<f32>(x_969.x, x_969.y)) + vec2<f32>(1.0f, 1.0f));
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_972.x, x_973.y, x_972.y, x_973.w);
        let x_975 : vec4<f32> = u_xlat7;
        let x_977 : vec2<f32> = min(vec2<f32>(x_975.x, x_975.y), vec2<f32>(0.0f, 0.0f));
        let x_978 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
        let x_980 : vec4<f32> = u_xlat9;
        let x_983 : vec4<f32> = u_xlat9;
        let x_986 : vec4<f32> = u_xlat8;
        let x_988 : vec2<f32> = ((-(vec2<f32>(x_980.x, x_980.y)) * vec2<f32>(x_983.x, x_983.y)) + vec2<f32>(x_986.x, x_986.z));
        let x_989 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_988.x, x_989.y, x_988.y, x_989.w);
        let x_991 : vec4<f32> = u_xlat7;
        let x_993 : vec2<f32> = max(vec2<f32>(x_991.x, x_991.y), vec2<f32>(0.0f, 0.0f));
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_996 : vec4<f32> = u_xlat9;
        let x_999 : vec4<f32> = u_xlat9;
        let x_1002 : vec4<f32> = u_xlat8;
        let x_1004 : vec2<f32> = ((-(vec2<f32>(x_996.x, x_996.y)) * vec2<f32>(x_999.x, x_999.y)) + vec2<f32>(x_1002.y, x_1002.w));
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1005.x, x_1004.x, x_1005.z, x_1004.y);
        let x_1007 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1007 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1011 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1011 * 0.081632003f);
        let x_1015 : vec2<f32> = u_xlat49;
        let x_1018 : vec2<f32> = (vec2<f32>(x_1015.y, x_1015.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1019 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1021.x, x_1021.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1025 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1025 * 0.081632003f);
        let x_1029 : f32 = u_xlat11.y;
        u_xlat9.x = x_1029;
        let x_1031 : vec4<f32> = u_xlat7;
        let x_1038 : vec2<f32> = ((vec2<f32>(x_1031.x, x_1031.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1039 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1039.x, x_1038.x, x_1039.z, x_1038.y);
        let x_1041 : vec4<f32> = u_xlat7;
        let x_1045 : vec2<f32> = ((vec2<f32>(x_1041.x, x_1041.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1046 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1045.x, x_1046.y, x_1045.y, x_1046.w);
        let x_1049 : f32 = u_xlat49.x;
        u_xlat8.y = x_1049;
        let x_1052 : f32 = u_xlat10.y;
        u_xlat8.w = x_1052;
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1055 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1054 + x_1055);
        let x_1057 : vec4<f32> = u_xlat7;
        let x_1060 : vec2<f32> = ((vec2<f32>(x_1057.y, x_1057.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1061 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1061.x, x_1060.x, x_1061.z, x_1060.y);
        let x_1063 : vec4<f32> = u_xlat7;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1063.y, x_1063.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1067 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1067.w);
        let x_1070 : f32 = u_xlat49.y;
        u_xlat10.y = x_1070;
        let x_1072 : vec4<f32> = u_xlat10;
        let x_1073 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1072 + x_1073);
        let x_1075 : vec4<f32> = u_xlat8;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1075 / x_1076);
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1078 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1084 : vec4<f32> = u_xlat10;
        let x_1085 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1084 / x_1085);
        let x_1087 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1087 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1089 : vec4<f32> = u_xlat8;
        let x_1092 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1089.w, x_1089.x, x_1089.y, x_1089.z) * vec4<f32>(x_1092.x, x_1092.x, x_1092.x, x_1092.x));
        let x_1095 : vec4<f32> = u_xlat10;
        let x_1098 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1095.x, x_1095.w, x_1095.y, x_1095.z) * vec4<f32>(x_1098.y, x_1098.y, x_1098.y, x_1098.y));
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1102 : vec3<f32> = vec3<f32>(x_1101.y, x_1101.z, x_1101.w);
        let x_1103 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1102.x, x_1103.y, x_1102.y, x_1102.z);
        let x_1106 : f32 = u_xlat10.x;
        u_xlat11.y = x_1106;
        let x_1108 : vec3<f32> = u_xlat27;
        let x_1111 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y) * vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y)) + vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1114.y));
        let x_1117 : vec3<f32> = u_xlat27;
        let x_1120 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat11;
        let x_1125 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(x_1123.w, x_1123.y));
        let x_1126 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
        let x_1129 : f32 = u_xlat11.y;
        u_xlat8.y = x_1129;
        let x_1132 : f32 = u_xlat10.z;
        u_xlat11.y = x_1132;
        let x_1134 : vec3<f32> = u_xlat27;
        let x_1137 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y) * vec4<f32>(x_1137.x, x_1137.y, x_1137.x, x_1137.y)) + vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1140.y));
        let x_1144 : vec3<f32> = u_xlat27;
        let x_1147 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(x_1150.w, x_1150.y));
        let x_1154 : f32 = u_xlat11.y;
        u_xlat8.z = x_1154;
        let x_1156 : vec3<f32> = u_xlat27;
        let x_1159 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1156.x, x_1156.y, x_1156.x, x_1156.y) * vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y)) + vec4<f32>(x_1162.x, x_1162.y, x_1162.x, x_1162.z));
        let x_1166 : f32 = u_xlat10.w;
        u_xlat11.y = x_1166;
        let x_1169 : vec3<f32> = u_xlat27;
        let x_1172 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1169.x, x_1169.y, x_1169.x, x_1169.y) * vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y)) + vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.y));
        let x_1179 : vec3<f32> = u_xlat27;
        let x_1182 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat11;
        let x_1187 : vec2<f32> = ((vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(x_1182.x, x_1182.y)) + vec2<f32>(x_1185.w, x_1185.y));
        let x_1188 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1187.x, x_1187.y, x_1188.z);
        let x_1191 : f32 = u_xlat11.y;
        u_xlat8.w = x_1191;
        let x_1194 : vec3<f32> = u_xlat27;
        let x_1197 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(x_1197.x, x_1197.y)) + vec2<f32>(x_1200.x, x_1200.w));
        let x_1203 : vec4<f32> = u_xlat11;
        let x_1204 : vec3<f32> = vec3<f32>(x_1203.x, x_1203.z, x_1203.w);
        let x_1205 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1204.x, x_1205.y, x_1204.y, x_1204.z);
        let x_1207 : vec3<f32> = u_xlat27;
        let x_1210 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y) * vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y)) + vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1213.y));
        let x_1217 : vec3<f32> = u_xlat27;
        let x_1220 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1223 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1217.x, x_1217.y) * vec2<f32>(x_1220.x, x_1220.y)) + vec2<f32>(x_1223.w, x_1223.y));
        let x_1227 : f32 = u_xlat8.x;
        u_xlat10.x = x_1227;
        let x_1229 : vec3<f32> = u_xlat27;
        let x_1232 : vec4<f32> = x_352.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat10;
        let x_1237 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(x_1232.x, x_1232.y)) + vec2<f32>(x_1235.x, x_1235.y));
        let x_1238 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1237.x, x_1237.y, x_1238.z);
        let x_1241 : vec4<f32> = u_xlat7;
        let x_1243 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1241.x, x_1241.x, x_1241.x, x_1241.x) * x_1243);
        let x_1246 : vec4<f32> = u_xlat7;
        let x_1248 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1246.y, x_1246.y, x_1246.y, x_1246.y) * x_1248);
        let x_1251 : vec4<f32> = u_xlat7;
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1251.z, x_1251.z, x_1251.z, x_1251.z) * x_1253);
        let x_1255 : vec4<f32> = u_xlat7;
        let x_1257 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1255.w, x_1255.w, x_1255.w, x_1255.w) * x_1257);
        let x_1260 : vec4<f32> = u_xlat12;
        let x_1261 : vec2<f32> = vec2<f32>(x_1260.x, x_1260.y);
        let x_1263 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1261.x, x_1261.y, x_1263);
        let x_1270 : vec3<f32> = txVec13;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1270.xy, x_1270.z);
        u_xlat69 = x_1272;
        let x_1274 : vec4<f32> = u_xlat12;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
        let x_1277 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec14;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1284.xy, x_1284.z);
        u_xlat8.x = x_1286;
        let x_1289 : f32 = u_xlat8.x;
        let x_1291 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1289 * x_1291);
        let x_1295 : f32 = u_xlat18.x;
        let x_1296 : f32 = u_xlat69;
        let x_1299 : f32 = u_xlat8.x;
        u_xlat69 = ((x_1295 * x_1296) + x_1299);
        let x_1302 : vec4<f32> = u_xlat13;
        let x_1303 : vec2<f32> = vec2<f32>(x_1302.x, x_1302.y);
        let x_1305 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1303.x, x_1303.y, x_1305);
        let x_1312 : vec3<f32> = txVec15;
        let x_1314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1312.xy, x_1312.z);
        u_xlat8.x = x_1314;
        let x_1317 : f32 = u_xlat18.z;
        let x_1319 : f32 = u_xlat8.x;
        let x_1321 : f32 = u_xlat69;
        u_xlat69 = ((x_1317 * x_1319) + x_1321);
        let x_1324 : vec4<f32> = u_xlat15;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.x, x_1324.y);
        let x_1327 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec16;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat8.x = x_1336;
        let x_1339 : f32 = u_xlat18.w;
        let x_1341 : f32 = u_xlat8.x;
        let x_1343 : f32 = u_xlat69;
        u_xlat69 = ((x_1339 * x_1341) + x_1343);
        let x_1346 : vec4<f32> = u_xlat14;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.x, x_1346.y);
        let x_1349 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec17;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1356.xy, x_1356.z);
        u_xlat8.x = x_1358;
        let x_1361 : f32 = u_xlat19.x;
        let x_1363 : f32 = u_xlat8.x;
        let x_1365 : f32 = u_xlat69;
        u_xlat69 = ((x_1361 * x_1363) + x_1365);
        let x_1368 : vec4<f32> = u_xlat14;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.z, x_1368.w);
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec18;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat8.x = x_1380;
        let x_1383 : f32 = u_xlat19.y;
        let x_1385 : f32 = u_xlat8.x;
        let x_1387 : f32 = u_xlat69;
        u_xlat69 = ((x_1383 * x_1385) + x_1387);
        let x_1390 : vec2<f32> = u_xlat55;
        let x_1392 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec19;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1399.xy, x_1399.z);
        u_xlat8.x = x_1401;
        let x_1404 : f32 = u_xlat19.z;
        let x_1406 : f32 = u_xlat8.x;
        let x_1408 : f32 = u_xlat69;
        u_xlat69 = ((x_1404 * x_1406) + x_1408);
        let x_1411 : vec4<f32> = u_xlat15;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.z, x_1411.w);
        let x_1414 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec20;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1421.xy, x_1421.z);
        u_xlat8.x = x_1423;
        let x_1426 : f32 = u_xlat19.w;
        let x_1428 : f32 = u_xlat8.x;
        let x_1430 : f32 = u_xlat69;
        u_xlat69 = ((x_1426 * x_1428) + x_1430);
        let x_1433 : vec4<f32> = u_xlat16;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec21;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1443.xy, x_1443.z);
        u_xlat8.x = x_1445;
        let x_1448 : f32 = u_xlat20.x;
        let x_1450 : f32 = u_xlat8.x;
        let x_1452 : f32 = u_xlat69;
        u_xlat69 = ((x_1448 * x_1450) + x_1452);
        let x_1455 : vec4<f32> = u_xlat16;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.z, x_1455.w);
        let x_1458 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec22;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1465.xy, x_1465.z);
        u_xlat8.x = x_1467;
        let x_1470 : f32 = u_xlat20.y;
        let x_1472 : f32 = u_xlat8.x;
        let x_1474 : f32 = u_xlat69;
        u_xlat69 = ((x_1470 * x_1472) + x_1474);
        let x_1477 : vec3<f32> = u_xlat29;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.x, x_1477.y);
        let x_1480 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec23;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat8.x = x_1489;
        let x_1492 : f32 = u_xlat20.z;
        let x_1494 : f32 = u_xlat8.x;
        let x_1496 : f32 = u_xlat69;
        u_xlat69 = ((x_1492 * x_1494) + x_1496);
        let x_1499 : vec2<f32> = u_xlat17;
        let x_1501 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec24;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat8.x = x_1510;
        let x_1513 : f32 = u_xlat20.w;
        let x_1515 : f32 = u_xlat8.x;
        let x_1517 : f32 = u_xlat69;
        u_xlat69 = ((x_1513 * x_1515) + x_1517);
        let x_1520 : vec4<f32> = u_xlat11;
        let x_1521 : vec2<f32> = vec2<f32>(x_1520.x, x_1520.y);
        let x_1523 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec25;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1530.xy, x_1530.z);
        u_xlat8.x = x_1532;
        let x_1535 : f32 = u_xlat7.x;
        let x_1537 : f32 = u_xlat8.x;
        let x_1539 : f32 = u_xlat69;
        u_xlat69 = ((x_1535 * x_1537) + x_1539);
        let x_1542 : vec4<f32> = u_xlat11;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.z, x_1542.w);
        let x_1545 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec26;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1552.xy, x_1552.z);
        u_xlat7.x = x_1554;
        let x_1557 : f32 = u_xlat7.y;
        let x_1559 : f32 = u_xlat7.x;
        let x_1561 : f32 = u_xlat69;
        u_xlat69 = ((x_1557 * x_1559) + x_1561);
        let x_1564 : vec2<f32> = u_xlat52;
        let x_1566 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec27;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1573.xy, x_1573.z);
        u_xlat7.x = x_1575;
        let x_1578 : f32 = u_xlat7.z;
        let x_1580 : f32 = u_xlat7.x;
        let x_1582 : f32 = u_xlat69;
        u_xlat69 = ((x_1578 * x_1580) + x_1582);
        let x_1585 : vec3<f32> = u_xlat27;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.x, x_1585.y);
        let x_1588 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec28;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1595.xy, x_1595.z);
        u_xlat27.x = x_1597;
        let x_1600 : f32 = u_xlat7.w;
        let x_1602 : f32 = u_xlat27.x;
        let x_1604 : f32 = u_xlat69;
        u_xlat6.x = ((x_1600 * x_1602) + x_1604);
      }
    }
  } else {
    let x_1609 : vec4<f32> = vs_TEXCOORD6;
    let x_1610 : vec2<f32> = vec2<f32>(x_1609.x, x_1609.y);
    let x_1612 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1610.x, x_1610.y, x_1612);
    let x_1619 : vec3<f32> = txVec29;
    let x_1621 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1619.xy, x_1619.z);
    u_xlat6.x = x_1621;
  }
  let x_1624 : f32 = x_352.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1624) + 1.0f);
  let x_1629 : f32 = u_xlat6.x;
  let x_1631 : f32 = x_352.x_MainLightShadowParams.x;
  let x_1634 : f32 = u_xlat27.x;
  u_xlat6.x = ((x_1629 * x_1631) + x_1634);
  let x_1638 : f32 = vs_TEXCOORD6.z;
  u_xlatb27.x = (0.0f >= x_1638);
  let x_1643 : f32 = vs_TEXCOORD6.z;
  u_xlatb48 = (x_1643 >= 1.0f);
  let x_1645 : bool = u_xlatb48;
  let x_1647 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1645 | x_1647);
  let x_1651 : bool = u_xlatb27.x;
  if (x_1651) {
    x_1652 = 1.0f;
  } else {
    let x_1657 : f32 = u_xlat6.x;
    x_1652 = x_1657;
  }
  let x_1658 : f32 = x_1652;
  u_xlat6.x = x_1658;
  let x_1660 : vec3<f32> = vs_TEXCOORD1;
  let x_1662 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat27 = (x_1660 + -(x_1662));
  let x_1665 : vec3<f32> = u_xlat27;
  let x_1666 : vec3<f32> = u_xlat27;
  u_xlat27.x = dot(x_1665, x_1666);
  let x_1670 : f32 = u_xlat27.x;
  let x_1672 : f32 = x_352.x_MainLightShadowParams.z;
  let x_1675 : f32 = x_352.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1670 * x_1672) + x_1675);
  let x_1679 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1679, 0.0f, 1.0f);
  let x_1683 : f32 = u_xlat6.x;
  u_xlat48 = (-(x_1683) + 1.0f);
  let x_1687 : f32 = u_xlat27.x;
  let x_1688 : f32 = u_xlat48;
  let x_1691 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1687 * x_1688) + x_1691);
  let x_1700 : f32 = x_1698.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1700 == -1.0f));
  let x_1704 : bool = u_xlatb27.x;
  if (x_1704) {
    let x_1707 : vec3<f32> = vs_TEXCOORD1;
    let x_1710 : vec4<f32> = x_1698.x_MainLightWorldToLight[1i];
    let x_1712 : vec2<f32> = (vec2<f32>(x_1707.y, x_1707.y) * vec2<f32>(x_1710.x, x_1710.y));
    let x_1713 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1712.x, x_1712.y, x_1713.z);
    let x_1716 : vec4<f32> = x_1698.x_MainLightWorldToLight[0i];
    let x_1718 : vec3<f32> = vs_TEXCOORD1;
    let x_1721 : vec3<f32> = u_xlat27;
    let x_1723 : vec2<f32> = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(x_1718.x, x_1718.x)) + vec2<f32>(x_1721.x, x_1721.y));
    let x_1724 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1723.x, x_1723.y, x_1724.z);
    let x_1727 : vec4<f32> = x_1698.x_MainLightWorldToLight[2i];
    let x_1729 : vec3<f32> = vs_TEXCOORD1;
    let x_1732 : vec3<f32> = u_xlat27;
    let x_1734 : vec2<f32> = ((vec2<f32>(x_1727.x, x_1727.y) * vec2<f32>(x_1729.z, x_1729.z)) + vec2<f32>(x_1732.x, x_1732.y));
    let x_1735 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1734.x, x_1734.y, x_1735.z);
    let x_1737 : vec3<f32> = u_xlat27;
    let x_1740 : vec4<f32> = x_1698.x_MainLightWorldToLight[3i];
    let x_1742 : vec2<f32> = (vec2<f32>(x_1737.x, x_1737.y) + vec2<f32>(x_1740.x, x_1740.y));
    let x_1743 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1742.x, x_1742.y, x_1743.z);
    let x_1745 : vec3<f32> = u_xlat27;
    let x_1748 : vec2<f32> = ((vec2<f32>(x_1745.x, x_1745.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1749 : vec3<f32> = u_xlat27;
    u_xlat27 = vec3<f32>(x_1748.x, x_1748.y, x_1749.z);
    let x_1756 : vec3<f32> = u_xlat27;
    let x_1759 : f32 = x_44.x_GlobalMipBias.x;
    let x_1760 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1756.x, x_1756.y), x_1759);
    u_xlat7 = x_1760;
    let x_1762 : f32 = x_1698.x_MainLightCookieTextureFormat;
    let x_1764 : f32 = x_1698.x_MainLightCookieTextureFormat;
    let x_1766 : f32 = x_1698.x_MainLightCookieTextureFormat;
    let x_1768 : f32 = x_1698.x_MainLightCookieTextureFormat;
    let x_1769 : vec4<f32> = vec4<f32>(x_1762, x_1764, x_1766, x_1768);
    let x_1777 : vec4<bool> = (vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1769.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1777.x, x_1777.y);
    let x_1780 : bool = u_xlatb27.y;
    if (x_1780) {
      let x_1785 : f32 = u_xlat7.w;
      x_1781 = x_1785;
    } else {
      let x_1788 : f32 = u_xlat7.x;
      x_1781 = x_1788;
    }
    let x_1789 : f32 = x_1781;
    u_xlat48 = x_1789;
    let x_1791 : bool = u_xlatb27.x;
    if (x_1791) {
      let x_1795 : vec4<f32> = u_xlat7;
      x_1792 = vec3<f32>(x_1795.x, x_1795.y, x_1795.z);
    } else {
      let x_1798 : f32 = u_xlat48;
      x_1792 = vec3<f32>(x_1798, x_1798, x_1798);
    }
    let x_1800 : vec3<f32> = x_1792;
    u_xlat27 = x_1800;
  } else {
    u_xlat27.x = 1.0f;
    u_xlat27.y = 1.0f;
    u_xlat27.z = 1.0f;
  }
  let x_1805 : vec3<f32> = u_xlat27;
  let x_1807 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat27 = (x_1805 * vec3<f32>(x_1807.x, x_1807.y, x_1807.z));
  let x_1810 : f32 = u_xlat47;
  let x_1812 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_1810, x_1810, x_1810) * x_1812);
  let x_1814 : vec3<f32> = u_xlat2;
  let x_1816 : vec3<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1814), x_1816);
  let x_1820 : f32 = u_xlat7.x;
  let x_1822 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1820 + x_1822);
  let x_1825 : vec3<f32> = u_xlat3;
  let x_1826 : vec4<f32> = u_xlat7;
  let x_1830 : vec3<f32> = u_xlat2;
  let x_1832 : vec3<f32> = ((x_1825 * -(vec3<f32>(x_1826.x, x_1826.x, x_1826.x))) + -(x_1830));
  let x_1833 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
  let x_1836 : vec3<f32> = u_xlat3;
  let x_1837 : vec3<f32> = u_xlat2;
  u_xlat70 = dot(x_1836, x_1837);
  let x_1839 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1839, 0.0f, 1.0f);
  let x_1841 : f32 = u_xlat70;
  u_xlat70 = (-(x_1841) + 1.0f);
  let x_1844 : f32 = u_xlat70;
  let x_1845 : f32 = u_xlat70;
  u_xlat70 = (x_1844 * x_1845);
  let x_1847 : f32 = u_xlat70;
  let x_1848 : f32 = u_xlat70;
  u_xlat70 = (x_1847 * x_1848);
  let x_1850 : f32 = u_xlat65;
  u_xlat8.x = ((-(x_1850) * 0.699999988f) + 1.700000048f);
  let x_1857 : f32 = u_xlat65;
  let x_1859 : f32 = u_xlat8.x;
  u_xlat65 = (x_1857 * x_1859);
  let x_1861 : f32 = u_xlat65;
  u_xlat65 = (x_1861 * 6.0f);
  let x_1872 : vec4<f32> = u_xlat7;
  let x_1874 : f32 = u_xlat65;
  let x_1875 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1872.x, x_1872.y, x_1872.z), x_1874);
  u_xlat8 = x_1875;
  let x_1877 : f32 = u_xlat8.w;
  u_xlat65 = (x_1877 + -1.0f);
  let x_1884 : f32 = x_1882.unity_SpecCube0_HDR.w;
  let x_1885 : f32 = u_xlat65;
  u_xlat65 = ((x_1884 * x_1885) + 1.0f);
  let x_1888 : f32 = u_xlat65;
  u_xlat65 = max(x_1888, 0.0f);
  let x_1890 : f32 = u_xlat65;
  u_xlat65 = log2(x_1890);
  let x_1892 : f32 = u_xlat65;
  let x_1894 : f32 = x_1882.unity_SpecCube0_HDR.y;
  u_xlat65 = (x_1892 * x_1894);
  let x_1896 : f32 = u_xlat65;
  u_xlat65 = exp2(x_1896);
  let x_1898 : f32 = u_xlat65;
  let x_1900 : f32 = x_1882.unity_SpecCube0_HDR.x;
  u_xlat65 = (x_1898 * x_1900);
  let x_1902 : vec4<f32> = u_xlat8;
  let x_1904 : f32 = u_xlat65;
  let x_1906 : vec3<f32> = (vec3<f32>(x_1902.x, x_1902.y, x_1902.z) * vec3<f32>(x_1904, x_1904, x_1904));
  let x_1907 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
  let x_1909 : f32 = u_xlat67;
  let x_1911 : f32 = u_xlat67;
  let x_1915 : vec2<f32> = ((vec2<f32>(x_1909, x_1909) * vec2<f32>(x_1911, x_1911)) + vec2<f32>(-1.0f, 1.0f));
  let x_1916 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1915.x, x_1915.y, x_1916.z, x_1916.w);
  let x_1919 : f32 = u_xlat8.y;
  u_xlat65 = (1.0f / x_1919);
  let x_1921 : vec4<f32> = u_xlat0;
  let x_1924 : f32 = u_xlat66;
  u_xlat29 = (-(vec3<f32>(x_1921.x, x_1921.y, x_1921.z)) + vec3<f32>(x_1924, x_1924, x_1924));
  let x_1927 : f32 = u_xlat70;
  let x_1929 : vec3<f32> = u_xlat29;
  let x_1931 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_1927, x_1927, x_1927) * x_1929) + vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
  let x_1934 : f32 = u_xlat65;
  let x_1936 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1934, x_1934, x_1934) * x_1936);
  let x_1938 : vec4<f32> = u_xlat7;
  let x_1940 : vec3<f32> = u_xlat29;
  let x_1941 : vec3<f32> = (vec3<f32>(x_1938.x, x_1938.y, x_1938.z) * x_1940);
  let x_1942 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1941.x, x_1941.y, x_1941.z, x_1942.w);
  let x_1944 : vec4<f32> = u_xlat4;
  let x_1946 : vec3<f32> = u_xlat22;
  let x_1948 : vec4<f32> = u_xlat7;
  let x_1950 : vec3<f32> = ((vec3<f32>(x_1944.x, x_1944.y, x_1944.z) * x_1946) + vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  let x_1954 : f32 = u_xlat6.x;
  let x_1957 : f32 = x_1882.unity_LightData.z;
  u_xlat65 = (x_1954 * x_1957);
  let x_1959 : vec3<f32> = u_xlat3;
  let x_1961 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat66 = dot(x_1959, vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1964, 0.0f, 1.0f);
  let x_1966 : f32 = u_xlat65;
  let x_1967 : f32 = u_xlat66;
  u_xlat65 = (x_1966 * x_1967);
  let x_1969 : f32 = u_xlat65;
  let x_1971 : vec3<f32> = u_xlat27;
  let x_1972 : vec3<f32> = (vec3<f32>(x_1969, x_1969, x_1969) * x_1971);
  let x_1973 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
  let x_1975 : vec3<f32> = u_xlat2;
  let x_1977 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1979 : vec3<f32> = (x_1975 + vec3<f32>(x_1977.x, x_1977.y, x_1977.z));
  let x_1980 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1980.w);
  let x_1982 : vec4<f32> = u_xlat7;
  let x_1984 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_1982.x, x_1982.y, x_1982.z), vec3<f32>(x_1984.x, x_1984.y, x_1984.z));
  let x_1987 : f32 = u_xlat65;
  u_xlat65 = max(x_1987, 1.17549435e-37f);
  let x_1990 : f32 = u_xlat65;
  u_xlat65 = inverseSqrt(x_1990);
  let x_1992 : f32 = u_xlat65;
  let x_1994 : vec4<f32> = u_xlat7;
  let x_1996 : vec3<f32> = (vec3<f32>(x_1992, x_1992, x_1992) * vec3<f32>(x_1994.x, x_1994.y, x_1994.z));
  let x_1997 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1996.x, x_1996.y, x_1996.z, x_1997.w);
  let x_1999 : vec3<f32> = u_xlat3;
  let x_2000 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(x_1999, vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
  let x_2003 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2003, 0.0f, 1.0f);
  let x_2006 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2008 : vec4<f32> = u_xlat7;
  u_xlat66 = dot(vec3<f32>(x_2006.x, x_2006.y, x_2006.z), vec3<f32>(x_2008.x, x_2008.y, x_2008.z));
  let x_2011 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2011, 0.0f, 1.0f);
  let x_2013 : f32 = u_xlat65;
  let x_2014 : f32 = u_xlat65;
  u_xlat65 = (x_2013 * x_2014);
  let x_2016 : f32 = u_xlat65;
  let x_2018 : f32 = u_xlat8.x;
  u_xlat65 = ((x_2016 * x_2018) + 1.000010014f);
  let x_2022 : f32 = u_xlat66;
  let x_2023 : f32 = u_xlat66;
  u_xlat66 = (x_2022 * x_2023);
  let x_2025 : f32 = u_xlat65;
  let x_2026 : f32 = u_xlat65;
  u_xlat65 = (x_2025 * x_2026);
  let x_2028 : f32 = u_xlat66;
  u_xlat66 = max(x_2028, 0.100000001f);
  let x_2031 : f32 = u_xlat65;
  let x_2032 : f32 = u_xlat66;
  u_xlat65 = (x_2031 * x_2032);
  let x_2034 : f32 = u_xlat68;
  let x_2035 : f32 = u_xlat65;
  u_xlat65 = (x_2034 * x_2035);
  let x_2037 : f32 = u_xlat26;
  let x_2038 : f32 = u_xlat65;
  u_xlat65 = (x_2037 / x_2038);
  let x_2040 : vec4<f32> = u_xlat0;
  let x_2042 : f32 = u_xlat65;
  let x_2045 : vec3<f32> = u_xlat22;
  let x_2046 : vec3<f32> = ((vec3<f32>(x_2040.x, x_2040.y, x_2040.z) * vec3<f32>(x_2042, x_2042, x_2042)) + x_2045);
  let x_2047 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
  let x_2049 : vec4<f32> = u_xlat6;
  let x_2051 : vec4<f32> = u_xlat7;
  let x_2053 : vec3<f32> = (vec3<f32>(x_2049.x, x_2049.y, x_2049.z) * vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
  let x_2054 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2053.x, x_2053.y, x_2053.z, x_2054.w);
  let x_2057 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2059 : f32 = x_1882.unity_LightData.y;
  u_xlat65 = min(x_2057, x_2059);
  let x_2063 : f32 = u_xlat65;
  u_xlatu65 = bitcast<u32>(i32(x_2063));
  let x_2068 : f32 = x_1698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2070 : f32 = x_1698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2072 : f32 = x_1698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2074 : f32 = x_1698.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2075 : vec4<f32> = vec4<f32>(x_2068, x_2070, x_2072, x_2074);
  let x_2081 : vec4<bool> = (vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2075.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2081.x, x_2081.y);
  u_xlat29.x = 0.0f;
  u_xlat29.y = 0.0f;
  u_xlat29.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2092 : u32 = u_xlatu_loop_1;
    let x_2093 : u32 = u_xlatu65;
    if ((x_2092 < x_2093)) {
    } else {
      break;
    }
    let x_2096 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2096 >> 2u);
    let x_2100 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2100 & 3u));
    let x_2103 : u32 = u_xlatu67;
    let x_2106 : vec4<f32> = x_1882.unity_LightIndices[bitcast<i32>(x_2103)];
    let x_2116 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2121 : vec4<u32> = indexable[x_2116];
    u_xlat67 = dot(x_2106, bitcast<vec4<f32>>(x_2121));
    let x_2124 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2124));
    let x_2127 : vec3<f32> = vs_TEXCOORD1;
    let x_2139 : u32 = u_xlatu67;
    let x_2142 : vec4<f32> = x_2138.x_AdditionalLightsPosition[bitcast<i32>(x_2139)];
    let x_2145 : u32 = u_xlatu67;
    let x_2148 : vec4<f32> = x_2138.x_AdditionalLightsPosition[bitcast<i32>(x_2145)];
    let x_2150 : vec3<f32> = ((-(x_2127) * vec3<f32>(x_2142.w, x_2142.w, x_2142.w)) + vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
    let x_2151 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2151.w);
    let x_2153 : vec4<f32> = u_xlat9;
    let x_2155 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2153.x, x_2153.y, x_2153.z), vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
    let x_2158 : f32 = u_xlat69;
    u_xlat69 = max(x_2158, 6.10351562e-05f);
    let x_2161 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2161);
    let x_2164 : vec2<f32> = u_xlat49;
    let x_2166 : vec4<f32> = u_xlat9;
    let x_2168 : vec3<f32> = (vec3<f32>(x_2164.x, x_2164.x, x_2164.x) * vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
    let x_2169 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
    let x_2171 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2171);
    let x_2173 : f32 = u_xlat69;
    let x_2174 : u32 = u_xlatu67;
    let x_2177 : f32 = x_2138.x_AdditionalLightsAttenuation[bitcast<i32>(x_2174)].x;
    u_xlat69 = (x_2173 * x_2177);
    let x_2179 : f32 = u_xlat69;
    let x_2181 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2179) * x_2181) + 1.0f);
    let x_2184 : f32 = u_xlat69;
    u_xlat69 = max(x_2184, 0.0f);
    let x_2186 : f32 = u_xlat69;
    let x_2187 : f32 = u_xlat69;
    u_xlat69 = (x_2186 * x_2187);
    let x_2189 : f32 = u_xlat69;
    let x_2190 : f32 = u_xlat70;
    u_xlat69 = (x_2189 * x_2190);
    let x_2192 : u32 = u_xlatu67;
    let x_2195 : vec4<f32> = x_2138.x_AdditionalLightsSpotDir[bitcast<i32>(x_2192)];
    let x_2197 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2195.x, x_2195.y, x_2195.z), vec3<f32>(x_2197.x, x_2197.y, x_2197.z));
    let x_2200 : f32 = u_xlat70;
    let x_2201 : u32 = u_xlatu67;
    let x_2204 : f32 = x_2138.x_AdditionalLightsAttenuation[bitcast<i32>(x_2201)].z;
    let x_2206 : u32 = u_xlatu67;
    let x_2209 : f32 = x_2138.x_AdditionalLightsAttenuation[bitcast<i32>(x_2206)].w;
    u_xlat70 = ((x_2200 * x_2204) + x_2209);
    let x_2211 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2211, 0.0f, 1.0f);
    let x_2213 : f32 = u_xlat70;
    let x_2214 : f32 = u_xlat70;
    u_xlat70 = (x_2213 * x_2214);
    let x_2216 : f32 = u_xlat69;
    let x_2217 : f32 = u_xlat70;
    u_xlat69 = (x_2216 * x_2217);
    let x_2220 : u32 = u_xlatu67;
    u_xlatu70 = (x_2220 >> 5u);
    let x_2223 : u32 = u_xlatu67;
    u_xlati72 = (1i << bitcast<u32>((bitcast<i32>(x_2223) & 31i)));
    let x_2229 : i32 = u_xlati72;
    let x_2231 : u32 = u_xlatu70;
    let x_2234 : f32 = x_1698.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2231)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2229) & bitcast<u32>(x_2234)));
    let x_2238 : i32 = u_xlati70;
    if ((x_2238 != 0i)) {
      let x_2248 : u32 = u_xlatu67;
      let x_2251 : f32 = x_2247.x_AdditionalLightsLightTypes[bitcast<i32>(x_2248)].el;
      u_xlati70 = i32(x_2251);
      let x_2253 : i32 = u_xlati70;
      u_xlati72 = select(1i, 0i, (x_2253 != 0i));
      let x_2257 : u32 = u_xlatu67;
      u_xlati73 = (bitcast<i32>(x_2257) << bitcast<u32>(2i));
      let x_2260 : i32 = u_xlati72;
      if ((x_2260 != 0i)) {
        let x_2264 : vec3<f32> = vs_TEXCOORD1;
        let x_2266 : i32 = u_xlati73;
        let x_2269 : i32 = u_xlati73;
        let x_2273 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2266 + 1i) / 4i)][((x_2269 + 1i) % 4i)];
        let x_2275 : vec3<f32> = (vec3<f32>(x_2264.y, x_2264.y, x_2264.y) * vec3<f32>(x_2273.x, x_2273.y, x_2273.w));
        let x_2276 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
        let x_2278 : i32 = u_xlati73;
        let x_2280 : i32 = u_xlati73;
        let x_2283 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[(x_2278 / 4i)][(x_2280 % 4i)];
        let x_2285 : vec3<f32> = vs_TEXCOORD1;
        let x_2288 : vec4<f32> = u_xlat11;
        let x_2290 : vec3<f32> = ((vec3<f32>(x_2283.x, x_2283.y, x_2283.w) * vec3<f32>(x_2285.x, x_2285.x, x_2285.x)) + vec3<f32>(x_2288.x, x_2288.y, x_2288.z));
        let x_2291 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2290.x, x_2290.y, x_2290.z, x_2291.w);
        let x_2293 : i32 = u_xlati73;
        let x_2296 : i32 = u_xlati73;
        let x_2300 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2293 + 2i) / 4i)][((x_2296 + 2i) % 4i)];
        let x_2302 : vec3<f32> = vs_TEXCOORD1;
        let x_2305 : vec4<f32> = u_xlat11;
        let x_2307 : vec3<f32> = ((vec3<f32>(x_2300.x, x_2300.y, x_2300.w) * vec3<f32>(x_2302.z, x_2302.z, x_2302.z)) + vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
        let x_2308 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
        let x_2310 : vec4<f32> = u_xlat11;
        let x_2312 : i32 = u_xlati73;
        let x_2315 : i32 = u_xlati73;
        let x_2319 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2312 + 3i) / 4i)][((x_2315 + 3i) % 4i)];
        let x_2321 : vec3<f32> = (vec3<f32>(x_2310.x, x_2310.y, x_2310.z) + vec3<f32>(x_2319.x, x_2319.y, x_2319.w));
        let x_2322 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2321.x, x_2321.y, x_2321.z, x_2322.w);
        let x_2324 : vec4<f32> = u_xlat11;
        let x_2326 : vec4<f32> = u_xlat11;
        let x_2328 : vec2<f32> = (vec2<f32>(x_2324.x, x_2324.y) / vec2<f32>(x_2326.z, x_2326.z));
        let x_2329 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2328.x, x_2328.y, x_2329.z, x_2329.w);
        let x_2331 : vec4<f32> = u_xlat11;
        let x_2334 : vec2<f32> = ((vec2<f32>(x_2331.x, x_2331.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2335 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2334.x, x_2334.y, x_2335.z, x_2335.w);
        let x_2337 : vec4<f32> = u_xlat11;
        let x_2341 : vec2<f32> = clamp(vec2<f32>(x_2337.x, x_2337.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2342 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2341.x, x_2341.y, x_2342.z, x_2342.w);
        let x_2344 : u32 = u_xlatu67;
        let x_2347 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2344)];
        let x_2349 : vec4<f32> = u_xlat11;
        let x_2352 : u32 = u_xlatu67;
        let x_2355 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2352)];
        let x_2357 : vec2<f32> = ((vec2<f32>(x_2347.x, x_2347.y) * vec2<f32>(x_2349.x, x_2349.y)) + vec2<f32>(x_2355.z, x_2355.w));
        let x_2358 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2357.x, x_2357.y, x_2358.z, x_2358.w);
      } else {
        let x_2362 : i32 = u_xlati70;
        u_xlatb70 = (x_2362 == 1i);
        let x_2364 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2364);
        let x_2366 : i32 = u_xlati70;
        if ((x_2366 != 0i)) {
          let x_2371 : vec3<f32> = vs_TEXCOORD1;
          let x_2373 : i32 = u_xlati73;
          let x_2376 : i32 = u_xlati73;
          let x_2380 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2373 + 1i) / 4i)][((x_2376 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2371.y, x_2371.y) * vec2<f32>(x_2380.x, x_2380.y));
          let x_2383 : i32 = u_xlati73;
          let x_2385 : i32 = u_xlati73;
          let x_2388 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[(x_2383 / 4i)][(x_2385 % 4i)];
          let x_2390 : vec3<f32> = vs_TEXCOORD1;
          let x_2393 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2388.x, x_2388.y) * vec2<f32>(x_2390.x, x_2390.x)) + x_2393);
          let x_2395 : i32 = u_xlati73;
          let x_2398 : i32 = u_xlati73;
          let x_2402 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2395 + 2i) / 4i)][((x_2398 + 2i) % 4i)];
          let x_2404 : vec3<f32> = vs_TEXCOORD1;
          let x_2407 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2402.x, x_2402.y) * vec2<f32>(x_2404.z, x_2404.z)) + x_2407);
          let x_2409 : vec2<f32> = u_xlat53;
          let x_2410 : i32 = u_xlati73;
          let x_2413 : i32 = u_xlati73;
          let x_2417 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2410 + 3i) / 4i)][((x_2413 + 3i) % 4i)];
          u_xlat53 = (x_2409 + vec2<f32>(x_2417.x, x_2417.y));
          let x_2420 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2420 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2423 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2423);
          let x_2425 : u32 = u_xlatu67;
          let x_2428 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2425)];
          let x_2430 : vec2<f32> = u_xlat53;
          let x_2432 : u32 = u_xlatu67;
          let x_2435 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2432)];
          let x_2437 : vec2<f32> = ((vec2<f32>(x_2428.x, x_2428.y) * x_2430) + vec2<f32>(x_2435.z, x_2435.w));
          let x_2438 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2437.x, x_2437.y, x_2438.z, x_2438.w);
        } else {
          let x_2441 : vec3<f32> = vs_TEXCOORD1;
          let x_2443 : i32 = u_xlati73;
          let x_2446 : i32 = u_xlati73;
          let x_2450 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2443 + 1i) / 4i)][((x_2446 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2441.y, x_2441.y, x_2441.y, x_2441.y) * x_2450);
          let x_2452 : i32 = u_xlati73;
          let x_2454 : i32 = u_xlati73;
          let x_2457 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[(x_2452 / 4i)][(x_2454 % 4i)];
          let x_2458 : vec3<f32> = vs_TEXCOORD1;
          let x_2461 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2457 * vec4<f32>(x_2458.x, x_2458.x, x_2458.x, x_2458.x)) + x_2461);
          let x_2463 : i32 = u_xlati73;
          let x_2466 : i32 = u_xlati73;
          let x_2470 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2463 + 2i) / 4i)][((x_2466 + 2i) % 4i)];
          let x_2471 : vec3<f32> = vs_TEXCOORD1;
          let x_2474 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2470 * vec4<f32>(x_2471.z, x_2471.z, x_2471.z, x_2471.z)) + x_2474);
          let x_2476 : vec4<f32> = u_xlat12;
          let x_2477 : i32 = u_xlati73;
          let x_2480 : i32 = u_xlati73;
          let x_2484 : vec4<f32> = x_2247.x_AdditionalLightsWorldToLights[((x_2477 + 3i) / 4i)][((x_2480 + 3i) % 4i)];
          u_xlat12 = (x_2476 + x_2484);
          let x_2486 : vec4<f32> = u_xlat12;
          let x_2488 : vec4<f32> = u_xlat12;
          let x_2490 : vec3<f32> = (vec3<f32>(x_2486.x, x_2486.y, x_2486.z) / vec3<f32>(x_2488.w, x_2488.w, x_2488.w));
          let x_2491 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2490.x, x_2490.y, x_2490.z, x_2491.w);
          let x_2493 : vec4<f32> = u_xlat12;
          let x_2495 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2493.x, x_2493.y, x_2493.z), vec3<f32>(x_2495.x, x_2495.y, x_2495.z));
          let x_2498 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2498);
          let x_2500 : f32 = u_xlat70;
          let x_2502 : vec4<f32> = u_xlat12;
          let x_2504 : vec3<f32> = (vec3<f32>(x_2500, x_2500, x_2500) * vec3<f32>(x_2502.x, x_2502.y, x_2502.z));
          let x_2505 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2504.x, x_2504.y, x_2504.z, x_2505.w);
          let x_2507 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2507.x, x_2507.y, x_2507.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2512 : f32 = u_xlat70;
          u_xlat70 = max(x_2512, 0.000001f);
          let x_2515 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2515);
          let x_2517 : f32 = u_xlat70;
          let x_2519 : vec4<f32> = u_xlat12;
          let x_2521 : vec3<f32> = (vec3<f32>(x_2517, x_2517, x_2517) * vec3<f32>(x_2519.z, x_2519.x, x_2519.y));
          let x_2522 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2521.x, x_2521.y, x_2521.z, x_2522.w);
          let x_2525 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2525);
          let x_2529 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2529, 0.0f, 1.0f);
          let x_2533 : vec4<f32> = u_xlat13;
          let x_2536 : vec4<bool> = (vec4<f32>(x_2533.y, x_2533.z, x_2533.y, x_2533.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2536.x, x_2536.y);
          let x_2539 : bool = u_xlatb53.x;
          if (x_2539) {
            let x_2544 : f32 = u_xlat13.x;
            x_2540 = x_2544;
          } else {
            let x_2547 : f32 = u_xlat13.x;
            x_2540 = -(x_2547);
          }
          let x_2549 : f32 = x_2540;
          u_xlat53.x = x_2549;
          let x_2552 : bool = u_xlatb53.y;
          if (x_2552) {
            let x_2557 : f32 = u_xlat13.x;
            x_2553 = x_2557;
          } else {
            let x_2560 : f32 = u_xlat13.x;
            x_2553 = -(x_2560);
          }
          let x_2562 : f32 = x_2553;
          u_xlat53.y = x_2562;
          let x_2564 : vec4<f32> = u_xlat12;
          let x_2566 : f32 = u_xlat70;
          let x_2569 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2564.x, x_2564.y) * vec2<f32>(x_2566, x_2566)) + x_2569);
          let x_2571 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2571 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2574 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2574, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2578 : u32 = u_xlatu67;
          let x_2581 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2578)];
          let x_2583 : vec2<f32> = u_xlat53;
          let x_2585 : u32 = u_xlatu67;
          let x_2588 : vec4<f32> = x_2247.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2585)];
          let x_2590 : vec2<f32> = ((vec2<f32>(x_2581.x, x_2581.y) * x_2583) + vec2<f32>(x_2588.z, x_2588.w));
          let x_2591 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2590.x, x_2590.y, x_2591.z, x_2591.w);
        }
      }
      let x_2598 : vec4<f32> = u_xlat11;
      let x_2601 : f32 = x_44.x_GlobalMipBias.x;
      let x_2602 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2598.x, x_2598.y), x_2601);
      u_xlat11 = x_2602;
      let x_2604 : bool = u_xlatb7.y;
      if (x_2604) {
        let x_2609 : f32 = u_xlat11.w;
        x_2605 = x_2609;
      } else {
        let x_2612 : f32 = u_xlat11.x;
        x_2605 = x_2612;
      }
      let x_2613 : f32 = x_2605;
      u_xlat70 = x_2613;
      let x_2615 : bool = u_xlatb7.x;
      if (x_2615) {
        let x_2619 : vec4<f32> = u_xlat11;
        x_2616 = vec3<f32>(x_2619.x, x_2619.y, x_2619.z);
      } else {
        let x_2622 : f32 = u_xlat70;
        x_2616 = vec3<f32>(x_2622, x_2622, x_2622);
      }
      let x_2624 : vec3<f32> = x_2616;
      let x_2625 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2624.x, x_2624.y, x_2624.z, x_2625.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2631 : vec4<f32> = u_xlat11;
    let x_2633 : u32 = u_xlatu67;
    let x_2636 : vec4<f32> = x_2138.x_AdditionalLightsColor[bitcast<i32>(x_2633)];
    let x_2638 : vec3<f32> = (vec3<f32>(x_2631.x, x_2631.y, x_2631.z) * vec3<f32>(x_2636.x, x_2636.y, x_2636.z));
    let x_2639 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2638.x, x_2638.y, x_2638.z, x_2639.w);
    let x_2641 : f32 = u_xlat47;
    let x_2643 : vec4<f32> = u_xlat11;
    let x_2645 : vec3<f32> = (vec3<f32>(x_2641, x_2641, x_2641) * vec3<f32>(x_2643.x, x_2643.y, x_2643.z));
    let x_2646 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2646.w);
    let x_2648 : vec3<f32> = u_xlat3;
    let x_2649 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(x_2648, vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
    let x_2652 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2652, 0.0f, 1.0f);
    let x_2654 : f32 = u_xlat67;
    let x_2655 : f32 = u_xlat69;
    u_xlat67 = (x_2654 * x_2655);
    let x_2657 : f32 = u_xlat67;
    let x_2659 : vec4<f32> = u_xlat11;
    let x_2661 : vec3<f32> = (vec3<f32>(x_2657, x_2657, x_2657) * vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
    let x_2662 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
    let x_2664 : vec4<f32> = u_xlat9;
    let x_2666 : vec2<f32> = u_xlat49;
    let x_2669 : vec3<f32> = u_xlat2;
    let x_2670 : vec3<f32> = ((vec3<f32>(x_2664.x, x_2664.y, x_2664.z) * vec3<f32>(x_2666.x, x_2666.x, x_2666.x)) + x_2669);
    let x_2671 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2670.x, x_2670.y, x_2670.z, x_2671.w);
    let x_2673 : vec4<f32> = u_xlat9;
    let x_2675 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2673.x, x_2673.y, x_2673.z), vec3<f32>(x_2675.x, x_2675.y, x_2675.z));
    let x_2678 : f32 = u_xlat67;
    u_xlat67 = max(x_2678, 1.17549435e-37f);
    let x_2680 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2680);
    let x_2682 : f32 = u_xlat67;
    let x_2684 : vec4<f32> = u_xlat9;
    let x_2686 : vec3<f32> = (vec3<f32>(x_2682, x_2682, x_2682) * vec3<f32>(x_2684.x, x_2684.y, x_2684.z));
    let x_2687 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2686.x, x_2686.y, x_2686.z, x_2687.w);
    let x_2689 : vec3<f32> = u_xlat3;
    let x_2690 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(x_2689, vec3<f32>(x_2690.x, x_2690.y, x_2690.z));
    let x_2693 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2693, 0.0f, 1.0f);
    let x_2695 : vec4<f32> = u_xlat10;
    let x_2697 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2695.x, x_2695.y, x_2695.z), vec3<f32>(x_2697.x, x_2697.y, x_2697.z));
    let x_2700 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2700, 0.0f, 1.0f);
    let x_2702 : f32 = u_xlat67;
    let x_2703 : f32 = u_xlat67;
    u_xlat67 = (x_2702 * x_2703);
    let x_2705 : f32 = u_xlat67;
    let x_2707 : f32 = u_xlat8.x;
    u_xlat67 = ((x_2705 * x_2707) + 1.000010014f);
    let x_2710 : f32 = u_xlat69;
    let x_2711 : f32 = u_xlat69;
    u_xlat69 = (x_2710 * x_2711);
    let x_2713 : f32 = u_xlat67;
    let x_2714 : f32 = u_xlat67;
    u_xlat67 = (x_2713 * x_2714);
    let x_2716 : f32 = u_xlat69;
    u_xlat69 = max(x_2716, 0.100000001f);
    let x_2718 : f32 = u_xlat67;
    let x_2719 : f32 = u_xlat69;
    u_xlat67 = (x_2718 * x_2719);
    let x_2721 : f32 = u_xlat68;
    let x_2722 : f32 = u_xlat67;
    u_xlat67 = (x_2721 * x_2722);
    let x_2724 : f32 = u_xlat26;
    let x_2725 : f32 = u_xlat67;
    u_xlat67 = (x_2724 / x_2725);
    let x_2727 : vec4<f32> = u_xlat0;
    let x_2729 : f32 = u_xlat67;
    let x_2732 : vec3<f32> = u_xlat22;
    let x_2733 : vec3<f32> = ((vec3<f32>(x_2727.x, x_2727.y, x_2727.z) * vec3<f32>(x_2729, x_2729, x_2729)) + x_2732);
    let x_2734 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2733.x, x_2733.y, x_2733.z, x_2734.w);
    let x_2736 : vec4<f32> = u_xlat9;
    let x_2738 : vec4<f32> = u_xlat11;
    let x_2741 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_2736.x, x_2736.y, x_2736.z) * vec3<f32>(x_2738.x, x_2738.y, x_2738.z)) + x_2741);

    continuing {
      let x_2743 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2743 + bitcast<u32>(1i));
    }
  }
  let x_2745 : vec4<f32> = u_xlat4;
  let x_2747 : vec3<f32> = u_xlat5;
  let x_2750 : vec4<f32> = u_xlat6;
  let x_2752 : vec3<f32> = ((vec3<f32>(x_2745.x, x_2745.y, x_2745.z) * vec3<f32>(x_2747.x, x_2747.x, x_2747.x)) + vec3<f32>(x_2750.x, x_2750.y, x_2750.z));
  let x_2753 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2752.x, x_2752.y, x_2752.z, x_2753.w);
  let x_2755 : vec3<f32> = u_xlat29;
  let x_2756 : vec4<f32> = u_xlat0;
  let x_2758 : vec3<f32> = (x_2755 + vec3<f32>(x_2756.x, x_2756.y, x_2756.z));
  let x_2759 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2758.x, x_2758.y, x_2758.z, x_2759.w);
  let x_2761 : f32 = u_xlat63;
  let x_2762 : f32 = u_xlat63;
  u_xlat63 = (x_2761 * -(x_2762));
  let x_2765 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2765);
  let x_2767 : vec4<f32> = u_xlat0;
  let x_2771 : vec4<f32> = x_44.unity_FogColor;
  let x_2774 : vec3<f32> = (vec3<f32>(x_2767.x, x_2767.y, x_2767.z) + -(vec3<f32>(x_2771.x, x_2771.y, x_2771.z)));
  let x_2775 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
  let x_2779 : f32 = u_xlat63;
  let x_2781 : vec4<f32> = u_xlat0;
  let x_2785 : vec4<f32> = x_44.unity_FogColor;
  let x_2787 : vec3<f32> = ((vec3<f32>(x_2779, x_2779, x_2779) * vec3<f32>(x_2781.x, x_2781.y, x_2781.z)) + vec3<f32>(x_2785.x, x_2785.y, x_2785.z));
  let x_2788 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2787.x, x_2787.y, x_2787.z, x_2788.w);
  let x_2793 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2793 == 1.0f);
  let x_2795 : bool = u_xlatb0;
  if (x_2795) {
    let x_2800 : f32 = u_xlat1.x;
    x_2796 = x_2800;
  } else {
    x_2796 = 1.0f;
  }
  let x_2802 : f32 = x_2796;
  SV_Target0.w = x_2802;
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

