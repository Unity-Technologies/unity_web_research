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

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_454 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_534 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_973 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1076 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlatb2 : bool;
  var x_101 : f32;
  var u_xlatb42 : bool;
  var u_xlat44 : f32;
  var u_xlat3 : vec4<f32>;
  var x_164 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat19 : f32;
  var u_xlat47 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var x_487 : f32;
  var u_xlat34 : f32;
  var u_xlat7 : vec4<f32>;
  var x_620 : f32;
  var x_631 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu44 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatu49 : u32;
  var u_xlati51 : i32;
  var u_xlati49 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1371 : f32;
  var x_1384 : f32;
  var x_1436 : f32;
  var x_1447 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1612 : f32;
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
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_44.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_82 : vec3<f32> = u_xlat2;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat42 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_104 : f32 = u_xlat42;
    x_101 = abs(x_104);
  } else {
    let x_107 : f32 = u_xlat42;
    x_101 = -(abs(x_107));
  }
  let x_110 : f32 = x_101;
  u_xlat42 = x_110;
  let x_111 : f32 = u_xlat42;
  let x_114 : f32 = x_95.unity_LODFade.x;
  u_xlat42 = (-(x_111) + x_114);
  let x_117 : f32 = u_xlat42;
  u_xlatb42 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb42;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_130 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb42 = (x_130 == 0.0f);
  let x_134 : vec3<f32> = vs_TEXCOORD1;
  let x_139 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_134) + x_139);
  let x_142 : vec3<f32> = u_xlat2;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat44 = dot(x_142, x_143);
  let x_145 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat44;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_147, x_147, x_147) * x_149);
  let x_154 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_154;
  let x_157 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_157;
  let x_161 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_161;
  let x_163 : bool = u_xlatb42;
  if (x_163) {
    let x_167 : vec3<f32> = u_xlat2;
    x_164 = x_167;
  } else {
    let x_169 : vec4<f32> = u_xlat3;
    x_164 = vec3<f32>(x_169.x, x_169.y, x_169.z);
  }
  let x_171 : vec3<f32> = x_164;
  u_xlat2 = x_171;
  let x_173 : vec3<f32> = vs_TEXCOORD2;
  let x_174 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_173, x_174);
  let x_176 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_176);
  let x_178 : f32 = u_xlat42;
  let x_180 : vec3<f32> = vs_TEXCOORD2;
  let x_181 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * x_180);
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : f32 = vs_TEXCOORD1.y;
  let x_187 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat42 = (x_185 * x_187);
  let x_190 : f32 = x_44.unity_MatrixV[0i].z;
  let x_192 : f32 = vs_TEXCOORD1.x;
  let x_194 : f32 = u_xlat42;
  u_xlat42 = ((x_190 * x_192) + x_194);
  let x_197 : f32 = x_44.unity_MatrixV[2i].z;
  let x_199 : f32 = vs_TEXCOORD1.z;
  let x_201 : f32 = u_xlat42;
  u_xlat42 = ((x_197 * x_199) + x_201);
  let x_203 : f32 = u_xlat42;
  let x_206 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat42 = (x_203 + x_206);
  let x_208 : f32 = u_xlat42;
  let x_212 : f32 = x_44.x_ProjectionParams.y;
  u_xlat42 = (-(x_208) + -(x_212));
  let x_215 : f32 = u_xlat42;
  u_xlat42 = max(x_215, 0.0f);
  let x_217 : f32 = u_xlat42;
  let x_220 : f32 = x_44.unity_FogParams.x;
  u_xlat42 = (x_217 * x_220);
  u_xlat3.w = 1.0f;
  let x_226 : vec4<f32> = x_95.unity_SHAr;
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_226, x_227);
  let x_232 : vec4<f32> = x_95.unity_SHAg;
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_232, x_233);
  let x_238 : vec4<f32> = x_95.unity_SHAb;
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_238, x_239);
  let x_243 : vec4<f32> = u_xlat3;
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_243.y, x_243.z, x_243.z, x_243.x) * vec4<f32>(x_245.x, x_245.y, x_245.z, x_245.z));
  let x_251 : vec4<f32> = x_95.unity_SHBr;
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_251, x_252);
  let x_257 : vec4<f32> = x_95.unity_SHBg;
  let x_258 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_257, x_258);
  let x_263 : vec4<f32> = x_95.unity_SHBb;
  let x_264 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_263, x_264);
  let x_268 : f32 = u_xlat3.y;
  let x_270 : f32 = u_xlat3.y;
  u_xlat44 = (x_268 * x_270);
  let x_273 : f32 = u_xlat3.x;
  let x_275 : f32 = u_xlat3.x;
  let x_277 : f32 = u_xlat44;
  u_xlat44 = ((x_273 * x_275) + -(x_277));
  let x_282 : vec4<f32> = x_95.unity_SHC;
  let x_284 : f32 = u_xlat44;
  let x_287 : vec3<f32> = u_xlat6;
  let x_288 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284, x_284, x_284)) + x_287);
  let x_289 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec3<f32> = u_xlat4;
  let x_292 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_291 + vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_295, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_300 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_301 : vec2<f32> = vec2<f32>(x_300.x, x_300.y);
  let x_305 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_301.x, x_301.y));
  let x_306 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = hlslcc_FragCoord;
  let x_312 : vec2<f32> = (vec2<f32>(x_308.x, x_308.y) * vec2<f32>(x_310.x, x_310.y));
  let x_313 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_312.x, x_312.y, x_313.z, x_313.w);
  let x_316 : f32 = u_xlat5.y;
  let x_319 : f32 = x_44.x_ScaleBiasRt.x;
  let x_322 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat44 = ((x_316 * x_319) + x_322);
  let x_324 : f32 = u_xlat44;
  u_xlat5.z = (-(x_324) + 1.0f);
  let x_329 : f32 = x_57.x_Metallic;
  u_xlat44 = ((-(x_329) * 0.959999979f) + 0.959999979f);
  let x_335 : f32 = u_xlat44;
  let x_338 : f32 = x_57.x_Smoothness;
  u_xlat45 = (-(x_335) + x_338);
  let x_341 : vec4<f32> = u_xlat1;
  let x_343 : f32 = u_xlat44;
  u_xlat15 = (vec3<f32>(x_341.y, x_341.z, x_341.w) * vec3<f32>(x_343, x_343, x_343));
  let x_346 : vec4<f32> = u_xlat0;
  let x_349 : vec4<f32> = x_57.x_BaseColor;
  let x_354 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_349.x, x_349.y, x_349.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_355 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : f32 = x_57.x_Metallic;
  let x_360 : f32 = x_57.x_Metallic;
  let x_362 : f32 = x_57.x_Metallic;
  let x_363 : vec3<f32> = vec3<f32>(x_358, x_360, x_362);
  let x_368 : vec4<f32> = u_xlat0;
  let x_373 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_368.x, x_368.y, x_368.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_374 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_377 : f32 = x_57.x_Smoothness;
  u_xlat44 = (-(x_377) + 1.0f);
  let x_381 : f32 = u_xlat44;
  let x_382 : f32 = u_xlat44;
  u_xlat46 = (x_381 * x_382);
  let x_384 : f32 = u_xlat46;
  u_xlat46 = max(x_384, 0.0078125f);
  let x_388 : f32 = u_xlat46;
  let x_389 : f32 = u_xlat46;
  u_xlat19 = (x_388 * x_389);
  let x_391 : f32 = u_xlat45;
  u_xlat45 = (x_391 + 1.0f);
  let x_393 : f32 = u_xlat45;
  u_xlat45 = clamp(x_393, 0.0f, 1.0f);
  let x_396 : f32 = u_xlat46;
  u_xlat47 = ((x_396 * 4.0f) + 2.0f);
  let x_406 : vec4<f32> = u_xlat5;
  let x_409 : f32 = x_44.x_GlobalMipBias.x;
  let x_410 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_406.x, x_406.z), x_409);
  u_xlat5.x = x_410.x;
  let x_415 : f32 = u_xlat5.x;
  u_xlat33 = (x_415 + -1.0f);
  let x_420 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_421 : f32 = u_xlat33;
  u_xlat33 = ((x_420 * x_421) + 1.0f);
  let x_425 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_425, 1.0f);
  let x_430 : vec4<f32> = vs_TEXCOORD6;
  let x_431 : vec2<f32> = vec2<f32>(x_430.x, x_430.y);
  let x_433 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_431.x, x_431.y, x_433);
  let x_445 : vec3<f32> = txVec0;
  let x_447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_445.xy, x_445.z);
  u_xlat6.x = x_447;
  let x_456 : f32 = x_454.x_MainLightShadowParams.x;
  u_xlat20.x = (-(x_456) + 1.0f);
  let x_461 : f32 = u_xlat6.x;
  let x_463 : f32 = x_454.x_MainLightShadowParams.x;
  let x_466 : f32 = u_xlat20.x;
  u_xlat6.x = ((x_461 * x_463) + x_466);
  let x_473 : f32 = vs_TEXCOORD6.z;
  u_xlatb20.x = (0.0f >= x_473);
  let x_478 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (x_478 >= 1.0f);
  let x_480 : bool = u_xlatb34;
  let x_482 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_480 | x_482);
  let x_486 : bool = u_xlatb20.x;
  if (x_486) {
    x_487 = 1.0f;
  } else {
    let x_492 : f32 = u_xlat6.x;
    x_487 = x_492;
  }
  let x_493 : f32 = x_487;
  u_xlat6.x = x_493;
  let x_495 : vec3<f32> = vs_TEXCOORD1;
  let x_497 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (x_495 + -(x_497));
  let x_500 : vec3<f32> = u_xlat20;
  let x_501 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_500, x_501);
  let x_505 : f32 = u_xlat20.x;
  let x_507 : f32 = x_454.x_MainLightShadowParams.z;
  let x_510 : f32 = x_454.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_505 * x_507) + x_510);
  let x_514 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_514, 0.0f, 1.0f);
  let x_519 : f32 = u_xlat6.x;
  u_xlat34 = (-(x_519) + 1.0f);
  let x_523 : f32 = u_xlat20.x;
  let x_524 : f32 = u_xlat34;
  let x_527 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_523 * x_524) + x_527);
  let x_536 : f32 = x_534.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_536 == -1.0f));
  let x_540 : bool = u_xlatb20.x;
  if (x_540) {
    let x_543 : vec3<f32> = vs_TEXCOORD1;
    let x_546 : vec4<f32> = x_534.x_MainLightWorldToLight[1i];
    let x_548 : vec2<f32> = (vec2<f32>(x_543.y, x_543.y) * vec2<f32>(x_546.x, x_546.y));
    let x_549 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_548.x, x_548.y, x_549.z);
    let x_552 : vec4<f32> = x_534.x_MainLightWorldToLight[0i];
    let x_554 : vec3<f32> = vs_TEXCOORD1;
    let x_557 : vec3<f32> = u_xlat20;
    let x_559 : vec2<f32> = ((vec2<f32>(x_552.x, x_552.y) * vec2<f32>(x_554.x, x_554.x)) + vec2<f32>(x_557.x, x_557.y));
    let x_560 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_559.x, x_559.y, x_560.z);
    let x_563 : vec4<f32> = x_534.x_MainLightWorldToLight[2i];
    let x_565 : vec3<f32> = vs_TEXCOORD1;
    let x_568 : vec3<f32> = u_xlat20;
    let x_570 : vec2<f32> = ((vec2<f32>(x_563.x, x_563.y) * vec2<f32>(x_565.z, x_565.z)) + vec2<f32>(x_568.x, x_568.y));
    let x_571 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_570.x, x_570.y, x_571.z);
    let x_573 : vec3<f32> = u_xlat20;
    let x_576 : vec4<f32> = x_534.x_MainLightWorldToLight[3i];
    let x_578 : vec2<f32> = (vec2<f32>(x_573.x, x_573.y) + vec2<f32>(x_576.x, x_576.y));
    let x_579 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_578.x, x_578.y, x_579.z);
    let x_581 : vec3<f32> = u_xlat20;
    let x_586 : vec2<f32> = ((vec2<f32>(x_581.x, x_581.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_587 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_586.x, x_586.y, x_587.z);
    let x_595 : vec3<f32> = u_xlat20;
    let x_598 : f32 = x_44.x_GlobalMipBias.x;
    let x_599 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_595.x, x_595.y), x_598);
    u_xlat7 = x_599;
    let x_601 : f32 = x_534.x_MainLightCookieTextureFormat;
    let x_603 : f32 = x_534.x_MainLightCookieTextureFormat;
    let x_605 : f32 = x_534.x_MainLightCookieTextureFormat;
    let x_607 : f32 = x_534.x_MainLightCookieTextureFormat;
    let x_608 : vec4<f32> = vec4<f32>(x_601, x_603, x_605, x_607);
    let x_616 : vec4<bool> = (vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_616.x, x_616.y);
    let x_619 : bool = u_xlatb20.y;
    if (x_619) {
      let x_624 : f32 = u_xlat7.w;
      x_620 = x_624;
    } else {
      let x_627 : f32 = u_xlat7.x;
      x_620 = x_627;
    }
    let x_628 : f32 = x_620;
    u_xlat34 = x_628;
    let x_630 : bool = u_xlatb20.x;
    if (x_630) {
      let x_634 : vec4<f32> = u_xlat7;
      x_631 = vec3<f32>(x_634.x, x_634.y, x_634.z);
    } else {
      let x_637 : f32 = u_xlat34;
      x_631 = vec3<f32>(x_637, x_637, x_637);
    }
    let x_639 : vec3<f32> = x_631;
    u_xlat20 = x_639;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_644 : vec3<f32> = u_xlat20;
  let x_646 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat20 = (x_644 * vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat33;
  let x_651 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_649, x_649, x_649) * x_651);
  let x_653 : vec3<f32> = u_xlat2;
  let x_655 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_653), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_660 : f32 = u_xlat7.x;
  let x_662 : f32 = u_xlat7.x;
  u_xlat7.x = (x_660 + x_662);
  let x_665 : vec4<f32> = u_xlat3;
  let x_667 : vec4<f32> = u_xlat7;
  let x_671 : vec3<f32> = u_xlat2;
  let x_673 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.y, x_665.z) * -(vec3<f32>(x_667.x, x_667.x, x_667.x))) + -(x_671));
  let x_674 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_677 : vec4<f32> = u_xlat3;
  let x_679 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_677.x, x_677.y, x_677.z), x_679);
  let x_681 : f32 = u_xlat49;
  u_xlat49 = clamp(x_681, 0.0f, 1.0f);
  let x_683 : f32 = u_xlat49;
  u_xlat49 = (-(x_683) + 1.0f);
  let x_686 : f32 = u_xlat49;
  let x_687 : f32 = u_xlat49;
  u_xlat49 = (x_686 * x_687);
  let x_689 : f32 = u_xlat49;
  let x_690 : f32 = u_xlat49;
  u_xlat49 = (x_689 * x_690);
  let x_693 : f32 = u_xlat44;
  u_xlat8.x = ((-(x_693) * 0.699999988f) + 1.700000048f);
  let x_700 : f32 = u_xlat44;
  let x_702 : f32 = u_xlat8.x;
  u_xlat44 = (x_700 * x_702);
  let x_704 : f32 = u_xlat44;
  u_xlat44 = (x_704 * 6.0f);
  let x_715 : vec4<f32> = u_xlat7;
  let x_717 : f32 = u_xlat44;
  let x_718 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_715.x, x_715.y, x_715.z), x_717);
  u_xlat8 = x_718;
  let x_720 : f32 = u_xlat8.w;
  u_xlat44 = (x_720 + -1.0f);
  let x_723 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_724 : f32 = u_xlat44;
  u_xlat44 = ((x_723 * x_724) + 1.0f);
  let x_727 : f32 = u_xlat44;
  u_xlat44 = max(x_727, 0.0f);
  let x_729 : f32 = u_xlat44;
  u_xlat44 = log2(x_729);
  let x_731 : f32 = u_xlat44;
  let x_733 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_731 * x_733);
  let x_735 : f32 = u_xlat44;
  u_xlat44 = exp2(x_735);
  let x_737 : f32 = u_xlat44;
  let x_739 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_737 * x_739);
  let x_741 : vec4<f32> = u_xlat8;
  let x_743 : f32 = u_xlat44;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743, x_743, x_743));
  let x_746 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : f32 = u_xlat46;
  let x_750 : f32 = u_xlat46;
  let x_754 : vec2<f32> = ((vec2<f32>(x_748, x_748) * vec2<f32>(x_750, x_750)) + vec2<f32>(-1.0f, 1.0f));
  let x_755 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
  let x_758 : f32 = u_xlat8.y;
  u_xlat44 = (1.0f / x_758);
  let x_761 : vec4<f32> = u_xlat0;
  let x_764 : f32 = u_xlat45;
  u_xlat22 = (-(vec3<f32>(x_761.x, x_761.y, x_761.z)) + vec3<f32>(x_764, x_764, x_764));
  let x_767 : f32 = u_xlat49;
  let x_769 : vec3<f32> = u_xlat22;
  let x_771 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_767, x_767, x_767) * x_769) + vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : f32 = u_xlat44;
  let x_776 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_774, x_774, x_774) * x_776);
  let x_778 : vec4<f32> = u_xlat7;
  let x_780 : vec3<f32> = u_xlat22;
  let x_781 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) * x_780);
  let x_782 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec3<f32> = u_xlat4;
  let x_785 : vec3<f32> = u_xlat15;
  let x_787 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_784 * x_785) + vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_791 : f32 = u_xlat6.x;
  let x_794 : f32 = x_95.unity_LightData.z;
  u_xlat44 = (x_791 * x_794);
  let x_796 : vec4<f32> = u_xlat3;
  let x_799 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_796.x, x_796.y, x_796.z), vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : f32 = u_xlat45;
  u_xlat45 = clamp(x_802, 0.0f, 1.0f);
  let x_804 : f32 = u_xlat44;
  let x_805 : f32 = u_xlat45;
  u_xlat44 = (x_804 * x_805);
  let x_807 : f32 = u_xlat44;
  let x_809 : vec3<f32> = u_xlat20;
  u_xlat6 = (vec3<f32>(x_807, x_807, x_807) * x_809);
  let x_811 : vec3<f32> = u_xlat2;
  let x_813 : vec4<f32> = x_44.x_MainLightPosition;
  let x_815 : vec3<f32> = (x_811 + vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat7;
  let x_820 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_818.x, x_818.y, x_818.z), vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : f32 = u_xlat44;
  u_xlat44 = max(x_823, 1.17549435e-37f);
  let x_826 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_826);
  let x_828 : f32 = u_xlat44;
  let x_830 : vec4<f32> = u_xlat7;
  let x_832 : vec3<f32> = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat3;
  let x_837 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_835.x, x_835.y, x_835.z), vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : f32 = u_xlat44;
  u_xlat44 = clamp(x_840, 0.0f, 1.0f);
  let x_843 : vec4<f32> = x_44.x_MainLightPosition;
  let x_845 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : f32 = u_xlat45;
  u_xlat45 = clamp(x_848, 0.0f, 1.0f);
  let x_850 : f32 = u_xlat44;
  let x_851 : f32 = u_xlat44;
  u_xlat44 = (x_850 * x_851);
  let x_853 : f32 = u_xlat44;
  let x_855 : f32 = u_xlat8.x;
  u_xlat44 = ((x_853 * x_855) + 1.000010014f);
  let x_859 : f32 = u_xlat45;
  let x_860 : f32 = u_xlat45;
  u_xlat45 = (x_859 * x_860);
  let x_862 : f32 = u_xlat44;
  let x_863 : f32 = u_xlat44;
  u_xlat44 = (x_862 * x_863);
  let x_865 : f32 = u_xlat45;
  u_xlat45 = max(x_865, 0.100000001f);
  let x_868 : f32 = u_xlat44;
  let x_869 : f32 = u_xlat45;
  u_xlat44 = (x_868 * x_869);
  let x_871 : f32 = u_xlat47;
  let x_872 : f32 = u_xlat44;
  u_xlat44 = (x_871 * x_872);
  let x_874 : f32 = u_xlat19;
  let x_875 : f32 = u_xlat44;
  u_xlat44 = (x_874 / x_875);
  let x_877 : vec4<f32> = u_xlat0;
  let x_879 : f32 = u_xlat44;
  let x_882 : vec3<f32> = u_xlat15;
  let x_883 : vec3<f32> = ((vec3<f32>(x_877.x, x_877.y, x_877.z) * vec3<f32>(x_879, x_879, x_879)) + x_882);
  let x_884 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec3<f32> = u_xlat6;
  let x_887 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_886 * vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_891 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_893 : f32 = x_95.unity_LightData.y;
  u_xlat44 = min(x_891, x_893);
  let x_897 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_897));
  let x_902 : f32 = x_534.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_904 : f32 = x_534.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_906 : f32 = x_534.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_908 : f32 = x_534.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_909 : vec4<f32> = vec4<f32>(x_902, x_904, x_906, x_908);
  let x_915 : vec4<bool> = (vec4<f32>(x_909.x, x_909.y, x_909.z, x_909.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_915.x, x_915.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_926 : u32 = u_xlatu_loop_1;
    let x_927 : u32 = u_xlatu44;
    if ((x_926 < x_927)) {
    } else {
      break;
    }
    let x_930 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_930 >> 2u);
    let x_934 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_934 & 3u));
    let x_937 : u32 = u_xlatu46;
    let x_940 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_937)];
    let x_950 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_955 : vec4<u32> = indexable[x_950];
    u_xlat46 = dot(x_940, bitcast<vec4<f32>>(x_955));
    let x_958 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_958));
    let x_962 : vec3<f32> = vs_TEXCOORD1;
    let x_974 : u32 = u_xlatu46;
    let x_977 : vec4<f32> = x_973.x_AdditionalLightsPosition[bitcast<i32>(x_974)];
    let x_980 : u32 = u_xlatu46;
    let x_983 : vec4<f32> = x_973.x_AdditionalLightsPosition[bitcast<i32>(x_980)];
    u_xlat9 = ((-(x_962) * vec3<f32>(x_977.w, x_977.w, x_977.w)) + vec3<f32>(x_983.x, x_983.y, x_983.z));
    let x_987 : vec3<f32> = u_xlat9;
    let x_988 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_987, x_988);
    let x_990 : f32 = u_xlat48;
    u_xlat48 = max(x_990, 6.10351562e-05f);
    let x_994 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_994);
    let x_997 : f32 = u_xlat35;
    let x_999 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_997, x_997, x_997) * x_999);
    let x_1001 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1001);
    let x_1003 : f32 = u_xlat48;
    let x_1004 : u32 = u_xlatu46;
    let x_1007 : f32 = x_973.x_AdditionalLightsAttenuation[bitcast<i32>(x_1004)].x;
    u_xlat48 = (x_1003 * x_1007);
    let x_1009 : f32 = u_xlat48;
    let x_1011 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1009) * x_1011) + 1.0f);
    let x_1014 : f32 = u_xlat48;
    u_xlat48 = max(x_1014, 0.0f);
    let x_1016 : f32 = u_xlat48;
    let x_1017 : f32 = u_xlat48;
    u_xlat48 = (x_1016 * x_1017);
    let x_1019 : f32 = u_xlat48;
    let x_1020 : f32 = u_xlat49;
    u_xlat48 = (x_1019 * x_1020);
    let x_1022 : u32 = u_xlatu46;
    let x_1025 : vec4<f32> = x_973.x_AdditionalLightsSpotDir[bitcast<i32>(x_1022)];
    let x_1027 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1025.x, x_1025.y, x_1025.z), x_1027);
    let x_1029 : f32 = u_xlat49;
    let x_1030 : u32 = u_xlatu46;
    let x_1033 : f32 = x_973.x_AdditionalLightsAttenuation[bitcast<i32>(x_1030)].z;
    let x_1035 : u32 = u_xlatu46;
    let x_1038 : f32 = x_973.x_AdditionalLightsAttenuation[bitcast<i32>(x_1035)].w;
    u_xlat49 = ((x_1029 * x_1033) + x_1038);
    let x_1040 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1040, 0.0f, 1.0f);
    let x_1042 : f32 = u_xlat49;
    let x_1043 : f32 = u_xlat49;
    u_xlat49 = (x_1042 * x_1043);
    let x_1045 : f32 = u_xlat48;
    let x_1046 : f32 = u_xlat49;
    u_xlat48 = (x_1045 * x_1046);
    let x_1049 : u32 = u_xlatu46;
    u_xlatu49 = (x_1049 >> 5u);
    let x_1052 : u32 = u_xlatu46;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1052) & 31i)));
    let x_1058 : i32 = u_xlati51;
    let x_1060 : u32 = u_xlatu49;
    let x_1063 : f32 = x_534.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1060)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1058) & bitcast<u32>(x_1063)));
    let x_1067 : i32 = u_xlati49;
    if ((x_1067 != 0i)) {
      let x_1077 : u32 = u_xlatu46;
      let x_1080 : f32 = x_1076.x_AdditionalLightsLightTypes[bitcast<i32>(x_1077)].el;
      u_xlati49 = i32(x_1080);
      let x_1082 : i32 = u_xlati49;
      u_xlati51 = select(1i, 0i, (x_1082 != 0i));
      let x_1086 : u32 = u_xlatu46;
      u_xlati52 = (bitcast<i32>(x_1086) << bitcast<u32>(2i));
      let x_1089 : i32 = u_xlati51;
      if ((x_1089 != 0i)) {
        let x_1094 : vec3<f32> = vs_TEXCOORD1;
        let x_1096 : i32 = u_xlati52;
        let x_1099 : i32 = u_xlati52;
        let x_1103 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[((x_1096 + 1i) / 4i)][((x_1099 + 1i) % 4i)];
        let x_1105 : vec3<f32> = (vec3<f32>(x_1094.y, x_1094.y, x_1094.y) * vec3<f32>(x_1103.x, x_1103.y, x_1103.w));
        let x_1106 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
        let x_1108 : i32 = u_xlati52;
        let x_1110 : i32 = u_xlati52;
        let x_1113 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[(x_1108 / 4i)][(x_1110 % 4i)];
        let x_1115 : vec3<f32> = vs_TEXCOORD1;
        let x_1118 : vec4<f32> = u_xlat11;
        let x_1120 : vec3<f32> = ((vec3<f32>(x_1113.x, x_1113.y, x_1113.w) * vec3<f32>(x_1115.x, x_1115.x, x_1115.x)) + vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
        let x_1121 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
        let x_1123 : i32 = u_xlati52;
        let x_1126 : i32 = u_xlati52;
        let x_1130 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[((x_1123 + 2i) / 4i)][((x_1126 + 2i) % 4i)];
        let x_1132 : vec3<f32> = vs_TEXCOORD1;
        let x_1135 : vec4<f32> = u_xlat11;
        let x_1137 : vec3<f32> = ((vec3<f32>(x_1130.x, x_1130.y, x_1130.w) * vec3<f32>(x_1132.z, x_1132.z, x_1132.z)) + vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
        let x_1138 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat11;
        let x_1142 : i32 = u_xlati52;
        let x_1145 : i32 = u_xlati52;
        let x_1149 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[((x_1142 + 3i) / 4i)][((x_1145 + 3i) % 4i)];
        let x_1151 : vec3<f32> = (vec3<f32>(x_1140.x, x_1140.y, x_1140.z) + vec3<f32>(x_1149.x, x_1149.y, x_1149.w));
        let x_1152 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
        let x_1154 : vec4<f32> = u_xlat11;
        let x_1156 : vec4<f32> = u_xlat11;
        let x_1158 : vec2<f32> = (vec2<f32>(x_1154.x, x_1154.y) / vec2<f32>(x_1156.z, x_1156.z));
        let x_1159 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1161 : vec4<f32> = u_xlat11;
        let x_1164 : vec2<f32> = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1165 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat11;
        let x_1171 : vec2<f32> = clamp(vec2<f32>(x_1167.x, x_1167.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1172 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
        let x_1174 : u32 = u_xlatu46;
        let x_1177 : vec4<f32> = x_1076.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1174)];
        let x_1179 : vec4<f32> = u_xlat11;
        let x_1182 : u32 = u_xlatu46;
        let x_1185 : vec4<f32> = x_1076.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1182)];
        let x_1187 : vec2<f32> = ((vec2<f32>(x_1177.x, x_1177.y) * vec2<f32>(x_1179.x, x_1179.y)) + vec2<f32>(x_1185.z, x_1185.w));
        let x_1188 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1187.x, x_1187.y, x_1188.z, x_1188.w);
      } else {
        let x_1192 : i32 = u_xlati49;
        u_xlatb49 = (x_1192 == 1i);
        let x_1194 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1194);
        let x_1196 : i32 = u_xlati49;
        if ((x_1196 != 0i)) {
          let x_1202 : vec3<f32> = vs_TEXCOORD1;
          let x_1204 : i32 = u_xlati52;
          let x_1207 : i32 = u_xlati52;
          let x_1211 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[((x_1204 + 1i) / 4i)][((x_1207 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1202.y, x_1202.y) * vec2<f32>(x_1211.x, x_1211.y));
          let x_1214 : i32 = u_xlati52;
          let x_1216 : i32 = u_xlati52;
          let x_1219 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[(x_1214 / 4i)][(x_1216 % 4i)];
          let x_1221 : vec3<f32> = vs_TEXCOORD1;
          let x_1224 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1219.x, x_1219.y) * vec2<f32>(x_1221.x, x_1221.x)) + x_1224);
          let x_1226 : i32 = u_xlati52;
          let x_1229 : i32 = u_xlati52;
          let x_1233 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[((x_1226 + 2i) / 4i)][((x_1229 + 2i) % 4i)];
          let x_1235 : vec3<f32> = vs_TEXCOORD1;
          let x_1238 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1233.x, x_1233.y) * vec2<f32>(x_1235.z, x_1235.z)) + x_1238);
          let x_1240 : vec2<f32> = u_xlat39;
          let x_1241 : i32 = u_xlati52;
          let x_1244 : i32 = u_xlati52;
          let x_1248 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[((x_1241 + 3i) / 4i)][((x_1244 + 3i) % 4i)];
          u_xlat39 = (x_1240 + vec2<f32>(x_1248.x, x_1248.y));
          let x_1251 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1251 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1254 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1254);
          let x_1256 : u32 = u_xlatu46;
          let x_1259 : vec4<f32> = x_1076.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1256)];
          let x_1261 : vec2<f32> = u_xlat39;
          let x_1263 : u32 = u_xlatu46;
          let x_1266 : vec4<f32> = x_1076.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1263)];
          let x_1268 : vec2<f32> = ((vec2<f32>(x_1259.x, x_1259.y) * x_1261) + vec2<f32>(x_1266.z, x_1266.w));
          let x_1269 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1268.x, x_1268.y, x_1269.z, x_1269.w);
        } else {
          let x_1273 : vec3<f32> = vs_TEXCOORD1;
          let x_1275 : i32 = u_xlati52;
          let x_1278 : i32 = u_xlati52;
          let x_1282 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[((x_1275 + 1i) / 4i)][((x_1278 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1273.y, x_1273.y, x_1273.y, x_1273.y) * x_1282);
          let x_1284 : i32 = u_xlati52;
          let x_1286 : i32 = u_xlati52;
          let x_1289 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[(x_1284 / 4i)][(x_1286 % 4i)];
          let x_1290 : vec3<f32> = vs_TEXCOORD1;
          let x_1293 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1289 * vec4<f32>(x_1290.x, x_1290.x, x_1290.x, x_1290.x)) + x_1293);
          let x_1295 : i32 = u_xlati52;
          let x_1298 : i32 = u_xlati52;
          let x_1302 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[((x_1295 + 2i) / 4i)][((x_1298 + 2i) % 4i)];
          let x_1303 : vec3<f32> = vs_TEXCOORD1;
          let x_1306 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1302 * vec4<f32>(x_1303.z, x_1303.z, x_1303.z, x_1303.z)) + x_1306);
          let x_1308 : vec4<f32> = u_xlat12;
          let x_1309 : i32 = u_xlati52;
          let x_1312 : i32 = u_xlati52;
          let x_1316 : vec4<f32> = x_1076.x_AdditionalLightsWorldToLights[((x_1309 + 3i) / 4i)][((x_1312 + 3i) % 4i)];
          u_xlat12 = (x_1308 + x_1316);
          let x_1318 : vec4<f32> = u_xlat12;
          let x_1320 : vec4<f32> = u_xlat12;
          let x_1322 : vec3<f32> = (vec3<f32>(x_1318.x, x_1318.y, x_1318.z) / vec3<f32>(x_1320.w, x_1320.w, x_1320.w));
          let x_1323 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
          let x_1325 : vec4<f32> = u_xlat12;
          let x_1327 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1325.x, x_1325.y, x_1325.z), vec3<f32>(x_1327.x, x_1327.y, x_1327.z));
          let x_1330 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1330);
          let x_1332 : f32 = u_xlat49;
          let x_1334 : vec4<f32> = u_xlat12;
          let x_1336 : vec3<f32> = (vec3<f32>(x_1332, x_1332, x_1332) * vec3<f32>(x_1334.x, x_1334.y, x_1334.z));
          let x_1337 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
          let x_1339 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1339.x, x_1339.y, x_1339.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1344 : f32 = u_xlat49;
          u_xlat49 = max(x_1344, 0.000001f);
          let x_1347 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1347);
          let x_1350 : f32 = u_xlat49;
          let x_1352 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1350, x_1350, x_1350) * vec3<f32>(x_1352.z, x_1352.x, x_1352.y));
          let x_1356 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1356);
          let x_1360 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1360, 0.0f, 1.0f);
          let x_1364 : vec3<f32> = u_xlat13;
          let x_1367 : vec4<bool> = (vec4<f32>(x_1364.y, x_1364.z, x_1364.y, x_1364.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1367.x, x_1367.y);
          let x_1370 : bool = u_xlatb39.x;
          if (x_1370) {
            let x_1375 : f32 = u_xlat13.x;
            x_1371 = x_1375;
          } else {
            let x_1378 : f32 = u_xlat13.x;
            x_1371 = -(x_1378);
          }
          let x_1380 : f32 = x_1371;
          u_xlat39.x = x_1380;
          let x_1383 : bool = u_xlatb39.y;
          if (x_1383) {
            let x_1388 : f32 = u_xlat13.x;
            x_1384 = x_1388;
          } else {
            let x_1391 : f32 = u_xlat13.x;
            x_1384 = -(x_1391);
          }
          let x_1393 : f32 = x_1384;
          u_xlat39.y = x_1393;
          let x_1395 : vec4<f32> = u_xlat12;
          let x_1397 : f32 = u_xlat49;
          let x_1400 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1395.x, x_1395.y) * vec2<f32>(x_1397, x_1397)) + x_1400);
          let x_1402 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1402 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1405 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1405, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1409 : u32 = u_xlatu46;
          let x_1412 : vec4<f32> = x_1076.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1409)];
          let x_1414 : vec2<f32> = u_xlat39;
          let x_1416 : u32 = u_xlatu46;
          let x_1419 : vec4<f32> = x_1076.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1416)];
          let x_1421 : vec2<f32> = ((vec2<f32>(x_1412.x, x_1412.y) * x_1414) + vec2<f32>(x_1419.z, x_1419.w));
          let x_1422 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1421.x, x_1421.y, x_1422.z, x_1422.w);
        }
      }
      let x_1429 : vec4<f32> = u_xlat11;
      let x_1432 : f32 = x_44.x_GlobalMipBias.x;
      let x_1433 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1429.x, x_1429.y), x_1432);
      u_xlat11 = x_1433;
      let x_1435 : bool = u_xlatb7.y;
      if (x_1435) {
        let x_1440 : f32 = u_xlat11.w;
        x_1436 = x_1440;
      } else {
        let x_1443 : f32 = u_xlat11.x;
        x_1436 = x_1443;
      }
      let x_1444 : f32 = x_1436;
      u_xlat49 = x_1444;
      let x_1446 : bool = u_xlatb7.x;
      if (x_1446) {
        let x_1450 : vec4<f32> = u_xlat11;
        x_1447 = vec3<f32>(x_1450.x, x_1450.y, x_1450.z);
      } else {
        let x_1453 : f32 = u_xlat49;
        x_1447 = vec3<f32>(x_1453, x_1453, x_1453);
      }
      let x_1455 : vec3<f32> = x_1447;
      let x_1456 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1462 : vec4<f32> = u_xlat11;
    let x_1464 : u32 = u_xlatu46;
    let x_1467 : vec4<f32> = x_973.x_AdditionalLightsColor[bitcast<i32>(x_1464)];
    let x_1469 : vec3<f32> = (vec3<f32>(x_1462.x, x_1462.y, x_1462.z) * vec3<f32>(x_1467.x, x_1467.y, x_1467.z));
    let x_1470 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
    let x_1472 : f32 = u_xlat33;
    let x_1474 : vec4<f32> = u_xlat11;
    let x_1476 : vec3<f32> = (vec3<f32>(x_1472, x_1472, x_1472) * vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
    let x_1477 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
    let x_1479 : vec4<f32> = u_xlat3;
    let x_1481 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1479.x, x_1479.y, x_1479.z), x_1481);
    let x_1483 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1483, 0.0f, 1.0f);
    let x_1485 : f32 = u_xlat46;
    let x_1486 : f32 = u_xlat48;
    u_xlat46 = (x_1485 * x_1486);
    let x_1488 : f32 = u_xlat46;
    let x_1490 : vec4<f32> = u_xlat11;
    let x_1492 : vec3<f32> = (vec3<f32>(x_1488, x_1488, x_1488) * vec3<f32>(x_1490.x, x_1490.y, x_1490.z));
    let x_1493 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1492.x, x_1492.y, x_1492.z, x_1493.w);
    let x_1495 : vec3<f32> = u_xlat9;
    let x_1496 : f32 = u_xlat35;
    let x_1499 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1495 * vec3<f32>(x_1496, x_1496, x_1496)) + x_1499);
    let x_1501 : vec3<f32> = u_xlat9;
    let x_1502 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1501, x_1502);
    let x_1504 : f32 = u_xlat46;
    u_xlat46 = max(x_1504, 1.17549435e-37f);
    let x_1506 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1506);
    let x_1508 : f32 = u_xlat46;
    let x_1510 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1508, x_1508, x_1508) * x_1510);
    let x_1512 : vec4<f32> = u_xlat3;
    let x_1514 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_1512.x, x_1512.y, x_1512.z), x_1514);
    let x_1516 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1516, 0.0f, 1.0f);
    let x_1518 : vec3<f32> = u_xlat10;
    let x_1519 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1518, x_1519);
    let x_1521 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1521, 0.0f, 1.0f);
    let x_1523 : f32 = u_xlat46;
    let x_1524 : f32 = u_xlat46;
    u_xlat46 = (x_1523 * x_1524);
    let x_1526 : f32 = u_xlat46;
    let x_1528 : f32 = u_xlat8.x;
    u_xlat46 = ((x_1526 * x_1528) + 1.000010014f);
    let x_1531 : f32 = u_xlat48;
    let x_1532 : f32 = u_xlat48;
    u_xlat48 = (x_1531 * x_1532);
    let x_1534 : f32 = u_xlat46;
    let x_1535 : f32 = u_xlat46;
    u_xlat46 = (x_1534 * x_1535);
    let x_1537 : f32 = u_xlat48;
    u_xlat48 = max(x_1537, 0.100000001f);
    let x_1539 : f32 = u_xlat46;
    let x_1540 : f32 = u_xlat48;
    u_xlat46 = (x_1539 * x_1540);
    let x_1542 : f32 = u_xlat47;
    let x_1543 : f32 = u_xlat46;
    u_xlat46 = (x_1542 * x_1543);
    let x_1545 : f32 = u_xlat19;
    let x_1546 : f32 = u_xlat46;
    u_xlat46 = (x_1545 / x_1546);
    let x_1548 : vec4<f32> = u_xlat0;
    let x_1550 : f32 = u_xlat46;
    let x_1553 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1548.x, x_1548.y, x_1548.z) * vec3<f32>(x_1550, x_1550, x_1550)) + x_1553);
    let x_1555 : vec3<f32> = u_xlat9;
    let x_1556 : vec4<f32> = u_xlat11;
    let x_1559 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1555 * vec3<f32>(x_1556.x, x_1556.y, x_1556.z)) + x_1559);

    continuing {
      let x_1561 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1561 + bitcast<u32>(1i));
    }
  }
  let x_1563 : vec3<f32> = u_xlat4;
  let x_1564 : vec4<f32> = u_xlat5;
  let x_1567 : vec3<f32> = u_xlat6;
  let x_1568 : vec3<f32> = ((x_1563 * vec3<f32>(x_1564.x, x_1564.x, x_1564.x)) + x_1567);
  let x_1569 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1568.x, x_1568.y, x_1568.z, x_1569.w);
  let x_1571 : vec3<f32> = u_xlat22;
  let x_1572 : vec4<f32> = u_xlat0;
  let x_1574 : vec3<f32> = (x_1571 + vec3<f32>(x_1572.x, x_1572.y, x_1572.z));
  let x_1575 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1575.w);
  let x_1577 : f32 = u_xlat42;
  let x_1578 : f32 = u_xlat42;
  u_xlat42 = (x_1577 * -(x_1578));
  let x_1581 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1581);
  let x_1583 : vec4<f32> = u_xlat0;
  let x_1587 : vec4<f32> = x_44.unity_FogColor;
  let x_1590 : vec3<f32> = (vec3<f32>(x_1583.x, x_1583.y, x_1583.z) + -(vec3<f32>(x_1587.x, x_1587.y, x_1587.z)));
  let x_1591 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1590.x, x_1590.y, x_1590.z, x_1591.w);
  let x_1595 : f32 = u_xlat42;
  let x_1597 : vec4<f32> = u_xlat0;
  let x_1601 : vec4<f32> = x_44.unity_FogColor;
  let x_1603 : vec3<f32> = ((vec3<f32>(x_1595, x_1595, x_1595) * vec3<f32>(x_1597.x, x_1597.y, x_1597.z)) + vec3<f32>(x_1601.x, x_1601.y, x_1601.z));
  let x_1604 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1603.x, x_1603.y, x_1603.z, x_1604.w);
  let x_1609 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1609 == 1.0f);
  let x_1611 : bool = u_xlatb0;
  if (x_1611) {
    let x_1616 : f32 = u_xlat1.x;
    x_1612 = x_1616;
  } else {
    x_1612 = 1.0f;
  }
  let x_1618 : f32 = x_1612;
  SV_Target0.w = x_1618;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

