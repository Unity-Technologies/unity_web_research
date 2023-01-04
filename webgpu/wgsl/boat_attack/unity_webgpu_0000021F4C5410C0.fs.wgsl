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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_OcclusionMap : sampler;

@group(0) @binding(11) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_523 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1849 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2307 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2420 : AdditionalLightsCookies;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat22 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat61 : f32;
  var u_xlat64 : f32;
  var u_xlat65 : f32;
  var u_xlatb64 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
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
  var x_1934 : f32;
  var x_1945 : vec3<f32>;
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
  var x_2740 : f32;
  var x_2753 : f32;
  var u_xlat70 : f32;
  var x_2815 : f32;
  var x_2826 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2968 : f32;
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
  u_xlat23 = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_340 : vec2<f32> = vs_TEXCOORD8;
  let x_342 : f32 = x_44.x_GlobalMipBias.x;
  let x_343 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_340, x_342);
  u_xlat4 = x_343;
  let x_349 : vec2<f32> = vs_TEXCOORD8;
  let x_351 : f32 = x_44.x_GlobalMipBias.x;
  let x_352 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_349, x_351);
  let x_353 : vec3<f32> = vec3<f32>(x_352.x, x_352.y, x_352.z);
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat4;
  let x_360 : vec3<f32> = (vec3<f32>(x_356.x, x_356.y, x_356.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec3<f32> = u_xlat23;
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat60 = dot(x_363, vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : f32 = u_xlat60;
  u_xlat60 = (x_367 + 0.5f);
  let x_370 : f32 = u_xlat60;
  let x_372 : vec4<f32> = u_xlat6;
  let x_374 : vec3<f32> = (vec3<f32>(x_370, x_370, x_370) * vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : f32 = u_xlat4.w;
  u_xlat60 = max(x_378, 0.0001f);
  let x_381 : vec4<f32> = u_xlat4;
  let x_383 : f32 = u_xlat60;
  let x_385 : vec3<f32> = (vec3<f32>(x_381.x, x_381.y, x_381.z) / vec3<f32>(x_383, x_383, x_383));
  let x_386 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_390 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_391 : vec2<f32> = vec2<f32>(x_390.x, x_390.y);
  u_xlat41 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_391.x, x_391.y));
  let x_396 : vec2<f32> = u_xlat41;
  let x_397 : vec4<f32> = hlslcc_FragCoord;
  let x_399 : vec2<f32> = (x_396 * vec2<f32>(x_397.x, x_397.y));
  let x_400 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
  let x_403 : f32 = u_xlat6.y;
  let x_405 : f32 = x_44.x_ScaleBiasRt.x;
  let x_408 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_403 * x_405) + x_408);
  let x_410 : f32 = u_xlat60;
  u_xlat6.z = (-(x_410) + 1.0f);
  let x_415 : f32 = u_xlat1.x;
  u_xlat60 = ((-(x_415) * 0.959999979f) + 0.959999979f);
  let x_421 : f32 = u_xlat1.y;
  let x_423 : f32 = x_69.x_Smoothness;
  let x_425 : f32 = u_xlat60;
  u_xlat41.x = ((x_421 * x_423) + -(x_425));
  let x_430 : f32 = u_xlat60;
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat22 = (vec3<f32>(x_430, x_430, x_430) * vec3<f32>(x_432.y, x_432.z, x_432.w));
  let x_435 : vec4<f32> = u_xlat0;
  let x_438 : vec4<f32> = x_69.x_BaseColor;
  let x_443 : vec3<f32> = ((vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_438.x, x_438.y, x_438.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec2<f32> = u_xlat1;
  let x_448 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = ((vec3<f32>(x_446.x, x_446.x, x_446.x) * vec3<f32>(x_448.x, x_448.y, x_448.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_457 : f32 = u_xlat1.y;
  let x_460 : f32 = x_69.x_Smoothness;
  u_xlat60 = ((-(x_457) * x_460) + 1.0f);
  let x_463 : f32 = u_xlat60;
  let x_464 : f32 = u_xlat60;
  u_xlat1.x = (x_463 * x_464);
  let x_468 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_468, 0.0078125f);
  let x_474 : f32 = u_xlat1.x;
  let x_476 : f32 = u_xlat1.x;
  u_xlat21 = (x_474 * x_476);
  let x_479 : f32 = u_xlat41.x;
  u_xlat41.x = (x_479 + 1.0f);
  let x_483 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_483, 0.0f, 1.0f);
  let x_488 : f32 = u_xlat1.x;
  u_xlat61 = ((x_488 * 4.0f) + 2.0f);
  let x_498 : vec4<f32> = u_xlat6;
  let x_501 : f32 = x_44.x_GlobalMipBias.x;
  let x_502 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_498.x, x_498.z), x_501);
  u_xlat64 = x_502.x;
  let x_505 : f32 = u_xlat64;
  u_xlat65 = (x_505 + -1.0f);
  let x_509 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_510 : f32 = u_xlat65;
  u_xlat65 = ((x_509 * x_510) + 1.0f);
  let x_514 : f32 = u_xlat3.x;
  let x_515 : f32 = u_xlat64;
  u_xlat3.x = min(x_514, x_515);
  let x_525 : f32 = x_523.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_525);
  let x_527 : bool = u_xlatb64;
  if (x_527) {
    let x_531 : f32 = x_523.x_MainLightShadowParams.y;
    u_xlatb64 = (x_531 == 1.0f);
    let x_533 : bool = u_xlatb64;
    if (x_533) {
      let x_537 : vec4<f32> = vs_TEXCOORD6;
      let x_540 : vec4<f32> = x_523.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_537.x, x_537.y, x_537.x, x_537.y) + x_540);
      let x_543 : vec4<f32> = u_xlat6;
      let x_544 : vec2<f32> = vec2<f32>(x_543.x, x_543.y);
      let x_546 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_544.x, x_544.y, x_546);
      let x_559 : vec3<f32> = txVec0;
      let x_561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_559.xy, x_559.z);
      u_xlat7.x = x_561;
      let x_564 : vec4<f32> = u_xlat6;
      let x_565 : vec2<f32> = vec2<f32>(x_564.z, x_564.w);
      let x_567 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_565.x, x_565.y, x_567);
      let x_574 : vec3<f32> = txVec1;
      let x_576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_574.xy, x_574.z);
      u_xlat7.y = x_576;
      let x_578 : vec4<f32> = vs_TEXCOORD6;
      let x_581 : vec4<f32> = x_523.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.y) + x_581);
      let x_584 : vec4<f32> = u_xlat6;
      let x_585 : vec2<f32> = vec2<f32>(x_584.x, x_584.y);
      let x_587 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_585.x, x_585.y, x_587);
      let x_594 : vec3<f32> = txVec2;
      let x_596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_594.xy, x_594.z);
      u_xlat7.z = x_596;
      let x_599 : vec4<f32> = u_xlat6;
      let x_600 : vec2<f32> = vec2<f32>(x_599.z, x_599.w);
      let x_602 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_600.x, x_600.y, x_602);
      let x_609 : vec3<f32> = txVec3;
      let x_611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_609.xy, x_609.z);
      u_xlat7.w = x_611;
      let x_613 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_613, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_620 : f32 = x_523.x_MainLightShadowParams.y;
      u_xlatb6 = (x_620 == 2.0f);
      let x_622 : bool = u_xlatb6;
      if (x_622) {
        let x_625 : vec4<f32> = vs_TEXCOORD6;
        let x_628 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_632 : vec2<f32> = ((vec2<f32>(x_625.x, x_625.y) * vec2<f32>(x_628.z, x_628.w)) + vec2<f32>(0.5f, 0.5f));
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat6;
        let x_637 : vec2<f32> = floor(vec2<f32>(x_635.x, x_635.y));
        let x_638 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_641 : vec4<f32> = vs_TEXCOORD6;
        let x_644 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_647 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_641.x, x_641.y) * vec2<f32>(x_644.z, x_644.w)) + -(vec2<f32>(x_647.x, x_647.y)));
        let x_651 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_651.x, x_651.x, x_651.y, x_651.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_656 : vec4<f32> = u_xlat7;
        let x_658 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_656.x, x_656.x, x_656.z, x_656.z) * vec4<f32>(x_658.x, x_658.x, x_658.z, x_658.z));
        let x_661 : vec4<f32> = u_xlat8;
        let x_665 : vec2<f32> = (vec2<f32>(x_661.y, x_661.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_666 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_665.x, x_666.y, x_665.y, x_666.w);
        let x_668 : vec4<f32> = u_xlat8;
        let x_671 : vec2<f32> = u_xlat46;
        let x_673 : vec2<f32> = ((vec2<f32>(x_668.x, x_668.z) * vec2<f32>(0.5f, 0.5f)) + -(x_671));
        let x_674 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
        let x_677 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_677) + vec2<f32>(1.0f, 1.0f));
        let x_681 : vec2<f32> = u_xlat46;
        let x_683 : vec2<f32> = min(x_681, vec2<f32>(0.0f, 0.0f));
        let x_684 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_686 : vec4<f32> = u_xlat9;
        let x_689 : vec4<f32> = u_xlat9;
        let x_692 : vec2<f32> = u_xlat48;
        let x_693 : vec2<f32> = ((-(vec2<f32>(x_686.x, x_686.y)) * vec2<f32>(x_689.x, x_689.y)) + x_692);
        let x_694 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_696, vec2<f32>(0.0f, 0.0f));
        let x_698 : vec2<f32> = u_xlat46;
        let x_700 : vec2<f32> = u_xlat46;
        let x_702 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_698) * x_700) + vec2<f32>(x_702.y, x_702.w));
        let x_705 : vec4<f32> = u_xlat9;
        let x_707 : vec2<f32> = (vec2<f32>(x_705.x, x_705.y) + vec2<f32>(1.0f, 1.0f));
        let x_708 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_707.x, x_707.y, x_708.z, x_708.w);
        let x_710 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_710 + vec2<f32>(1.0f, 1.0f));
        let x_713 : vec4<f32> = u_xlat8;
        let x_717 : vec2<f32> = (vec2<f32>(x_713.x, x_713.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_718 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
        let x_720 : vec2<f32> = u_xlat48;
        let x_721 : vec2<f32> = (x_720 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_722 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
        let x_724 : vec4<f32> = u_xlat9;
        let x_726 : vec2<f32> = (vec2<f32>(x_724.x, x_724.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_727 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
        let x_730 : vec2<f32> = u_xlat46;
        let x_731 : vec2<f32> = (x_730 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_732 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_734.y, x_734.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_738 : f32 = u_xlat9.x;
        u_xlat10.z = x_738;
        let x_741 : f32 = u_xlat46.x;
        u_xlat10.w = x_741;
        let x_744 : f32 = u_xlat11.x;
        u_xlat8.z = x_744;
        let x_747 : f32 = u_xlat7.x;
        u_xlat8.w = x_747;
        let x_750 : vec4<f32> = u_xlat8;
        let x_752 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_750.z, x_750.w, x_750.x, x_750.z) + vec4<f32>(x_752.z, x_752.w, x_752.x, x_752.z));
        let x_756 : f32 = u_xlat10.y;
        u_xlat9.z = x_756;
        let x_759 : f32 = u_xlat46.y;
        u_xlat9.w = x_759;
        let x_762 : f32 = u_xlat8.y;
        u_xlat11.z = x_762;
        let x_765 : f32 = u_xlat7.z;
        u_xlat11.w = x_765;
        let x_767 : vec4<f32> = u_xlat9;
        let x_769 : vec4<f32> = u_xlat11;
        let x_771 : vec3<f32> = (vec3<f32>(x_767.z, x_767.y, x_767.w) + vec3<f32>(x_769.z, x_769.y, x_769.w));
        let x_772 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat8;
        let x_776 : vec4<f32> = u_xlat12;
        let x_778 : vec3<f32> = (vec3<f32>(x_774.x, x_774.z, x_774.w) / vec3<f32>(x_776.z, x_776.w, x_776.y));
        let x_779 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
        let x_781 : vec4<f32> = u_xlat8;
        let x_786 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_787 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
        let x_789 : vec4<f32> = u_xlat11;
        let x_791 : vec4<f32> = u_xlat7;
        let x_793 : vec3<f32> = (vec3<f32>(x_789.z, x_789.y, x_789.w) / vec3<f32>(x_791.x, x_791.y, x_791.z));
        let x_794 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
        let x_796 : vec4<f32> = u_xlat9;
        let x_798 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_799 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
        let x_801 : vec4<f32> = u_xlat8;
        let x_804 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_806 : vec3<f32> = (vec3<f32>(x_801.y, x_801.x, x_801.z) * vec3<f32>(x_804.x, x_804.x, x_804.x));
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat9;
        let x_812 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_814 : vec3<f32> = (vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(x_812.y, x_812.y, x_812.y));
        let x_815 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
        let x_818 : f32 = u_xlat9.x;
        u_xlat8.w = x_818;
        let x_820 : vec4<f32> = u_xlat6;
        let x_823 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_826 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y) * vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y)) + vec4<f32>(x_826.y, x_826.w, x_826.x, x_826.w));
        let x_829 : vec4<f32> = u_xlat6;
        let x_832 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_835 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_829.x, x_829.y) * vec2<f32>(x_832.x, x_832.y)) + vec2<f32>(x_835.z, x_835.w));
        let x_839 : f32 = u_xlat8.y;
        u_xlat9.w = x_839;
        let x_841 : vec4<f32> = u_xlat9;
        let x_842 : vec2<f32> = vec2<f32>(x_841.y, x_841.z);
        let x_843 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_843.x, x_842.x, x_843.z, x_842.y);
        let x_845 : vec4<f32> = u_xlat6;
        let x_848 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_851 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_845.x, x_845.y, x_845.x, x_845.y) * vec4<f32>(x_848.x, x_848.y, x_848.x, x_848.y)) + vec4<f32>(x_851.x, x_851.y, x_851.z, x_851.y));
        let x_854 : vec4<f32> = u_xlat6;
        let x_857 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_860 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_854.x, x_854.y, x_854.x, x_854.y) * vec4<f32>(x_857.x, x_857.y, x_857.x, x_857.y)) + vec4<f32>(x_860.w, x_860.y, x_860.w, x_860.z));
        let x_863 : vec4<f32> = u_xlat6;
        let x_866 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_869 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_863.x, x_863.y, x_863.x, x_863.y) * vec4<f32>(x_866.x, x_866.y, x_866.x, x_866.y)) + vec4<f32>(x_869.x, x_869.w, x_869.z, x_869.w));
        let x_873 : vec4<f32> = u_xlat7;
        let x_875 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_873.x, x_873.x, x_873.x, x_873.y) * vec4<f32>(x_875.z, x_875.w, x_875.y, x_875.z));
        let x_879 : vec4<f32> = u_xlat7;
        let x_881 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_879.y, x_879.y, x_879.z, x_879.z) * x_881);
        let x_884 : f32 = u_xlat7.z;
        let x_886 : f32 = u_xlat12.y;
        u_xlat6.x = (x_884 * x_886);
        let x_890 : vec4<f32> = u_xlat10;
        let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
        let x_893 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_901 : vec3<f32> = txVec4;
        let x_903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_901.xy, x_901.z);
        u_xlat26 = x_903;
        let x_905 : vec4<f32> = u_xlat10;
        let x_906 : vec2<f32> = vec2<f32>(x_905.z, x_905.w);
        let x_908 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_906.x, x_906.y, x_908);
        let x_915 : vec3<f32> = txVec5;
        let x_917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_915.xy, x_915.z);
        u_xlat7.x = x_917;
        let x_920 : f32 = u_xlat7.x;
        let x_922 : f32 = u_xlat13.y;
        u_xlat7.x = (x_920 * x_922);
        let x_926 : f32 = u_xlat13.x;
        let x_927 : f32 = u_xlat26;
        let x_930 : f32 = u_xlat7.x;
        u_xlat26 = ((x_926 * x_927) + x_930);
        let x_933 : vec2<f32> = u_xlat46;
        let x_935 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_933.x, x_933.y, x_935);
        let x_942 : vec3<f32> = txVec6;
        let x_944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_942.xy, x_942.z);
        u_xlat46.x = x_944;
        let x_947 : f32 = u_xlat13.z;
        let x_949 : f32 = u_xlat46.x;
        let x_951 : f32 = u_xlat26;
        u_xlat26 = ((x_947 * x_949) + x_951);
        let x_954 : vec4<f32> = u_xlat9;
        let x_955 : vec2<f32> = vec2<f32>(x_954.x, x_954.y);
        let x_957 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_955.x, x_955.y, x_957);
        let x_964 : vec3<f32> = txVec7;
        let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_964.xy, x_964.z);
        u_xlat46.x = x_966;
        let x_969 : f32 = u_xlat13.w;
        let x_971 : f32 = u_xlat46.x;
        let x_973 : f32 = u_xlat26;
        u_xlat26 = ((x_969 * x_971) + x_973);
        let x_976 : vec4<f32> = u_xlat11;
        let x_977 : vec2<f32> = vec2<f32>(x_976.x, x_976.y);
        let x_979 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_977.x, x_977.y, x_979);
        let x_986 : vec3<f32> = txVec8;
        let x_988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_986.xy, x_986.z);
        u_xlat46.x = x_988;
        let x_991 : f32 = u_xlat14.x;
        let x_993 : f32 = u_xlat46.x;
        let x_995 : f32 = u_xlat26;
        u_xlat26 = ((x_991 * x_993) + x_995);
        let x_998 : vec4<f32> = u_xlat11;
        let x_999 : vec2<f32> = vec2<f32>(x_998.z, x_998.w);
        let x_1001 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_999.x, x_999.y, x_1001);
        let x_1008 : vec3<f32> = txVec9;
        let x_1010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1008.xy, x_1008.z);
        u_xlat46.x = x_1010;
        let x_1013 : f32 = u_xlat14.y;
        let x_1015 : f32 = u_xlat46.x;
        let x_1017 : f32 = u_xlat26;
        u_xlat26 = ((x_1013 * x_1015) + x_1017);
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1021 : vec2<f32> = vec2<f32>(x_1020.z, x_1020.w);
        let x_1023 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_1021.x, x_1021.y, x_1023);
        let x_1030 : vec3<f32> = txVec10;
        let x_1032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1030.xy, x_1030.z);
        u_xlat46.x = x_1032;
        let x_1035 : f32 = u_xlat14.z;
        let x_1037 : f32 = u_xlat46.x;
        let x_1039 : f32 = u_xlat26;
        u_xlat26 = ((x_1035 * x_1037) + x_1039);
        let x_1042 : vec4<f32> = u_xlat8;
        let x_1043 : vec2<f32> = vec2<f32>(x_1042.x, x_1042.y);
        let x_1045 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1043.x, x_1043.y, x_1045);
        let x_1052 : vec3<f32> = txVec11;
        let x_1054 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1052.xy, x_1052.z);
        u_xlat46.x = x_1054;
        let x_1057 : f32 = u_xlat14.w;
        let x_1059 : f32 = u_xlat46.x;
        let x_1061 : f32 = u_xlat26;
        u_xlat26 = ((x_1057 * x_1059) + x_1061);
        let x_1064 : vec4<f32> = u_xlat8;
        let x_1065 : vec2<f32> = vec2<f32>(x_1064.z, x_1064.w);
        let x_1067 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1065.x, x_1065.y, x_1067);
        let x_1074 : vec3<f32> = txVec12;
        let x_1076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1074.xy, x_1074.z);
        u_xlat46.x = x_1076;
        let x_1079 : f32 = u_xlat6.x;
        let x_1081 : f32 = u_xlat46.x;
        let x_1083 : f32 = u_xlat26;
        u_xlat64 = ((x_1079 * x_1081) + x_1083);
      } else {
        let x_1086 : vec4<f32> = vs_TEXCOORD6;
        let x_1089 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1092 : vec2<f32> = ((vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1089.z, x_1089.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1093 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
        let x_1095 : vec4<f32> = u_xlat6;
        let x_1097 : vec2<f32> = floor(vec2<f32>(x_1095.x, x_1095.y));
        let x_1098 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1097.x, x_1097.y, x_1098.z, x_1098.w);
        let x_1100 : vec4<f32> = vs_TEXCOORD6;
        let x_1103 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1103.z, x_1103.w)) + -(vec2<f32>(x_1106.x, x_1106.y)));
        let x_1110 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1110.x, x_1110.x, x_1110.y, x_1110.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1113 : vec4<f32> = u_xlat7;
        let x_1115 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1113.x, x_1113.x, x_1113.z, x_1113.z) * vec4<f32>(x_1115.x, x_1115.x, x_1115.z, x_1115.z));
        let x_1118 : vec4<f32> = u_xlat8;
        let x_1122 : vec2<f32> = (vec2<f32>(x_1118.y, x_1118.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1123 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1123.x, x_1122.x, x_1123.z, x_1122.y);
        let x_1125 : vec4<f32> = u_xlat8;
        let x_1128 : vec2<f32> = u_xlat46;
        let x_1130 : vec2<f32> = ((vec2<f32>(x_1125.x, x_1125.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1128));
        let x_1131 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1130.x, x_1131.y, x_1130.y, x_1131.w);
        let x_1133 : vec2<f32> = u_xlat46;
        let x_1135 : vec2<f32> = (-(x_1133) + vec2<f32>(1.0f, 1.0f));
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1138 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1138, vec2<f32>(0.0f, 0.0f));
        let x_1140 : vec2<f32> = u_xlat48;
        let x_1142 : vec2<f32> = u_xlat48;
        let x_1144 : vec4<f32> = u_xlat8;
        let x_1146 : vec2<f32> = ((-(x_1140) * x_1142) + vec2<f32>(x_1144.x, x_1144.y));
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1149 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1149, vec2<f32>(0.0f, 0.0f));
        let x_1152 : vec2<f32> = u_xlat48;
        let x_1154 : vec2<f32> = u_xlat48;
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1158 : vec2<f32> = ((-(x_1152) * x_1154) + vec2<f32>(x_1156.y, x_1156.w));
        let x_1159 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1158.x, x_1159.y, x_1158.y);
        let x_1161 : vec4<f32> = u_xlat8;
        let x_1163 : vec2<f32> = (vec2<f32>(x_1161.x, x_1161.y) + vec2<f32>(2.0f, 2.0f));
        let x_1164 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1163.x, x_1163.y, x_1164.z, x_1164.w);
        let x_1166 : vec3<f32> = u_xlat27;
        let x_1168 : vec2<f32> = (vec2<f32>(x_1166.x, x_1166.z) + vec2<f32>(2.0f, 2.0f));
        let x_1169 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1169.x, x_1168.x, x_1169.z, x_1168.y);
        let x_1172 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1172 * 0.081632003f);
        let x_1176 : vec4<f32> = u_xlat7;
        let x_1179 : vec3<f32> = (vec3<f32>(x_1176.z, x_1176.x, x_1176.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1180 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1185 : vec2<f32> = (vec2<f32>(x_1182.x, x_1182.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1186 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1189 : f32 = u_xlat11.y;
        u_xlat10.x = x_1189;
        let x_1191 : vec2<f32> = u_xlat46;
        let x_1198 : vec2<f32> = ((vec2<f32>(x_1191.x, x_1191.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1199 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1199.x, x_1198.x, x_1199.z, x_1198.y);
        let x_1201 : vec2<f32> = u_xlat46;
        let x_1205 : vec2<f32> = ((vec2<f32>(x_1201.x, x_1201.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1206 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1205.x, x_1206.y, x_1205.y, x_1206.w);
        let x_1209 : f32 = u_xlat7.x;
        u_xlat8.y = x_1209;
        let x_1212 : f32 = u_xlat9.y;
        u_xlat8.w = x_1212;
        let x_1214 : vec4<f32> = u_xlat8;
        let x_1215 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1214 + x_1215);
        let x_1217 : vec2<f32> = u_xlat46;
        let x_1220 : vec2<f32> = ((vec2<f32>(x_1217.y, x_1217.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1221 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1221.x, x_1220.x, x_1221.z, x_1220.y);
        let x_1223 : vec2<f32> = u_xlat46;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1223.y, x_1223.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1226.x, x_1227.y, x_1226.y, x_1227.w);
        let x_1230 : f32 = u_xlat7.y;
        u_xlat9.y = x_1230;
        let x_1232 : vec4<f32> = u_xlat9;
        let x_1233 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1232 + x_1233);
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1235 / x_1236);
        let x_1238 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1238 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1245 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1244 / x_1245);
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1247 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1249 : vec4<f32> = u_xlat8;
        let x_1252 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1249.w, x_1249.x, x_1249.y, x_1249.z) * vec4<f32>(x_1252.x, x_1252.x, x_1252.x, x_1252.x));
        let x_1255 : vec4<f32> = u_xlat9;
        let x_1258 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1255.x, x_1255.w, x_1255.y, x_1255.z) * vec4<f32>(x_1258.y, x_1258.y, x_1258.y, x_1258.y));
        let x_1261 : vec4<f32> = u_xlat8;
        let x_1262 : vec3<f32> = vec3<f32>(x_1261.y, x_1261.z, x_1261.w);
        let x_1263 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1262.x, x_1263.y, x_1262.y, x_1262.z);
        let x_1266 : f32 = u_xlat9.x;
        u_xlat11.y = x_1266;
        let x_1268 : vec4<f32> = u_xlat6;
        let x_1271 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y) * vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y)) + vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1274.y));
        let x_1277 : vec4<f32> = u_xlat6;
        let x_1280 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(x_1280.x, x_1280.y)) + vec2<f32>(x_1283.w, x_1283.y));
        let x_1287 : f32 = u_xlat11.y;
        u_xlat8.y = x_1287;
        let x_1290 : f32 = u_xlat9.z;
        u_xlat11.y = x_1290;
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1295 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y) * vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y)) + vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1298.y));
        let x_1301 : vec4<f32> = u_xlat6;
        let x_1304 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat11;
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.w, x_1307.y));
        let x_1310 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
        let x_1313 : f32 = u_xlat11.y;
        u_xlat8.z = x_1313;
        let x_1316 : vec4<f32> = u_xlat6;
        let x_1319 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y) * vec4<f32>(x_1319.x, x_1319.y, x_1319.x, x_1319.y)) + vec4<f32>(x_1322.x, x_1322.y, x_1322.x, x_1322.z));
        let x_1326 : f32 = u_xlat9.w;
        u_xlat11.y = x_1326;
        let x_1329 : vec4<f32> = u_xlat6;
        let x_1332 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y) * vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y)) + vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1335.y));
        let x_1339 : vec4<f32> = u_xlat6;
        let x_1342 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat11;
        let x_1347 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.y) * vec2<f32>(x_1342.x, x_1342.y)) + vec2<f32>(x_1345.w, x_1345.y));
        let x_1348 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1347.x, x_1347.y, x_1348.z);
        let x_1351 : f32 = u_xlat11.y;
        u_xlat8.w = x_1351;
        let x_1354 : vec4<f32> = u_xlat6;
        let x_1357 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1360 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1354.x, x_1354.y) * vec2<f32>(x_1357.x, x_1357.y)) + vec2<f32>(x_1360.x, x_1360.w));
        let x_1363 : vec4<f32> = u_xlat11;
        let x_1364 : vec3<f32> = vec3<f32>(x_1363.x, x_1363.z, x_1363.w);
        let x_1365 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1364.x, x_1365.y, x_1364.y, x_1364.z);
        let x_1367 : vec4<f32> = u_xlat6;
        let x_1370 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1373 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1367.x, x_1367.y, x_1367.x, x_1367.y) * vec4<f32>(x_1370.x, x_1370.y, x_1370.x, x_1370.y)) + vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1373.y));
        let x_1377 : vec4<f32> = u_xlat6;
        let x_1380 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1383 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1377.x, x_1377.y) * vec2<f32>(x_1380.x, x_1380.y)) + vec2<f32>(x_1383.w, x_1383.y));
        let x_1387 : f32 = u_xlat8.x;
        u_xlat9.x = x_1387;
        let x_1389 : vec4<f32> = u_xlat6;
        let x_1392 : vec4<f32> = x_523.x_MainLightShadowmapSize;
        let x_1395 : vec4<f32> = u_xlat9;
        let x_1397 : vec2<f32> = ((vec2<f32>(x_1389.x, x_1389.y) * vec2<f32>(x_1392.x, x_1392.y)) + vec2<f32>(x_1395.x, x_1395.y));
        let x_1398 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1397.x, x_1397.y, x_1398.z, x_1398.w);
        let x_1401 : vec4<f32> = u_xlat7;
        let x_1403 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1401.x, x_1401.x, x_1401.x, x_1401.x) * x_1403);
        let x_1406 : vec4<f32> = u_xlat7;
        let x_1408 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1406.y, x_1406.y, x_1406.y, x_1406.y) * x_1408);
        let x_1411 : vec4<f32> = u_xlat7;
        let x_1413 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1411.z, x_1411.z, x_1411.z, x_1411.z) * x_1413);
        let x_1415 : vec4<f32> = u_xlat7;
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1415.w, x_1415.w, x_1415.w, x_1415.w) * x_1417);
        let x_1420 : vec4<f32> = u_xlat12;
        let x_1421 : vec2<f32> = vec2<f32>(x_1420.x, x_1420.y);
        let x_1423 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1430 : vec3<f32> = txVec13;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1430.xy, x_1430.z);
        u_xlat8.x = x_1432;
        let x_1435 : vec4<f32> = u_xlat12;
        let x_1436 : vec2<f32> = vec2<f32>(x_1435.z, x_1435.w);
        let x_1438 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1446 : vec3<f32> = txVec14;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1446.xy, x_1446.z);
        u_xlat68 = x_1448;
        let x_1449 : f32 = u_xlat68;
        let x_1451 : f32 = u_xlat17.y;
        u_xlat68 = (x_1449 * x_1451);
        let x_1454 : f32 = u_xlat17.x;
        let x_1456 : f32 = u_xlat8.x;
        let x_1458 : f32 = u_xlat68;
        u_xlat8.x = ((x_1454 * x_1456) + x_1458);
        let x_1462 : vec2<f32> = u_xlat46;
        let x_1464 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec15;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1471.xy, x_1471.z);
        u_xlat46.x = x_1473;
        let x_1476 : f32 = u_xlat17.z;
        let x_1478 : f32 = u_xlat46.x;
        let x_1481 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1476 * x_1478) + x_1481);
        let x_1485 : vec4<f32> = u_xlat15;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1496 : vec3<f32> = txVec16;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1496.xy, x_1496.z);
        u_xlat66 = x_1498;
        let x_1500 : f32 = u_xlat17.w;
        let x_1501 : f32 = u_xlat66;
        let x_1504 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1500 * x_1501) + x_1504);
        let x_1508 : vec4<f32> = u_xlat13;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.x, x_1508.y);
        let x_1511 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec17;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1518.xy, x_1518.z);
        u_xlat66 = x_1520;
        let x_1522 : f32 = u_xlat18.x;
        let x_1523 : f32 = u_xlat66;
        let x_1526 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1522 * x_1523) + x_1526);
        let x_1530 : vec4<f32> = u_xlat13;
        let x_1531 : vec2<f32> = vec2<f32>(x_1530.z, x_1530.w);
        let x_1533 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec18;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1540.xy, x_1540.z);
        u_xlat66 = x_1542;
        let x_1544 : f32 = u_xlat18.y;
        let x_1545 : f32 = u_xlat66;
        let x_1548 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1544 * x_1545) + x_1548);
        let x_1552 : vec4<f32> = u_xlat14;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.x, x_1552.y);
        let x_1555 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec19;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1562.xy, x_1562.z);
        u_xlat66 = x_1564;
        let x_1566 : f32 = u_xlat18.z;
        let x_1567 : f32 = u_xlat66;
        let x_1570 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1566 * x_1567) + x_1570);
        let x_1574 : vec4<f32> = u_xlat15;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.z, x_1574.w);
        let x_1577 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec20;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1584.xy, x_1584.z);
        u_xlat66 = x_1586;
        let x_1588 : f32 = u_xlat18.w;
        let x_1589 : f32 = u_xlat66;
        let x_1592 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1588 * x_1589) + x_1592);
        let x_1596 : vec4<f32> = u_xlat16;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.x, x_1596.y);
        let x_1599 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec21;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1606.xy, x_1606.z);
        u_xlat66 = x_1608;
        let x_1610 : f32 = u_xlat19.x;
        let x_1611 : f32 = u_xlat66;
        let x_1614 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1610 * x_1611) + x_1614);
        let x_1618 : vec4<f32> = u_xlat16;
        let x_1619 : vec2<f32> = vec2<f32>(x_1618.z, x_1618.w);
        let x_1621 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec22;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1628.xy, x_1628.z);
        u_xlat66 = x_1630;
        let x_1632 : f32 = u_xlat19.y;
        let x_1633 : f32 = u_xlat66;
        let x_1636 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1632 * x_1633) + x_1636);
        let x_1640 : vec3<f32> = u_xlat28;
        let x_1641 : vec2<f32> = vec2<f32>(x_1640.x, x_1640.y);
        let x_1643 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec23;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1650.xy, x_1650.z);
        u_xlat66 = x_1652;
        let x_1654 : f32 = u_xlat19.z;
        let x_1655 : f32 = u_xlat66;
        let x_1658 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1654 * x_1655) + x_1658);
        let x_1662 : vec2<f32> = u_xlat54;
        let x_1664 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1671 : vec3<f32> = txVec24;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1671.xy, x_1671.z);
        u_xlat66 = x_1673;
        let x_1675 : f32 = u_xlat19.w;
        let x_1676 : f32 = u_xlat66;
        let x_1679 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1675 * x_1676) + x_1679);
        let x_1683 : vec4<f32> = u_xlat11;
        let x_1684 : vec2<f32> = vec2<f32>(x_1683.x, x_1683.y);
        let x_1686 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
        let x_1693 : vec3<f32> = txVec25;
        let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1693.xy, x_1693.z);
        u_xlat66 = x_1695;
        let x_1697 : f32 = u_xlat7.x;
        let x_1698 : f32 = u_xlat66;
        let x_1701 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1697 * x_1698) + x_1701);
        let x_1705 : vec4<f32> = u_xlat11;
        let x_1706 : vec2<f32> = vec2<f32>(x_1705.z, x_1705.w);
        let x_1708 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec26;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1715.xy, x_1715.z);
        u_xlat66 = x_1717;
        let x_1719 : f32 = u_xlat7.y;
        let x_1720 : f32 = u_xlat66;
        let x_1723 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1719 * x_1720) + x_1723);
        let x_1727 : vec2<f32> = u_xlat49;
        let x_1729 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1727.x, x_1727.y, x_1729);
        let x_1736 : vec3<f32> = txVec27;
        let x_1738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1736.xy, x_1736.z);
        u_xlat66 = x_1738;
        let x_1740 : f32 = u_xlat7.z;
        let x_1741 : f32 = u_xlat66;
        let x_1744 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1740 * x_1741) + x_1744);
        let x_1748 : vec4<f32> = u_xlat6;
        let x_1749 : vec2<f32> = vec2<f32>(x_1748.x, x_1748.y);
        let x_1751 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1749.x, x_1749.y, x_1751);
        let x_1758 : vec3<f32> = txVec28;
        let x_1760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1758.xy, x_1758.z);
        u_xlat6.x = x_1760;
        let x_1763 : f32 = u_xlat7.w;
        let x_1765 : f32 = u_xlat6.x;
        let x_1768 : f32 = u_xlat46.x;
        u_xlat64 = ((x_1763 * x_1765) + x_1768);
      }
    }
  } else {
    let x_1772 : vec4<f32> = vs_TEXCOORD6;
    let x_1773 : vec2<f32> = vec2<f32>(x_1772.x, x_1772.y);
    let x_1775 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1773.x, x_1773.y, x_1775);
    let x_1782 : vec3<f32> = txVec29;
    let x_1784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1782.xy, x_1782.z);
    u_xlat64 = x_1784;
  }
  let x_1786 : f32 = x_523.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1786) + 1.0f);
  let x_1790 : f32 = u_xlat64;
  let x_1792 : f32 = x_523.x_MainLightShadowParams.x;
  let x_1795 : f32 = u_xlat6.x;
  u_xlat64 = ((x_1790 * x_1792) + x_1795);
  let x_1798 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1798);
  let x_1802 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_1802 >= 1.0f);
  let x_1804 : bool = u_xlatb26;
  let x_1805 : bool = u_xlatb6;
  u_xlatb6 = (x_1804 | x_1805);
  let x_1807 : bool = u_xlatb6;
  let x_1808 : f32 = u_xlat64;
  u_xlat64 = select(x_1808, 1.0f, x_1807);
  let x_1810 : vec3<f32> = vs_TEXCOORD1;
  let x_1812 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1814 : vec3<f32> = (x_1810 + -(x_1812));
  let x_1815 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
  let x_1817 : vec4<f32> = u_xlat6;
  let x_1819 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1817.x, x_1817.y, x_1817.z), vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
  let x_1824 : f32 = u_xlat6.x;
  let x_1826 : f32 = x_523.x_MainLightShadowParams.z;
  let x_1829 : f32 = x_523.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1824 * x_1826) + x_1829);
  let x_1833 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1833, 0.0f, 1.0f);
  let x_1836 : f32 = u_xlat64;
  u_xlat26 = (-(x_1836) + 1.0f);
  let x_1840 : f32 = u_xlat6.x;
  let x_1841 : f32 = u_xlat26;
  let x_1843 : f32 = u_xlat64;
  u_xlat64 = ((x_1840 * x_1841) + x_1843);
  let x_1851 : f32 = x_1849.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1851 == -1.0f));
  let x_1853 : bool = u_xlatb6;
  if (x_1853) {
    let x_1856 : vec3<f32> = vs_TEXCOORD1;
    let x_1859 : vec4<f32> = x_1849.x_MainLightWorldToLight[1i];
    let x_1861 : vec2<f32> = (vec2<f32>(x_1856.y, x_1856.y) * vec2<f32>(x_1859.x, x_1859.y));
    let x_1862 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1861.x, x_1861.y, x_1862.z, x_1862.w);
    let x_1865 : vec4<f32> = x_1849.x_MainLightWorldToLight[0i];
    let x_1867 : vec3<f32> = vs_TEXCOORD1;
    let x_1870 : vec4<f32> = u_xlat6;
    let x_1872 : vec2<f32> = ((vec2<f32>(x_1865.x, x_1865.y) * vec2<f32>(x_1867.x, x_1867.x)) + vec2<f32>(x_1870.x, x_1870.y));
    let x_1873 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1872.x, x_1872.y, x_1873.z, x_1873.w);
    let x_1876 : vec4<f32> = x_1849.x_MainLightWorldToLight[2i];
    let x_1878 : vec3<f32> = vs_TEXCOORD1;
    let x_1881 : vec4<f32> = u_xlat6;
    let x_1883 : vec2<f32> = ((vec2<f32>(x_1876.x, x_1876.y) * vec2<f32>(x_1878.z, x_1878.z)) + vec2<f32>(x_1881.x, x_1881.y));
    let x_1884 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1883.x, x_1883.y, x_1884.z, x_1884.w);
    let x_1886 : vec4<f32> = u_xlat6;
    let x_1890 : vec4<f32> = x_1849.x_MainLightWorldToLight[3i];
    let x_1892 : vec2<f32> = (vec2<f32>(x_1886.x, x_1886.y) + vec2<f32>(x_1890.x, x_1890.y));
    let x_1893 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1892.x, x_1892.y, x_1893.z, x_1893.w);
    let x_1895 : vec4<f32> = u_xlat6;
    let x_1898 : vec2<f32> = ((vec2<f32>(x_1895.x, x_1895.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1899 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1898.x, x_1898.y, x_1899.z, x_1899.w);
    let x_1906 : vec4<f32> = u_xlat6;
    let x_1909 : f32 = x_44.x_GlobalMipBias.x;
    let x_1910 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1906.x, x_1906.y), x_1909);
    u_xlat6 = x_1910;
    let x_1915 : f32 = x_1849.x_MainLightCookieTextureFormat;
    let x_1917 : f32 = x_1849.x_MainLightCookieTextureFormat;
    let x_1919 : f32 = x_1849.x_MainLightCookieTextureFormat;
    let x_1921 : f32 = x_1849.x_MainLightCookieTextureFormat;
    let x_1922 : vec4<f32> = vec4<f32>(x_1915, x_1917, x_1919, x_1921);
    let x_1930 : vec4<bool> = (vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1922.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1930.x, x_1930.y);
    let x_1933 : bool = u_xlatb7.y;
    if (x_1933) {
      let x_1938 : f32 = u_xlat6.w;
      x_1934 = x_1938;
    } else {
      let x_1941 : f32 = u_xlat6.x;
      x_1934 = x_1941;
    }
    let x_1942 : f32 = x_1934;
    u_xlat66 = x_1942;
    let x_1944 : bool = u_xlatb7.x;
    if (x_1944) {
      let x_1948 : vec4<f32> = u_xlat6;
      x_1945 = vec3<f32>(x_1948.x, x_1948.y, x_1948.z);
    } else {
      let x_1951 : f32 = u_xlat66;
      x_1945 = vec3<f32>(x_1951, x_1951, x_1951);
    }
    let x_1953 : vec3<f32> = x_1945;
    let x_1954 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1953.x, x_1953.y, x_1953.z, x_1954.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1960 : vec4<f32> = u_xlat6;
  let x_1963 : vec4<f32> = x_44.x_MainLightColor;
  let x_1965 : vec3<f32> = (vec3<f32>(x_1960.x, x_1960.y, x_1960.z) * vec3<f32>(x_1963.x, x_1963.y, x_1963.z));
  let x_1966 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1965.x, x_1965.y, x_1965.z, x_1966.w);
  let x_1968 : f32 = u_xlat65;
  let x_1970 : vec4<f32> = u_xlat6;
  let x_1972 : vec3<f32> = (vec3<f32>(x_1968, x_1968, x_1968) * vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
  let x_1973 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
  let x_1975 : vec3<f32> = u_xlat5;
  let x_1977 : vec3<f32> = u_xlat23;
  u_xlat66 = dot(-(x_1975), x_1977);
  let x_1979 : f32 = u_xlat66;
  let x_1980 : f32 = u_xlat66;
  u_xlat66 = (x_1979 + x_1980);
  let x_1982 : vec3<f32> = u_xlat23;
  let x_1983 : f32 = u_xlat66;
  let x_1987 : vec3<f32> = u_xlat5;
  let x_1989 : vec3<f32> = ((x_1982 * -(vec3<f32>(x_1983, x_1983, x_1983))) + -(x_1987));
  let x_1990 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
  let x_1992 : vec3<f32> = u_xlat23;
  let x_1993 : vec3<f32> = u_xlat5;
  u_xlat66 = dot(x_1992, x_1993);
  let x_1995 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1995, 0.0f, 1.0f);
  let x_1997 : f32 = u_xlat66;
  u_xlat66 = (-(x_1997) + 1.0f);
  let x_2000 : f32 = u_xlat66;
  let x_2001 : f32 = u_xlat66;
  u_xlat66 = (x_2000 * x_2001);
  let x_2003 : f32 = u_xlat66;
  let x_2004 : f32 = u_xlat66;
  u_xlat66 = (x_2003 * x_2004);
  let x_2007 : f32 = u_xlat60;
  u_xlat67 = ((-(x_2007) * 0.699999988f) + 1.700000048f);
  let x_2013 : f32 = u_xlat60;
  let x_2014 : f32 = u_xlat67;
  u_xlat60 = (x_2013 * x_2014);
  let x_2016 : f32 = u_xlat60;
  u_xlat60 = (x_2016 * 6.0f);
  let x_2027 : vec4<f32> = u_xlat7;
  let x_2029 : f32 = u_xlat60;
  let x_2030 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2027.x, x_2027.y, x_2027.z), x_2029);
  u_xlat7 = x_2030;
  let x_2032 : f32 = u_xlat7.w;
  u_xlat60 = (x_2032 + -1.0f);
  let x_2035 : f32 = x_184.unity_SpecCube0_HDR.w;
  let x_2036 : f32 = u_xlat60;
  u_xlat60 = ((x_2035 * x_2036) + 1.0f);
  let x_2039 : f32 = u_xlat60;
  u_xlat60 = max(x_2039, 0.0f);
  let x_2041 : f32 = u_xlat60;
  u_xlat60 = log2(x_2041);
  let x_2043 : f32 = u_xlat60;
  let x_2045 : f32 = x_184.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_2043 * x_2045);
  let x_2047 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2047);
  let x_2049 : f32 = u_xlat60;
  let x_2051 : f32 = x_184.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_2049 * x_2051);
  let x_2053 : vec4<f32> = u_xlat7;
  let x_2055 : f32 = u_xlat60;
  let x_2057 : vec3<f32> = (vec3<f32>(x_2053.x, x_2053.y, x_2053.z) * vec3<f32>(x_2055, x_2055, x_2055));
  let x_2058 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
  let x_2060 : vec2<f32> = u_xlat1;
  let x_2062 : vec2<f32> = u_xlat1;
  let x_2066 : vec2<f32> = ((vec2<f32>(x_2060.x, x_2060.x) * vec2<f32>(x_2062.x, x_2062.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2067 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2066.x, x_2066.y, x_2067.z, x_2067.w);
  let x_2070 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_2070);
  let x_2072 : vec4<f32> = u_xlat0;
  let x_2075 : vec2<f32> = u_xlat41;
  u_xlat28 = (-(vec3<f32>(x_2072.x, x_2072.y, x_2072.z)) + vec3<f32>(x_2075.x, x_2075.x, x_2075.x));
  let x_2078 : f32 = u_xlat66;
  let x_2080 : vec3<f32> = u_xlat28;
  let x_2082 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_2078, x_2078, x_2078) * x_2080) + vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
  let x_2085 : f32 = u_xlat60;
  let x_2087 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2085, x_2085, x_2085) * x_2087);
  let x_2089 : vec4<f32> = u_xlat7;
  let x_2091 : vec3<f32> = u_xlat28;
  let x_2092 : vec3<f32> = (vec3<f32>(x_2089.x, x_2089.y, x_2089.z) * x_2091);
  let x_2093 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
  let x_2095 : vec4<f32> = u_xlat4;
  let x_2097 : vec3<f32> = u_xlat22;
  let x_2099 : vec4<f32> = u_xlat7;
  let x_2101 : vec3<f32> = ((vec3<f32>(x_2095.x, x_2095.y, x_2095.z) * x_2097) + vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
  let x_2102 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2101.x, x_2101.y, x_2101.z, x_2102.w);
  let x_2104 : f32 = u_xlat64;
  let x_2107 : f32 = x_184.unity_LightData.z;
  u_xlat60 = (x_2104 * x_2107);
  let x_2109 : vec3<f32> = u_xlat23;
  let x_2111 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_2109, vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
  let x_2116 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2116, 0.0f, 1.0f);
  let x_2119 : f32 = u_xlat60;
  let x_2121 : f32 = u_xlat1.x;
  u_xlat60 = (x_2119 * x_2121);
  let x_2123 : f32 = u_xlat60;
  let x_2125 : vec4<f32> = u_xlat6;
  let x_2127 : vec3<f32> = (vec3<f32>(x_2123, x_2123, x_2123) * vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
  let x_2128 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2127.x, x_2127.y, x_2127.z, x_2128.w);
  let x_2130 : vec3<f32> = u_xlat5;
  let x_2132 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2134 : vec3<f32> = (x_2130 + vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
  let x_2135 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2135.w);
  let x_2137 : vec4<f32> = u_xlat7;
  let x_2139 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_2137.x, x_2137.y, x_2137.z), vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2142 : f32 = u_xlat60;
  u_xlat60 = max(x_2142, 1.17549435e-37f);
  let x_2145 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2145);
  let x_2147 : f32 = u_xlat60;
  let x_2149 : vec4<f32> = u_xlat7;
  let x_2151 : vec3<f32> = (vec3<f32>(x_2147, x_2147, x_2147) * vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
  let x_2152 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
  let x_2154 : vec3<f32> = u_xlat23;
  let x_2155 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_2154, vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
  let x_2158 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2158, 0.0f, 1.0f);
  let x_2161 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2163 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2161.x, x_2161.y, x_2161.z), vec3<f32>(x_2163.x, x_2163.y, x_2163.z));
  let x_2168 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2168, 0.0f, 1.0f);
  let x_2171 : f32 = u_xlat60;
  let x_2172 : f32 = u_xlat60;
  u_xlat60 = (x_2171 * x_2172);
  let x_2174 : f32 = u_xlat60;
  let x_2176 : f32 = u_xlat8.x;
  u_xlat60 = ((x_2174 * x_2176) + 1.000010014f);
  let x_2181 : f32 = u_xlat1.x;
  let x_2183 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2181 * x_2183);
  let x_2186 : f32 = u_xlat60;
  let x_2187 : f32 = u_xlat60;
  u_xlat60 = (x_2186 * x_2187);
  let x_2190 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2190, 0.100000001f);
  let x_2194 : f32 = u_xlat60;
  let x_2196 : f32 = u_xlat1.x;
  u_xlat60 = (x_2194 * x_2196);
  let x_2198 : f32 = u_xlat61;
  let x_2199 : f32 = u_xlat60;
  u_xlat60 = (x_2198 * x_2199);
  let x_2201 : f32 = u_xlat21;
  let x_2202 : f32 = u_xlat60;
  u_xlat60 = (x_2201 / x_2202);
  let x_2204 : vec4<f32> = u_xlat0;
  let x_2206 : f32 = u_xlat60;
  let x_2209 : vec3<f32> = u_xlat22;
  let x_2210 : vec3<f32> = ((vec3<f32>(x_2204.x, x_2204.y, x_2204.z) * vec3<f32>(x_2206, x_2206, x_2206)) + x_2209);
  let x_2211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
  let x_2213 : vec4<f32> = u_xlat6;
  let x_2215 : vec4<f32> = u_xlat7;
  let x_2217 : vec3<f32> = (vec3<f32>(x_2213.x, x_2213.y, x_2213.z) * vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
  let x_2218 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
  let x_2221 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2223 : f32 = x_184.unity_LightData.y;
  u_xlat60 = min(x_2221, x_2223);
  let x_2227 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2227));
  let x_2234 : f32 = x_1849.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2236 : f32 = x_1849.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2238 : f32 = x_1849.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2240 : f32 = x_1849.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2241 : vec4<f32> = vec4<f32>(x_2234, x_2236, x_2238, x_2240);
  let x_2248 : vec4<bool> = (vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2241.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_2249 : vec2<bool> = vec2<bool>(x_2248.x, x_2248.z);
  let x_2250 : vec3<bool> = u_xlatb1;
  u_xlatb1 = vec3<bool>(x_2249.x, x_2250.y, x_2249.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2261 : u32 = u_xlatu_loop_1;
    let x_2262 : u32 = u_xlatu60;
    if ((x_2261 < x_2262)) {
    } else {
      break;
    }
    let x_2265 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2265 >> 2u);
    let x_2269 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2269 & 3u));
    let x_2272 : u32 = u_xlatu66;
    let x_2275 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_2272)];
    let x_2285 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2290 : vec4<u32> = indexable[x_2285];
    u_xlat66 = dot(x_2275, bitcast<vec4<f32>>(x_2290));
    let x_2293 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2293));
    let x_2296 : vec3<f32> = vs_TEXCOORD1;
    let x_2308 : u32 = u_xlatu66;
    let x_2311 : vec4<f32> = x_2307.x_AdditionalLightsPosition[bitcast<i32>(x_2308)];
    let x_2314 : u32 = u_xlatu66;
    let x_2317 : vec4<f32> = x_2307.x_AdditionalLightsPosition[bitcast<i32>(x_2314)];
    u_xlat28 = ((-(x_2296) * vec3<f32>(x_2311.w, x_2311.w, x_2311.w)) + vec3<f32>(x_2317.x, x_2317.y, x_2317.z));
    let x_2320 : vec3<f32> = u_xlat28;
    let x_2321 : vec3<f32> = u_xlat28;
    u_xlat67 = dot(x_2320, x_2321);
    let x_2323 : f32 = u_xlat67;
    u_xlat67 = max(x_2323, 6.10351562e-05f);
    let x_2326 : f32 = u_xlat67;
    u_xlat9.x = inverseSqrt(x_2326);
    let x_2330 : vec3<f32> = u_xlat28;
    let x_2331 : vec4<f32> = u_xlat9;
    u_xlat29 = (x_2330 * vec3<f32>(x_2331.x, x_2331.x, x_2331.x));
    let x_2334 : f32 = u_xlat67;
    u_xlat10.x = (1.0f / x_2334);
    let x_2337 : f32 = u_xlat67;
    let x_2338 : u32 = u_xlatu66;
    let x_2341 : f32 = x_2307.x_AdditionalLightsAttenuation[bitcast<i32>(x_2338)].x;
    u_xlat67 = (x_2337 * x_2341);
    let x_2343 : f32 = u_xlat67;
    let x_2345 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2343) * x_2345) + 1.0f);
    let x_2348 : f32 = u_xlat67;
    u_xlat67 = max(x_2348, 0.0f);
    let x_2350 : f32 = u_xlat67;
    let x_2351 : f32 = u_xlat67;
    u_xlat67 = (x_2350 * x_2351);
    let x_2353 : f32 = u_xlat67;
    let x_2355 : f32 = u_xlat10.x;
    u_xlat67 = (x_2353 * x_2355);
    let x_2357 : u32 = u_xlatu66;
    let x_2360 : vec4<f32> = x_2307.x_AdditionalLightsSpotDir[bitcast<i32>(x_2357)];
    let x_2362 : vec3<f32> = u_xlat29;
    u_xlat10.x = dot(vec3<f32>(x_2360.x, x_2360.y, x_2360.z), x_2362);
    let x_2366 : f32 = u_xlat10.x;
    let x_2367 : u32 = u_xlatu66;
    let x_2370 : f32 = x_2307.x_AdditionalLightsAttenuation[bitcast<i32>(x_2367)].z;
    let x_2372 : u32 = u_xlatu66;
    let x_2375 : f32 = x_2307.x_AdditionalLightsAttenuation[bitcast<i32>(x_2372)].w;
    u_xlat10.x = ((x_2366 * x_2370) + x_2375);
    let x_2379 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2379, 0.0f, 1.0f);
    let x_2383 : f32 = u_xlat10.x;
    let x_2385 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2383 * x_2385);
    let x_2388 : f32 = u_xlat67;
    let x_2390 : f32 = u_xlat10.x;
    u_xlat67 = (x_2388 * x_2390);
    let x_2393 : u32 = u_xlatu66;
    u_xlatu10 = (x_2393 >> 5u);
    let x_2396 : u32 = u_xlatu66;
    u_xlati30 = (1i << bitcast<u32>((bitcast<i32>(x_2396) & 31i)));
    let x_2402 : i32 = u_xlati30;
    let x_2404 : u32 = u_xlatu10;
    let x_2407 : f32 = x_1849.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2404)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_2402) & bitcast<u32>(x_2407)));
    let x_2411 : i32 = u_xlati10;
    if ((x_2411 != 0i)) {
      let x_2421 : u32 = u_xlatu66;
      let x_2424 : f32 = x_2420.x_AdditionalLightsLightTypes[bitcast<i32>(x_2421)].el;
      u_xlati10 = i32(x_2424);
      let x_2426 : i32 = u_xlati10;
      u_xlati30 = select(1i, 0i, (x_2426 != 0i));
      let x_2430 : u32 = u_xlatu66;
      u_xlati50 = (bitcast<i32>(x_2430) << bitcast<u32>(2i));
      let x_2433 : i32 = u_xlati30;
      if ((x_2433 != 0i)) {
        let x_2437 : vec3<f32> = vs_TEXCOORD1;
        let x_2439 : i32 = u_xlati50;
        let x_2442 : i32 = u_xlati50;
        let x_2446 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[((x_2439 + 1i) / 4i)][((x_2442 + 1i) % 4i)];
        let x_2448 : vec3<f32> = (vec3<f32>(x_2437.y, x_2437.y, x_2437.y) * vec3<f32>(x_2446.x, x_2446.y, x_2446.w));
        let x_2449 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
        let x_2451 : i32 = u_xlati50;
        let x_2453 : i32 = u_xlati50;
        let x_2456 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[(x_2451 / 4i)][(x_2453 % 4i)];
        let x_2458 : vec3<f32> = vs_TEXCOORD1;
        let x_2461 : vec4<f32> = u_xlat11;
        let x_2463 : vec3<f32> = ((vec3<f32>(x_2456.x, x_2456.y, x_2456.w) * vec3<f32>(x_2458.x, x_2458.x, x_2458.x)) + vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
        let x_2464 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
        let x_2466 : i32 = u_xlati50;
        let x_2469 : i32 = u_xlati50;
        let x_2473 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[((x_2466 + 2i) / 4i)][((x_2469 + 2i) % 4i)];
        let x_2475 : vec3<f32> = vs_TEXCOORD1;
        let x_2478 : vec4<f32> = u_xlat11;
        let x_2480 : vec3<f32> = ((vec3<f32>(x_2473.x, x_2473.y, x_2473.w) * vec3<f32>(x_2475.z, x_2475.z, x_2475.z)) + vec3<f32>(x_2478.x, x_2478.y, x_2478.z));
        let x_2481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
        let x_2483 : vec4<f32> = u_xlat11;
        let x_2485 : i32 = u_xlati50;
        let x_2488 : i32 = u_xlati50;
        let x_2492 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[((x_2485 + 3i) / 4i)][((x_2488 + 3i) % 4i)];
        let x_2494 : vec3<f32> = (vec3<f32>(x_2483.x, x_2483.y, x_2483.z) + vec3<f32>(x_2492.x, x_2492.y, x_2492.w));
        let x_2495 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
        let x_2498 : vec4<f32> = u_xlat11;
        let x_2500 : vec4<f32> = u_xlat11;
        let x_2502 : vec2<f32> = (vec2<f32>(x_2498.x, x_2498.y) / vec2<f32>(x_2500.z, x_2500.z));
        let x_2503 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2502.x, x_2503.y, x_2502.y);
        let x_2505 : vec3<f32> = u_xlat30;
        let x_2508 : vec2<f32> = ((vec2<f32>(x_2505.x, x_2505.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2509 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2508.x, x_2509.y, x_2508.y);
        let x_2511 : vec3<f32> = u_xlat30;
        let x_2515 : vec2<f32> = clamp(vec2<f32>(x_2511.x, x_2511.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2516 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2515.x, x_2516.y, x_2515.y);
        let x_2518 : u32 = u_xlatu66;
        let x_2521 : vec4<f32> = x_2420.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2518)];
        let x_2523 : vec3<f32> = u_xlat30;
        let x_2526 : u32 = u_xlatu66;
        let x_2529 : vec4<f32> = x_2420.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2526)];
        let x_2531 : vec2<f32> = ((vec2<f32>(x_2521.x, x_2521.y) * vec2<f32>(x_2523.x, x_2523.z)) + vec2<f32>(x_2529.z, x_2529.w));
        let x_2532 : vec3<f32> = u_xlat30;
        u_xlat30 = vec3<f32>(x_2531.x, x_2532.y, x_2531.y);
      } else {
        let x_2536 : i32 = u_xlati10;
        u_xlatb10 = (x_2536 == 1i);
        let x_2538 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_2538);
        let x_2540 : i32 = u_xlati10;
        if ((x_2540 != 0i)) {
          let x_2544 : vec3<f32> = vs_TEXCOORD1;
          let x_2546 : i32 = u_xlati50;
          let x_2549 : i32 = u_xlati50;
          let x_2553 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[((x_2546 + 1i) / 4i)][((x_2549 + 1i) % 4i)];
          let x_2555 : vec2<f32> = (vec2<f32>(x_2544.y, x_2544.y) * vec2<f32>(x_2553.x, x_2553.y));
          let x_2556 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2555.x, x_2555.y, x_2556.z, x_2556.w);
          let x_2558 : i32 = u_xlati50;
          let x_2560 : i32 = u_xlati50;
          let x_2563 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[(x_2558 / 4i)][(x_2560 % 4i)];
          let x_2565 : vec3<f32> = vs_TEXCOORD1;
          let x_2568 : vec4<f32> = u_xlat11;
          let x_2570 : vec2<f32> = ((vec2<f32>(x_2563.x, x_2563.y) * vec2<f32>(x_2565.x, x_2565.x)) + vec2<f32>(x_2568.x, x_2568.y));
          let x_2571 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2570.x, x_2570.y, x_2571.z, x_2571.w);
          let x_2573 : i32 = u_xlati50;
          let x_2576 : i32 = u_xlati50;
          let x_2580 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[((x_2573 + 2i) / 4i)][((x_2576 + 2i) % 4i)];
          let x_2582 : vec3<f32> = vs_TEXCOORD1;
          let x_2585 : vec4<f32> = u_xlat11;
          let x_2587 : vec2<f32> = ((vec2<f32>(x_2580.x, x_2580.y) * vec2<f32>(x_2582.z, x_2582.z)) + vec2<f32>(x_2585.x, x_2585.y));
          let x_2588 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2587.x, x_2587.y, x_2588.z, x_2588.w);
          let x_2590 : vec4<f32> = u_xlat11;
          let x_2592 : i32 = u_xlati50;
          let x_2595 : i32 = u_xlati50;
          let x_2599 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[((x_2592 + 3i) / 4i)][((x_2595 + 3i) % 4i)];
          let x_2601 : vec2<f32> = (vec2<f32>(x_2590.x, x_2590.y) + vec2<f32>(x_2599.x, x_2599.y));
          let x_2602 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2601.x, x_2601.y, x_2602.z, x_2602.w);
          let x_2604 : vec4<f32> = u_xlat11;
          let x_2607 : vec2<f32> = ((vec2<f32>(x_2604.x, x_2604.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2608 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2607.x, x_2607.y, x_2608.z, x_2608.w);
          let x_2610 : vec4<f32> = u_xlat11;
          let x_2612 : vec2<f32> = fract(vec2<f32>(x_2610.x, x_2610.y));
          let x_2613 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2612.x, x_2612.y, x_2613.z, x_2613.w);
          let x_2615 : u32 = u_xlatu66;
          let x_2618 : vec4<f32> = x_2420.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2615)];
          let x_2620 : vec4<f32> = u_xlat11;
          let x_2623 : u32 = u_xlatu66;
          let x_2626 : vec4<f32> = x_2420.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2623)];
          let x_2628 : vec2<f32> = ((vec2<f32>(x_2618.x, x_2618.y) * vec2<f32>(x_2620.x, x_2620.y)) + vec2<f32>(x_2626.z, x_2626.w));
          let x_2629 : vec3<f32> = u_xlat30;
          u_xlat30 = vec3<f32>(x_2628.x, x_2629.y, x_2628.y);
        } else {
          let x_2632 : vec3<f32> = vs_TEXCOORD1;
          let x_2634 : i32 = u_xlati50;
          let x_2637 : i32 = u_xlati50;
          let x_2641 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[((x_2634 + 1i) / 4i)][((x_2637 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_2632.y, x_2632.y, x_2632.y, x_2632.y) * x_2641);
          let x_2643 : i32 = u_xlati50;
          let x_2645 : i32 = u_xlati50;
          let x_2648 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[(x_2643 / 4i)][(x_2645 % 4i)];
          let x_2649 : vec3<f32> = vs_TEXCOORD1;
          let x_2652 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2648 * vec4<f32>(x_2649.x, x_2649.x, x_2649.x, x_2649.x)) + x_2652);
          let x_2654 : i32 = u_xlati50;
          let x_2657 : i32 = u_xlati50;
          let x_2661 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[((x_2654 + 2i) / 4i)][((x_2657 + 2i) % 4i)];
          let x_2662 : vec3<f32> = vs_TEXCOORD1;
          let x_2665 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_2661 * vec4<f32>(x_2662.z, x_2662.z, x_2662.z, x_2662.z)) + x_2665);
          let x_2667 : vec4<f32> = u_xlat11;
          let x_2668 : i32 = u_xlati50;
          let x_2671 : i32 = u_xlati50;
          let x_2675 : vec4<f32> = x_2420.x_AdditionalLightsWorldToLights[((x_2668 + 3i) / 4i)][((x_2671 + 3i) % 4i)];
          u_xlat11 = (x_2667 + x_2675);
          let x_2677 : vec4<f32> = u_xlat11;
          let x_2679 : vec4<f32> = u_xlat11;
          let x_2681 : vec3<f32> = (vec3<f32>(x_2677.x, x_2677.y, x_2677.z) / vec3<f32>(x_2679.w, x_2679.w, x_2679.w));
          let x_2682 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2682.w);
          let x_2684 : vec4<f32> = u_xlat11;
          let x_2686 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_2684.x, x_2684.y, x_2684.z), vec3<f32>(x_2686.x, x_2686.y, x_2686.z));
          let x_2691 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_2691);
          let x_2694 : vec4<f32> = u_xlat10;
          let x_2696 : vec4<f32> = u_xlat11;
          let x_2698 : vec3<f32> = (vec3<f32>(x_2694.x, x_2694.x, x_2694.x) * vec3<f32>(x_2696.x, x_2696.y, x_2696.z));
          let x_2699 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2698.x, x_2698.y, x_2698.z, x_2699.w);
          let x_2701 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_2701.x, x_2701.y, x_2701.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2708 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_2708, 0.000001f);
          let x_2713 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_2713);
          let x_2716 : vec4<f32> = u_xlat10;
          let x_2718 : vec4<f32> = u_xlat11;
          let x_2720 : vec3<f32> = (vec3<f32>(x_2716.x, x_2716.x, x_2716.x) * vec3<f32>(x_2718.z, x_2718.x, x_2718.y));
          let x_2721 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2720.x, x_2720.y, x_2720.z, x_2721.w);
          let x_2724 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_2724);
          let x_2728 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_2728, 0.0f, 1.0f);
          let x_2732 : vec4<f32> = u_xlat12;
          let x_2735 : vec4<bool> = (vec4<f32>(x_2732.y, x_2732.z, x_2732.y, x_2732.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2735.x, x_2735.y);
          let x_2739 : bool = u_xlatb51.x;
          if (x_2739) {
            let x_2744 : f32 = u_xlat12.x;
            x_2740 = x_2744;
          } else {
            let x_2747 : f32 = u_xlat12.x;
            x_2740 = -(x_2747);
          }
          let x_2749 : f32 = x_2740;
          u_xlat51.x = x_2749;
          let x_2752 : bool = u_xlatb51.y;
          if (x_2752) {
            let x_2757 : f32 = u_xlat12.x;
            x_2753 = x_2757;
          } else {
            let x_2760 : f32 = u_xlat12.x;
            x_2753 = -(x_2760);
          }
          let x_2762 : f32 = x_2753;
          u_xlat51.y = x_2762;
          let x_2764 : vec4<f32> = u_xlat11;
          let x_2766 : vec4<f32> = u_xlat10;
          let x_2769 : vec2<f32> = u_xlat51;
          let x_2770 : vec2<f32> = ((vec2<f32>(x_2764.x, x_2764.y) * vec2<f32>(x_2766.x, x_2766.x)) + x_2769);
          let x_2771 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2770.x, x_2771.y, x_2770.y, x_2771.w);
          let x_2773 : vec4<f32> = u_xlat10;
          let x_2776 : vec2<f32> = ((vec2<f32>(x_2773.x, x_2773.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2777 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2776.x, x_2777.y, x_2776.y, x_2777.w);
          let x_2779 : vec4<f32> = u_xlat10;
          let x_2783 : vec2<f32> = clamp(vec2<f32>(x_2779.x, x_2779.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2784 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2783.x, x_2784.y, x_2783.y, x_2784.w);
          let x_2786 : u32 = u_xlatu66;
          let x_2789 : vec4<f32> = x_2420.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2786)];
          let x_2791 : vec4<f32> = u_xlat10;
          let x_2794 : u32 = u_xlatu66;
          let x_2797 : vec4<f32> = x_2420.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2794)];
          let x_2799 : vec2<f32> = ((vec2<f32>(x_2789.x, x_2789.y) * vec2<f32>(x_2791.x, x_2791.z)) + vec2<f32>(x_2797.z, x_2797.w));
          let x_2800 : vec3<f32> = u_xlat30;
          u_xlat30 = vec3<f32>(x_2799.x, x_2800.y, x_2799.y);
        }
      }
      let x_2807 : vec3<f32> = u_xlat30;
      let x_2810 : f32 = x_44.x_GlobalMipBias.x;
      let x_2811 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2807.x, x_2807.z), x_2810);
      u_xlat10 = x_2811;
      let x_2814 : bool = u_xlatb1.z;
      if (x_2814) {
        let x_2819 : f32 = u_xlat10.w;
        x_2815 = x_2819;
      } else {
        let x_2822 : f32 = u_xlat10.x;
        x_2815 = x_2822;
      }
      let x_2823 : f32 = x_2815;
      u_xlat70 = x_2823;
      let x_2825 : bool = u_xlatb1.x;
      if (x_2825) {
        let x_2829 : vec4<f32> = u_xlat10;
        x_2826 = vec3<f32>(x_2829.x, x_2829.y, x_2829.z);
      } else {
        let x_2832 : f32 = u_xlat70;
        x_2826 = vec3<f32>(x_2832, x_2832, x_2832);
      }
      let x_2834 : vec3<f32> = x_2826;
      let x_2835 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2834.x, x_2834.y, x_2834.z, x_2835.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_2841 : vec4<f32> = u_xlat10;
    let x_2843 : u32 = u_xlatu66;
    let x_2846 : vec4<f32> = x_2307.x_AdditionalLightsColor[bitcast<i32>(x_2843)];
    let x_2848 : vec3<f32> = (vec3<f32>(x_2841.x, x_2841.y, x_2841.z) * vec3<f32>(x_2846.x, x_2846.y, x_2846.z));
    let x_2849 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2848.x, x_2848.y, x_2848.z, x_2849.w);
    let x_2851 : f32 = u_xlat65;
    let x_2853 : vec4<f32> = u_xlat10;
    let x_2855 : vec3<f32> = (vec3<f32>(x_2851, x_2851, x_2851) * vec3<f32>(x_2853.x, x_2853.y, x_2853.z));
    let x_2856 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2855.x, x_2855.y, x_2855.z, x_2856.w);
    let x_2858 : vec3<f32> = u_xlat23;
    let x_2859 : vec3<f32> = u_xlat29;
    u_xlat66 = dot(x_2858, x_2859);
    let x_2861 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2861, 0.0f, 1.0f);
    let x_2863 : f32 = u_xlat66;
    let x_2864 : f32 = u_xlat67;
    u_xlat66 = (x_2863 * x_2864);
    let x_2866 : f32 = u_xlat66;
    let x_2868 : vec4<f32> = u_xlat10;
    let x_2870 : vec3<f32> = (vec3<f32>(x_2866, x_2866, x_2866) * vec3<f32>(x_2868.x, x_2868.y, x_2868.z));
    let x_2871 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2870.x, x_2870.y, x_2870.z, x_2871.w);
    let x_2873 : vec3<f32> = u_xlat28;
    let x_2874 : vec4<f32> = u_xlat9;
    let x_2877 : vec3<f32> = u_xlat5;
    u_xlat28 = ((x_2873 * vec3<f32>(x_2874.x, x_2874.x, x_2874.x)) + x_2877);
    let x_2879 : vec3<f32> = u_xlat28;
    let x_2880 : vec3<f32> = u_xlat28;
    u_xlat66 = dot(x_2879, x_2880);
    let x_2882 : f32 = u_xlat66;
    u_xlat66 = max(x_2882, 1.17549435e-37f);
    let x_2884 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_2884);
    let x_2886 : f32 = u_xlat66;
    let x_2888 : vec3<f32> = u_xlat28;
    u_xlat28 = (vec3<f32>(x_2886, x_2886, x_2886) * x_2888);
    let x_2890 : vec3<f32> = u_xlat23;
    let x_2891 : vec3<f32> = u_xlat28;
    u_xlat66 = dot(x_2890, x_2891);
    let x_2893 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2893, 0.0f, 1.0f);
    let x_2895 : vec3<f32> = u_xlat29;
    let x_2896 : vec3<f32> = u_xlat28;
    u_xlat67 = dot(x_2895, x_2896);
    let x_2898 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2898, 0.0f, 1.0f);
    let x_2900 : f32 = u_xlat66;
    let x_2901 : f32 = u_xlat66;
    u_xlat66 = (x_2900 * x_2901);
    let x_2903 : f32 = u_xlat66;
    let x_2905 : f32 = u_xlat8.x;
    u_xlat66 = ((x_2903 * x_2905) + 1.000010014f);
    let x_2908 : f32 = u_xlat67;
    let x_2909 : f32 = u_xlat67;
    u_xlat67 = (x_2908 * x_2909);
    let x_2911 : f32 = u_xlat66;
    let x_2912 : f32 = u_xlat66;
    u_xlat66 = (x_2911 * x_2912);
    let x_2914 : f32 = u_xlat67;
    u_xlat67 = max(x_2914, 0.100000001f);
    let x_2916 : f32 = u_xlat66;
    let x_2917 : f32 = u_xlat67;
    u_xlat66 = (x_2916 * x_2917);
    let x_2919 : f32 = u_xlat61;
    let x_2920 : f32 = u_xlat66;
    u_xlat66 = (x_2919 * x_2920);
    let x_2922 : f32 = u_xlat21;
    let x_2923 : f32 = u_xlat66;
    u_xlat66 = (x_2922 / x_2923);
    let x_2925 : vec4<f32> = u_xlat0;
    let x_2927 : f32 = u_xlat66;
    let x_2930 : vec3<f32> = u_xlat22;
    u_xlat28 = ((vec3<f32>(x_2925.x, x_2925.y, x_2925.z) * vec3<f32>(x_2927, x_2927, x_2927)) + x_2930);
    let x_2932 : vec3<f32> = u_xlat28;
    let x_2933 : vec4<f32> = u_xlat10;
    let x_2936 : vec4<f32> = u_xlat7;
    let x_2938 : vec3<f32> = ((x_2932 * vec3<f32>(x_2933.x, x_2933.y, x_2933.z)) + vec3<f32>(x_2936.x, x_2936.y, x_2936.z));
    let x_2939 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2938.x, x_2938.y, x_2938.z, x_2939.w);

    continuing {
      let x_2941 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2941 + bitcast<u32>(1i));
    }
  }
  let x_2943 : vec4<f32> = u_xlat4;
  let x_2945 : vec3<f32> = u_xlat3;
  let x_2948 : vec4<f32> = u_xlat6;
  let x_2950 : vec3<f32> = ((vec3<f32>(x_2943.x, x_2943.y, x_2943.z) * vec3<f32>(x_2945.x, x_2945.x, x_2945.x)) + vec3<f32>(x_2948.x, x_2948.y, x_2948.z));
  let x_2951 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2950.x, x_2950.y, x_2950.z, x_2951.w);
  let x_2955 : vec4<f32> = u_xlat7;
  let x_2957 : vec4<f32> = u_xlat0;
  let x_2959 : vec3<f32> = (vec3<f32>(x_2955.x, x_2955.y, x_2955.z) + vec3<f32>(x_2957.x, x_2957.y, x_2957.z));
  let x_2960 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2959.x, x_2959.y, x_2959.z, x_2960.w);
  let x_2965 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_2965 == 1.0f);
  let x_2967 : bool = u_xlatb0;
  if (x_2967) {
    let x_2972 : f32 = u_xlat2.x;
    x_2968 = x_2972;
  } else {
    x_2968 = 1.0f;
  }
  let x_2974 : f32 = x_2968;
  SV_Target0.w = x_2974;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

