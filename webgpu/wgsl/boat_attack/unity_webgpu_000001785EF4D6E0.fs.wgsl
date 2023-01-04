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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_OcclusionMap : sampler;

@group(0) @binding(10) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_493 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_560 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1019 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1133 : AdditionalLightsCookies;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat39 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlatb29 : bool;
  var x_190 : f32;
  var u_xlatb16 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat5 : vec3<f32>;
  var x_249 : f32;
  var x_261 : f32;
  var x_272 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat40 : f32;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat45 : f32;
  var x_648 : f32;
  var x_659 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu39 : u32;
  var u_xlatb1 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatu10 : u32;
  var u_xlati23 : i32;
  var u_xlati10 : i32;
  var u_xlati36 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlatb37 : vec2<bool>;
  var u_xlat37 : vec2<f32>;
  var x_1453 : f32;
  var x_1466 : f32;
  var u_xlat49 : f32;
  var x_1528 : f32;
  var x_1539 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1680 : f32;
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
  u_xlat27 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat27;
  let x_107 : vec2<f32> = u_xlat27;
  u_xlat39 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat39;
  u_xlat39 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat39;
  u_xlat39 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat39;
  u_xlat39 = sqrt(x_114);
  let x_116 : f32 = u_xlat39;
  u_xlat39 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat27;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat27 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat16.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat16.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_44.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat16;
  u_xlat16 = vec3<f32>(x_163.x, x_163.y, x_164.z);
  let x_171 : vec3<f32> = u_xlat16;
  let x_174 : f32 = x_44.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.y), x_174);
  u_xlat16.x = x_175.w;
  let x_186 : f32 = x_184.unity_LODFade.x;
  u_xlatb29 = (x_186 >= 0.0f);
  let x_189 : bool = u_xlatb29;
  if (x_189) {
    let x_194 : f32 = u_xlat16.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat16.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat16.x = x_201;
  let x_204 : f32 = u_xlat16.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat16.x = (-(x_204) + x_207);
  let x_212 : f32 = u_xlat16.x;
  u_xlatb16 = (x_212 < 0.0f);
  let x_214 : bool = u_xlatb16;
  if (((select(0i, 1i, x_214) * -1i) != 0i)) {
    discard;
  }
  let x_225 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb16 = (x_225 == 0.0f);
  let x_230 : vec3<f32> = vs_TEXCOORD1;
  let x_235 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_230) + x_235);
  let x_238 : vec3<f32> = u_xlat4;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat29 = dot(x_238, x_239);
  let x_241 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_241);
  let x_243 : f32 = u_xlat29;
  let x_245 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_243, x_243, x_243) * x_245);
  let x_248 : bool = u_xlatb16;
  if (x_248) {
    let x_253 : f32 = u_xlat4.x;
    x_249 = x_253;
  } else {
    let x_257 : f32 = x_44.unity_MatrixV[0i].z;
    x_249 = x_257;
  }
  let x_258 : f32 = x_249;
  u_xlat5.x = x_258;
  let x_260 : bool = u_xlatb16;
  if (x_260) {
    let x_265 : f32 = u_xlat4.y;
    x_261 = x_265;
  } else {
    let x_268 : f32 = x_44.unity_MatrixV[1i].z;
    x_261 = x_268;
  }
  let x_269 : f32 = x_261;
  u_xlat5.y = x_269;
  let x_271 : bool = u_xlatb16;
  if (x_271) {
    let x_276 : f32 = u_xlat4.z;
    x_272 = x_276;
  } else {
    let x_279 : f32 = x_44.unity_MatrixV[2i].z;
    x_272 = x_279;
  }
  let x_280 : f32 = x_272;
  u_xlat5.z = x_280;
  let x_283 : vec3<f32> = vs_TEXCOORD2;
  let x_286 : vec4<f32> = vs_TEXCOORD3;
  u_xlat16 = (vec3<f32>(x_283.z, x_283.x, x_283.y) * vec3<f32>(x_286.y, x_286.z, x_286.x));
  let x_289 : vec3<f32> = vs_TEXCOORD2;
  let x_291 : vec4<f32> = vs_TEXCOORD3;
  let x_294 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_289.y, x_289.z, x_289.x) * vec3<f32>(x_291.z, x_291.x, x_291.y)) + -(x_294));
  let x_297 : vec3<f32> = u_xlat16;
  let x_298 : vec4<f32> = vs_TEXCOORD3;
  u_xlat16 = (x_297 * vec3<f32>(x_298.w, x_298.w, x_298.w));
  let x_301 : vec2<f32> = u_xlat27;
  let x_303 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_301.y, x_301.y, x_301.y) * x_303);
  let x_305 : vec2<f32> = u_xlat27;
  let x_307 : vec4<f32> = vs_TEXCOORD3;
  let x_310 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_305.x, x_305.x, x_305.x) * vec3<f32>(x_307.x, x_307.y, x_307.z)) + x_310);
  let x_312 : f32 = u_xlat39;
  let x_314 : vec3<f32> = vs_TEXCOORD2;
  let x_316 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_312, x_312, x_312) * x_314) + x_316);
  let x_318 : vec3<f32> = u_xlat16;
  let x_319 : vec3<f32> = u_xlat16;
  u_xlat39 = dot(x_318, x_319);
  let x_321 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_321);
  let x_323 : f32 = u_xlat39;
  let x_325 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_323, x_323, x_323) * x_325);
  let x_333 : vec2<f32> = vs_TEXCOORD8;
  let x_335 : f32 = x_44.x_GlobalMipBias.x;
  let x_336 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_333, x_335);
  u_xlat4 = vec3<f32>(x_336.x, x_336.y, x_336.z);
  let x_340 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_341 : vec2<f32> = vec2<f32>(x_340.x, x_340.y);
  u_xlat27 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_341.x, x_341.y));
  let x_347 : vec2<f32> = u_xlat27;
  let x_348 : vec4<f32> = hlslcc_FragCoord;
  let x_350 : vec2<f32> = (x_347 * vec2<f32>(x_348.x, x_348.y));
  let x_351 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_350.x, x_350.y, x_351.z, x_351.w);
  let x_354 : f32 = u_xlat6.y;
  let x_356 : f32 = x_44.x_ScaleBiasRt.x;
  let x_359 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat39 = ((x_354 * x_356) + x_359);
  let x_361 : f32 = u_xlat39;
  u_xlat6.z = (-(x_361) + 1.0f);
  let x_366 : f32 = u_xlat1.x;
  u_xlat39 = ((-(x_366) * 0.959999979f) + 0.959999979f);
  let x_372 : f32 = u_xlat1.y;
  let x_374 : f32 = x_69.x_Smoothness;
  let x_376 : f32 = u_xlat39;
  u_xlat27.x = ((x_372 * x_374) + -(x_376));
  let x_381 : f32 = u_xlat39;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat15 = (vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_383.y, x_383.z, x_383.w));
  let x_386 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = x_69.x_BaseColor;
  let x_394 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(x_389.x, x_389.y, x_389.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_395 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec2<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat0;
  let x_404 : vec3<f32> = ((vec3<f32>(x_397.x, x_397.x, x_397.x) * vec3<f32>(x_399.x, x_399.y, x_399.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_405 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : f32 = u_xlat1.y;
  let x_411 : f32 = x_69.x_Smoothness;
  u_xlat39 = ((-(x_408) * x_411) + 1.0f);
  let x_414 : f32 = u_xlat39;
  let x_415 : f32 = u_xlat39;
  u_xlat1.x = (x_414 * x_415);
  let x_419 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_419, 0.0078125f);
  let x_425 : f32 = u_xlat1.x;
  let x_427 : f32 = u_xlat1.x;
  u_xlat14 = (x_425 * x_427);
  let x_430 : f32 = u_xlat27.x;
  u_xlat27.x = (x_430 + 1.0f);
  let x_434 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_434, 0.0f, 1.0f);
  let x_439 : f32 = u_xlat1.x;
  u_xlat40 = ((x_439 * 4.0f) + 2.0f);
  let x_449 : vec4<f32> = u_xlat6;
  let x_452 : f32 = x_44.x_GlobalMipBias.x;
  let x_453 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_449.x, x_449.z), x_452);
  u_xlat43 = x_453.x;
  let x_456 : f32 = u_xlat43;
  u_xlat44 = (x_456 + -1.0f);
  let x_460 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_461 : f32 = u_xlat44;
  u_xlat44 = ((x_460 * x_461) + 1.0f);
  let x_465 : f32 = u_xlat3.x;
  let x_466 : f32 = u_xlat43;
  u_xlat3.x = min(x_465, x_466);
  let x_471 : vec4<f32> = vs_TEXCOORD6;
  let x_472 : vec2<f32> = vec2<f32>(x_471.x, x_471.y);
  let x_474 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_472.x, x_472.y, x_474);
  let x_486 : vec3<f32> = txVec0;
  let x_488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_486.xy, x_486.z);
  u_xlat43 = x_488;
  let x_495 : f32 = x_493.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_495) + 1.0f);
  let x_499 : f32 = u_xlat43;
  let x_501 : f32 = x_493.x_MainLightShadowParams.x;
  let x_504 : f32 = u_xlat6.x;
  u_xlat43 = ((x_499 * x_501) + x_504);
  let x_508 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_508);
  let x_512 : f32 = vs_TEXCOORD6.z;
  u_xlatb19 = (x_512 >= 1.0f);
  let x_514 : bool = u_xlatb19;
  let x_515 : bool = u_xlatb6;
  u_xlatb6 = (x_514 | x_515);
  let x_517 : bool = u_xlatb6;
  let x_518 : f32 = u_xlat43;
  u_xlat43 = select(x_518, 1.0f, x_517);
  let x_520 : vec3<f32> = vs_TEXCOORD1;
  let x_522 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_524 : vec3<f32> = (x_520 + -(x_522));
  let x_525 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat6;
  let x_529 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_527.x, x_527.y, x_527.z), vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_534 : f32 = u_xlat6.x;
  let x_536 : f32 = x_493.x_MainLightShadowParams.z;
  let x_539 : f32 = x_493.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_534 * x_536) + x_539);
  let x_543 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_543, 0.0f, 1.0f);
  let x_547 : f32 = u_xlat43;
  u_xlat19 = (-(x_547) + 1.0f);
  let x_551 : f32 = u_xlat6.x;
  let x_552 : f32 = u_xlat19;
  let x_554 : f32 = u_xlat43;
  u_xlat43 = ((x_551 * x_552) + x_554);
  let x_562 : f32 = x_560.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_562 == -1.0f));
  let x_564 : bool = u_xlatb6;
  if (x_564) {
    let x_567 : vec3<f32> = vs_TEXCOORD1;
    let x_570 : vec4<f32> = x_560.x_MainLightWorldToLight[1i];
    let x_572 : vec2<f32> = (vec2<f32>(x_567.y, x_567.y) * vec2<f32>(x_570.x, x_570.y));
    let x_573 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
    let x_576 : vec4<f32> = x_560.x_MainLightWorldToLight[0i];
    let x_578 : vec3<f32> = vs_TEXCOORD1;
    let x_581 : vec4<f32> = u_xlat6;
    let x_583 : vec2<f32> = ((vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_578.x, x_578.x)) + vec2<f32>(x_581.x, x_581.y));
    let x_584 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
    let x_587 : vec4<f32> = x_560.x_MainLightWorldToLight[2i];
    let x_589 : vec3<f32> = vs_TEXCOORD1;
    let x_592 : vec4<f32> = u_xlat6;
    let x_594 : vec2<f32> = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_589.z, x_589.z)) + vec2<f32>(x_592.x, x_592.y));
    let x_595 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
    let x_597 : vec4<f32> = u_xlat6;
    let x_601 : vec4<f32> = x_560.x_MainLightWorldToLight[3i];
    let x_603 : vec2<f32> = (vec2<f32>(x_597.x, x_597.y) + vec2<f32>(x_601.x, x_601.y));
    let x_604 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
    let x_606 : vec4<f32> = u_xlat6;
    let x_611 : vec2<f32> = ((vec2<f32>(x_606.x, x_606.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_612 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
    let x_619 : vec4<f32> = u_xlat6;
    let x_622 : f32 = x_44.x_GlobalMipBias.x;
    let x_623 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_619.x, x_619.y), x_622);
    u_xlat6 = x_623;
    let x_628 : f32 = x_560.x_MainLightCookieTextureFormat;
    let x_630 : f32 = x_560.x_MainLightCookieTextureFormat;
    let x_632 : f32 = x_560.x_MainLightCookieTextureFormat;
    let x_634 : f32 = x_560.x_MainLightCookieTextureFormat;
    let x_635 : vec4<f32> = vec4<f32>(x_628, x_630, x_632, x_634);
    let x_643 : vec4<bool> = (vec4<f32>(x_635.x, x_635.y, x_635.z, x_635.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_643.x, x_643.y);
    let x_647 : bool = u_xlatb7.y;
    if (x_647) {
      let x_652 : f32 = u_xlat6.w;
      x_648 = x_652;
    } else {
      let x_655 : f32 = u_xlat6.x;
      x_648 = x_655;
    }
    let x_656 : f32 = x_648;
    u_xlat45 = x_656;
    let x_658 : bool = u_xlatb7.x;
    if (x_658) {
      let x_662 : vec4<f32> = u_xlat6;
      x_659 = vec3<f32>(x_662.x, x_662.y, x_662.z);
    } else {
      let x_665 : f32 = u_xlat45;
      x_659 = vec3<f32>(x_665, x_665, x_665);
    }
    let x_667 : vec3<f32> = x_659;
    let x_668 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_674 : vec4<f32> = u_xlat6;
  let x_677 : vec4<f32> = x_44.x_MainLightColor;
  let x_679 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : f32 = u_xlat44;
  let x_684 : vec4<f32> = u_xlat6;
  let x_686 : vec3<f32> = (vec3<f32>(x_682, x_682, x_682) * vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec3<f32> = u_xlat5;
  let x_691 : vec3<f32> = u_xlat16;
  u_xlat45 = dot(-(x_689), x_691);
  let x_693 : f32 = u_xlat45;
  let x_694 : f32 = u_xlat45;
  u_xlat45 = (x_693 + x_694);
  let x_697 : vec3<f32> = u_xlat16;
  let x_698 : f32 = u_xlat45;
  let x_702 : vec3<f32> = u_xlat5;
  let x_704 : vec3<f32> = ((x_697 * -(vec3<f32>(x_698, x_698, x_698))) + -(x_702));
  let x_705 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec3<f32> = u_xlat16;
  let x_708 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(x_707, x_708);
  let x_710 : f32 = u_xlat45;
  u_xlat45 = clamp(x_710, 0.0f, 1.0f);
  let x_712 : f32 = u_xlat45;
  u_xlat45 = (-(x_712) + 1.0f);
  let x_715 : f32 = u_xlat45;
  let x_716 : f32 = u_xlat45;
  u_xlat45 = (x_715 * x_716);
  let x_718 : f32 = u_xlat45;
  let x_719 : f32 = u_xlat45;
  u_xlat45 = (x_718 * x_719);
  let x_722 : f32 = u_xlat39;
  u_xlat46 = ((-(x_722) * 0.699999988f) + 1.700000048f);
  let x_728 : f32 = u_xlat39;
  let x_729 : f32 = u_xlat46;
  u_xlat39 = (x_728 * x_729);
  let x_731 : f32 = u_xlat39;
  u_xlat39 = (x_731 * 6.0f);
  let x_742 : vec4<f32> = u_xlat7;
  let x_744 : f32 = u_xlat39;
  let x_745 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_742.x, x_742.y, x_742.z), x_744);
  u_xlat7 = x_745;
  let x_747 : f32 = u_xlat7.w;
  u_xlat39 = (x_747 + -1.0f);
  let x_750 : f32 = x_184.unity_SpecCube0_HDR.w;
  let x_751 : f32 = u_xlat39;
  u_xlat39 = ((x_750 * x_751) + 1.0f);
  let x_754 : f32 = u_xlat39;
  u_xlat39 = max(x_754, 0.0f);
  let x_756 : f32 = u_xlat39;
  u_xlat39 = log2(x_756);
  let x_758 : f32 = u_xlat39;
  let x_760 : f32 = x_184.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_758 * x_760);
  let x_762 : f32 = u_xlat39;
  u_xlat39 = exp2(x_762);
  let x_764 : f32 = u_xlat39;
  let x_766 : f32 = x_184.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_764 * x_766);
  let x_768 : vec4<f32> = u_xlat7;
  let x_770 : f32 = u_xlat39;
  let x_772 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(x_770, x_770, x_770));
  let x_773 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_776 : vec2<f32> = u_xlat1;
  let x_778 : vec2<f32> = u_xlat1;
  u_xlat8 = ((vec2<f32>(x_776.x, x_776.x) * vec2<f32>(x_778.x, x_778.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_784 : f32 = u_xlat8.y;
  u_xlat39 = (1.0f / x_784);
  let x_787 : vec4<f32> = u_xlat0;
  let x_790 : vec2<f32> = u_xlat27;
  u_xlat21 = (-(vec3<f32>(x_787.x, x_787.y, x_787.z)) + vec3<f32>(x_790.x, x_790.x, x_790.x));
  let x_793 : f32 = u_xlat45;
  let x_795 : vec3<f32> = u_xlat21;
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_793, x_793, x_793) * x_795) + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : f32 = u_xlat39;
  let x_802 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_800, x_800, x_800) * x_802);
  let x_804 : vec4<f32> = u_xlat7;
  let x_806 : vec3<f32> = u_xlat21;
  let x_807 : vec3<f32> = (vec3<f32>(x_804.x, x_804.y, x_804.z) * x_806);
  let x_808 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec3<f32> = u_xlat4;
  let x_811 : vec3<f32> = u_xlat15;
  let x_813 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_810 * x_811) + vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : f32 = u_xlat43;
  let x_819 : f32 = x_184.unity_LightData.z;
  u_xlat39 = (x_816 * x_819);
  let x_821 : vec3<f32> = u_xlat16;
  let x_823 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_821, vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_828 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_828, 0.0f, 1.0f);
  let x_831 : f32 = u_xlat39;
  let x_833 : f32 = u_xlat1.x;
  u_xlat39 = (x_831 * x_833);
  let x_835 : f32 = u_xlat39;
  let x_837 : vec4<f32> = u_xlat6;
  let x_839 : vec3<f32> = (vec3<f32>(x_835, x_835, x_835) * vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec3<f32> = u_xlat5;
  let x_844 : vec4<f32> = x_44.x_MainLightPosition;
  let x_846 : vec3<f32> = (x_842 + vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec4<f32> = u_xlat7;
  let x_851 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_849.x, x_849.y, x_849.z), vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : f32 = u_xlat39;
  u_xlat39 = max(x_854, 1.17549435e-37f);
  let x_857 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_857);
  let x_859 : f32 = u_xlat39;
  let x_861 : vec4<f32> = u_xlat7;
  let x_863 : vec3<f32> = (vec3<f32>(x_859, x_859, x_859) * vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec3<f32> = u_xlat16;
  let x_867 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(x_866, vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : f32 = u_xlat39;
  u_xlat39 = clamp(x_870, 0.0f, 1.0f);
  let x_873 : vec4<f32> = x_44.x_MainLightPosition;
  let x_875 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_873.x, x_873.y, x_873.z), vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_880 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_880, 0.0f, 1.0f);
  let x_883 : f32 = u_xlat39;
  let x_884 : f32 = u_xlat39;
  u_xlat39 = (x_883 * x_884);
  let x_886 : f32 = u_xlat39;
  let x_888 : f32 = u_xlat8.x;
  u_xlat39 = ((x_886 * x_888) + 1.000010014f);
  let x_893 : f32 = u_xlat1.x;
  let x_895 : f32 = u_xlat1.x;
  u_xlat1.x = (x_893 * x_895);
  let x_898 : f32 = u_xlat39;
  let x_899 : f32 = u_xlat39;
  u_xlat39 = (x_898 * x_899);
  let x_902 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_902, 0.100000001f);
  let x_906 : f32 = u_xlat39;
  let x_908 : f32 = u_xlat1.x;
  u_xlat39 = (x_906 * x_908);
  let x_910 : f32 = u_xlat40;
  let x_911 : f32 = u_xlat39;
  u_xlat39 = (x_910 * x_911);
  let x_913 : f32 = u_xlat14;
  let x_914 : f32 = u_xlat39;
  u_xlat39 = (x_913 / x_914);
  let x_916 : vec4<f32> = u_xlat0;
  let x_918 : f32 = u_xlat39;
  let x_921 : vec3<f32> = u_xlat15;
  let x_922 : vec3<f32> = ((vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(x_918, x_918, x_918)) + x_921);
  let x_923 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat6;
  let x_927 : vec4<f32> = u_xlat7;
  let x_929 : vec3<f32> = (vec3<f32>(x_925.x, x_925.y, x_925.z) * vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_933 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_935 : f32 = x_184.unity_LightData.y;
  u_xlat39 = min(x_933, x_935);
  let x_939 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_939));
  let x_946 : f32 = x_560.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_948 : f32 = x_560.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_950 : f32 = x_560.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_952 : f32 = x_560.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_953 : vec4<f32> = vec4<f32>(x_946, x_948, x_950, x_952);
  let x_960 : vec4<bool> = (vec4<f32>(x_953.x, x_953.y, x_953.z, x_953.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_961 : vec2<bool> = vec2<bool>(x_960.x, x_960.z);
  let x_962 : vec3<bool> = u_xlatb1;
  u_xlatb1 = vec3<bool>(x_961.x, x_962.y, x_961.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_973 : u32 = u_xlatu_loop_1;
    let x_974 : u32 = u_xlatu39;
    if ((x_973 < x_974)) {
    } else {
      break;
    }
    let x_977 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_977 >> 2u);
    let x_981 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_981 & 3u));
    let x_984 : u32 = u_xlatu45;
    let x_987 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_984)];
    let x_997 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1002 : vec4<u32> = indexable[x_997];
    u_xlat45 = dot(x_987, bitcast<vec4<f32>>(x_1002));
    let x_1005 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1005));
    let x_1008 : vec3<f32> = vs_TEXCOORD1;
    let x_1020 : u32 = u_xlatu45;
    let x_1023 : vec4<f32> = x_1019.x_AdditionalLightsPosition[bitcast<i32>(x_1020)];
    let x_1026 : u32 = u_xlatu45;
    let x_1029 : vec4<f32> = x_1019.x_AdditionalLightsPosition[bitcast<i32>(x_1026)];
    u_xlat21 = ((-(x_1008) * vec3<f32>(x_1023.w, x_1023.w, x_1023.w)) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
    let x_1032 : vec3<f32> = u_xlat21;
    let x_1033 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1032, x_1033);
    let x_1035 : f32 = u_xlat46;
    u_xlat46 = max(x_1035, 6.10351562e-05f);
    let x_1039 : f32 = u_xlat46;
    u_xlat9 = inverseSqrt(x_1039);
    let x_1042 : vec3<f32> = u_xlat21;
    let x_1043 : f32 = u_xlat9;
    u_xlat22 = (x_1042 * vec3<f32>(x_1043, x_1043, x_1043));
    let x_1047 : f32 = u_xlat46;
    u_xlat10.x = (1.0f / x_1047);
    let x_1050 : f32 = u_xlat46;
    let x_1051 : u32 = u_xlatu45;
    let x_1054 : f32 = x_1019.x_AdditionalLightsAttenuation[bitcast<i32>(x_1051)].x;
    u_xlat46 = (x_1050 * x_1054);
    let x_1056 : f32 = u_xlat46;
    let x_1058 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1056) * x_1058) + 1.0f);
    let x_1061 : f32 = u_xlat46;
    u_xlat46 = max(x_1061, 0.0f);
    let x_1063 : f32 = u_xlat46;
    let x_1064 : f32 = u_xlat46;
    u_xlat46 = (x_1063 * x_1064);
    let x_1066 : f32 = u_xlat46;
    let x_1068 : f32 = u_xlat10.x;
    u_xlat46 = (x_1066 * x_1068);
    let x_1070 : u32 = u_xlatu45;
    let x_1073 : vec4<f32> = x_1019.x_AdditionalLightsSpotDir[bitcast<i32>(x_1070)];
    let x_1075 : vec3<f32> = u_xlat22;
    u_xlat10.x = dot(vec3<f32>(x_1073.x, x_1073.y, x_1073.z), x_1075);
    let x_1079 : f32 = u_xlat10.x;
    let x_1080 : u32 = u_xlatu45;
    let x_1083 : f32 = x_1019.x_AdditionalLightsAttenuation[bitcast<i32>(x_1080)].z;
    let x_1085 : u32 = u_xlatu45;
    let x_1088 : f32 = x_1019.x_AdditionalLightsAttenuation[bitcast<i32>(x_1085)].w;
    u_xlat10.x = ((x_1079 * x_1083) + x_1088);
    let x_1092 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1092, 0.0f, 1.0f);
    let x_1096 : f32 = u_xlat10.x;
    let x_1098 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1096 * x_1098);
    let x_1101 : f32 = u_xlat46;
    let x_1103 : f32 = u_xlat10.x;
    u_xlat46 = (x_1101 * x_1103);
    let x_1106 : u32 = u_xlatu45;
    u_xlatu10 = (x_1106 >> 5u);
    let x_1109 : u32 = u_xlatu45;
    u_xlati23 = (1i << bitcast<u32>((bitcast<i32>(x_1109) & 31i)));
    let x_1115 : i32 = u_xlati23;
    let x_1117 : u32 = u_xlatu10;
    let x_1120 : f32 = x_560.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1117)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_1115) & bitcast<u32>(x_1120)));
    let x_1124 : i32 = u_xlati10;
    if ((x_1124 != 0i)) {
      let x_1134 : u32 = u_xlatu45;
      let x_1137 : f32 = x_1133.x_AdditionalLightsLightTypes[bitcast<i32>(x_1134)].el;
      u_xlati10 = i32(x_1137);
      let x_1139 : i32 = u_xlati10;
      u_xlati23 = select(1i, 0i, (x_1139 != 0i));
      let x_1143 : u32 = u_xlatu45;
      u_xlati36 = (bitcast<i32>(x_1143) << bitcast<u32>(2i));
      let x_1146 : i32 = u_xlati23;
      if ((x_1146 != 0i)) {
        let x_1151 : vec3<f32> = vs_TEXCOORD1;
        let x_1153 : i32 = u_xlati36;
        let x_1156 : i32 = u_xlati36;
        let x_1160 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[((x_1153 + 1i) / 4i)][((x_1156 + 1i) % 4i)];
        let x_1162 : vec3<f32> = (vec3<f32>(x_1151.y, x_1151.y, x_1151.y) * vec3<f32>(x_1160.x, x_1160.y, x_1160.w));
        let x_1163 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
        let x_1165 : i32 = u_xlati36;
        let x_1167 : i32 = u_xlati36;
        let x_1170 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[(x_1165 / 4i)][(x_1167 % 4i)];
        let x_1172 : vec3<f32> = vs_TEXCOORD1;
        let x_1175 : vec4<f32> = u_xlat11;
        let x_1177 : vec3<f32> = ((vec3<f32>(x_1170.x, x_1170.y, x_1170.w) * vec3<f32>(x_1172.x, x_1172.x, x_1172.x)) + vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
        let x_1178 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
        let x_1180 : i32 = u_xlati36;
        let x_1183 : i32 = u_xlati36;
        let x_1187 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[((x_1180 + 2i) / 4i)][((x_1183 + 2i) % 4i)];
        let x_1189 : vec3<f32> = vs_TEXCOORD1;
        let x_1192 : vec4<f32> = u_xlat11;
        let x_1194 : vec3<f32> = ((vec3<f32>(x_1187.x, x_1187.y, x_1187.w) * vec3<f32>(x_1189.z, x_1189.z, x_1189.z)) + vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
        let x_1195 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
        let x_1197 : vec4<f32> = u_xlat11;
        let x_1199 : i32 = u_xlati36;
        let x_1202 : i32 = u_xlati36;
        let x_1206 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[((x_1199 + 3i) / 4i)][((x_1202 + 3i) % 4i)];
        let x_1208 : vec3<f32> = (vec3<f32>(x_1197.x, x_1197.y, x_1197.z) + vec3<f32>(x_1206.x, x_1206.y, x_1206.w));
        let x_1209 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
        let x_1212 : vec4<f32> = u_xlat11;
        let x_1214 : vec4<f32> = u_xlat11;
        let x_1216 : vec2<f32> = (vec2<f32>(x_1212.x, x_1212.y) / vec2<f32>(x_1214.z, x_1214.z));
        let x_1217 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1216.x, x_1217.y, x_1216.y);
        let x_1219 : vec3<f32> = u_xlat23;
        let x_1222 : vec2<f32> = ((vec2<f32>(x_1219.x, x_1219.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1223 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1222.x, x_1223.y, x_1222.y);
        let x_1225 : vec3<f32> = u_xlat23;
        let x_1229 : vec2<f32> = clamp(vec2<f32>(x_1225.x, x_1225.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1230 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1229.x, x_1230.y, x_1229.y);
        let x_1232 : u32 = u_xlatu45;
        let x_1235 : vec4<f32> = x_1133.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1232)];
        let x_1237 : vec3<f32> = u_xlat23;
        let x_1240 : u32 = u_xlatu45;
        let x_1243 : vec4<f32> = x_1133.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1240)];
        let x_1245 : vec2<f32> = ((vec2<f32>(x_1235.x, x_1235.y) * vec2<f32>(x_1237.x, x_1237.z)) + vec2<f32>(x_1243.z, x_1243.w));
        let x_1246 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1245.x, x_1246.y, x_1245.y);
      } else {
        let x_1250 : i32 = u_xlati10;
        u_xlatb10 = (x_1250 == 1i);
        let x_1252 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_1252);
        let x_1254 : i32 = u_xlati10;
        if ((x_1254 != 0i)) {
          let x_1258 : vec3<f32> = vs_TEXCOORD1;
          let x_1260 : i32 = u_xlati36;
          let x_1263 : i32 = u_xlati36;
          let x_1267 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[((x_1260 + 1i) / 4i)][((x_1263 + 1i) % 4i)];
          let x_1269 : vec2<f32> = (vec2<f32>(x_1258.y, x_1258.y) * vec2<f32>(x_1267.x, x_1267.y));
          let x_1270 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1269.x, x_1269.y, x_1270.z, x_1270.w);
          let x_1272 : i32 = u_xlati36;
          let x_1274 : i32 = u_xlati36;
          let x_1277 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[(x_1272 / 4i)][(x_1274 % 4i)];
          let x_1279 : vec3<f32> = vs_TEXCOORD1;
          let x_1282 : vec4<f32> = u_xlat11;
          let x_1284 : vec2<f32> = ((vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(x_1279.x, x_1279.x)) + vec2<f32>(x_1282.x, x_1282.y));
          let x_1285 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1285.w);
          let x_1287 : i32 = u_xlati36;
          let x_1290 : i32 = u_xlati36;
          let x_1294 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[((x_1287 + 2i) / 4i)][((x_1290 + 2i) % 4i)];
          let x_1296 : vec3<f32> = vs_TEXCOORD1;
          let x_1299 : vec4<f32> = u_xlat11;
          let x_1301 : vec2<f32> = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1296.z, x_1296.z)) + vec2<f32>(x_1299.x, x_1299.y));
          let x_1302 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1301.x, x_1301.y, x_1302.z, x_1302.w);
          let x_1304 : vec4<f32> = u_xlat11;
          let x_1306 : i32 = u_xlati36;
          let x_1309 : i32 = u_xlati36;
          let x_1313 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[((x_1306 + 3i) / 4i)][((x_1309 + 3i) % 4i)];
          let x_1315 : vec2<f32> = (vec2<f32>(x_1304.x, x_1304.y) + vec2<f32>(x_1313.x, x_1313.y));
          let x_1316 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
          let x_1318 : vec4<f32> = u_xlat11;
          let x_1321 : vec2<f32> = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1322 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1322.w);
          let x_1324 : vec4<f32> = u_xlat11;
          let x_1326 : vec2<f32> = fract(vec2<f32>(x_1324.x, x_1324.y));
          let x_1327 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1326.x, x_1326.y, x_1327.z, x_1327.w);
          let x_1329 : u32 = u_xlatu45;
          let x_1332 : vec4<f32> = x_1133.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1329)];
          let x_1334 : vec4<f32> = u_xlat11;
          let x_1337 : u32 = u_xlatu45;
          let x_1340 : vec4<f32> = x_1133.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1337)];
          let x_1342 : vec2<f32> = ((vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(x_1334.x, x_1334.y)) + vec2<f32>(x_1340.z, x_1340.w));
          let x_1343 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1342.x, x_1343.y, x_1342.y);
        } else {
          let x_1346 : vec3<f32> = vs_TEXCOORD1;
          let x_1348 : i32 = u_xlati36;
          let x_1351 : i32 = u_xlati36;
          let x_1355 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[((x_1348 + 1i) / 4i)][((x_1351 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1346.y, x_1346.y, x_1346.y, x_1346.y) * x_1355);
          let x_1357 : i32 = u_xlati36;
          let x_1359 : i32 = u_xlati36;
          let x_1362 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[(x_1357 / 4i)][(x_1359 % 4i)];
          let x_1363 : vec3<f32> = vs_TEXCOORD1;
          let x_1366 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1362 * vec4<f32>(x_1363.x, x_1363.x, x_1363.x, x_1363.x)) + x_1366);
          let x_1368 : i32 = u_xlati36;
          let x_1371 : i32 = u_xlati36;
          let x_1375 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[((x_1368 + 2i) / 4i)][((x_1371 + 2i) % 4i)];
          let x_1376 : vec3<f32> = vs_TEXCOORD1;
          let x_1379 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1375 * vec4<f32>(x_1376.z, x_1376.z, x_1376.z, x_1376.z)) + x_1379);
          let x_1381 : vec4<f32> = u_xlat11;
          let x_1382 : i32 = u_xlati36;
          let x_1385 : i32 = u_xlati36;
          let x_1389 : vec4<f32> = x_1133.x_AdditionalLightsWorldToLights[((x_1382 + 3i) / 4i)][((x_1385 + 3i) % 4i)];
          u_xlat11 = (x_1381 + x_1389);
          let x_1391 : vec4<f32> = u_xlat11;
          let x_1393 : vec4<f32> = u_xlat11;
          let x_1395 : vec3<f32> = (vec3<f32>(x_1391.x, x_1391.y, x_1391.z) / vec3<f32>(x_1393.w, x_1393.w, x_1393.w));
          let x_1396 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
          let x_1398 : vec4<f32> = u_xlat11;
          let x_1400 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_1398.x, x_1398.y, x_1398.z), vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
          let x_1405 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_1405);
          let x_1408 : vec4<f32> = u_xlat10;
          let x_1410 : vec4<f32> = u_xlat11;
          let x_1412 : vec3<f32> = (vec3<f32>(x_1408.x, x_1408.x, x_1408.x) * vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
          let x_1413 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
          let x_1415 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_1415.x, x_1415.y, x_1415.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1422 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_1422, 0.000001f);
          let x_1427 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_1427);
          let x_1431 : vec4<f32> = u_xlat10;
          let x_1433 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_1431.x, x_1431.x, x_1431.x) * vec3<f32>(x_1433.z, x_1433.x, x_1433.y));
          let x_1437 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1437);
          let x_1441 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1441, 0.0f, 1.0f);
          let x_1445 : vec3<f32> = u_xlat12;
          let x_1448 : vec4<bool> = (vec4<f32>(x_1445.y, x_1445.z, x_1445.y, x_1445.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_1448.x, x_1448.y);
          let x_1452 : bool = u_xlatb37.x;
          if (x_1452) {
            let x_1457 : f32 = u_xlat12.x;
            x_1453 = x_1457;
          } else {
            let x_1460 : f32 = u_xlat12.x;
            x_1453 = -(x_1460);
          }
          let x_1462 : f32 = x_1453;
          u_xlat37.x = x_1462;
          let x_1465 : bool = u_xlatb37.y;
          if (x_1465) {
            let x_1470 : f32 = u_xlat12.x;
            x_1466 = x_1470;
          } else {
            let x_1473 : f32 = u_xlat12.x;
            x_1466 = -(x_1473);
          }
          let x_1475 : f32 = x_1466;
          u_xlat37.y = x_1475;
          let x_1477 : vec4<f32> = u_xlat11;
          let x_1479 : vec4<f32> = u_xlat10;
          let x_1482 : vec2<f32> = u_xlat37;
          let x_1483 : vec2<f32> = ((vec2<f32>(x_1477.x, x_1477.y) * vec2<f32>(x_1479.x, x_1479.x)) + x_1482);
          let x_1484 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1483.x, x_1484.y, x_1483.y, x_1484.w);
          let x_1486 : vec4<f32> = u_xlat10;
          let x_1489 : vec2<f32> = ((vec2<f32>(x_1486.x, x_1486.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1490 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1489.x, x_1490.y, x_1489.y, x_1490.w);
          let x_1492 : vec4<f32> = u_xlat10;
          let x_1496 : vec2<f32> = clamp(vec2<f32>(x_1492.x, x_1492.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1497 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1496.x, x_1497.y, x_1496.y, x_1497.w);
          let x_1499 : u32 = u_xlatu45;
          let x_1502 : vec4<f32> = x_1133.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1499)];
          let x_1504 : vec4<f32> = u_xlat10;
          let x_1507 : u32 = u_xlatu45;
          let x_1510 : vec4<f32> = x_1133.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1507)];
          let x_1512 : vec2<f32> = ((vec2<f32>(x_1502.x, x_1502.y) * vec2<f32>(x_1504.x, x_1504.z)) + vec2<f32>(x_1510.z, x_1510.w));
          let x_1513 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1512.x, x_1513.y, x_1512.y);
        }
      }
      let x_1520 : vec3<f32> = u_xlat23;
      let x_1523 : f32 = x_44.x_GlobalMipBias.x;
      let x_1524 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1520.x, x_1520.z), x_1523);
      u_xlat10 = x_1524;
      let x_1527 : bool = u_xlatb1.z;
      if (x_1527) {
        let x_1532 : f32 = u_xlat10.w;
        x_1528 = x_1532;
      } else {
        let x_1535 : f32 = u_xlat10.x;
        x_1528 = x_1535;
      }
      let x_1536 : f32 = x_1528;
      u_xlat49 = x_1536;
      let x_1538 : bool = u_xlatb1.x;
      if (x_1538) {
        let x_1542 : vec4<f32> = u_xlat10;
        x_1539 = vec3<f32>(x_1542.x, x_1542.y, x_1542.z);
      } else {
        let x_1545 : f32 = u_xlat49;
        x_1539 = vec3<f32>(x_1545, x_1545, x_1545);
      }
      let x_1547 : vec3<f32> = x_1539;
      let x_1548 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_1554 : vec4<f32> = u_xlat10;
    let x_1556 : u32 = u_xlatu45;
    let x_1559 : vec4<f32> = x_1019.x_AdditionalLightsColor[bitcast<i32>(x_1556)];
    let x_1561 : vec3<f32> = (vec3<f32>(x_1554.x, x_1554.y, x_1554.z) * vec3<f32>(x_1559.x, x_1559.y, x_1559.z));
    let x_1562 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);
    let x_1564 : f32 = u_xlat44;
    let x_1566 : vec4<f32> = u_xlat10;
    let x_1568 : vec3<f32> = (vec3<f32>(x_1564, x_1564, x_1564) * vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
    let x_1569 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
    let x_1571 : vec3<f32> = u_xlat16;
    let x_1572 : vec3<f32> = u_xlat22;
    u_xlat45 = dot(x_1571, x_1572);
    let x_1574 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1574, 0.0f, 1.0f);
    let x_1576 : f32 = u_xlat45;
    let x_1577 : f32 = u_xlat46;
    u_xlat45 = (x_1576 * x_1577);
    let x_1579 : f32 = u_xlat45;
    let x_1581 : vec4<f32> = u_xlat10;
    let x_1583 : vec3<f32> = (vec3<f32>(x_1579, x_1579, x_1579) * vec3<f32>(x_1581.x, x_1581.y, x_1581.z));
    let x_1584 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1584.w);
    let x_1586 : vec3<f32> = u_xlat21;
    let x_1587 : f32 = u_xlat9;
    let x_1590 : vec3<f32> = u_xlat5;
    u_xlat21 = ((x_1586 * vec3<f32>(x_1587, x_1587, x_1587)) + x_1590);
    let x_1592 : vec3<f32> = u_xlat21;
    let x_1593 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1592, x_1593);
    let x_1595 : f32 = u_xlat45;
    u_xlat45 = max(x_1595, 1.17549435e-37f);
    let x_1597 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1597);
    let x_1599 : f32 = u_xlat45;
    let x_1601 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1599, x_1599, x_1599) * x_1601);
    let x_1603 : vec3<f32> = u_xlat16;
    let x_1604 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1603, x_1604);
    let x_1606 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1606, 0.0f, 1.0f);
    let x_1608 : vec3<f32> = u_xlat22;
    let x_1609 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1608, x_1609);
    let x_1611 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1611, 0.0f, 1.0f);
    let x_1613 : f32 = u_xlat45;
    let x_1614 : f32 = u_xlat45;
    u_xlat45 = (x_1613 * x_1614);
    let x_1616 : f32 = u_xlat45;
    let x_1618 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1616 * x_1618) + 1.000010014f);
    let x_1621 : f32 = u_xlat46;
    let x_1622 : f32 = u_xlat46;
    u_xlat46 = (x_1621 * x_1622);
    let x_1624 : f32 = u_xlat45;
    let x_1625 : f32 = u_xlat45;
    u_xlat45 = (x_1624 * x_1625);
    let x_1627 : f32 = u_xlat46;
    u_xlat46 = max(x_1627, 0.100000001f);
    let x_1629 : f32 = u_xlat45;
    let x_1630 : f32 = u_xlat46;
    u_xlat45 = (x_1629 * x_1630);
    let x_1632 : f32 = u_xlat40;
    let x_1633 : f32 = u_xlat45;
    u_xlat45 = (x_1632 * x_1633);
    let x_1635 : f32 = u_xlat14;
    let x_1636 : f32 = u_xlat45;
    u_xlat45 = (x_1635 / x_1636);
    let x_1638 : vec4<f32> = u_xlat0;
    let x_1640 : f32 = u_xlat45;
    let x_1643 : vec3<f32> = u_xlat15;
    u_xlat21 = ((vec3<f32>(x_1638.x, x_1638.y, x_1638.z) * vec3<f32>(x_1640, x_1640, x_1640)) + x_1643);
    let x_1645 : vec3<f32> = u_xlat21;
    let x_1646 : vec4<f32> = u_xlat10;
    let x_1649 : vec4<f32> = u_xlat7;
    let x_1651 : vec3<f32> = ((x_1645 * vec3<f32>(x_1646.x, x_1646.y, x_1646.z)) + vec3<f32>(x_1649.x, x_1649.y, x_1649.z));
    let x_1652 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1652.w);

    continuing {
      let x_1654 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1654 + bitcast<u32>(1i));
    }
  }
  let x_1656 : vec3<f32> = u_xlat4;
  let x_1657 : vec3<f32> = u_xlat3;
  let x_1660 : vec4<f32> = u_xlat6;
  let x_1662 : vec3<f32> = ((x_1656 * vec3<f32>(x_1657.x, x_1657.x, x_1657.x)) + vec3<f32>(x_1660.x, x_1660.y, x_1660.z));
  let x_1663 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1663.w);
  let x_1667 : vec4<f32> = u_xlat7;
  let x_1669 : vec4<f32> = u_xlat0;
  let x_1671 : vec3<f32> = (vec3<f32>(x_1667.x, x_1667.y, x_1667.z) + vec3<f32>(x_1669.x, x_1669.y, x_1669.z));
  let x_1672 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1671.x, x_1671.y, x_1671.z, x_1672.w);
  let x_1677 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1677 == 1.0f);
  let x_1679 : bool = u_xlatb0;
  if (x_1679) {
    let x_1684 : f32 = u_xlat2.x;
    x_1680 = x_1684;
  } else {
    x_1680 = 1.0f;
  }
  let x_1686 : f32 = x_1680;
  SV_Target0.w = x_1686;
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

