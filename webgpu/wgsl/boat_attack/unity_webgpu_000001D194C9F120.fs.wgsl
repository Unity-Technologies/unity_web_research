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
  x_DitheringTextureInvSize : f32,
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

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_546 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1872 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2332 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2445 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat41 : vec2<f32>;
  var u_xlat60 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlatb43 : bool;
  var x_190 : f32;
  var u_xlatb23 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat5 : vec3<f32>;
  var x_256 : f32;
  var x_268 : f32;
  var x_279 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat61 : f32;
  var u_xlat64 : f32;
  var u_xlat65 : f32;
  var u_xlatb64 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat46 : vec2<f32>;
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
  var x_1957 : f32;
  var x_1968 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlatu60 : u32;
  var u_xlatb1 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat29 : vec3<f32>;
  var u_xlatu10 : u32;
  var u_xlati30 : i32;
  var u_xlati10 : i32;
  var u_xlati50 : i32;
  var u_xlat30 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlatb51 : vec2<bool>;
  var u_xlat51 : vec2<f32>;
  var x_2765 : f32;
  var x_2778 : f32;
  var u_xlat70 : f32;
  var x_2840 : f32;
  var x_2851 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2994 : f32;
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
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  u_xlat1 = vec2<f32>(x_62.x, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_69.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_65.w, x_65.x, x_65.y, x_65.z) * vec4<f32>(x_73.w, x_73.x, x_73.y, x_73.z));
  let x_83 : vec2<f32> = vs_TEXCOORD0;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_83, x_85);
  u_xlat3 = vec3<f32>(x_86.x, x_86.y, x_86.w);
  let x_90 : f32 = u_xlat3.x;
  let x_93 : f32 = u_xlat3.z;
  u_xlat3.x = (x_90 * x_93);
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat41 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat41;
  let x_107 : vec2<f32> = u_xlat41;
  u_xlat60 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat60;
  u_xlat60 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat60;
  u_xlat60 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat60;
  u_xlat60 = sqrt(x_114);
  let x_116 : f32 = u_xlat60;
  u_xlat60 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat41;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat41 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat23.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat23.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_44.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat23;
  u_xlat23 = vec3<f32>(x_163.x, x_163.y, x_164.z);
  let x_171 : vec3<f32> = u_xlat23;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.y), x_174);
  u_xlat23.x = x_175.w;
  let x_186 : f32 = x_184.unity_LODFade.x;
  u_xlatb43 = (x_186 >= 0.0f);
  let x_189 : bool = u_xlatb43;
  if (x_189) {
    let x_194 : f32 = u_xlat23.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat23.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat23.x = x_201;
  let x_204 : f32 = u_xlat23.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat23.x = (-(x_204) + x_207);
  let x_212 : f32 = u_xlat23.x;
  u_xlatb23 = (x_212 < 0.0f);
  let x_214 : bool = u_xlatb23;
  if (((select(0i, 1i, x_214) * -1i) != 0i)) {
    discard;
  }
  let x_225 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb23 = (x_225 == 0.0f);
  let x_230 : vec3<f32> = vs_TEXCOORD1;
  let x_235 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_236 : vec3<f32> = (-(x_230) + x_235);
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat43;
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec3<f32> = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : bool = u_xlatb23;
  if (x_255) {
    let x_260 : f32 = u_xlat4.x;
    x_256 = x_260;
  } else {
    let x_264 : f32 = x_44.unity_MatrixV[0i].z;
    x_256 = x_264;
  }
  let x_265 : f32 = x_256;
  u_xlat5.x = x_265;
  let x_267 : bool = u_xlatb23;
  if (x_267) {
    let x_272 : f32 = u_xlat4.y;
    x_268 = x_272;
  } else {
    let x_275 : f32 = x_44.unity_MatrixV[1i].z;
    x_268 = x_275;
  }
  let x_276 : f32 = x_268;
  u_xlat5.y = x_276;
  let x_278 : bool = u_xlatb23;
  if (x_278) {
    let x_283 : f32 = u_xlat4.z;
    x_279 = x_283;
  } else {
    let x_286 : f32 = x_44.unity_MatrixV[2i].z;
    x_279 = x_286;
  }
  let x_287 : f32 = x_279;
  u_xlat5.z = x_287;
  let x_290 : vec3<f32> = vs_TEXCOORD2;
  let x_293 : vec4<f32> = vs_TEXCOORD3;
  u_xlat23 = (vec3<f32>(x_290.z, x_290.x, x_290.y) * vec3<f32>(x_293.y, x_293.z, x_293.x));
  let x_296 : vec3<f32> = vs_TEXCOORD2;
  let x_298 : vec4<f32> = vs_TEXCOORD3;
  let x_301 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_296.y, x_296.z, x_296.x) * vec3<f32>(x_298.z, x_298.x, x_298.y)) + -(x_301));
  let x_304 : vec3<f32> = u_xlat23;
  let x_305 : vec4<f32> = vs_TEXCOORD3;
  u_xlat23 = (x_304 * vec3<f32>(x_305.w, x_305.w, x_305.w));
  let x_308 : vec2<f32> = u_xlat41;
  let x_310 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_308.y, x_308.y, x_308.y) * x_310);
  let x_312 : vec2<f32> = u_xlat41;
  let x_314 : vec4<f32> = vs_TEXCOORD3;
  let x_317 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_312.x, x_312.x, x_312.x) * vec3<f32>(x_314.x, x_314.y, x_314.z)) + x_317);
  let x_319 : f32 = u_xlat60;
  let x_321 : vec3<f32> = vs_TEXCOORD2;
  let x_323 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_319, x_319, x_319) * x_321) + x_323);
  let x_325 : vec3<f32> = u_xlat23;
  let x_326 : vec3<f32> = u_xlat23;
  u_xlat60 = dot(x_325, x_326);
  let x_328 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_328);
  let x_330 : f32 = u_xlat60;
  let x_332 : vec3<f32> = u_xlat23;
  let x_333 : vec3<f32> = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  u_xlat4.w = 1.0f;
  let x_340 : vec4<f32> = x_184.unity_SHAr;
  let x_341 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_340, x_341);
  let x_346 : vec4<f32> = x_184.unity_SHAg;
  let x_347 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_346, x_347);
  let x_352 : vec4<f32> = x_184.unity_SHAb;
  let x_353 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_352, x_353);
  let x_357 : vec4<f32> = u_xlat4;
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_357.y, x_357.z, x_357.z, x_357.x) * vec4<f32>(x_359.x, x_359.y, x_359.z, x_359.z));
  let x_365 : vec4<f32> = x_184.unity_SHBr;
  let x_366 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_365, x_366);
  let x_371 : vec4<f32> = x_184.unity_SHBg;
  let x_372 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_371, x_372);
  let x_377 : vec4<f32> = x_184.unity_SHBb;
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_377, x_378);
  let x_382 : f32 = u_xlat4.y;
  let x_384 : f32 = u_xlat4.y;
  u_xlat60 = (x_382 * x_384);
  let x_387 : f32 = u_xlat4.x;
  let x_389 : f32 = u_xlat4.x;
  let x_391 : f32 = u_xlat60;
  u_xlat60 = ((x_387 * x_389) + -(x_391));
  let x_396 : vec4<f32> = x_184.unity_SHC;
  let x_398 : f32 = u_xlat60;
  let x_401 : vec4<f32> = u_xlat8;
  u_xlat23 = ((vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(x_398, x_398, x_398)) + vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec3<f32> = u_xlat23;
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat23 = (x_404 + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec3<f32> = u_xlat23;
  u_xlat23 = max(x_408, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_413 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_414 : vec2<f32> = vec2<f32>(x_413.x, x_413.y);
  u_xlat41 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_414.x, x_414.y));
  let x_419 : vec2<f32> = u_xlat41;
  let x_420 : vec4<f32> = hlslcc_FragCoord;
  let x_422 : vec2<f32> = (x_419 * vec2<f32>(x_420.x, x_420.y));
  let x_423 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
  let x_426 : f32 = u_xlat6.y;
  let x_428 : f32 = x_44.x_ScaleBiasRt.x;
  let x_431 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_426 * x_428) + x_431);
  let x_433 : f32 = u_xlat60;
  u_xlat6.z = (-(x_433) + 1.0f);
  let x_438 : f32 = u_xlat1.x;
  u_xlat60 = ((-(x_438) * 0.959999979f) + 0.959999979f);
  let x_444 : f32 = u_xlat1.y;
  let x_446 : f32 = x_69.x_Smoothness;
  let x_448 : f32 = u_xlat60;
  u_xlat41.x = ((x_444 * x_446) + -(x_448));
  let x_453 : f32 = u_xlat60;
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat22 = (vec3<f32>(x_453, x_453, x_453) * vec3<f32>(x_455.y, x_455.z, x_455.w));
  let x_458 : vec4<f32> = u_xlat0;
  let x_461 : vec4<f32> = x_69.x_BaseColor;
  let x_466 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_461.x, x_461.y, x_461.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_467 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec2<f32> = u_xlat1;
  let x_471 : vec4<f32> = u_xlat0;
  let x_476 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.x, x_469.x) * vec3<f32>(x_471.x, x_471.y, x_471.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_480 : f32 = u_xlat1.y;
  let x_483 : f32 = x_69.x_Smoothness;
  u_xlat60 = ((-(x_480) * x_483) + 1.0f);
  let x_486 : f32 = u_xlat60;
  let x_487 : f32 = u_xlat60;
  u_xlat1.x = (x_486 * x_487);
  let x_491 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_491, 0.0078125f);
  let x_497 : f32 = u_xlat1.x;
  let x_499 : f32 = u_xlat1.x;
  u_xlat21 = (x_497 * x_499);
  let x_502 : f32 = u_xlat41.x;
  u_xlat41.x = (x_502 + 1.0f);
  let x_506 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_506, 0.0f, 1.0f);
  let x_511 : f32 = u_xlat1.x;
  u_xlat61 = ((x_511 * 4.0f) + 2.0f);
  let x_521 : vec4<f32> = u_xlat6;
  let x_524 : f32 = x_44.x_GlobalMipBias.x;
  let x_525 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_521.x, x_521.z), x_524);
  u_xlat64 = x_525.x;
  let x_528 : f32 = u_xlat64;
  u_xlat65 = (x_528 + -1.0f);
  let x_532 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_533 : f32 = u_xlat65;
  u_xlat65 = ((x_532 * x_533) + 1.0f);
  let x_537 : f32 = u_xlat3.x;
  let x_538 : f32 = u_xlat64;
  u_xlat3.x = min(x_537, x_538);
  let x_548 : f32 = x_546.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_548);
  let x_550 : bool = u_xlatb64;
  if (x_550) {
    let x_554 : f32 = x_546.x_MainLightShadowParams.y;
    u_xlatb64 = (x_554 == 1.0f);
    let x_556 : bool = u_xlatb64;
    if (x_556) {
      let x_560 : vec4<f32> = vs_TEXCOORD6;
      let x_563 : vec4<f32> = x_546.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_560.x, x_560.y, x_560.x, x_560.y) + x_563);
      let x_566 : vec4<f32> = u_xlat6;
      let x_567 : vec2<f32> = vec2<f32>(x_566.x, x_566.y);
      let x_569 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_567.x, x_567.y, x_569);
      let x_581 : vec3<f32> = txVec0;
      let x_583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_581.xy, x_581.z);
      u_xlat7.x = x_583;
      let x_586 : vec4<f32> = u_xlat6;
      let x_587 : vec2<f32> = vec2<f32>(x_586.z, x_586.w);
      let x_589 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_587.x, x_587.y, x_589);
      let x_596 : vec3<f32> = txVec1;
      let x_598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_596.xy, x_596.z);
      u_xlat7.y = x_598;
      let x_600 : vec4<f32> = vs_TEXCOORD6;
      let x_603 : vec4<f32> = x_546.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_600.x, x_600.y, x_600.x, x_600.y) + x_603);
      let x_606 : vec4<f32> = u_xlat6;
      let x_607 : vec2<f32> = vec2<f32>(x_606.x, x_606.y);
      let x_609 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_607.x, x_607.y, x_609);
      let x_616 : vec3<f32> = txVec2;
      let x_618 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_616.xy, x_616.z);
      u_xlat7.z = x_618;
      let x_621 : vec4<f32> = u_xlat6;
      let x_622 : vec2<f32> = vec2<f32>(x_621.z, x_621.w);
      let x_624 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_622.x, x_622.y, x_624);
      let x_631 : vec3<f32> = txVec3;
      let x_633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_631.xy, x_631.z);
      u_xlat7.w = x_633;
      let x_635 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_635, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_642 : f32 = x_546.x_MainLightShadowParams.y;
      u_xlatb6 = (x_642 == 2.0f);
      let x_644 : bool = u_xlatb6;
      if (x_644) {
        let x_647 : vec4<f32> = vs_TEXCOORD6;
        let x_650 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_655 : vec2<f32> = ((vec2<f32>(x_647.x, x_647.y) * vec2<f32>(x_650.z, x_650.w)) + vec2<f32>(0.5f, 0.5f));
        let x_656 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
        let x_658 : vec4<f32> = u_xlat6;
        let x_660 : vec2<f32> = floor(vec2<f32>(x_658.x, x_658.y));
        let x_661 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
        let x_664 : vec4<f32> = vs_TEXCOORD6;
        let x_667 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_670 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_664.x, x_664.y) * vec2<f32>(x_667.z, x_667.w)) + -(vec2<f32>(x_670.x, x_670.y)));
        let x_674 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_674.x, x_674.x, x_674.y, x_674.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_678 : vec4<f32> = u_xlat7;
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_678.x, x_678.x, x_678.z, x_678.z) * vec4<f32>(x_680.x, x_680.x, x_680.z, x_680.z));
        let x_683 : vec4<f32> = u_xlat8;
        let x_687 : vec2<f32> = (vec2<f32>(x_683.y, x_683.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_688 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_687.x, x_688.y, x_687.y, x_688.w);
        let x_690 : vec4<f32> = u_xlat8;
        let x_693 : vec2<f32> = u_xlat46;
        let x_695 : vec2<f32> = ((vec2<f32>(x_690.x, x_690.z) * vec2<f32>(0.5f, 0.5f)) + -(x_693));
        let x_696 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_695.x, x_695.y, x_696.z, x_696.w);
        let x_699 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_699) + vec2<f32>(1.0f, 1.0f));
        let x_703 : vec2<f32> = u_xlat46;
        let x_705 : vec2<f32> = min(x_703, vec2<f32>(0.0f, 0.0f));
        let x_706 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat9;
        let x_711 : vec4<f32> = u_xlat9;
        let x_714 : vec2<f32> = u_xlat48;
        let x_715 : vec2<f32> = ((-(vec2<f32>(x_708.x, x_708.y)) * vec2<f32>(x_711.x, x_711.y)) + x_714);
        let x_716 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
        let x_718 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_718, vec2<f32>(0.0f, 0.0f));
        let x_720 : vec2<f32> = u_xlat46;
        let x_722 : vec2<f32> = u_xlat46;
        let x_724 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_720) * x_722) + vec2<f32>(x_724.y, x_724.w));
        let x_727 : vec4<f32> = u_xlat9;
        let x_729 : vec2<f32> = (vec2<f32>(x_727.x, x_727.y) + vec2<f32>(1.0f, 1.0f));
        let x_730 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
        let x_732 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_732 + vec2<f32>(1.0f, 1.0f));
        let x_735 : vec4<f32> = u_xlat8;
        let x_739 : vec2<f32> = (vec2<f32>(x_735.x, x_735.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_740 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
        let x_742 : vec2<f32> = u_xlat48;
        let x_743 : vec2<f32> = (x_742 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
        let x_746 : vec4<f32> = u_xlat9;
        let x_748 : vec2<f32> = (vec2<f32>(x_746.x, x_746.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_749 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_748.x, x_748.y, x_749.z, x_749.w);
        let x_752 : vec2<f32> = u_xlat46;
        let x_753 : vec2<f32> = (x_752 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_754 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_756.y, x_756.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_760 : f32 = u_xlat9.x;
        u_xlat10.z = x_760;
        let x_763 : f32 = u_xlat46.x;
        u_xlat10.w = x_763;
        let x_766 : f32 = u_xlat11.x;
        u_xlat8.z = x_766;
        let x_769 : f32 = u_xlat7.x;
        u_xlat8.w = x_769;
        let x_772 : vec4<f32> = u_xlat8;
        let x_774 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_772.z, x_772.w, x_772.x, x_772.z) + vec4<f32>(x_774.z, x_774.w, x_774.x, x_774.z));
        let x_778 : f32 = u_xlat10.y;
        u_xlat9.z = x_778;
        let x_781 : f32 = u_xlat46.y;
        u_xlat9.w = x_781;
        let x_784 : f32 = u_xlat8.y;
        u_xlat11.z = x_784;
        let x_787 : f32 = u_xlat7.z;
        u_xlat11.w = x_787;
        let x_789 : vec4<f32> = u_xlat9;
        let x_791 : vec4<f32> = u_xlat11;
        let x_793 : vec3<f32> = (vec3<f32>(x_789.z, x_789.y, x_789.w) + vec3<f32>(x_791.z, x_791.y, x_791.w));
        let x_794 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
        let x_796 : vec4<f32> = u_xlat8;
        let x_798 : vec4<f32> = u_xlat12;
        let x_800 : vec3<f32> = (vec3<f32>(x_796.x, x_796.z, x_796.w) / vec3<f32>(x_798.z, x_798.w, x_798.y));
        let x_801 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
        let x_803 : vec4<f32> = u_xlat8;
        let x_809 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_810 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
        let x_812 : vec4<f32> = u_xlat11;
        let x_814 : vec4<f32> = u_xlat7;
        let x_816 : vec3<f32> = (vec3<f32>(x_812.z, x_812.y, x_812.w) / vec3<f32>(x_814.x, x_814.y, x_814.z));
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
        let x_819 : vec4<f32> = u_xlat9;
        let x_821 : vec3<f32> = (vec3<f32>(x_819.x, x_819.y, x_819.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_822 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat8;
        let x_827 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_829 : vec3<f32> = (vec3<f32>(x_824.y, x_824.x, x_824.z) * vec3<f32>(x_827.x, x_827.x, x_827.x));
        let x_830 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
        let x_832 : vec4<f32> = u_xlat9;
        let x_835 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_837 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_835.y, x_835.y, x_835.y));
        let x_838 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
        let x_841 : f32 = u_xlat9.x;
        u_xlat8.w = x_841;
        let x_843 : vec4<f32> = u_xlat6;
        let x_846 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_849 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_843.x, x_843.y, x_843.x, x_843.y) * vec4<f32>(x_846.x, x_846.y, x_846.x, x_846.y)) + vec4<f32>(x_849.y, x_849.w, x_849.x, x_849.w));
        let x_852 : vec4<f32> = u_xlat6;
        let x_855 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_858 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_852.x, x_852.y) * vec2<f32>(x_855.x, x_855.y)) + vec2<f32>(x_858.z, x_858.w));
        let x_862 : f32 = u_xlat8.y;
        u_xlat9.w = x_862;
        let x_864 : vec4<f32> = u_xlat9;
        let x_865 : vec2<f32> = vec2<f32>(x_864.y, x_864.z);
        let x_866 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_866.x, x_865.x, x_866.z, x_865.y);
        let x_868 : vec4<f32> = u_xlat6;
        let x_871 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_874 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_868.x, x_868.y, x_868.x, x_868.y) * vec4<f32>(x_871.x, x_871.y, x_871.x, x_871.y)) + vec4<f32>(x_874.x, x_874.y, x_874.z, x_874.y));
        let x_877 : vec4<f32> = u_xlat6;
        let x_880 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_883 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_877.x, x_877.y, x_877.x, x_877.y) * vec4<f32>(x_880.x, x_880.y, x_880.x, x_880.y)) + vec4<f32>(x_883.w, x_883.y, x_883.w, x_883.z));
        let x_886 : vec4<f32> = u_xlat6;
        let x_889 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_892 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y) * vec4<f32>(x_889.x, x_889.y, x_889.x, x_889.y)) + vec4<f32>(x_892.x, x_892.w, x_892.z, x_892.w));
        let x_896 : vec4<f32> = u_xlat7;
        let x_898 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_896.x, x_896.x, x_896.x, x_896.y) * vec4<f32>(x_898.z, x_898.w, x_898.y, x_898.z));
        let x_902 : vec4<f32> = u_xlat7;
        let x_904 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_902.y, x_902.y, x_902.z, x_902.z) * x_904);
        let x_907 : f32 = u_xlat7.z;
        let x_909 : f32 = u_xlat12.y;
        u_xlat6.x = (x_907 * x_909);
        let x_913 : vec4<f32> = u_xlat10;
        let x_914 : vec2<f32> = vec2<f32>(x_913.x, x_913.y);
        let x_916 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_914.x, x_914.y, x_916);
        let x_924 : vec3<f32> = txVec4;
        let x_926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_924.xy, x_924.z);
        u_xlat26 = x_926;
        let x_928 : vec4<f32> = u_xlat10;
        let x_929 : vec2<f32> = vec2<f32>(x_928.z, x_928.w);
        let x_931 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_929.x, x_929.y, x_931);
        let x_938 : vec3<f32> = txVec5;
        let x_940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_938.xy, x_938.z);
        u_xlat7.x = x_940;
        let x_943 : f32 = u_xlat7.x;
        let x_945 : f32 = u_xlat13.y;
        u_xlat7.x = (x_943 * x_945);
        let x_949 : f32 = u_xlat13.x;
        let x_950 : f32 = u_xlat26;
        let x_953 : f32 = u_xlat7.x;
        u_xlat26 = ((x_949 * x_950) + x_953);
        let x_956 : vec2<f32> = u_xlat46;
        let x_958 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_956.x, x_956.y, x_958);
        let x_965 : vec3<f32> = txVec6;
        let x_967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_965.xy, x_965.z);
        u_xlat46.x = x_967;
        let x_970 : f32 = u_xlat13.z;
        let x_972 : f32 = u_xlat46.x;
        let x_974 : f32 = u_xlat26;
        u_xlat26 = ((x_970 * x_972) + x_974);
        let x_977 : vec4<f32> = u_xlat9;
        let x_978 : vec2<f32> = vec2<f32>(x_977.x, x_977.y);
        let x_980 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_978.x, x_978.y, x_980);
        let x_987 : vec3<f32> = txVec7;
        let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_987.xy, x_987.z);
        u_xlat46.x = x_989;
        let x_992 : f32 = u_xlat13.w;
        let x_994 : f32 = u_xlat46.x;
        let x_996 : f32 = u_xlat26;
        u_xlat26 = ((x_992 * x_994) + x_996);
        let x_999 : vec4<f32> = u_xlat11;
        let x_1000 : vec2<f32> = vec2<f32>(x_999.x, x_999.y);
        let x_1002 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
        let x_1009 : vec3<f32> = txVec8;
        let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1009.xy, x_1009.z);
        u_xlat46.x = x_1011;
        let x_1014 : f32 = u_xlat14.x;
        let x_1016 : f32 = u_xlat46.x;
        let x_1018 : f32 = u_xlat26;
        u_xlat26 = ((x_1014 * x_1016) + x_1018);
        let x_1021 : vec4<f32> = u_xlat11;
        let x_1022 : vec2<f32> = vec2<f32>(x_1021.z, x_1021.w);
        let x_1024 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
        let x_1031 : vec3<f32> = txVec9;
        let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1031.xy, x_1031.z);
        u_xlat46.x = x_1033;
        let x_1036 : f32 = u_xlat14.y;
        let x_1038 : f32 = u_xlat46.x;
        let x_1040 : f32 = u_xlat26;
        u_xlat26 = ((x_1036 * x_1038) + x_1040);
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1044 : vec2<f32> = vec2<f32>(x_1043.z, x_1043.w);
        let x_1046 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
        let x_1053 : vec3<f32> = txVec10;
        let x_1055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1053.xy, x_1053.z);
        u_xlat46.x = x_1055;
        let x_1058 : f32 = u_xlat14.z;
        let x_1060 : f32 = u_xlat46.x;
        let x_1062 : f32 = u_xlat26;
        u_xlat26 = ((x_1058 * x_1060) + x_1062);
        let x_1065 : vec4<f32> = u_xlat8;
        let x_1066 : vec2<f32> = vec2<f32>(x_1065.x, x_1065.y);
        let x_1068 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1066.x, x_1066.y, x_1068);
        let x_1075 : vec3<f32> = txVec11;
        let x_1077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1075.xy, x_1075.z);
        u_xlat46.x = x_1077;
        let x_1080 : f32 = u_xlat14.w;
        let x_1082 : f32 = u_xlat46.x;
        let x_1084 : f32 = u_xlat26;
        u_xlat26 = ((x_1080 * x_1082) + x_1084);
        let x_1087 : vec4<f32> = u_xlat8;
        let x_1088 : vec2<f32> = vec2<f32>(x_1087.z, x_1087.w);
        let x_1090 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec12;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1097.xy, x_1097.z);
        u_xlat46.x = x_1099;
        let x_1102 : f32 = u_xlat6.x;
        let x_1104 : f32 = u_xlat46.x;
        let x_1106 : f32 = u_xlat26;
        u_xlat64 = ((x_1102 * x_1104) + x_1106);
      } else {
        let x_1109 : vec4<f32> = vs_TEXCOORD6;
        let x_1112 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1115 : vec2<f32> = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.z, x_1112.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1116 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1115.x, x_1115.y, x_1116.z, x_1116.w);
        let x_1118 : vec4<f32> = u_xlat6;
        let x_1120 : vec2<f32> = floor(vec2<f32>(x_1118.x, x_1118.y));
        let x_1121 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1120.x, x_1120.y, x_1121.z, x_1121.w);
        let x_1123 : vec4<f32> = vs_TEXCOORD6;
        let x_1126 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(x_1126.z, x_1126.w)) + -(vec2<f32>(x_1129.x, x_1129.y)));
        let x_1133 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1133.x, x_1133.x, x_1133.y, x_1133.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1136.x, x_1136.x, x_1136.z, x_1136.z) * vec4<f32>(x_1138.x, x_1138.x, x_1138.z, x_1138.z));
        let x_1141 : vec4<f32> = u_xlat8;
        let x_1145 : vec2<f32> = (vec2<f32>(x_1141.y, x_1141.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1146.x, x_1145.x, x_1146.z, x_1145.y);
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1151 : vec2<f32> = u_xlat46;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1151));
        let x_1154 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1153.x, x_1154.y, x_1153.y, x_1154.w);
        let x_1156 : vec2<f32> = u_xlat46;
        let x_1158 : vec2<f32> = (-(x_1156) + vec2<f32>(1.0f, 1.0f));
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1161 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1161, vec2<f32>(0.0f, 0.0f));
        let x_1163 : vec2<f32> = u_xlat48;
        let x_1165 : vec2<f32> = u_xlat48;
        let x_1167 : vec4<f32> = u_xlat8;
        let x_1169 : vec2<f32> = ((-(x_1163) * x_1165) + vec2<f32>(x_1167.x, x_1167.y));
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1170.w);
        let x_1172 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1172, vec2<f32>(0.0f, 0.0f));
        let x_1175 : vec2<f32> = u_xlat48;
        let x_1177 : vec2<f32> = u_xlat48;
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1181 : vec2<f32> = ((-(x_1175) * x_1177) + vec2<f32>(x_1179.y, x_1179.w));
        let x_1182 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1181.x, x_1182.y, x_1181.y);
        let x_1184 : vec4<f32> = u_xlat8;
        let x_1186 : vec2<f32> = (vec2<f32>(x_1184.x, x_1184.y) + vec2<f32>(2.0f, 2.0f));
        let x_1187 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1189 : vec3<f32> = u_xlat27;
        let x_1191 : vec2<f32> = (vec2<f32>(x_1189.x, x_1189.z) + vec2<f32>(2.0f, 2.0f));
        let x_1192 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1192.x, x_1191.x, x_1192.z, x_1191.y);
        let x_1195 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1195 * 0.081632003f);
        let x_1199 : vec4<f32> = u_xlat7;
        let x_1202 : vec3<f32> = (vec3<f32>(x_1199.z, x_1199.x, x_1199.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1203 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1203.w);
        let x_1205 : vec4<f32> = u_xlat8;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1205.x, x_1205.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1209 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1212 : f32 = u_xlat11.y;
        u_xlat10.x = x_1212;
        let x_1214 : vec2<f32> = u_xlat46;
        let x_1221 : vec2<f32> = ((vec2<f32>(x_1214.x, x_1214.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1222 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1222.x, x_1221.x, x_1222.z, x_1221.y);
        let x_1224 : vec2<f32> = u_xlat46;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1229 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1228.x, x_1229.y, x_1228.y, x_1229.w);
        let x_1232 : f32 = u_xlat7.x;
        u_xlat8.y = x_1232;
        let x_1235 : f32 = u_xlat9.y;
        u_xlat8.w = x_1235;
        let x_1237 : vec4<f32> = u_xlat8;
        let x_1238 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1237 + x_1238);
        let x_1240 : vec2<f32> = u_xlat46;
        let x_1243 : vec2<f32> = ((vec2<f32>(x_1240.y, x_1240.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1244 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1244.x, x_1243.x, x_1244.z, x_1243.y);
        let x_1246 : vec2<f32> = u_xlat46;
        let x_1249 : vec2<f32> = ((vec2<f32>(x_1246.y, x_1246.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1250 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1249.x, x_1250.y, x_1249.y, x_1250.w);
        let x_1253 : f32 = u_xlat7.y;
        u_xlat9.y = x_1253;
        let x_1255 : vec4<f32> = u_xlat9;
        let x_1256 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1255 + x_1256);
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1258 / x_1259);
        let x_1261 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1261 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1267 : vec4<f32> = u_xlat9;
        let x_1268 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1267 / x_1268);
        let x_1270 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1270 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1275 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1272.w, x_1272.x, x_1272.y, x_1272.z) * vec4<f32>(x_1275.x, x_1275.x, x_1275.x, x_1275.x));
        let x_1278 : vec4<f32> = u_xlat9;
        let x_1281 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1278.x, x_1278.w, x_1278.y, x_1278.z) * vec4<f32>(x_1281.y, x_1281.y, x_1281.y, x_1281.y));
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1285 : vec3<f32> = vec3<f32>(x_1284.y, x_1284.z, x_1284.w);
        let x_1286 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1285.z);
        let x_1289 : f32 = u_xlat9.x;
        u_xlat11.y = x_1289;
        let x_1291 : vec4<f32> = u_xlat6;
        let x_1294 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1297.y));
        let x_1300 : vec4<f32> = u_xlat6;
        let x_1303 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1300.x, x_1300.y) * vec2<f32>(x_1303.x, x_1303.y)) + vec2<f32>(x_1306.w, x_1306.y));
        let x_1310 : f32 = u_xlat11.y;
        u_xlat8.y = x_1310;
        let x_1313 : f32 = u_xlat9.z;
        u_xlat11.y = x_1313;
        let x_1315 : vec4<f32> = u_xlat6;
        let x_1318 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1315.x, x_1315.y, x_1315.x, x_1315.y) * vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y)) + vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1321.y));
        let x_1324 : vec4<f32> = u_xlat6;
        let x_1327 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat11;
        let x_1332 : vec2<f32> = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(x_1327.x, x_1327.y)) + vec2<f32>(x_1330.w, x_1330.y));
        let x_1333 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1336 : f32 = u_xlat11.y;
        u_xlat8.z = x_1336;
        let x_1339 : vec4<f32> = u_xlat6;
        let x_1342 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1339.x, x_1339.y, x_1339.x, x_1339.y) * vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y)) + vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.z));
        let x_1349 : f32 = u_xlat9.w;
        u_xlat11.y = x_1349;
        let x_1352 : vec4<f32> = u_xlat6;
        let x_1355 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y) * vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y)) + vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1358.y));
        let x_1362 : vec4<f32> = u_xlat6;
        let x_1365 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat11;
        let x_1370 : vec2<f32> = ((vec2<f32>(x_1362.x, x_1362.y) * vec2<f32>(x_1365.x, x_1365.y)) + vec2<f32>(x_1368.w, x_1368.y));
        let x_1371 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1370.x, x_1370.y, x_1371.z);
        let x_1374 : f32 = u_xlat11.y;
        u_xlat8.w = x_1374;
        let x_1377 : vec4<f32> = u_xlat6;
        let x_1380 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1383 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1377.x, x_1377.y) * vec2<f32>(x_1380.x, x_1380.y)) + vec2<f32>(x_1383.x, x_1383.w));
        let x_1386 : vec4<f32> = u_xlat11;
        let x_1387 : vec3<f32> = vec3<f32>(x_1386.x, x_1386.z, x_1386.w);
        let x_1388 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1387.x, x_1388.y, x_1387.y, x_1387.z);
        let x_1390 : vec4<f32> = u_xlat6;
        let x_1393 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1396 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1390.x, x_1390.y, x_1390.x, x_1390.y) * vec4<f32>(x_1393.x, x_1393.y, x_1393.x, x_1393.y)) + vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1396.y));
        let x_1400 : vec4<f32> = u_xlat6;
        let x_1403 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1406 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1400.x, x_1400.y) * vec2<f32>(x_1403.x, x_1403.y)) + vec2<f32>(x_1406.w, x_1406.y));
        let x_1410 : f32 = u_xlat8.x;
        u_xlat9.x = x_1410;
        let x_1412 : vec4<f32> = u_xlat6;
        let x_1415 : vec4<f32> = x_546.x_MainLightShadowmapSize;
        let x_1418 : vec4<f32> = u_xlat9;
        let x_1420 : vec2<f32> = ((vec2<f32>(x_1412.x, x_1412.y) * vec2<f32>(x_1415.x, x_1415.y)) + vec2<f32>(x_1418.x, x_1418.y));
        let x_1421 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1420.x, x_1420.y, x_1421.z, x_1421.w);
        let x_1424 : vec4<f32> = u_xlat7;
        let x_1426 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1424.x, x_1424.x, x_1424.x, x_1424.x) * x_1426);
        let x_1429 : vec4<f32> = u_xlat7;
        let x_1431 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1429.y, x_1429.y, x_1429.y, x_1429.y) * x_1431);
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1436 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1434.z, x_1434.z, x_1434.z, x_1434.z) * x_1436);
        let x_1438 : vec4<f32> = u_xlat7;
        let x_1440 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1438.w, x_1438.w, x_1438.w, x_1438.w) * x_1440);
        let x_1443 : vec4<f32> = u_xlat12;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.x, x_1443.y);
        let x_1446 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec13;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1453.xy, x_1453.z);
        u_xlat8.x = x_1455;
        let x_1458 : vec4<f32> = u_xlat12;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.z, x_1458.w);
        let x_1461 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1469 : vec3<f32> = txVec14;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1469.xy, x_1469.z);
        u_xlat68 = x_1471;
        let x_1472 : f32 = u_xlat68;
        let x_1474 : f32 = u_xlat17.y;
        u_xlat68 = (x_1472 * x_1474);
        let x_1477 : f32 = u_xlat17.x;
        let x_1479 : f32 = u_xlat8.x;
        let x_1481 : f32 = u_xlat68;
        u_xlat8.x = ((x_1477 * x_1479) + x_1481);
        let x_1485 : vec2<f32> = u_xlat46;
        let x_1487 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec15;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1494.xy, x_1494.z);
        u_xlat46.x = x_1496;
        let x_1499 : f32 = u_xlat17.z;
        let x_1501 : f32 = u_xlat46.x;
        let x_1504 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1499 * x_1501) + x_1504);
        let x_1508 : vec4<f32> = u_xlat15;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.x, x_1508.y);
        let x_1511 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1519 : vec3<f32> = txVec16;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1519.xy, x_1519.z);
        u_xlat66 = x_1521;
        let x_1523 : f32 = u_xlat17.w;
        let x_1524 : f32 = u_xlat66;
        let x_1527 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1523 * x_1524) + x_1527);
        let x_1531 : vec4<f32> = u_xlat13;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec17;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1541.xy, x_1541.z);
        u_xlat66 = x_1543;
        let x_1545 : f32 = u_xlat18.x;
        let x_1546 : f32 = u_xlat66;
        let x_1549 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1545 * x_1546) + x_1549);
        let x_1553 : vec4<f32> = u_xlat13;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.z, x_1553.w);
        let x_1556 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec18;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
        u_xlat66 = x_1565;
        let x_1567 : f32 = u_xlat18.y;
        let x_1568 : f32 = u_xlat66;
        let x_1571 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1567 * x_1568) + x_1571);
        let x_1575 : vec4<f32> = u_xlat14;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
        let x_1578 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec19;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat66 = x_1587;
        let x_1589 : f32 = u_xlat18.z;
        let x_1590 : f32 = u_xlat66;
        let x_1593 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1589 * x_1590) + x_1593);
        let x_1597 : vec4<f32> = u_xlat15;
        let x_1598 : vec2<f32> = vec2<f32>(x_1597.z, x_1597.w);
        let x_1600 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec20;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1607.xy, x_1607.z);
        u_xlat66 = x_1609;
        let x_1611 : f32 = u_xlat18.w;
        let x_1612 : f32 = u_xlat66;
        let x_1615 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1611 * x_1612) + x_1615);
        let x_1619 : vec4<f32> = u_xlat16;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.x, x_1619.y);
        let x_1622 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec21;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1629.xy, x_1629.z);
        u_xlat66 = x_1631;
        let x_1633 : f32 = u_xlat19.x;
        let x_1634 : f32 = u_xlat66;
        let x_1637 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1633 * x_1634) + x_1637);
        let x_1641 : vec4<f32> = u_xlat16;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.z, x_1641.w);
        let x_1644 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec22;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat66 = x_1653;
        let x_1655 : f32 = u_xlat19.y;
        let x_1656 : f32 = u_xlat66;
        let x_1659 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1655 * x_1656) + x_1659);
        let x_1663 : vec3<f32> = u_xlat28;
        let x_1664 : vec2<f32> = vec2<f32>(x_1663.x, x_1663.y);
        let x_1666 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1664.x, x_1664.y, x_1666);
        let x_1673 : vec3<f32> = txVec23;
        let x_1675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1673.xy, x_1673.z);
        u_xlat66 = x_1675;
        let x_1677 : f32 = u_xlat19.z;
        let x_1678 : f32 = u_xlat66;
        let x_1681 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1677 * x_1678) + x_1681);
        let x_1685 : vec2<f32> = u_xlat54;
        let x_1687 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec24;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1694.xy, x_1694.z);
        u_xlat66 = x_1696;
        let x_1698 : f32 = u_xlat19.w;
        let x_1699 : f32 = u_xlat66;
        let x_1702 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1698 * x_1699) + x_1702);
        let x_1706 : vec4<f32> = u_xlat11;
        let x_1707 : vec2<f32> = vec2<f32>(x_1706.x, x_1706.y);
        let x_1709 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec25;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1716.xy, x_1716.z);
        u_xlat66 = x_1718;
        let x_1720 : f32 = u_xlat7.x;
        let x_1721 : f32 = u_xlat66;
        let x_1724 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1720 * x_1721) + x_1724);
        let x_1728 : vec4<f32> = u_xlat11;
        let x_1729 : vec2<f32> = vec2<f32>(x_1728.z, x_1728.w);
        let x_1731 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
        let x_1738 : vec3<f32> = txVec26;
        let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1738.xy, x_1738.z);
        u_xlat66 = x_1740;
        let x_1742 : f32 = u_xlat7.y;
        let x_1743 : f32 = u_xlat66;
        let x_1746 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1742 * x_1743) + x_1746);
        let x_1750 : vec2<f32> = u_xlat49;
        let x_1752 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec27;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1759.xy, x_1759.z);
        u_xlat66 = x_1761;
        let x_1763 : f32 = u_xlat7.z;
        let x_1764 : f32 = u_xlat66;
        let x_1767 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1763 * x_1764) + x_1767);
        let x_1771 : vec4<f32> = u_xlat6;
        let x_1772 : vec2<f32> = vec2<f32>(x_1771.x, x_1771.y);
        let x_1774 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1772.x, x_1772.y, x_1774);
        let x_1781 : vec3<f32> = txVec28;
        let x_1783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1781.xy, x_1781.z);
        u_xlat6.x = x_1783;
        let x_1786 : f32 = u_xlat7.w;
        let x_1788 : f32 = u_xlat6.x;
        let x_1791 : f32 = u_xlat46.x;
        u_xlat64 = ((x_1786 * x_1788) + x_1791);
      }
    }
  } else {
    let x_1795 : vec4<f32> = vs_TEXCOORD6;
    let x_1796 : vec2<f32> = vec2<f32>(x_1795.x, x_1795.y);
    let x_1798 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
    let x_1805 : vec3<f32> = txVec29;
    let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1805.xy, x_1805.z);
    u_xlat64 = x_1807;
  }
  let x_1809 : f32 = x_546.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1809) + 1.0f);
  let x_1813 : f32 = u_xlat64;
  let x_1815 : f32 = x_546.x_MainLightShadowParams.x;
  let x_1818 : f32 = u_xlat6.x;
  u_xlat64 = ((x_1813 * x_1815) + x_1818);
  let x_1821 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1821);
  let x_1825 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_1825 >= 1.0f);
  let x_1827 : bool = u_xlatb26;
  let x_1828 : bool = u_xlatb6;
  u_xlatb6 = (x_1827 | x_1828);
  let x_1830 : bool = u_xlatb6;
  let x_1831 : f32 = u_xlat64;
  u_xlat64 = select(x_1831, 1.0f, x_1830);
  let x_1833 : vec3<f32> = vs_TEXCOORD1;
  let x_1835 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1837 : vec3<f32> = (x_1833 + -(x_1835));
  let x_1838 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
  let x_1840 : vec4<f32> = u_xlat6;
  let x_1842 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1840.x, x_1840.y, x_1840.z), vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
  let x_1847 : f32 = u_xlat6.x;
  let x_1849 : f32 = x_546.x_MainLightShadowParams.z;
  let x_1852 : f32 = x_546.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1847 * x_1849) + x_1852);
  let x_1856 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1856, 0.0f, 1.0f);
  let x_1859 : f32 = u_xlat64;
  u_xlat26 = (-(x_1859) + 1.0f);
  let x_1863 : f32 = u_xlat6.x;
  let x_1864 : f32 = u_xlat26;
  let x_1866 : f32 = u_xlat64;
  u_xlat64 = ((x_1863 * x_1864) + x_1866);
  let x_1874 : f32 = x_1872.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1874 == -1.0f));
  let x_1876 : bool = u_xlatb6;
  if (x_1876) {
    let x_1879 : vec3<f32> = vs_TEXCOORD1;
    let x_1882 : vec4<f32> = x_1872.x_MainLightWorldToLight[1i];
    let x_1884 : vec2<f32> = (vec2<f32>(x_1879.y, x_1879.y) * vec2<f32>(x_1882.x, x_1882.y));
    let x_1885 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1884.x, x_1884.y, x_1885.z, x_1885.w);
    let x_1888 : vec4<f32> = x_1872.x_MainLightWorldToLight[0i];
    let x_1890 : vec3<f32> = vs_TEXCOORD1;
    let x_1893 : vec4<f32> = u_xlat6;
    let x_1895 : vec2<f32> = ((vec2<f32>(x_1888.x, x_1888.y) * vec2<f32>(x_1890.x, x_1890.x)) + vec2<f32>(x_1893.x, x_1893.y));
    let x_1896 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1895.x, x_1895.y, x_1896.z, x_1896.w);
    let x_1899 : vec4<f32> = x_1872.x_MainLightWorldToLight[2i];
    let x_1901 : vec3<f32> = vs_TEXCOORD1;
    let x_1904 : vec4<f32> = u_xlat6;
    let x_1906 : vec2<f32> = ((vec2<f32>(x_1899.x, x_1899.y) * vec2<f32>(x_1901.z, x_1901.z)) + vec2<f32>(x_1904.x, x_1904.y));
    let x_1907 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1906.x, x_1906.y, x_1907.z, x_1907.w);
    let x_1909 : vec4<f32> = u_xlat6;
    let x_1913 : vec4<f32> = x_1872.x_MainLightWorldToLight[3i];
    let x_1915 : vec2<f32> = (vec2<f32>(x_1909.x, x_1909.y) + vec2<f32>(x_1913.x, x_1913.y));
    let x_1916 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1915.x, x_1915.y, x_1916.z, x_1916.w);
    let x_1918 : vec4<f32> = u_xlat6;
    let x_1921 : vec2<f32> = ((vec2<f32>(x_1918.x, x_1918.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1922 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1921.x, x_1921.y, x_1922.z, x_1922.w);
    let x_1929 : vec4<f32> = u_xlat6;
    let x_1932 : f32 = x_44.x_GlobalMipBias.x;
    let x_1933 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1929.x, x_1929.y), x_1932);
    u_xlat6 = x_1933;
    let x_1938 : f32 = x_1872.x_MainLightCookieTextureFormat;
    let x_1940 : f32 = x_1872.x_MainLightCookieTextureFormat;
    let x_1942 : f32 = x_1872.x_MainLightCookieTextureFormat;
    let x_1944 : f32 = x_1872.x_MainLightCookieTextureFormat;
    let x_1945 : vec4<f32> = vec4<f32>(x_1938, x_1940, x_1942, x_1944);
    let x_1953 : vec4<bool> = (vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1945.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1953.x, x_1953.y);
    let x_1956 : bool = u_xlatb7.y;
    if (x_1956) {
      let x_1961 : f32 = u_xlat6.w;
      x_1957 = x_1961;
    } else {
      let x_1964 : f32 = u_xlat6.x;
      x_1957 = x_1964;
    }
    let x_1965 : f32 = x_1957;
    u_xlat66 = x_1965;
    let x_1967 : bool = u_xlatb7.x;
    if (x_1967) {
      let x_1971 : vec4<f32> = u_xlat6;
      x_1968 = vec3<f32>(x_1971.x, x_1971.y, x_1971.z);
    } else {
      let x_1974 : f32 = u_xlat66;
      x_1968 = vec3<f32>(x_1974, x_1974, x_1974);
    }
    let x_1976 : vec3<f32> = x_1968;
    let x_1977 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1983 : vec4<f32> = u_xlat6;
  let x_1986 : vec4<f32> = x_44.x_MainLightColor;
  let x_1988 : vec3<f32> = (vec3<f32>(x_1983.x, x_1983.y, x_1983.z) * vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
  let x_1989 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
  let x_1991 : f32 = u_xlat65;
  let x_1993 : vec4<f32> = u_xlat6;
  let x_1995 : vec3<f32> = (vec3<f32>(x_1991, x_1991, x_1991) * vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
  let x_1996 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);
  let x_1998 : vec3<f32> = u_xlat5;
  let x_2000 : vec4<f32> = u_xlat4;
  u_xlat66 = dot(-(x_1998), vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
  let x_2003 : f32 = u_xlat66;
  let x_2004 : f32 = u_xlat66;
  u_xlat66 = (x_2003 + x_2004);
  let x_2006 : vec4<f32> = u_xlat4;
  let x_2008 : f32 = u_xlat66;
  let x_2012 : vec3<f32> = u_xlat5;
  let x_2014 : vec3<f32> = ((vec3<f32>(x_2006.x, x_2006.y, x_2006.z) * -(vec3<f32>(x_2008, x_2008, x_2008))) + -(x_2012));
  let x_2015 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);
  let x_2017 : vec4<f32> = u_xlat4;
  let x_2019 : vec3<f32> = u_xlat5;
  u_xlat66 = dot(vec3<f32>(x_2017.x, x_2017.y, x_2017.z), x_2019);
  let x_2021 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2021, 0.0f, 1.0f);
  let x_2023 : f32 = u_xlat66;
  u_xlat66 = (-(x_2023) + 1.0f);
  let x_2026 : f32 = u_xlat66;
  let x_2027 : f32 = u_xlat66;
  u_xlat66 = (x_2026 * x_2027);
  let x_2029 : f32 = u_xlat66;
  let x_2030 : f32 = u_xlat66;
  u_xlat66 = (x_2029 * x_2030);
  let x_2033 : f32 = u_xlat60;
  u_xlat67 = ((-(x_2033) * 0.699999988f) + 1.700000048f);
  let x_2039 : f32 = u_xlat60;
  let x_2040 : f32 = u_xlat67;
  u_xlat60 = (x_2039 * x_2040);
  let x_2042 : f32 = u_xlat60;
  u_xlat60 = (x_2042 * 6.0f);
  let x_2053 : vec4<f32> = u_xlat7;
  let x_2055 : f32 = u_xlat60;
  let x_2056 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2053.x, x_2053.y, x_2053.z), x_2055);
  u_xlat7 = x_2056;
  let x_2058 : f32 = u_xlat7.w;
  u_xlat60 = (x_2058 + -1.0f);
  let x_2061 : f32 = x_184.unity_SpecCube0_HDR.w;
  let x_2062 : f32 = u_xlat60;
  u_xlat60 = ((x_2061 * x_2062) + 1.0f);
  let x_2065 : f32 = u_xlat60;
  u_xlat60 = max(x_2065, 0.0f);
  let x_2067 : f32 = u_xlat60;
  u_xlat60 = log2(x_2067);
  let x_2069 : f32 = u_xlat60;
  let x_2071 : f32 = x_184.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_2069 * x_2071);
  let x_2073 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2073);
  let x_2075 : f32 = u_xlat60;
  let x_2077 : f32 = x_184.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_2075 * x_2077);
  let x_2079 : vec4<f32> = u_xlat7;
  let x_2081 : f32 = u_xlat60;
  let x_2083 : vec3<f32> = (vec3<f32>(x_2079.x, x_2079.y, x_2079.z) * vec3<f32>(x_2081, x_2081, x_2081));
  let x_2084 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2083.x, x_2083.y, x_2083.z, x_2084.w);
  let x_2086 : vec2<f32> = u_xlat1;
  let x_2088 : vec2<f32> = u_xlat1;
  let x_2092 : vec2<f32> = ((vec2<f32>(x_2086.x, x_2086.x) * vec2<f32>(x_2088.x, x_2088.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2093 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2092.x, x_2092.y, x_2093.z, x_2093.w);
  let x_2096 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_2096);
  let x_2098 : vec4<f32> = u_xlat0;
  let x_2101 : vec2<f32> = u_xlat41;
  u_xlat28 = (-(vec3<f32>(x_2098.x, x_2098.y, x_2098.z)) + vec3<f32>(x_2101.x, x_2101.x, x_2101.x));
  let x_2104 : f32 = u_xlat66;
  let x_2106 : vec3<f32> = u_xlat28;
  let x_2108 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_2104, x_2104, x_2104) * x_2106) + vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
  let x_2111 : f32 = u_xlat60;
  let x_2113 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2111, x_2111, x_2111) * x_2113);
  let x_2115 : vec4<f32> = u_xlat7;
  let x_2117 : vec3<f32> = u_xlat28;
  let x_2118 : vec3<f32> = (vec3<f32>(x_2115.x, x_2115.y, x_2115.z) * x_2117);
  let x_2119 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2119.w);
  let x_2121 : vec3<f32> = u_xlat23;
  let x_2122 : vec3<f32> = u_xlat22;
  let x_2124 : vec4<f32> = u_xlat7;
  u_xlat23 = ((x_2121 * x_2122) + vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
  let x_2127 : f32 = u_xlat64;
  let x_2130 : f32 = x_184.unity_LightData.z;
  u_xlat60 = (x_2127 * x_2130);
  let x_2132 : vec4<f32> = u_xlat4;
  let x_2135 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2132.x, x_2132.y, x_2132.z), vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
  let x_2140 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2140, 0.0f, 1.0f);
  let x_2143 : f32 = u_xlat60;
  let x_2145 : f32 = u_xlat1.x;
  u_xlat60 = (x_2143 * x_2145);
  let x_2147 : f32 = u_xlat60;
  let x_2149 : vec4<f32> = u_xlat6;
  let x_2151 : vec3<f32> = (vec3<f32>(x_2147, x_2147, x_2147) * vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
  let x_2152 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
  let x_2154 : vec3<f32> = u_xlat5;
  let x_2156 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2158 : vec3<f32> = (x_2154 + vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
  let x_2159 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2158.x, x_2158.y, x_2158.z, x_2159.w);
  let x_2161 : vec4<f32> = u_xlat7;
  let x_2163 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2161.x, x_2161.y, x_2161.z), vec3<f32>(x_2163.x, x_2163.y, x_2163.z));
  let x_2166 : f32 = u_xlat60;
  u_xlat60 = max(x_2166, 1.17549435e-37f);
  let x_2169 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2169);
  let x_2171 : f32 = u_xlat60;
  let x_2173 : vec4<f32> = u_xlat7;
  let x_2175 : vec3<f32> = (vec3<f32>(x_2171, x_2171, x_2171) * vec3<f32>(x_2173.x, x_2173.y, x_2173.z));
  let x_2176 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2176.w);
  let x_2178 : vec4<f32> = u_xlat4;
  let x_2180 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2178.x, x_2178.y, x_2178.z), vec3<f32>(x_2180.x, x_2180.y, x_2180.z));
  let x_2183 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2183, 0.0f, 1.0f);
  let x_2186 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2188 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2186.x, x_2186.y, x_2186.z), vec3<f32>(x_2188.x, x_2188.y, x_2188.z));
  let x_2193 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2193, 0.0f, 1.0f);
  let x_2196 : f32 = u_xlat60;
  let x_2197 : f32 = u_xlat60;
  u_xlat60 = (x_2196 * x_2197);
  let x_2199 : f32 = u_xlat60;
  let x_2201 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2199 * x_2201) + 1.000010014f);
  let x_2206 : f32 = u_xlat1.x;
  let x_2208 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2206 * x_2208);
  let x_2211 : f32 = u_xlat60;
  let x_2212 : f32 = u_xlat60;
  u_xlat60 = (x_2211 * x_2212);
  let x_2215 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2215, 0.100000001f);
  let x_2219 : f32 = u_xlat60;
  let x_2221 : f32 = u_xlat1.x;
  u_xlat60 = (x_2219 * x_2221);
  let x_2223 : f32 = u_xlat61;
  let x_2224 : f32 = u_xlat60;
  u_xlat60 = (x_2223 * x_2224);
  let x_2226 : f32 = u_xlat21;
  let x_2227 : f32 = u_xlat60;
  u_xlat60 = (x_2226 / x_2227);
  let x_2229 : vec4<f32> = u_xlat0;
  let x_2231 : f32 = u_xlat60;
  let x_2234 : vec3<f32> = u_xlat22;
  let x_2235 : vec3<f32> = ((vec3<f32>(x_2229.x, x_2229.y, x_2229.z) * vec3<f32>(x_2231, x_2231, x_2231)) + x_2234);
  let x_2236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
  let x_2238 : vec4<f32> = u_xlat6;
  let x_2240 : vec4<f32> = u_xlat7;
  let x_2242 : vec3<f32> = (vec3<f32>(x_2238.x, x_2238.y, x_2238.z) * vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
  let x_2246 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2248 : f32 = x_184.unity_LightData.y;
  u_xlat60 = min(x_2246, x_2248);
  let x_2252 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2252));
  let x_2259 : f32 = x_1872.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2261 : f32 = x_1872.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2263 : f32 = x_1872.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2265 : f32 = x_1872.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2266 : vec4<f32> = vec4<f32>(x_2259, x_2261, x_2263, x_2265);
  let x_2273 : vec4<bool> = (vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2266.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_2274 : vec2<bool> = vec2<bool>(x_2273.x, x_2273.z);
  let x_2275 : vec3<bool> = u_xlatb1;
  u_xlatb1 = vec3<bool>(x_2274.x, x_2275.y, x_2274.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2286 : u32 = u_xlatu_loop_1;
    let x_2287 : u32 = u_xlatu60;
    if ((x_2286 < x_2287)) {
    } else {
      break;
    }
    let x_2290 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2290 >> 2u);
    let x_2294 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2294 & 3u));
    let x_2297 : u32 = u_xlatu66;
    let x_2300 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_2297)];
    let x_2310 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2315 : vec4<u32> = indexable[x_2310];
    u_xlat66 = dot(x_2300, bitcast<vec4<f32>>(x_2315));
    let x_2318 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2318));
    let x_2321 : vec3<f32> = vs_TEXCOORD1;
    let x_2333 : u32 = u_xlatu66;
    let x_2336 : vec4<f32> = x_2332.x_AdditionalLightsPosition[bitcast<i32>(x_2333)];
    let x_2339 : u32 = u_xlatu66;
    let x_2342 : vec4<f32> = x_2332.x_AdditionalLightsPosition[bitcast<i32>(x_2339)];
    u_xlat28 = ((-(x_2321) * vec3<f32>(x_2336.w, x_2336.w, x_2336.w)) + vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
    let x_2345 : vec3<f32> = u_xlat28;
    let x_2346 : vec3<f32> = u_xlat28;
    u_xlat67 = dot(x_2345, x_2346);
    let x_2348 : f32 = u_xlat67;
    u_xlat67 = max(x_2348, 6.10351562e-05f);
    let x_2351 : f32 = u_xlat67;
    u_xlat9.x = inverseSqrt(x_2351);
    let x_2355 : vec3<f32> = u_xlat28;
    let x_2356 : vec4<f32> = u_xlat9;
    u_xlat29 = (x_2355 * vec3<f32>(x_2356.x, x_2356.x, x_2356.x));
    let x_2359 : f32 = u_xlat67;
    u_xlat10.x = (1.0f / x_2359);
    let x_2362 : f32 = u_xlat67;
    let x_2363 : u32 = u_xlatu66;
    let x_2366 : f32 = x_2332.x_AdditionalLightsAttenuation[bitcast<i32>(x_2363)].x;
    u_xlat67 = (x_2362 * x_2366);
    let x_2368 : f32 = u_xlat67;
    let x_2370 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2368) * x_2370) + 1.0f);
    let x_2373 : f32 = u_xlat67;
    u_xlat67 = max(x_2373, 0.0f);
    let x_2375 : f32 = u_xlat67;
    let x_2376 : f32 = u_xlat67;
    u_xlat67 = (x_2375 * x_2376);
    let x_2378 : f32 = u_xlat67;
    let x_2380 : f32 = u_xlat10.x;
    u_xlat67 = (x_2378 * x_2380);
    let x_2382 : u32 = u_xlatu66;
    let x_2385 : vec4<f32> = x_2332.x_AdditionalLightsSpotDir[bitcast<i32>(x_2382)];
    let x_2387 : vec3<f32> = u_xlat29;
    u_xlat10.x = dot(vec3<f32>(x_2385.x, x_2385.y, x_2385.z), x_2387);
    let x_2391 : f32 = u_xlat10.x;
    let x_2392 : u32 = u_xlatu66;
    let x_2395 : f32 = x_2332.x_AdditionalLightsAttenuation[bitcast<i32>(x_2392)].z;
    let x_2397 : u32 = u_xlatu66;
    let x_2400 : f32 = x_2332.x_AdditionalLightsAttenuation[bitcast<i32>(x_2397)].w;
    u_xlat10.x = ((x_2391 * x_2395) + x_2400);
    let x_2404 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2404, 0.0f, 1.0f);
    let x_2408 : f32 = u_xlat10.x;
    let x_2410 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2408 * x_2410);
    let x_2413 : f32 = u_xlat67;
    let x_2415 : f32 = u_xlat10.x;
    u_xlat67 = (x_2413 * x_2415);
    let x_2418 : u32 = u_xlatu66;
    u_xlatu10 = (x_2418 >> 5u);
    let x_2421 : u32 = u_xlatu66;
    u_xlati30 = (1i << bitcast<u32>((bitcast<i32>(x_2421) & 31i)));
    let x_2427 : i32 = u_xlati30;
    let x_2429 : u32 = u_xlatu10;
    let x_2432 : f32 = x_1872.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2429)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2427) & bitcast<u32>(x_2432)));
    let x_2436 : i32 = u_xlati10;
    if ((x_2436 != 0i)) {
      let x_2446 : u32 = u_xlatu66;
      let x_2449 : f32 = x_2445.x_AdditionalLightsLightTypes[bitcast<i32>(x_2446)].el;
      u_xlati10 = i32(x_2449);
      let x_2451 : i32 = u_xlati10;
      u_xlati30 = select(1i, 0i, (x_2451 != 0i));
      let x_2455 : u32 = u_xlatu66;
      u_xlati50 = (bitcast<i32>(x_2455) << bitcast<u32>(2i));
      let x_2458 : i32 = u_xlati30;
      if ((x_2458 != 0i)) {
        let x_2462 : vec3<f32> = vs_TEXCOORD1;
        let x_2464 : i32 = u_xlati50;
        let x_2467 : i32 = u_xlati50;
        let x_2471 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[((x_2464 + 1i) / 4i)][((x_2467 + 1i) % 4i)];
        let x_2473 : vec3<f32> = (vec3<f32>(x_2462.y, x_2462.y, x_2462.y) * vec3<f32>(x_2471.x, x_2471.y, x_2471.w));
        let x_2474 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2474.w);
        let x_2476 : i32 = u_xlati50;
        let x_2478 : i32 = u_xlati50;
        let x_2481 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[(x_2476 / 4i)][(x_2478 % 4i)];
        let x_2483 : vec3<f32> = vs_TEXCOORD1;
        let x_2486 : vec4<f32> = u_xlat11;
        let x_2488 : vec3<f32> = ((vec3<f32>(x_2481.x, x_2481.y, x_2481.w) * vec3<f32>(x_2483.x, x_2483.x, x_2483.x)) + vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
        let x_2489 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
        let x_2491 : i32 = u_xlati50;
        let x_2494 : i32 = u_xlati50;
        let x_2498 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[((x_2491 + 2i) / 4i)][((x_2494 + 2i) % 4i)];
        let x_2500 : vec3<f32> = vs_TEXCOORD1;
        let x_2503 : vec4<f32> = u_xlat11;
        let x_2505 : vec3<f32> = ((vec3<f32>(x_2498.x, x_2498.y, x_2498.w) * vec3<f32>(x_2500.z, x_2500.z, x_2500.z)) + vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
        let x_2506 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2505.x, x_2505.y, x_2505.z, x_2506.w);
        let x_2508 : vec4<f32> = u_xlat11;
        let x_2510 : i32 = u_xlati50;
        let x_2513 : i32 = u_xlati50;
        let x_2517 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[((x_2510 + 3i) / 4i)][((x_2513 + 3i) % 4i)];
        let x_2519 : vec3<f32> = (vec3<f32>(x_2508.x, x_2508.y, x_2508.z) + vec3<f32>(x_2517.x, x_2517.y, x_2517.w));
        let x_2520 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2520.w);
        let x_2523 : vec4<f32> = u_xlat11;
        let x_2525 : vec4<f32> = u_xlat11;
        let x_2527 : vec2<f32> = (vec2<f32>(x_2523.x, x_2523.y) / vec2<f32>(x_2525.z, x_2525.z));
        let x_2528 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2527.x, x_2528.y, x_2527.y);
        let x_2530 : vec3<f32> = u_xlat30;
        let x_2533 : vec2<f32> = ((vec2<f32>(x_2530.x, x_2530.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2534 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2533.x, x_2534.y, x_2533.y);
        let x_2536 : vec3<f32> = u_xlat30;
        let x_2540 : vec2<f32> = clamp(vec2<f32>(x_2536.x, x_2536.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2541 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2540.x, x_2541.y, x_2540.y);
        let x_2543 : u32 = u_xlatu66;
        let x_2546 : vec4<f32> = x_2445.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2543)];
        let x_2548 : vec3<f32> = u_xlat30;
        let x_2551 : u32 = u_xlatu66;
        let x_2554 : vec4<f32> = x_2445.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2551)];
        let x_2556 : vec2<f32> = ((vec2<f32>(x_2546.x, x_2546.y) * vec2<f32>(x_2548.x, x_2548.z)) + vec2<f32>(x_2554.z, x_2554.w));
        let x_2557 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2556.x, x_2557.y, x_2556.y);
      } else {
        let x_2561 : i32 = u_xlati10;
        u_xlatb10 = (x_2561 == 1i);
        let x_2563 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2563);
        let x_2565 : i32 = u_xlati10;
        if ((x_2565 != 0i)) {
          let x_2569 : vec3<f32> = vs_TEXCOORD1;
          let x_2571 : i32 = u_xlati50;
          let x_2574 : i32 = u_xlati50;
          let x_2578 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[((x_2571 + 1i) / 4i)][((x_2574 + 1i) % 4i)];
          let x_2580 : vec2<f32> = (vec2<f32>(x_2569.y, x_2569.y) * vec2<f32>(x_2578.x, x_2578.y));
          let x_2581 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2580.x, x_2580.y, x_2581.z, x_2581.w);
          let x_2583 : i32 = u_xlati50;
          let x_2585 : i32 = u_xlati50;
          let x_2588 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[(x_2583 / 4i)][(x_2585 % 4i)];
          let x_2590 : vec3<f32> = vs_TEXCOORD1;
          let x_2593 : vec4<f32> = u_xlat11;
          let x_2595 : vec2<f32> = ((vec2<f32>(x_2588.x, x_2588.y) * vec2<f32>(x_2590.x, x_2590.x)) + vec2<f32>(x_2593.x, x_2593.y));
          let x_2596 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2595.x, x_2595.y, x_2596.z, x_2596.w);
          let x_2598 : i32 = u_xlati50;
          let x_2601 : i32 = u_xlati50;
          let x_2605 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[((x_2598 + 2i) / 4i)][((x_2601 + 2i) % 4i)];
          let x_2607 : vec3<f32> = vs_TEXCOORD1;
          let x_2610 : vec4<f32> = u_xlat11;
          let x_2612 : vec2<f32> = ((vec2<f32>(x_2605.x, x_2605.y) * vec2<f32>(x_2607.z, x_2607.z)) + vec2<f32>(x_2610.x, x_2610.y));
          let x_2613 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2612.x, x_2612.y, x_2613.z, x_2613.w);
          let x_2615 : vec4<f32> = u_xlat11;
          let x_2617 : i32 = u_xlati50;
          let x_2620 : i32 = u_xlati50;
          let x_2624 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[((x_2617 + 3i) / 4i)][((x_2620 + 3i) % 4i)];
          let x_2626 : vec2<f32> = (vec2<f32>(x_2615.x, x_2615.y) + vec2<f32>(x_2624.x, x_2624.y));
          let x_2627 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2626.x, x_2626.y, x_2627.z, x_2627.w);
          let x_2629 : vec4<f32> = u_xlat11;
          let x_2632 : vec2<f32> = ((vec2<f32>(x_2629.x, x_2629.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2633 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2632.x, x_2632.y, x_2633.z, x_2633.w);
          let x_2635 : vec4<f32> = u_xlat11;
          let x_2637 : vec2<f32> = fract(vec2<f32>(x_2635.x, x_2635.y));
          let x_2638 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2637.x, x_2637.y, x_2638.z, x_2638.w);
          let x_2640 : u32 = u_xlatu66;
          let x_2643 : vec4<f32> = x_2445.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2640)];
          let x_2645 : vec4<f32> = u_xlat11;
          let x_2648 : u32 = u_xlatu66;
          let x_2651 : vec4<f32> = x_2445.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2648)];
          let x_2653 : vec2<f32> = ((vec2<f32>(x_2643.x, x_2643.y) * vec2<f32>(x_2645.x, x_2645.y)) + vec2<f32>(x_2651.z, x_2651.w));
          let x_2654 : vec3<f32> = u_xlat30;
          u_xlat30 = vec3<f32>(x_2653.x, x_2654.y, x_2653.y);
        } else {
          let x_2657 : vec3<f32> = vs_TEXCOORD1;
          let x_2659 : i32 = u_xlati50;
          let x_2662 : i32 = u_xlati50;
          let x_2666 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[((x_2659 + 1i) / 4i)][((x_2662 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2657.y, x_2657.y, x_2657.y, x_2657.y) * x_2666);
          let x_2668 : i32 = u_xlati50;
          let x_2670 : i32 = u_xlati50;
          let x_2673 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[(x_2668 / 4i)][(x_2670 % 4i)];
          let x_2674 : vec3<f32> = vs_TEXCOORD1;
          let x_2677 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2673 * vec4<f32>(x_2674.x, x_2674.x, x_2674.x, x_2674.x)) + x_2677);
          let x_2679 : i32 = u_xlati50;
          let x_2682 : i32 = u_xlati50;
          let x_2686 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[((x_2679 + 2i) / 4i)][((x_2682 + 2i) % 4i)];
          let x_2687 : vec3<f32> = vs_TEXCOORD1;
          let x_2690 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2686 * vec4<f32>(x_2687.z, x_2687.z, x_2687.z, x_2687.z)) + x_2690);
          let x_2692 : vec4<f32> = u_xlat11;
          let x_2693 : i32 = u_xlati50;
          let x_2696 : i32 = u_xlati50;
          let x_2700 : vec4<f32> = x_2445.x_AdditionalLightsWorldToLights[((x_2693 + 3i) / 4i)][((x_2696 + 3i) % 4i)];
          u_xlat11 = (x_2692 + x_2700);
          let x_2702 : vec4<f32> = u_xlat11;
          let x_2704 : vec4<f32> = u_xlat11;
          let x_2706 : vec3<f32> = (vec3<f32>(x_2702.x, x_2702.y, x_2702.z) / vec3<f32>(x_2704.w, x_2704.w, x_2704.w));
          let x_2707 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2707.w);
          let x_2709 : vec4<f32> = u_xlat11;
          let x_2711 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2709.x, x_2709.y, x_2709.z), vec3<f32>(x_2711.x, x_2711.y, x_2711.z));
          let x_2716 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2716);
          let x_2719 : vec4<f32> = u_xlat10;
          let x_2721 : vec4<f32> = u_xlat11;
          let x_2723 : vec3<f32> = (vec3<f32>(x_2719.x, x_2719.x, x_2719.x) * vec3<f32>(x_2721.x, x_2721.y, x_2721.z));
          let x_2724 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2724.w);
          let x_2726 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2726.x, x_2726.y, x_2726.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2733 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2733, 0.000001f);
          let x_2738 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2738);
          let x_2741 : vec4<f32> = u_xlat10;
          let x_2743 : vec4<f32> = u_xlat11;
          let x_2745 : vec3<f32> = (vec3<f32>(x_2741.x, x_2741.x, x_2741.x) * vec3<f32>(x_2743.z, x_2743.x, x_2743.y));
          let x_2746 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2745.x, x_2745.y, x_2745.z, x_2746.w);
          let x_2749 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2749);
          let x_2753 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2753, 0.0f, 1.0f);
          let x_2757 : vec4<f32> = u_xlat12;
          let x_2760 : vec4<bool> = (vec4<f32>(x_2757.y, x_2757.z, x_2757.y, x_2757.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2760.x, x_2760.y);
          let x_2764 : bool = u_xlatb51.x;
          if (x_2764) {
            let x_2769 : f32 = u_xlat12.x;
            x_2765 = x_2769;
          } else {
            let x_2772 : f32 = u_xlat12.x;
            x_2765 = -(x_2772);
          }
          let x_2774 : f32 = x_2765;
          u_xlat51.x = x_2774;
          let x_2777 : bool = u_xlatb51.y;
          if (x_2777) {
            let x_2782 : f32 = u_xlat12.x;
            x_2778 = x_2782;
          } else {
            let x_2785 : f32 = u_xlat12.x;
            x_2778 = -(x_2785);
          }
          let x_2787 : f32 = x_2778;
          u_xlat51.y = x_2787;
          let x_2789 : vec4<f32> = u_xlat11;
          let x_2791 : vec4<f32> = u_xlat10;
          let x_2794 : vec2<f32> = u_xlat51;
          let x_2795 : vec2<f32> = ((vec2<f32>(x_2789.x, x_2789.y) * vec2<f32>(x_2791.x, x_2791.x)) + x_2794);
          let x_2796 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2795.x, x_2796.y, x_2795.y, x_2796.w);
          let x_2798 : vec4<f32> = u_xlat10;
          let x_2801 : vec2<f32> = ((vec2<f32>(x_2798.x, x_2798.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2802 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2801.x, x_2802.y, x_2801.y, x_2802.w);
          let x_2804 : vec4<f32> = u_xlat10;
          let x_2808 : vec2<f32> = clamp(vec2<f32>(x_2804.x, x_2804.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2809 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2808.x, x_2809.y, x_2808.y, x_2809.w);
          let x_2811 : u32 = u_xlatu66;
          let x_2814 : vec4<f32> = x_2445.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2811)];
          let x_2816 : vec4<f32> = u_xlat10;
          let x_2819 : u32 = u_xlatu66;
          let x_2822 : vec4<f32> = x_2445.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2819)];
          let x_2824 : vec2<f32> = ((vec2<f32>(x_2814.x, x_2814.y) * vec2<f32>(x_2816.x, x_2816.z)) + vec2<f32>(x_2822.z, x_2822.w));
          let x_2825 : vec3<f32> = u_xlat30;
          u_xlat30 = vec3<f32>(x_2824.x, x_2825.y, x_2824.y);
        }
      }
      let x_2832 : vec3<f32> = u_xlat30;
      let x_2835 : f32 = x_44.x_GlobalMipBias.x;
      let x_2836 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2832.x, x_2832.z), x_2835);
      u_xlat10 = x_2836;
      let x_2839 : bool = u_xlatb1.z;
      if (x_2839) {
        let x_2844 : f32 = u_xlat10.w;
        x_2840 = x_2844;
      } else {
        let x_2847 : f32 = u_xlat10.x;
        x_2840 = x_2847;
      }
      let x_2848 : f32 = x_2840;
      u_xlat70 = x_2848;
      let x_2850 : bool = u_xlatb1.x;
      if (x_2850) {
        let x_2854 : vec4<f32> = u_xlat10;
        x_2851 = vec3<f32>(x_2854.x, x_2854.y, x_2854.z);
      } else {
        let x_2857 : f32 = u_xlat70;
        x_2851 = vec3<f32>(x_2857, x_2857, x_2857);
      }
      let x_2859 : vec3<f32> = x_2851;
      let x_2860 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2859.x, x_2859.y, x_2859.z, x_2860.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_2866 : vec4<f32> = u_xlat10;
    let x_2868 : u32 = u_xlatu66;
    let x_2871 : vec4<f32> = x_2332.x_AdditionalLightsColor[bitcast<i32>(x_2868)];
    let x_2873 : vec3<f32> = (vec3<f32>(x_2866.x, x_2866.y, x_2866.z) * vec3<f32>(x_2871.x, x_2871.y, x_2871.z));
    let x_2874 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2873.x, x_2873.y, x_2873.z, x_2874.w);
    let x_2876 : f32 = u_xlat65;
    let x_2878 : vec4<f32> = u_xlat10;
    let x_2880 : vec3<f32> = (vec3<f32>(x_2876, x_2876, x_2876) * vec3<f32>(x_2878.x, x_2878.y, x_2878.z));
    let x_2881 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2880.x, x_2880.y, x_2880.z, x_2881.w);
    let x_2883 : vec4<f32> = u_xlat4;
    let x_2885 : vec3<f32> = u_xlat29;
    u_xlat66 = dot(vec3<f32>(x_2883.x, x_2883.y, x_2883.z), x_2885);
    let x_2887 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2887, 0.0f, 1.0f);
    let x_2889 : f32 = u_xlat66;
    let x_2890 : f32 = u_xlat67;
    u_xlat66 = (x_2889 * x_2890);
    let x_2892 : f32 = u_xlat66;
    let x_2894 : vec4<f32> = u_xlat10;
    let x_2896 : vec3<f32> = (vec3<f32>(x_2892, x_2892, x_2892) * vec3<f32>(x_2894.x, x_2894.y, x_2894.z));
    let x_2897 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2896.x, x_2896.y, x_2896.z, x_2897.w);
    let x_2899 : vec3<f32> = u_xlat28;
    let x_2900 : vec4<f32> = u_xlat9;
    let x_2903 : vec3<f32> = u_xlat5;
    u_xlat28 = ((x_2899 * vec3<f32>(x_2900.x, x_2900.x, x_2900.x)) + x_2903);
    let x_2905 : vec3<f32> = u_xlat28;
    let x_2906 : vec3<f32> = u_xlat28;
    u_xlat66 = dot(x_2905, x_2906);
    let x_2908 : f32 = u_xlat66;
    u_xlat66 = max(x_2908, 1.17549435e-37f);
    let x_2910 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_2910);
    let x_2912 : f32 = u_xlat66;
    let x_2914 : vec3<f32> = u_xlat28;
    u_xlat28 = (vec3<f32>(x_2912, x_2912, x_2912) * x_2914);
    let x_2916 : vec4<f32> = u_xlat4;
    let x_2918 : vec3<f32> = u_xlat28;
    u_xlat66 = dot(vec3<f32>(x_2916.x, x_2916.y, x_2916.z), x_2918);
    let x_2920 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2920, 0.0f, 1.0f);
    let x_2922 : vec3<f32> = u_xlat29;
    let x_2923 : vec3<f32> = u_xlat28;
    u_xlat67 = dot(x_2922, x_2923);
    let x_2925 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2925, 0.0f, 1.0f);
    let x_2927 : f32 = u_xlat66;
    let x_2928 : f32 = u_xlat66;
    u_xlat66 = (x_2927 * x_2928);
    let x_2930 : f32 = u_xlat66;
    let x_2932 : f32 = u_xlat8.x;
    u_xlat66 = ((x_2930 * x_2932) + 1.000010014f);
    let x_2935 : f32 = u_xlat67;
    let x_2936 : f32 = u_xlat67;
    u_xlat67 = (x_2935 * x_2936);
    let x_2938 : f32 = u_xlat66;
    let x_2939 : f32 = u_xlat66;
    u_xlat66 = (x_2938 * x_2939);
    let x_2941 : f32 = u_xlat67;
    u_xlat67 = max(x_2941, 0.100000001f);
    let x_2943 : f32 = u_xlat66;
    let x_2944 : f32 = u_xlat67;
    u_xlat66 = (x_2943 * x_2944);
    let x_2946 : f32 = u_xlat61;
    let x_2947 : f32 = u_xlat66;
    u_xlat66 = (x_2946 * x_2947);
    let x_2949 : f32 = u_xlat21;
    let x_2950 : f32 = u_xlat66;
    u_xlat66 = (x_2949 / x_2950);
    let x_2952 : vec4<f32> = u_xlat0;
    let x_2954 : f32 = u_xlat66;
    let x_2957 : vec3<f32> = u_xlat22;
    u_xlat28 = ((vec3<f32>(x_2952.x, x_2952.y, x_2952.z) * vec3<f32>(x_2954, x_2954, x_2954)) + x_2957);
    let x_2959 : vec3<f32> = u_xlat28;
    let x_2960 : vec4<f32> = u_xlat10;
    let x_2963 : vec4<f32> = u_xlat7;
    let x_2965 : vec3<f32> = ((x_2959 * vec3<f32>(x_2960.x, x_2960.y, x_2960.z)) + vec3<f32>(x_2963.x, x_2963.y, x_2963.z));
    let x_2966 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2965.x, x_2965.y, x_2965.z, x_2966.w);

    continuing {
      let x_2968 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2968 + bitcast<u32>(1i));
    }
  }
  let x_2970 : vec3<f32> = u_xlat23;
  let x_2971 : vec3<f32> = u_xlat3;
  let x_2974 : vec4<f32> = u_xlat6;
  let x_2976 : vec3<f32> = ((x_2970 * vec3<f32>(x_2971.x, x_2971.x, x_2971.x)) + vec3<f32>(x_2974.x, x_2974.y, x_2974.z));
  let x_2977 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2977.w);
  let x_2981 : vec4<f32> = u_xlat7;
  let x_2983 : vec4<f32> = u_xlat0;
  let x_2985 : vec3<f32> = (vec3<f32>(x_2981.x, x_2981.y, x_2981.z) + vec3<f32>(x_2983.x, x_2983.y, x_2983.z));
  let x_2986 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2985.x, x_2985.y, x_2985.z, x_2986.w);
  let x_2991 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_2991 == 1.0f);
  let x_2993 : bool = u_xlatb0;
  if (x_2993) {
    let x_2998 : f32 = u_xlat2.x;
    x_2994 = x_2998;
  } else {
    x_2994 = 1.0f;
  }
  let x_3000 : f32 = x_2994;
  SV_Target0.w = x_3000;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

