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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_461 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_530 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_725 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1023 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1126 : AdditionalLightsCookies;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat42 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat5 : vec3<f32>;
  var x_198 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat7 : vec4<f32>;
  var x_616 : f32;
  var x_627 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu15 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1420 : f32;
  var x_1433 : f32;
  var x_1485 : f32;
  var x_1496 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1664 : f32;
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
  u_xlat29 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat29;
  let x_107 : vec2<f32> = u_xlat29;
  u_xlat42 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat42;
  u_xlat42 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat42;
  u_xlat42 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_114);
  let x_116 : f32 = u_xlat42;
  u_xlat42 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat29;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat29 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat17.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_162 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb17 = (x_162 == 0.0f);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_168) + x_173);
  let x_176 : vec3<f32> = u_xlat4;
  let x_177 : vec3<f32> = u_xlat4;
  u_xlat31 = dot(x_176, x_177);
  let x_179 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_179);
  let x_181 : f32 = u_xlat31;
  let x_183 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_181, x_181, x_181) * x_183);
  let x_189 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_189;
  let x_192 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_192;
  let x_195 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_195;
  let x_197 : bool = u_xlatb17;
  if (x_197) {
    let x_201 : vec3<f32> = u_xlat4;
    x_198 = x_201;
  } else {
    let x_203 : vec3<f32> = u_xlat5;
    x_198 = x_203;
  }
  let x_204 : vec3<f32> = x_198;
  u_xlat17 = x_204;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_209 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_206.z, x_206.x, x_206.y) * vec3<f32>(x_209.y, x_209.z, x_209.x));
  let x_212 : vec3<f32> = vs_TEXCOORD2;
  let x_214 : vec4<f32> = vs_TEXCOORD3;
  let x_217 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_212.y, x_212.z, x_212.x) * vec3<f32>(x_214.z, x_214.x, x_214.y)) + -(x_217));
  let x_220 : vec3<f32> = u_xlat4;
  let x_221 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_220 * vec3<f32>(x_221.w, x_221.w, x_221.w));
  let x_224 : vec2<f32> = u_xlat29;
  let x_226 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_224.y, x_224.y, x_224.y) * x_226);
  let x_228 : vec2<f32> = u_xlat29;
  let x_230 : vec4<f32> = vs_TEXCOORD3;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_228.x, x_228.x, x_228.x) * vec3<f32>(x_230.x, x_230.y, x_230.z)) + x_233);
  let x_235 : f32 = u_xlat42;
  let x_237 : vec3<f32> = vs_TEXCOORD2;
  let x_239 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_235, x_235, x_235) * x_237) + x_239);
  let x_241 : vec3<f32> = u_xlat4;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat42 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_244);
  let x_246 : f32 = u_xlat42;
  let x_248 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_246, x_246, x_246) * x_248);
  let x_251 : f32 = vs_TEXCOORD1.y;
  let x_253 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat42 = (x_251 * x_253);
  let x_256 : f32 = x_44.unity_MatrixV[0i].z;
  let x_258 : f32 = vs_TEXCOORD1.x;
  let x_260 : f32 = u_xlat42;
  u_xlat42 = ((x_256 * x_258) + x_260);
  let x_263 : f32 = x_44.unity_MatrixV[2i].z;
  let x_265 : f32 = vs_TEXCOORD1.z;
  let x_267 : f32 = u_xlat42;
  u_xlat42 = ((x_263 * x_265) + x_267);
  let x_269 : f32 = u_xlat42;
  let x_272 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat42 = (x_269 + x_272);
  let x_274 : f32 = u_xlat42;
  let x_278 : f32 = x_44.x_ProjectionParams.y;
  u_xlat42 = (-(x_274) + -(x_278));
  let x_281 : f32 = u_xlat42;
  u_xlat42 = max(x_281, 0.0f);
  let x_283 : f32 = u_xlat42;
  let x_285 : f32 = x_44.unity_FogParams.x;
  u_xlat42 = (x_283 * x_285);
  let x_293 : vec2<f32> = vs_TEXCOORD8;
  let x_295 : f32 = x_44.x_GlobalMipBias.x;
  let x_296 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_293, x_295);
  u_xlat5 = vec3<f32>(x_296.x, x_296.y, x_296.z);
  let x_300 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_301 : vec2<f32> = vec2<f32>(x_300.x, x_300.y);
  u_xlat29 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_301.x, x_301.y));
  let x_307 : vec2<f32> = u_xlat29;
  let x_308 : vec4<f32> = hlslcc_FragCoord;
  let x_310 : vec2<f32> = (x_307 * vec2<f32>(x_308.x, x_308.y));
  let x_311 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_310.x, x_310.y, x_311.z);
  let x_314 : f32 = u_xlat6.y;
  let x_317 : f32 = x_44.x_ScaleBiasRt.x;
  let x_320 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29.x = ((x_314 * x_317) + x_320);
  let x_324 : f32 = u_xlat29.x;
  u_xlat6.z = (-(x_324) + 1.0f);
  let x_329 : f32 = u_xlat1.x;
  u_xlat29.x = ((-(x_329) * 0.959999979f) + 0.959999979f);
  let x_337 : f32 = u_xlat1.y;
  let x_339 : f32 = x_69.x_Smoothness;
  let x_342 : f32 = u_xlat29.x;
  u_xlat43 = ((x_337 * x_339) + -(x_342));
  let x_346 : vec2<f32> = u_xlat29;
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_346.x, x_346.x, x_346.x) * vec3<f32>(x_348.y, x_348.z, x_348.w));
  let x_351 : vec4<f32> = u_xlat0;
  let x_354 : vec4<f32> = x_69.x_BaseColor;
  let x_359 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec2<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat0;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.x, x_362.x) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = u_xlat1.y;
  let x_376 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_373) * x_376) + 1.0f);
  let x_382 : f32 = u_xlat1.x;
  let x_384 : f32 = u_xlat1.x;
  u_xlat15.x = (x_382 * x_384);
  let x_388 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_388, 0.0078125f);
  let x_393 : f32 = u_xlat15.x;
  let x_395 : f32 = u_xlat15.x;
  u_xlat29.x = (x_393 * x_395);
  let x_398 : f32 = u_xlat43;
  u_xlat43 = (x_398 + 1.0f);
  let x_400 : f32 = u_xlat43;
  u_xlat43 = clamp(x_400, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat15.x;
  u_xlat46 = ((x_404 * 4.0f) + 2.0f);
  let x_414 : vec3<f32> = u_xlat6;
  let x_417 : f32 = x_44.x_GlobalMipBias.x;
  let x_418 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_414.x, x_414.z), x_417);
  u_xlat47 = x_418.x;
  let x_420 : f32 = u_xlat47;
  u_xlat6.x = (x_420 + -1.0f);
  let x_425 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_427 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_425 * x_427) + 1.0f);
  let x_432 : f32 = u_xlat3.x;
  let x_433 : f32 = u_xlat47;
  u_xlat3.x = min(x_432, x_433);
  let x_438 : vec4<f32> = vs_TEXCOORD6;
  let x_439 : vec2<f32> = vec2<f32>(x_438.x, x_438.y);
  let x_441 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_439.x, x_439.y, x_441);
  let x_453 : vec3<f32> = txVec0;
  let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_453.xy, x_453.z);
  u_xlat47 = x_455;
  let x_463 : f32 = x_461.x_MainLightShadowParams.x;
  u_xlat20.x = (-(x_463) + 1.0f);
  let x_467 : f32 = u_xlat47;
  let x_469 : f32 = x_461.x_MainLightShadowParams.x;
  let x_472 : f32 = u_xlat20.x;
  u_xlat47 = ((x_467 * x_469) + x_472);
  let x_478 : f32 = vs_TEXCOORD6.z;
  u_xlatb20.x = (0.0f >= x_478);
  let x_483 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (x_483 >= 1.0f);
  let x_485 : bool = u_xlatb34;
  let x_487 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_485 | x_487);
  let x_491 : bool = u_xlatb20.x;
  let x_492 : f32 = u_xlat47;
  u_xlat47 = select(x_492, 1.0f, x_491);
  let x_494 : vec3<f32> = vs_TEXCOORD1;
  let x_496 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (x_494 + -(x_496));
  let x_499 : vec3<f32> = u_xlat20;
  let x_500 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_499, x_500);
  let x_504 : f32 = u_xlat20.x;
  let x_506 : f32 = x_461.x_MainLightShadowParams.z;
  let x_509 : f32 = x_461.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_504 * x_506) + x_509);
  let x_513 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_513, 0.0f, 1.0f);
  let x_517 : f32 = u_xlat47;
  u_xlat34 = (-(x_517) + 1.0f);
  let x_521 : f32 = u_xlat20.x;
  let x_522 : f32 = u_xlat34;
  let x_524 : f32 = u_xlat47;
  u_xlat47 = ((x_521 * x_522) + x_524);
  let x_532 : f32 = x_530.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_532 == -1.0f));
  let x_536 : bool = u_xlatb20.x;
  if (x_536) {
    let x_539 : vec3<f32> = vs_TEXCOORD1;
    let x_542 : vec4<f32> = x_530.x_MainLightWorldToLight[1i];
    let x_544 : vec2<f32> = (vec2<f32>(x_539.y, x_539.y) * vec2<f32>(x_542.x, x_542.y));
    let x_545 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_544.x, x_544.y, x_545.z);
    let x_548 : vec4<f32> = x_530.x_MainLightWorldToLight[0i];
    let x_550 : vec3<f32> = vs_TEXCOORD1;
    let x_553 : vec3<f32> = u_xlat20;
    let x_555 : vec2<f32> = ((vec2<f32>(x_548.x, x_548.y) * vec2<f32>(x_550.x, x_550.x)) + vec2<f32>(x_553.x, x_553.y));
    let x_556 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_555.x, x_555.y, x_556.z);
    let x_559 : vec4<f32> = x_530.x_MainLightWorldToLight[2i];
    let x_561 : vec3<f32> = vs_TEXCOORD1;
    let x_564 : vec3<f32> = u_xlat20;
    let x_566 : vec2<f32> = ((vec2<f32>(x_559.x, x_559.y) * vec2<f32>(x_561.z, x_561.z)) + vec2<f32>(x_564.x, x_564.y));
    let x_567 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_566.x, x_566.y, x_567.z);
    let x_569 : vec3<f32> = u_xlat20;
    let x_572 : vec4<f32> = x_530.x_MainLightWorldToLight[3i];
    let x_574 : vec2<f32> = (vec2<f32>(x_569.x, x_569.y) + vec2<f32>(x_572.x, x_572.y));
    let x_575 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_574.x, x_574.y, x_575.z);
    let x_577 : vec3<f32> = u_xlat20;
    let x_582 : vec2<f32> = ((vec2<f32>(x_577.x, x_577.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_583 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_582.x, x_582.y, x_583.z);
    let x_591 : vec3<f32> = u_xlat20;
    let x_594 : f32 = x_44.x_GlobalMipBias.x;
    let x_595 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_591.x, x_591.y), x_594);
    u_xlat7 = x_595;
    let x_597 : f32 = x_530.x_MainLightCookieTextureFormat;
    let x_599 : f32 = x_530.x_MainLightCookieTextureFormat;
    let x_601 : f32 = x_530.x_MainLightCookieTextureFormat;
    let x_603 : f32 = x_530.x_MainLightCookieTextureFormat;
    let x_604 : vec4<f32> = vec4<f32>(x_597, x_599, x_601, x_603);
    let x_612 : vec4<bool> = (vec4<f32>(x_604.x, x_604.y, x_604.z, x_604.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_612.x, x_612.y);
    let x_615 : bool = u_xlatb20.y;
    if (x_615) {
      let x_620 : f32 = u_xlat7.w;
      x_616 = x_620;
    } else {
      let x_623 : f32 = u_xlat7.x;
      x_616 = x_623;
    }
    let x_624 : f32 = x_616;
    u_xlat34 = x_624;
    let x_626 : bool = u_xlatb20.x;
    if (x_626) {
      let x_630 : vec4<f32> = u_xlat7;
      x_627 = vec3<f32>(x_630.x, x_630.y, x_630.z);
    } else {
      let x_633 : f32 = u_xlat34;
      x_627 = vec3<f32>(x_633, x_633, x_633);
    }
    let x_635 : vec3<f32> = x_627;
    u_xlat20 = x_635;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_640 : vec3<f32> = u_xlat20;
  let x_642 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat20 = (x_640 * vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec3<f32> = u_xlat6;
  let x_647 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_645.x, x_645.x, x_645.x) * x_647);
  let x_649 : vec3<f32> = u_xlat17;
  let x_651 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_649), x_651);
  let x_655 : f32 = u_xlat7.x;
  let x_657 : f32 = u_xlat7.x;
  u_xlat7.x = (x_655 + x_657);
  let x_660 : vec3<f32> = u_xlat4;
  let x_661 : vec4<f32> = u_xlat7;
  let x_665 : vec3<f32> = u_xlat17;
  let x_667 : vec3<f32> = ((x_660 * -(vec3<f32>(x_661.x, x_661.x, x_661.x))) + -(x_665));
  let x_668 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_671 : vec3<f32> = u_xlat4;
  let x_672 : vec3<f32> = u_xlat17;
  u_xlat49 = dot(x_671, x_672);
  let x_674 : f32 = u_xlat49;
  u_xlat49 = clamp(x_674, 0.0f, 1.0f);
  let x_676 : f32 = u_xlat49;
  u_xlat49 = (-(x_676) + 1.0f);
  let x_679 : f32 = u_xlat49;
  let x_680 : f32 = u_xlat49;
  u_xlat49 = (x_679 * x_680);
  let x_682 : f32 = u_xlat49;
  let x_683 : f32 = u_xlat49;
  u_xlat49 = (x_682 * x_683);
  let x_687 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_687) * 0.699999988f) + 1.700000048f);
  let x_695 : f32 = u_xlat1.x;
  let x_697 : f32 = u_xlat8.x;
  u_xlat1.x = (x_695 * x_697);
  let x_701 : f32 = u_xlat1.x;
  u_xlat1.x = (x_701 * 6.0f);
  let x_713 : vec4<f32> = u_xlat7;
  let x_716 : f32 = u_xlat1.x;
  let x_717 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_713.x, x_713.y, x_713.z), x_716);
  u_xlat8 = x_717;
  let x_719 : f32 = u_xlat8.w;
  u_xlat1.x = (x_719 + -1.0f);
  let x_727 : f32 = x_725.unity_SpecCube0_HDR.w;
  let x_729 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_727 * x_729) + 1.0f);
  let x_734 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_734, 0.0f);
  let x_738 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_738);
  let x_742 : f32 = u_xlat1.x;
  let x_744 : f32 = x_725.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_742 * x_744);
  let x_748 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_748);
  let x_752 : f32 = u_xlat1.x;
  let x_754 : f32 = x_725.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_752 * x_754);
  let x_757 : vec4<f32> = u_xlat8;
  let x_759 : vec2<f32> = u_xlat1;
  let x_761 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(x_759.x, x_759.x, x_759.x));
  let x_762 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec3<f32> = u_xlat15;
  let x_766 : vec3<f32> = u_xlat15;
  u_xlat1 = ((vec2<f32>(x_764.x, x_764.x) * vec2<f32>(x_766.x, x_766.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_772 : f32 = u_xlat1.y;
  u_xlat15.x = (1.0f / x_772);
  let x_775 : vec4<f32> = u_xlat0;
  let x_778 : f32 = u_xlat43;
  let x_780 : vec3<f32> = (-(vec3<f32>(x_775.x, x_775.y, x_775.z)) + vec3<f32>(x_778, x_778, x_778));
  let x_781 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : f32 = u_xlat49;
  let x_785 : vec4<f32> = u_xlat8;
  let x_788 : vec4<f32> = u_xlat0;
  let x_790 : vec3<f32> = ((vec3<f32>(x_783, x_783, x_783) * vec3<f32>(x_785.x, x_785.y, x_785.z)) + vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec3<f32> = u_xlat15;
  let x_795 : vec4<f32> = u_xlat8;
  let x_797 : vec3<f32> = (vec3<f32>(x_793.x, x_793.x, x_793.x) * vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_798 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat7;
  let x_802 : vec4<f32> = u_xlat8;
  let x_804 : vec3<f32> = (vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec3<f32> = u_xlat5;
  let x_808 : vec3<f32> = u_xlat16;
  let x_810 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_807 * x_808) + vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat47;
  let x_816 : f32 = x_725.unity_LightData.z;
  u_xlat15.x = (x_813 * x_816);
  let x_819 : vec3<f32> = u_xlat4;
  let x_821 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat43 = dot(x_819, vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : f32 = u_xlat43;
  u_xlat43 = clamp(x_824, 0.0f, 1.0f);
  let x_826 : f32 = u_xlat43;
  let x_828 : f32 = u_xlat15.x;
  u_xlat15.x = (x_826 * x_828);
  let x_831 : vec3<f32> = u_xlat15;
  let x_833 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_831.x, x_831.x, x_831.x) * x_833);
  let x_835 : vec3<f32> = u_xlat17;
  let x_837 : vec4<f32> = x_44.x_MainLightPosition;
  let x_839 : vec3<f32> = (x_835 + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat7;
  let x_844 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_842.x, x_842.y, x_842.z), vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_849 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_849, 1.17549435e-37f);
  let x_854 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_854);
  let x_857 : vec3<f32> = u_xlat15;
  let x_859 : vec4<f32> = u_xlat7;
  let x_861 : vec3<f32> = (vec3<f32>(x_857.x, x_857.x, x_857.x) * vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec3<f32> = u_xlat4;
  let x_865 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(x_864, vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_870 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_870, 0.0f, 1.0f);
  let x_874 : vec4<f32> = x_44.x_MainLightPosition;
  let x_876 : vec4<f32> = u_xlat7;
  u_xlat15.z = dot(vec3<f32>(x_874.x, x_874.y, x_874.z), vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_881 : f32 = u_xlat15.z;
  u_xlat15.z = clamp(x_881, 0.0f, 1.0f);
  let x_884 : vec3<f32> = u_xlat15;
  let x_886 : vec3<f32> = u_xlat15;
  let x_888 : vec2<f32> = (vec2<f32>(x_884.x, x_884.z) * vec2<f32>(x_886.x, x_886.z));
  let x_889 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_888.x, x_889.y, x_888.y);
  let x_892 : f32 = u_xlat15.x;
  let x_894 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_892 * x_894) + 1.000010014f);
  let x_900 : f32 = u_xlat15.x;
  let x_902 : f32 = u_xlat15.x;
  u_xlat15.x = (x_900 * x_902);
  let x_906 : f32 = u_xlat15.z;
  u_xlat43 = max(x_906, 0.100000001f);
  let x_909 : f32 = u_xlat43;
  let x_911 : f32 = u_xlat15.x;
  u_xlat15.x = (x_909 * x_911);
  let x_914 : f32 = u_xlat46;
  let x_916 : f32 = u_xlat15.x;
  u_xlat15.x = (x_914 * x_916);
  let x_920 : f32 = u_xlat29.x;
  let x_922 : f32 = u_xlat15.x;
  u_xlat15.x = (x_920 / x_922);
  let x_925 : vec4<f32> = u_xlat0;
  let x_927 : vec3<f32> = u_xlat15;
  let x_930 : vec3<f32> = u_xlat16;
  let x_931 : vec3<f32> = ((vec3<f32>(x_925.x, x_925.y, x_925.z) * vec3<f32>(x_927.x, x_927.x, x_927.x)) + x_930);
  let x_932 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec3<f32> = u_xlat20;
  let x_935 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_934 * vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_939 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_941 : f32 = x_725.unity_LightData.y;
  u_xlat15.x = min(x_939, x_941);
  let x_947 : f32 = u_xlat15.x;
  u_xlatu15 = bitcast<u32>(i32(x_947));
  let x_952 : f32 = x_530.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_954 : f32 = x_530.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_956 : f32 = x_530.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_958 : f32 = x_530.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_959 : vec4<f32> = vec4<f32>(x_952, x_954, x_956, x_958);
  let x_965 : vec4<bool> = (vec4<f32>(x_959.x, x_959.y, x_959.z, x_959.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_965.x, x_965.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_976 : u32 = u_xlatu_loop_1;
    let x_977 : u32 = u_xlatu15;
    if ((x_976 < x_977)) {
    } else {
      break;
    }
    let x_980 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_980 >> 2u);
    let x_984 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_984 & 3u));
    let x_987 : u32 = u_xlatu47;
    let x_990 : vec4<f32> = x_725.unity_LightIndices[bitcast<i32>(x_987)];
    let x_1000 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1005 : vec4<u32> = indexable[x_1000];
    u_xlat47 = dot(x_990, bitcast<vec4<f32>>(x_1005));
    let x_1008 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1008));
    let x_1012 : vec3<f32> = vs_TEXCOORD1;
    let x_1024 : u32 = u_xlatu47;
    let x_1027 : vec4<f32> = x_1023.x_AdditionalLightsPosition[bitcast<i32>(x_1024)];
    let x_1030 : u32 = u_xlatu47;
    let x_1033 : vec4<f32> = x_1023.x_AdditionalLightsPosition[bitcast<i32>(x_1030)];
    u_xlat9 = ((-(x_1012) * vec3<f32>(x_1027.w, x_1027.w, x_1027.w)) + vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
    let x_1037 : vec3<f32> = u_xlat9;
    let x_1038 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1037, x_1038);
    let x_1040 : f32 = u_xlat35;
    u_xlat35 = max(x_1040, 6.10351562e-05f);
    let x_1043 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1043);
    let x_1046 : f32 = u_xlat49;
    let x_1048 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1046, x_1046, x_1046) * x_1048);
    let x_1051 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1051);
    let x_1053 : f32 = u_xlat35;
    let x_1054 : u32 = u_xlatu47;
    let x_1057 : f32 = x_1023.x_AdditionalLightsAttenuation[bitcast<i32>(x_1054)].x;
    u_xlat35 = (x_1053 * x_1057);
    let x_1059 : f32 = u_xlat35;
    let x_1061 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1059) * x_1061) + 1.0f);
    let x_1064 : f32 = u_xlat35;
    u_xlat35 = max(x_1064, 0.0f);
    let x_1066 : f32 = u_xlat35;
    let x_1067 : f32 = u_xlat35;
    u_xlat35 = (x_1066 * x_1067);
    let x_1069 : f32 = u_xlat35;
    let x_1070 : f32 = u_xlat50;
    u_xlat35 = (x_1069 * x_1070);
    let x_1072 : u32 = u_xlatu47;
    let x_1075 : vec4<f32> = x_1023.x_AdditionalLightsSpotDir[bitcast<i32>(x_1072)];
    let x_1077 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1075.x, x_1075.y, x_1075.z), x_1077);
    let x_1079 : f32 = u_xlat50;
    let x_1080 : u32 = u_xlatu47;
    let x_1083 : f32 = x_1023.x_AdditionalLightsAttenuation[bitcast<i32>(x_1080)].z;
    let x_1085 : u32 = u_xlatu47;
    let x_1088 : f32 = x_1023.x_AdditionalLightsAttenuation[bitcast<i32>(x_1085)].w;
    u_xlat50 = ((x_1079 * x_1083) + x_1088);
    let x_1090 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1090, 0.0f, 1.0f);
    let x_1092 : f32 = u_xlat50;
    let x_1093 : f32 = u_xlat50;
    u_xlat50 = (x_1092 * x_1093);
    let x_1095 : f32 = u_xlat35;
    let x_1096 : f32 = u_xlat50;
    u_xlat35 = (x_1095 * x_1096);
    let x_1099 : u32 = u_xlatu47;
    u_xlatu50 = (x_1099 >> 5u);
    let x_1102 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1102) & 31i)));
    let x_1108 : i32 = u_xlati51;
    let x_1110 : u32 = u_xlatu50;
    let x_1113 : f32 = x_530.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1110)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1108) & bitcast<u32>(x_1113)));
    let x_1117 : i32 = u_xlati50;
    if ((x_1117 != 0i)) {
      let x_1127 : u32 = u_xlatu47;
      let x_1130 : f32 = x_1126.x_AdditionalLightsLightTypes[bitcast<i32>(x_1127)].el;
      u_xlati50 = i32(x_1130);
      let x_1132 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1132 != 0i));
      let x_1136 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1136) << bitcast<u32>(2i));
      let x_1139 : i32 = u_xlati51;
      if ((x_1139 != 0i)) {
        let x_1144 : vec3<f32> = vs_TEXCOORD1;
        let x_1146 : i32 = u_xlati52;
        let x_1149 : i32 = u_xlati52;
        let x_1153 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[((x_1146 + 1i) / 4i)][((x_1149 + 1i) % 4i)];
        let x_1155 : vec3<f32> = (vec3<f32>(x_1144.y, x_1144.y, x_1144.y) * vec3<f32>(x_1153.x, x_1153.y, x_1153.w));
        let x_1156 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
        let x_1158 : i32 = u_xlati52;
        let x_1160 : i32 = u_xlati52;
        let x_1163 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[(x_1158 / 4i)][(x_1160 % 4i)];
        let x_1165 : vec3<f32> = vs_TEXCOORD1;
        let x_1168 : vec4<f32> = u_xlat11;
        let x_1170 : vec3<f32> = ((vec3<f32>(x_1163.x, x_1163.y, x_1163.w) * vec3<f32>(x_1165.x, x_1165.x, x_1165.x)) + vec3<f32>(x_1168.x, x_1168.y, x_1168.z));
        let x_1171 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
        let x_1173 : i32 = u_xlati52;
        let x_1176 : i32 = u_xlati52;
        let x_1180 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[((x_1173 + 2i) / 4i)][((x_1176 + 2i) % 4i)];
        let x_1182 : vec3<f32> = vs_TEXCOORD1;
        let x_1185 : vec4<f32> = u_xlat11;
        let x_1187 : vec3<f32> = ((vec3<f32>(x_1180.x, x_1180.y, x_1180.w) * vec3<f32>(x_1182.z, x_1182.z, x_1182.z)) + vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
        let x_1188 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
        let x_1190 : vec4<f32> = u_xlat11;
        let x_1192 : i32 = u_xlati52;
        let x_1195 : i32 = u_xlati52;
        let x_1199 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[((x_1192 + 3i) / 4i)][((x_1195 + 3i) % 4i)];
        let x_1201 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) + vec3<f32>(x_1199.x, x_1199.y, x_1199.w));
        let x_1202 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat11;
        let x_1206 : vec4<f32> = u_xlat11;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1204.x, x_1204.y) / vec2<f32>(x_1206.z, x_1206.z));
        let x_1209 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec4<f32> = u_xlat11;
        let x_1214 : vec2<f32> = ((vec2<f32>(x_1211.x, x_1211.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1215 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat11;
        let x_1221 : vec2<f32> = clamp(vec2<f32>(x_1217.x, x_1217.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1222 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
        let x_1224 : u32 = u_xlatu47;
        let x_1227 : vec4<f32> = x_1126.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1224)];
        let x_1229 : vec4<f32> = u_xlat11;
        let x_1232 : u32 = u_xlatu47;
        let x_1235 : vec4<f32> = x_1126.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1232)];
        let x_1237 : vec2<f32> = ((vec2<f32>(x_1227.x, x_1227.y) * vec2<f32>(x_1229.x, x_1229.y)) + vec2<f32>(x_1235.z, x_1235.w));
        let x_1238 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1237.x, x_1237.y, x_1238.z, x_1238.w);
      } else {
        let x_1242 : i32 = u_xlati50;
        u_xlatb50 = (x_1242 == 1i);
        let x_1244 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1244);
        let x_1246 : i32 = u_xlati50;
        if ((x_1246 != 0i)) {
          let x_1251 : vec3<f32> = vs_TEXCOORD1;
          let x_1253 : i32 = u_xlati52;
          let x_1256 : i32 = u_xlati52;
          let x_1260 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[((x_1253 + 1i) / 4i)][((x_1256 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1251.y, x_1251.y) * vec2<f32>(x_1260.x, x_1260.y));
          let x_1263 : i32 = u_xlati52;
          let x_1265 : i32 = u_xlati52;
          let x_1268 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[(x_1263 / 4i)][(x_1265 % 4i)];
          let x_1270 : vec3<f32> = vs_TEXCOORD1;
          let x_1273 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1270.x, x_1270.x)) + x_1273);
          let x_1275 : i32 = u_xlati52;
          let x_1278 : i32 = u_xlati52;
          let x_1282 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[((x_1275 + 2i) / 4i)][((x_1278 + 2i) % 4i)];
          let x_1284 : vec3<f32> = vs_TEXCOORD1;
          let x_1287 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(x_1284.z, x_1284.z)) + x_1287);
          let x_1289 : vec2<f32> = u_xlat39;
          let x_1290 : i32 = u_xlati52;
          let x_1293 : i32 = u_xlati52;
          let x_1297 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[((x_1290 + 3i) / 4i)][((x_1293 + 3i) % 4i)];
          u_xlat39 = (x_1289 + vec2<f32>(x_1297.x, x_1297.y));
          let x_1300 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1300 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1303 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1303);
          let x_1305 : u32 = u_xlatu47;
          let x_1308 : vec4<f32> = x_1126.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1305)];
          let x_1310 : vec2<f32> = u_xlat39;
          let x_1312 : u32 = u_xlatu47;
          let x_1315 : vec4<f32> = x_1126.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1312)];
          let x_1317 : vec2<f32> = ((vec2<f32>(x_1308.x, x_1308.y) * x_1310) + vec2<f32>(x_1315.z, x_1315.w));
          let x_1318 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
        } else {
          let x_1322 : vec3<f32> = vs_TEXCOORD1;
          let x_1324 : i32 = u_xlati52;
          let x_1327 : i32 = u_xlati52;
          let x_1331 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[((x_1324 + 1i) / 4i)][((x_1327 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1322.y, x_1322.y, x_1322.y, x_1322.y) * x_1331);
          let x_1333 : i32 = u_xlati52;
          let x_1335 : i32 = u_xlati52;
          let x_1338 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[(x_1333 / 4i)][(x_1335 % 4i)];
          let x_1339 : vec3<f32> = vs_TEXCOORD1;
          let x_1342 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1338 * vec4<f32>(x_1339.x, x_1339.x, x_1339.x, x_1339.x)) + x_1342);
          let x_1344 : i32 = u_xlati52;
          let x_1347 : i32 = u_xlati52;
          let x_1351 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[((x_1344 + 2i) / 4i)][((x_1347 + 2i) % 4i)];
          let x_1352 : vec3<f32> = vs_TEXCOORD1;
          let x_1355 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1351 * vec4<f32>(x_1352.z, x_1352.z, x_1352.z, x_1352.z)) + x_1355);
          let x_1357 : vec4<f32> = u_xlat12;
          let x_1358 : i32 = u_xlati52;
          let x_1361 : i32 = u_xlati52;
          let x_1365 : vec4<f32> = x_1126.x_AdditionalLightsWorldToLights[((x_1358 + 3i) / 4i)][((x_1361 + 3i) % 4i)];
          u_xlat12 = (x_1357 + x_1365);
          let x_1367 : vec4<f32> = u_xlat12;
          let x_1369 : vec4<f32> = u_xlat12;
          let x_1371 : vec3<f32> = (vec3<f32>(x_1367.x, x_1367.y, x_1367.z) / vec3<f32>(x_1369.w, x_1369.w, x_1369.w));
          let x_1372 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
          let x_1374 : vec4<f32> = u_xlat12;
          let x_1376 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1374.x, x_1374.y, x_1374.z), vec3<f32>(x_1376.x, x_1376.y, x_1376.z));
          let x_1379 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1379);
          let x_1381 : f32 = u_xlat50;
          let x_1383 : vec4<f32> = u_xlat12;
          let x_1385 : vec3<f32> = (vec3<f32>(x_1381, x_1381, x_1381) * vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
          let x_1386 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
          let x_1388 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1388.x, x_1388.y, x_1388.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1393 : f32 = u_xlat50;
          u_xlat50 = max(x_1393, 0.000001f);
          let x_1396 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1396);
          let x_1399 : f32 = u_xlat50;
          let x_1401 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1399, x_1399, x_1399) * vec3<f32>(x_1401.z, x_1401.x, x_1401.y));
          let x_1405 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1405);
          let x_1409 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1409, 0.0f, 1.0f);
          let x_1413 : vec3<f32> = u_xlat13;
          let x_1416 : vec4<bool> = (vec4<f32>(x_1413.y, x_1413.z, x_1413.y, x_1413.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1416.x, x_1416.y);
          let x_1419 : bool = u_xlatb39.x;
          if (x_1419) {
            let x_1424 : f32 = u_xlat13.x;
            x_1420 = x_1424;
          } else {
            let x_1427 : f32 = u_xlat13.x;
            x_1420 = -(x_1427);
          }
          let x_1429 : f32 = x_1420;
          u_xlat39.x = x_1429;
          let x_1432 : bool = u_xlatb39.y;
          if (x_1432) {
            let x_1437 : f32 = u_xlat13.x;
            x_1433 = x_1437;
          } else {
            let x_1440 : f32 = u_xlat13.x;
            x_1433 = -(x_1440);
          }
          let x_1442 : f32 = x_1433;
          u_xlat39.y = x_1442;
          let x_1444 : vec4<f32> = u_xlat12;
          let x_1446 : f32 = u_xlat50;
          let x_1449 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1444.x, x_1444.y) * vec2<f32>(x_1446, x_1446)) + x_1449);
          let x_1451 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1451 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1454 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1454, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1458 : u32 = u_xlatu47;
          let x_1461 : vec4<f32> = x_1126.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1458)];
          let x_1463 : vec2<f32> = u_xlat39;
          let x_1465 : u32 = u_xlatu47;
          let x_1468 : vec4<f32> = x_1126.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1465)];
          let x_1470 : vec2<f32> = ((vec2<f32>(x_1461.x, x_1461.y) * x_1463) + vec2<f32>(x_1468.z, x_1468.w));
          let x_1471 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1470.x, x_1470.y, x_1471.z, x_1471.w);
        }
      }
      let x_1478 : vec4<f32> = u_xlat11;
      let x_1481 : f32 = x_44.x_GlobalMipBias.x;
      let x_1482 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1478.x, x_1478.y), x_1481);
      u_xlat11 = x_1482;
      let x_1484 : bool = u_xlatb7.y;
      if (x_1484) {
        let x_1489 : f32 = u_xlat11.w;
        x_1485 = x_1489;
      } else {
        let x_1492 : f32 = u_xlat11.x;
        x_1485 = x_1492;
      }
      let x_1493 : f32 = x_1485;
      u_xlat50 = x_1493;
      let x_1495 : bool = u_xlatb7.x;
      if (x_1495) {
        let x_1499 : vec4<f32> = u_xlat11;
        x_1496 = vec3<f32>(x_1499.x, x_1499.y, x_1499.z);
      } else {
        let x_1502 : f32 = u_xlat50;
        x_1496 = vec3<f32>(x_1502, x_1502, x_1502);
      }
      let x_1504 : vec3<f32> = x_1496;
      let x_1505 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1511 : vec4<f32> = u_xlat11;
    let x_1513 : u32 = u_xlatu47;
    let x_1516 : vec4<f32> = x_1023.x_AdditionalLightsColor[bitcast<i32>(x_1513)];
    let x_1518 : vec3<f32> = (vec3<f32>(x_1511.x, x_1511.y, x_1511.z) * vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
    let x_1519 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
    let x_1521 : vec3<f32> = u_xlat6;
    let x_1523 : vec4<f32> = u_xlat11;
    let x_1525 : vec3<f32> = (vec3<f32>(x_1521.x, x_1521.x, x_1521.x) * vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
    let x_1526 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
    let x_1528 : vec3<f32> = u_xlat4;
    let x_1529 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1528, x_1529);
    let x_1531 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1531, 0.0f, 1.0f);
    let x_1533 : f32 = u_xlat47;
    let x_1534 : f32 = u_xlat35;
    u_xlat47 = (x_1533 * x_1534);
    let x_1536 : f32 = u_xlat47;
    let x_1538 : vec4<f32> = u_xlat11;
    let x_1540 : vec3<f32> = (vec3<f32>(x_1536, x_1536, x_1536) * vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
    let x_1541 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1541.w);
    let x_1543 : vec3<f32> = u_xlat9;
    let x_1544 : f32 = u_xlat49;
    let x_1547 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1543 * vec3<f32>(x_1544, x_1544, x_1544)) + x_1547);
    let x_1549 : vec3<f32> = u_xlat9;
    let x_1550 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1549, x_1550);
    let x_1552 : f32 = u_xlat47;
    u_xlat47 = max(x_1552, 1.17549435e-37f);
    let x_1554 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1554);
    let x_1556 : f32 = u_xlat47;
    let x_1558 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1556, x_1556, x_1556) * x_1558);
    let x_1560 : vec3<f32> = u_xlat4;
    let x_1561 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1560, x_1561);
    let x_1563 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1563, 0.0f, 1.0f);
    let x_1565 : vec3<f32> = u_xlat10;
    let x_1566 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1565, x_1566);
    let x_1568 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1568, 0.0f, 1.0f);
    let x_1570 : f32 = u_xlat47;
    let x_1571 : f32 = u_xlat47;
    u_xlat47 = (x_1570 * x_1571);
    let x_1573 : f32 = u_xlat47;
    let x_1575 : f32 = u_xlat1.x;
    u_xlat47 = ((x_1573 * x_1575) + 1.000010014f);
    let x_1578 : f32 = u_xlat35;
    let x_1579 : f32 = u_xlat35;
    u_xlat35 = (x_1578 * x_1579);
    let x_1581 : f32 = u_xlat47;
    let x_1582 : f32 = u_xlat47;
    u_xlat47 = (x_1581 * x_1582);
    let x_1584 : f32 = u_xlat35;
    u_xlat35 = max(x_1584, 0.100000001f);
    let x_1586 : f32 = u_xlat47;
    let x_1587 : f32 = u_xlat35;
    u_xlat47 = (x_1586 * x_1587);
    let x_1589 : f32 = u_xlat46;
    let x_1590 : f32 = u_xlat47;
    u_xlat47 = (x_1589 * x_1590);
    let x_1593 : f32 = u_xlat29.x;
    let x_1594 : f32 = u_xlat47;
    u_xlat47 = (x_1593 / x_1594);
    let x_1596 : vec4<f32> = u_xlat0;
    let x_1598 : f32 = u_xlat47;
    let x_1601 : vec3<f32> = u_xlat16;
    u_xlat9 = ((vec3<f32>(x_1596.x, x_1596.y, x_1596.z) * vec3<f32>(x_1598, x_1598, x_1598)) + x_1601);
    let x_1603 : vec3<f32> = u_xlat9;
    let x_1604 : vec4<f32> = u_xlat11;
    let x_1607 : vec4<f32> = u_xlat8;
    let x_1609 : vec3<f32> = ((x_1603 * vec3<f32>(x_1604.x, x_1604.y, x_1604.z)) + vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
    let x_1610 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1610.w);

    continuing {
      let x_1612 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1612 + bitcast<u32>(1i));
    }
  }
  let x_1614 : vec3<f32> = u_xlat5;
  let x_1615 : vec3<f32> = u_xlat3;
  let x_1618 : vec3<f32> = u_xlat20;
  let x_1619 : vec3<f32> = ((x_1614 * vec3<f32>(x_1615.x, x_1615.x, x_1615.x)) + x_1618);
  let x_1620 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1620.w);
  let x_1622 : vec4<f32> = u_xlat8;
  let x_1624 : vec4<f32> = u_xlat0;
  let x_1626 : vec3<f32> = (vec3<f32>(x_1622.x, x_1622.y, x_1622.z) + vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
  let x_1627 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
  let x_1629 : f32 = u_xlat42;
  let x_1630 : f32 = u_xlat42;
  u_xlat42 = (x_1629 * -(x_1630));
  let x_1633 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1633);
  let x_1635 : vec4<f32> = u_xlat0;
  let x_1639 : vec4<f32> = x_44.unity_FogColor;
  let x_1642 : vec3<f32> = (vec3<f32>(x_1635.x, x_1635.y, x_1635.z) + -(vec3<f32>(x_1639.x, x_1639.y, x_1639.z)));
  let x_1643 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1642.x, x_1642.y, x_1642.z, x_1643.w);
  let x_1647 : f32 = u_xlat42;
  let x_1649 : vec4<f32> = u_xlat0;
  let x_1653 : vec4<f32> = x_44.unity_FogColor;
  let x_1655 : vec3<f32> = ((vec3<f32>(x_1647, x_1647, x_1647) * vec3<f32>(x_1649.x, x_1649.y, x_1649.z)) + vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
  let x_1656 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
  let x_1661 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1661 == 1.0f);
  let x_1663 : bool = u_xlatb0;
  if (x_1663) {
    let x_1668 : f32 = u_xlat2.x;
    x_1664 = x_1668;
  } else {
    x_1664 = 1.0f;
  }
  let x_1670 : f32 = x_1664;
  SV_Target0.w = x_1670;
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

