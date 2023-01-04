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

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_157 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_387 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_454 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_901 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1014 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlat3 : vec3<f32>;
  var x_103 : f32;
  var x_117 : f32;
  var x_129 : f32;
  var u_xlat42 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat19 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlatb6 : bool;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat48 : f32;
  var x_542 : f32;
  var x_553 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat35 : vec2<f32>;
  var u_xlatu35 : u32;
  var u_xlati49 : i32;
  var u_xlati35 : i32;
  var u_xlati51 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb35 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var u_xlat39 : vec2<f32>;
  var x_1316 : f32;
  var x_1329 : f32;
  var x_1381 : f32;
  var x_1393 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1532 : f32;
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
  u_xlatb42 = (x_69 == 0.0f);
  let x_75 : vec3<f32> = vs_TEXCOORD1;
  let x_80 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_81 : vec3<f32> = (-(x_75) + x_80);
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_86 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat44 = dot(vec3<f32>(x_86.x, x_86.y, x_86.z), vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_91);
  let x_93 : f32 = u_xlat44;
  let x_95 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = (vec3<f32>(x_93, x_93, x_93) * vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_102 : bool = u_xlatb42;
  if (x_102) {
    let x_107 : f32 = u_xlat2.x;
    x_103 = x_107;
  } else {
    let x_113 : f32 = x_44.unity_MatrixV[0i].z;
    x_103 = x_113;
  }
  let x_114 : f32 = x_103;
  u_xlat3.x = x_114;
  let x_116 : bool = u_xlatb42;
  if (x_116) {
    let x_122 : f32 = u_xlat2.y;
    x_117 = x_122;
  } else {
    let x_125 : f32 = x_44.unity_MatrixV[1i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.y = x_126;
  let x_128 : bool = u_xlatb42;
  if (x_128) {
    let x_133 : f32 = u_xlat2.z;
    x_129 = x_133;
  } else {
    let x_136 : f32 = x_44.unity_MatrixV[2i].z;
    x_129 = x_136;
  }
  let x_137 : f32 = x_129;
  u_xlat3.z = x_137;
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  let x_142 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_141, x_142);
  let x_144 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_144);
  let x_146 : f32 = u_xlat42;
  let x_148 : vec3<f32> = vs_TEXCOORD2;
  let x_149 : vec3<f32> = (vec3<f32>(x_146, x_146, x_146) * x_148);
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  u_xlat2.w = 1.0f;
  let x_160 : vec4<f32> = x_157.unity_SHAr;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_157.unity_SHAg;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_166, x_167);
  let x_172 : vec4<f32> = x_157.unity_SHAb;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_172, x_173);
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_177.y, x_177.z, x_177.z, x_177.x) * vec4<f32>(x_179.x, x_179.y, x_179.z, x_179.z));
  let x_185 : vec4<f32> = x_157.unity_SHBr;
  let x_186 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_157.unity_SHBg;
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_157.unity_SHBb;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_197, x_198);
  let x_202 : f32 = u_xlat2.y;
  let x_204 : f32 = u_xlat2.y;
  u_xlat42 = (x_202 * x_204);
  let x_207 : f32 = u_xlat2.x;
  let x_209 : f32 = u_xlat2.x;
  let x_211 : f32 = u_xlat42;
  u_xlat42 = ((x_207 * x_209) + -(x_211));
  let x_216 : vec4<f32> = x_157.unity_SHC;
  let x_218 : f32 = u_xlat42;
  let x_221 : vec4<f32> = u_xlat6;
  let x_223 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218, x_218, x_218)) + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec3<f32> = u_xlat4;
  let x_227 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_226 + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_230, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_235 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_236 : vec2<f32> = vec2<f32>(x_235.x, x_235.y);
  let x_240 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_236.x, x_236.y));
  let x_241 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_240.x, x_240.y, x_241.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat5;
  let x_245 : vec4<f32> = hlslcc_FragCoord;
  let x_247 : vec2<f32> = (vec2<f32>(x_243.x, x_243.y) * vec2<f32>(x_245.x, x_245.y));
  let x_248 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_247.x, x_247.y, x_248.z, x_248.w);
  let x_251 : f32 = u_xlat5.y;
  let x_254 : f32 = x_44.x_ScaleBiasRt.x;
  let x_257 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_251 * x_254) + x_257);
  let x_259 : f32 = u_xlat42;
  u_xlat5.z = (-(x_259) + 1.0f);
  let x_264 : f32 = x_57.x_Metallic;
  u_xlat42 = ((-(x_264) * 0.959999979f) + 0.959999979f);
  let x_269 : f32 = u_xlat42;
  let x_272 : f32 = x_57.x_Smoothness;
  u_xlat44 = (-(x_269) + x_272);
  let x_275 : f32 = u_xlat42;
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_275, x_275, x_275) * vec3<f32>(x_277.y, x_277.z, x_277.w));
  let x_280 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = x_57.x_BaseColor;
  let x_288 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_283.x, x_283.y, x_283.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : f32 = x_57.x_Metallic;
  let x_294 : f32 = x_57.x_Metallic;
  let x_296 : f32 = x_57.x_Metallic;
  let x_297 : vec3<f32> = vec3<f32>(x_292, x_294, x_296);
  let x_302 : vec4<f32> = u_xlat0;
  let x_307 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_302.x, x_302.y, x_302.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : f32 = x_57.x_Smoothness;
  u_xlat42 = (-(x_311) + 1.0f);
  let x_315 : f32 = u_xlat42;
  let x_316 : f32 = u_xlat42;
  u_xlat45 = (x_315 * x_316);
  let x_318 : f32 = u_xlat45;
  u_xlat45 = max(x_318, 0.0078125f);
  let x_322 : f32 = u_xlat45;
  let x_323 : f32 = u_xlat45;
  u_xlat46 = (x_322 * x_323);
  let x_325 : f32 = u_xlat44;
  u_xlat44 = (x_325 + 1.0f);
  let x_327 : f32 = u_xlat44;
  u_xlat44 = clamp(x_327, 0.0f, 1.0f);
  let x_330 : f32 = u_xlat45;
  u_xlat19 = ((x_330 * 4.0f) + 2.0f);
  let x_340 : vec4<f32> = u_xlat5;
  let x_343 : f32 = x_44.x_GlobalMipBias.x;
  let x_344 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_340.x, x_340.z), x_343);
  u_xlat5.x = x_344.x;
  let x_349 : f32 = u_xlat5.x;
  u_xlat33 = (x_349 + -1.0f);
  let x_354 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_355 : f32 = u_xlat33;
  u_xlat33 = ((x_354 * x_355) + 1.0f);
  let x_359 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_359, 1.0f);
  let x_364 : vec4<f32> = vs_TEXCOORD6;
  let x_365 : vec2<f32> = vec2<f32>(x_364.x, x_364.y);
  let x_367 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_365.x, x_365.y, x_367);
  let x_380 : vec3<f32> = txVec0;
  let x_382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_380.xy, x_380.z);
  u_xlat47 = x_382;
  let x_389 : f32 = x_387.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_389) + 1.0f);
  let x_393 : f32 = u_xlat47;
  let x_395 : f32 = x_387.x_MainLightShadowParams.x;
  let x_398 : f32 = u_xlat6.x;
  u_xlat47 = ((x_393 * x_395) + x_398);
  let x_402 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_402);
  let x_406 : f32 = vs_TEXCOORD6.z;
  u_xlatb20 = (x_406 >= 1.0f);
  let x_408 : bool = u_xlatb20;
  let x_409 : bool = u_xlatb6;
  u_xlatb6 = (x_408 | x_409);
  let x_411 : bool = u_xlatb6;
  let x_412 : f32 = u_xlat47;
  u_xlat47 = select(x_412, 1.0f, x_411);
  let x_414 : vec3<f32> = vs_TEXCOORD1;
  let x_416 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_418 : vec3<f32> = (x_414 + -(x_416));
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat6;
  let x_423 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_428 : f32 = u_xlat6.x;
  let x_430 : f32 = x_387.x_MainLightShadowParams.z;
  let x_433 : f32 = x_387.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_428 * x_430) + x_433);
  let x_437 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_437, 0.0f, 1.0f);
  let x_441 : f32 = u_xlat47;
  u_xlat20 = (-(x_441) + 1.0f);
  let x_445 : f32 = u_xlat6.x;
  let x_446 : f32 = u_xlat20;
  let x_448 : f32 = u_xlat47;
  u_xlat47 = ((x_445 * x_446) + x_448);
  let x_456 : f32 = x_454.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_456 == -1.0f));
  let x_458 : bool = u_xlatb6;
  if (x_458) {
    let x_461 : vec3<f32> = vs_TEXCOORD1;
    let x_464 : vec4<f32> = x_454.x_MainLightWorldToLight[1i];
    let x_466 : vec2<f32> = (vec2<f32>(x_461.y, x_461.y) * vec2<f32>(x_464.x, x_464.y));
    let x_467 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
    let x_470 : vec4<f32> = x_454.x_MainLightWorldToLight[0i];
    let x_472 : vec3<f32> = vs_TEXCOORD1;
    let x_475 : vec4<f32> = u_xlat6;
    let x_477 : vec2<f32> = ((vec2<f32>(x_470.x, x_470.y) * vec2<f32>(x_472.x, x_472.x)) + vec2<f32>(x_475.x, x_475.y));
    let x_478 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
    let x_481 : vec4<f32> = x_454.x_MainLightWorldToLight[2i];
    let x_483 : vec3<f32> = vs_TEXCOORD1;
    let x_486 : vec4<f32> = u_xlat6;
    let x_488 : vec2<f32> = ((vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_483.z, x_483.z)) + vec2<f32>(x_486.x, x_486.y));
    let x_489 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
    let x_491 : vec4<f32> = u_xlat6;
    let x_495 : vec4<f32> = x_454.x_MainLightWorldToLight[3i];
    let x_497 : vec2<f32> = (vec2<f32>(x_491.x, x_491.y) + vec2<f32>(x_495.x, x_495.y));
    let x_498 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
    let x_500 : vec4<f32> = u_xlat6;
    let x_505 : vec2<f32> = ((vec2<f32>(x_500.x, x_500.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_506 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
    let x_513 : vec4<f32> = u_xlat6;
    let x_516 : f32 = x_44.x_GlobalMipBias.x;
    let x_517 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_513.x, x_513.y), x_516);
    u_xlat6 = x_517;
    let x_522 : f32 = x_454.x_MainLightCookieTextureFormat;
    let x_524 : f32 = x_454.x_MainLightCookieTextureFormat;
    let x_526 : f32 = x_454.x_MainLightCookieTextureFormat;
    let x_528 : f32 = x_454.x_MainLightCookieTextureFormat;
    let x_529 : vec4<f32> = vec4<f32>(x_522, x_524, x_526, x_528);
    let x_537 : vec4<bool> = (vec4<f32>(x_529.x, x_529.y, x_529.z, x_529.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_537.x, x_537.y);
    let x_541 : bool = u_xlatb7.y;
    if (x_541) {
      let x_546 : f32 = u_xlat6.w;
      x_542 = x_546;
    } else {
      let x_549 : f32 = u_xlat6.x;
      x_542 = x_549;
    }
    let x_550 : f32 = x_542;
    u_xlat48 = x_550;
    let x_552 : bool = u_xlatb7.x;
    if (x_552) {
      let x_556 : vec4<f32> = u_xlat6;
      x_553 = vec3<f32>(x_556.x, x_556.y, x_556.z);
    } else {
      let x_559 : f32 = u_xlat48;
      x_553 = vec3<f32>(x_559, x_559, x_559);
    }
    let x_561 : vec3<f32> = x_553;
    let x_562 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_568 : vec4<f32> = u_xlat6;
  let x_571 : vec4<f32> = x_44.x_MainLightColor;
  let x_573 : vec3<f32> = (vec3<f32>(x_568.x, x_568.y, x_568.z) * vec3<f32>(x_571.x, x_571.y, x_571.z));
  let x_574 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_576 : f32 = u_xlat33;
  let x_578 : vec4<f32> = u_xlat6;
  let x_580 : vec3<f32> = (vec3<f32>(x_576, x_576, x_576) * vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec3<f32> = u_xlat3;
  let x_585 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(-(x_583), vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : f32 = u_xlat48;
  let x_589 : f32 = u_xlat48;
  u_xlat48 = (x_588 + x_589);
  let x_592 : vec4<f32> = u_xlat2;
  let x_594 : f32 = u_xlat48;
  let x_598 : vec3<f32> = u_xlat3;
  let x_600 : vec3<f32> = ((vec3<f32>(x_592.x, x_592.y, x_592.z) * -(vec3<f32>(x_594, x_594, x_594))) + -(x_598));
  let x_601 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat2;
  let x_605 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(vec3<f32>(x_603.x, x_603.y, x_603.z), x_605);
  let x_607 : f32 = u_xlat48;
  u_xlat48 = clamp(x_607, 0.0f, 1.0f);
  let x_609 : f32 = u_xlat48;
  u_xlat48 = (-(x_609) + 1.0f);
  let x_612 : f32 = u_xlat48;
  let x_613 : f32 = u_xlat48;
  u_xlat48 = (x_612 * x_613);
  let x_615 : f32 = u_xlat48;
  let x_616 : f32 = u_xlat48;
  u_xlat48 = (x_615 * x_616);
  let x_619 : f32 = u_xlat42;
  u_xlat49 = ((-(x_619) * 0.699999988f) + 1.700000048f);
  let x_625 : f32 = u_xlat42;
  let x_626 : f32 = u_xlat49;
  u_xlat42 = (x_625 * x_626);
  let x_628 : f32 = u_xlat42;
  u_xlat42 = (x_628 * 6.0f);
  let x_639 : vec4<f32> = u_xlat7;
  let x_641 : f32 = u_xlat42;
  let x_642 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_639.x, x_639.y, x_639.z), x_641);
  u_xlat7 = x_642;
  let x_644 : f32 = u_xlat7.w;
  u_xlat42 = (x_644 + -1.0f);
  let x_647 : f32 = x_157.unity_SpecCube0_HDR.w;
  let x_648 : f32 = u_xlat42;
  u_xlat42 = ((x_647 * x_648) + 1.0f);
  let x_651 : f32 = u_xlat42;
  u_xlat42 = max(x_651, 0.0f);
  let x_653 : f32 = u_xlat42;
  u_xlat42 = log2(x_653);
  let x_655 : f32 = u_xlat42;
  let x_657 : f32 = x_157.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_655 * x_657);
  let x_659 : f32 = u_xlat42;
  u_xlat42 = exp2(x_659);
  let x_661 : f32 = u_xlat42;
  let x_663 : f32 = x_157.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_661 * x_663);
  let x_665 : vec4<f32> = u_xlat7;
  let x_667 : f32 = u_xlat42;
  let x_669 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(x_667, x_667, x_667));
  let x_670 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_674 : f32 = u_xlat45;
  let x_676 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_674, x_674) * vec2<f32>(x_676, x_676)) + vec2<f32>(-1.0f, 1.0f));
  let x_682 : f32 = u_xlat8.y;
  u_xlat42 = (1.0f / x_682);
  let x_685 : vec4<f32> = u_xlat0;
  let x_688 : f32 = u_xlat44;
  u_xlat22 = (-(vec3<f32>(x_685.x, x_685.y, x_685.z)) + vec3<f32>(x_688, x_688, x_688));
  let x_691 : f32 = u_xlat48;
  let x_693 : vec3<f32> = u_xlat22;
  let x_695 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_691, x_691, x_691) * x_693) + vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : f32 = u_xlat42;
  let x_700 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_698, x_698, x_698) * x_700);
  let x_702 : vec4<f32> = u_xlat7;
  let x_704 : vec3<f32> = u_xlat22;
  let x_705 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) * x_704);
  let x_706 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec3<f32> = u_xlat4;
  let x_709 : vec3<f32> = u_xlat15;
  let x_711 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_708 * x_709) + vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : f32 = u_xlat47;
  let x_717 : f32 = x_157.unity_LightData.z;
  u_xlat42 = (x_714 * x_717);
  let x_719 : vec4<f32> = u_xlat2;
  let x_722 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_719.x, x_719.y, x_719.z), vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : f32 = u_xlat44;
  u_xlat44 = clamp(x_725, 0.0f, 1.0f);
  let x_727 : f32 = u_xlat42;
  let x_728 : f32 = u_xlat44;
  u_xlat42 = (x_727 * x_728);
  let x_730 : f32 = u_xlat42;
  let x_732 : vec4<f32> = u_xlat6;
  let x_734 : vec3<f32> = (vec3<f32>(x_730, x_730, x_730) * vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec3<f32> = u_xlat3;
  let x_739 : vec4<f32> = x_44.x_MainLightPosition;
  let x_741 : vec3<f32> = (x_737 + vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat7;
  let x_746 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_744.x, x_744.y, x_744.z), vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : f32 = u_xlat42;
  u_xlat42 = max(x_749, 1.17549435e-37f);
  let x_752 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_752);
  let x_754 : f32 = u_xlat42;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec3<f32> = (vec3<f32>(x_754, x_754, x_754) * vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat2;
  let x_763 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_761.x, x_761.y, x_761.z), vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : f32 = u_xlat42;
  u_xlat42 = clamp(x_766, 0.0f, 1.0f);
  let x_769 : vec4<f32> = x_44.x_MainLightPosition;
  let x_771 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_769.x, x_769.y, x_769.z), vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : f32 = u_xlat44;
  u_xlat44 = clamp(x_774, 0.0f, 1.0f);
  let x_776 : f32 = u_xlat42;
  let x_777 : f32 = u_xlat42;
  u_xlat42 = (x_776 * x_777);
  let x_779 : f32 = u_xlat42;
  let x_781 : f32 = u_xlat8.x;
  u_xlat42 = ((x_779 * x_781) + 1.000010014f);
  let x_785 : f32 = u_xlat44;
  let x_786 : f32 = u_xlat44;
  u_xlat44 = (x_785 * x_786);
  let x_788 : f32 = u_xlat42;
  let x_789 : f32 = u_xlat42;
  u_xlat42 = (x_788 * x_789);
  let x_791 : f32 = u_xlat44;
  u_xlat44 = max(x_791, 0.100000001f);
  let x_794 : f32 = u_xlat42;
  let x_795 : f32 = u_xlat44;
  u_xlat42 = (x_794 * x_795);
  let x_797 : f32 = u_xlat19;
  let x_798 : f32 = u_xlat42;
  u_xlat42 = (x_797 * x_798);
  let x_800 : f32 = u_xlat46;
  let x_801 : f32 = u_xlat42;
  u_xlat42 = (x_800 / x_801);
  let x_803 : vec4<f32> = u_xlat0;
  let x_805 : f32 = u_xlat42;
  let x_808 : vec3<f32> = u_xlat15;
  let x_809 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_805, x_805, x_805)) + x_808);
  let x_810 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec4<f32> = u_xlat6;
  let x_814 : vec4<f32> = u_xlat7;
  let x_816 : vec3<f32> = (vec3<f32>(x_812.x, x_812.y, x_812.z) * vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_820 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_822 : f32 = x_157.unity_LightData.y;
  u_xlat42 = min(x_820, x_822);
  let x_826 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_826));
  let x_830 : f32 = x_454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_832 : f32 = x_454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_834 : f32 = x_454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_836 : f32 = x_454.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_837 : vec4<f32> = vec4<f32>(x_830, x_832, x_834, x_836);
  let x_843 : vec4<bool> = (vec4<f32>(x_837.x, x_837.y, x_837.z, x_837.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_843.x, x_843.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_854 : u32 = u_xlatu_loop_1;
    let x_855 : u32 = u_xlatu42;
    if ((x_854 < x_855)) {
    } else {
      break;
    }
    let x_858 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_858 >> 2u);
    let x_862 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_862 & 3u));
    let x_865 : u32 = u_xlatu45;
    let x_868 : vec4<f32> = x_157.unity_LightIndices[bitcast<i32>(x_865)];
    let x_878 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_883 : vec4<u32> = indexable[x_878];
    u_xlat45 = dot(x_868, bitcast<vec4<f32>>(x_883));
    let x_886 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_886));
    let x_890 : vec3<f32> = vs_TEXCOORD1;
    let x_902 : u32 = u_xlatu45;
    let x_905 : vec4<f32> = x_901.x_AdditionalLightsPosition[bitcast<i32>(x_902)];
    let x_908 : u32 = u_xlatu45;
    let x_911 : vec4<f32> = x_901.x_AdditionalLightsPosition[bitcast<i32>(x_908)];
    u_xlat9 = ((-(x_890) * vec3<f32>(x_905.w, x_905.w, x_905.w)) + vec3<f32>(x_911.x, x_911.y, x_911.z));
    let x_914 : vec3<f32> = u_xlat9;
    let x_915 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_914, x_915);
    let x_917 : f32 = u_xlat47;
    u_xlat47 = max(x_917, 6.10351562e-05f);
    let x_920 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_920);
    let x_923 : f32 = u_xlat48;
    let x_925 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_923, x_923, x_923) * x_925);
    let x_928 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_928);
    let x_931 : f32 = u_xlat47;
    let x_932 : u32 = u_xlatu45;
    let x_935 : f32 = x_901.x_AdditionalLightsAttenuation[bitcast<i32>(x_932)].x;
    u_xlat47 = (x_931 * x_935);
    let x_937 : f32 = u_xlat47;
    let x_939 : f32 = u_xlat47;
    u_xlat47 = ((-(x_937) * x_939) + 1.0f);
    let x_942 : f32 = u_xlat47;
    u_xlat47 = max(x_942, 0.0f);
    let x_944 : f32 = u_xlat47;
    let x_945 : f32 = u_xlat47;
    u_xlat47 = (x_944 * x_945);
    let x_947 : f32 = u_xlat47;
    let x_949 : f32 = u_xlat35.x;
    u_xlat47 = (x_947 * x_949);
    let x_951 : u32 = u_xlatu45;
    let x_954 : vec4<f32> = x_901.x_AdditionalLightsSpotDir[bitcast<i32>(x_951)];
    let x_956 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_954.x, x_954.y, x_954.z), x_956);
    let x_960 : f32 = u_xlat35.x;
    let x_961 : u32 = u_xlatu45;
    let x_964 : f32 = x_901.x_AdditionalLightsAttenuation[bitcast<i32>(x_961)].z;
    let x_966 : u32 = u_xlatu45;
    let x_969 : f32 = x_901.x_AdditionalLightsAttenuation[bitcast<i32>(x_966)].w;
    u_xlat35.x = ((x_960 * x_964) + x_969);
    let x_973 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_973, 0.0f, 1.0f);
    let x_977 : f32 = u_xlat35.x;
    let x_979 : f32 = u_xlat35.x;
    u_xlat35.x = (x_977 * x_979);
    let x_982 : f32 = u_xlat47;
    let x_984 : f32 = u_xlat35.x;
    u_xlat47 = (x_982 * x_984);
    let x_987 : u32 = u_xlatu45;
    u_xlatu35 = (x_987 >> 5u);
    let x_990 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_990) & 31i)));
    let x_996 : i32 = u_xlati49;
    let x_998 : u32 = u_xlatu35;
    let x_1001 : f32 = x_454.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_998)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_996) & bitcast<u32>(x_1001)));
    let x_1005 : i32 = u_xlati35;
    if ((x_1005 != 0i)) {
      let x_1015 : u32 = u_xlatu45;
      let x_1018 : f32 = x_1014.x_AdditionalLightsLightTypes[bitcast<i32>(x_1015)].el;
      u_xlati35 = i32(x_1018);
      let x_1020 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1020 != 0i));
      let x_1024 : u32 = u_xlatu45;
      u_xlati51 = (bitcast<i32>(x_1024) << bitcast<u32>(2i));
      let x_1027 : i32 = u_xlati49;
      if ((x_1027 != 0i)) {
        let x_1032 : vec3<f32> = vs_TEXCOORD1;
        let x_1034 : i32 = u_xlati51;
        let x_1037 : i32 = u_xlati51;
        let x_1041 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[((x_1034 + 1i) / 4i)][((x_1037 + 1i) % 4i)];
        let x_1043 : vec3<f32> = (vec3<f32>(x_1032.y, x_1032.y, x_1032.y) * vec3<f32>(x_1041.x, x_1041.y, x_1041.w));
        let x_1044 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
        let x_1046 : i32 = u_xlati51;
        let x_1048 : i32 = u_xlati51;
        let x_1051 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[(x_1046 / 4i)][(x_1048 % 4i)];
        let x_1053 : vec3<f32> = vs_TEXCOORD1;
        let x_1056 : vec4<f32> = u_xlat11;
        let x_1058 : vec3<f32> = ((vec3<f32>(x_1051.x, x_1051.y, x_1051.w) * vec3<f32>(x_1053.x, x_1053.x, x_1053.x)) + vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
        let x_1059 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
        let x_1061 : i32 = u_xlati51;
        let x_1064 : i32 = u_xlati51;
        let x_1068 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[((x_1061 + 2i) / 4i)][((x_1064 + 2i) % 4i)];
        let x_1070 : vec3<f32> = vs_TEXCOORD1;
        let x_1073 : vec4<f32> = u_xlat11;
        let x_1075 : vec3<f32> = ((vec3<f32>(x_1068.x, x_1068.y, x_1068.w) * vec3<f32>(x_1070.z, x_1070.z, x_1070.z)) + vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
        let x_1076 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat11;
        let x_1080 : i32 = u_xlati51;
        let x_1083 : i32 = u_xlati51;
        let x_1087 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[((x_1080 + 3i) / 4i)][((x_1083 + 3i) % 4i)];
        let x_1089 : vec3<f32> = (vec3<f32>(x_1078.x, x_1078.y, x_1078.z) + vec3<f32>(x_1087.x, x_1087.y, x_1087.w));
        let x_1090 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat11;
        let x_1094 : vec4<f32> = u_xlat11;
        let x_1096 : vec2<f32> = (vec2<f32>(x_1092.x, x_1092.y) / vec2<f32>(x_1094.z, x_1094.z));
        let x_1097 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1099 : vec4<f32> = u_xlat11;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1099.x, x_1099.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1103 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat11;
        let x_1109 : vec2<f32> = clamp(vec2<f32>(x_1105.x, x_1105.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1110 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
        let x_1112 : u32 = u_xlatu45;
        let x_1115 : vec4<f32> = x_1014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1112)];
        let x_1117 : vec4<f32> = u_xlat11;
        let x_1120 : u32 = u_xlatu45;
        let x_1123 : vec4<f32> = x_1014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1120)];
        let x_1125 : vec2<f32> = ((vec2<f32>(x_1115.x, x_1115.y) * vec2<f32>(x_1117.x, x_1117.y)) + vec2<f32>(x_1123.z, x_1123.w));
        let x_1126 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
      } else {
        let x_1130 : i32 = u_xlati35;
        u_xlatb35 = (x_1130 == 1i);
        let x_1132 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1132);
        let x_1134 : i32 = u_xlati35;
        if ((x_1134 != 0i)) {
          let x_1138 : vec3<f32> = vs_TEXCOORD1;
          let x_1140 : i32 = u_xlati51;
          let x_1143 : i32 = u_xlati51;
          let x_1147 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[((x_1140 + 1i) / 4i)][((x_1143 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1138.y, x_1138.y) * vec2<f32>(x_1147.x, x_1147.y));
          let x_1150 : i32 = u_xlati51;
          let x_1152 : i32 = u_xlati51;
          let x_1155 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[(x_1150 / 4i)][(x_1152 % 4i)];
          let x_1157 : vec3<f32> = vs_TEXCOORD1;
          let x_1160 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(x_1157.x, x_1157.x)) + x_1160);
          let x_1162 : i32 = u_xlati51;
          let x_1165 : i32 = u_xlati51;
          let x_1169 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[((x_1162 + 2i) / 4i)][((x_1165 + 2i) % 4i)];
          let x_1171 : vec3<f32> = vs_TEXCOORD1;
          let x_1174 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1169.x, x_1169.y) * vec2<f32>(x_1171.z, x_1171.z)) + x_1174);
          let x_1176 : vec2<f32> = u_xlat35;
          let x_1177 : i32 = u_xlati51;
          let x_1180 : i32 = u_xlati51;
          let x_1184 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[((x_1177 + 3i) / 4i)][((x_1180 + 3i) % 4i)];
          u_xlat35 = (x_1176 + vec2<f32>(x_1184.x, x_1184.y));
          let x_1187 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1187 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1190 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1190);
          let x_1192 : u32 = u_xlatu45;
          let x_1195 : vec4<f32> = x_1014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1192)];
          let x_1197 : vec2<f32> = u_xlat35;
          let x_1199 : u32 = u_xlatu45;
          let x_1202 : vec4<f32> = x_1014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1199)];
          let x_1204 : vec2<f32> = ((vec2<f32>(x_1195.x, x_1195.y) * x_1197) + vec2<f32>(x_1202.z, x_1202.w));
          let x_1205 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1205.w);
        } else {
          let x_1209 : vec3<f32> = vs_TEXCOORD1;
          let x_1211 : i32 = u_xlati51;
          let x_1214 : i32 = u_xlati51;
          let x_1218 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[((x_1211 + 1i) / 4i)][((x_1214 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1209.y, x_1209.y, x_1209.y, x_1209.y) * x_1218);
          let x_1220 : i32 = u_xlati51;
          let x_1222 : i32 = u_xlati51;
          let x_1225 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[(x_1220 / 4i)][(x_1222 % 4i)];
          let x_1226 : vec3<f32> = vs_TEXCOORD1;
          let x_1229 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1225 * vec4<f32>(x_1226.x, x_1226.x, x_1226.x, x_1226.x)) + x_1229);
          let x_1231 : i32 = u_xlati51;
          let x_1234 : i32 = u_xlati51;
          let x_1238 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[((x_1231 + 2i) / 4i)][((x_1234 + 2i) % 4i)];
          let x_1239 : vec3<f32> = vs_TEXCOORD1;
          let x_1242 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1238 * vec4<f32>(x_1239.z, x_1239.z, x_1239.z, x_1239.z)) + x_1242);
          let x_1244 : vec4<f32> = u_xlat12;
          let x_1245 : i32 = u_xlati51;
          let x_1248 : i32 = u_xlati51;
          let x_1252 : vec4<f32> = x_1014.x_AdditionalLightsWorldToLights[((x_1245 + 3i) / 4i)][((x_1248 + 3i) % 4i)];
          u_xlat12 = (x_1244 + x_1252);
          let x_1254 : vec4<f32> = u_xlat12;
          let x_1256 : vec4<f32> = u_xlat12;
          let x_1258 : vec3<f32> = (vec3<f32>(x_1254.x, x_1254.y, x_1254.z) / vec3<f32>(x_1256.w, x_1256.w, x_1256.w));
          let x_1259 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
          let x_1261 : vec4<f32> = u_xlat12;
          let x_1263 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1261.x, x_1261.y, x_1261.z), vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
          let x_1268 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1268);
          let x_1271 : vec2<f32> = u_xlat35;
          let x_1273 : vec4<f32> = u_xlat12;
          let x_1275 : vec3<f32> = (vec3<f32>(x_1271.x, x_1271.x, x_1271.x) * vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
          let x_1276 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
          let x_1278 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1278.x, x_1278.y, x_1278.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1285 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1285, 0.000001f);
          let x_1290 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1290);
          let x_1294 : vec2<f32> = u_xlat35;
          let x_1296 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1294.x, x_1294.x, x_1294.x) * vec3<f32>(x_1296.z, x_1296.x, x_1296.y));
          let x_1300 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1300);
          let x_1304 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1304, 0.0f, 1.0f);
          let x_1308 : vec3<f32> = u_xlat13;
          let x_1311 : vec4<bool> = (vec4<f32>(x_1308.y, x_1308.z, x_1308.y, x_1308.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1311.x, x_1311.y);
          let x_1315 : bool = u_xlatb39.x;
          if (x_1315) {
            let x_1320 : f32 = u_xlat13.x;
            x_1316 = x_1320;
          } else {
            let x_1323 : f32 = u_xlat13.x;
            x_1316 = -(x_1323);
          }
          let x_1325 : f32 = x_1316;
          u_xlat39.x = x_1325;
          let x_1328 : bool = u_xlatb39.y;
          if (x_1328) {
            let x_1333 : f32 = u_xlat13.x;
            x_1329 = x_1333;
          } else {
            let x_1336 : f32 = u_xlat13.x;
            x_1329 = -(x_1336);
          }
          let x_1338 : f32 = x_1329;
          u_xlat39.y = x_1338;
          let x_1340 : vec4<f32> = u_xlat12;
          let x_1342 : vec2<f32> = u_xlat35;
          let x_1345 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1342.x, x_1342.x)) + x_1345);
          let x_1347 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1347 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1350 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1350, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1354 : u32 = u_xlatu45;
          let x_1357 : vec4<f32> = x_1014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1354)];
          let x_1359 : vec2<f32> = u_xlat35;
          let x_1361 : u32 = u_xlatu45;
          let x_1364 : vec4<f32> = x_1014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1361)];
          let x_1366 : vec2<f32> = ((vec2<f32>(x_1357.x, x_1357.y) * x_1359) + vec2<f32>(x_1364.z, x_1364.w));
          let x_1367 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        }
      }
      let x_1374 : vec4<f32> = u_xlat11;
      let x_1377 : f32 = x_44.x_GlobalMipBias.x;
      let x_1378 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1374.x, x_1374.y), x_1377);
      u_xlat11 = x_1378;
      let x_1380 : bool = u_xlatb7.y;
      if (x_1380) {
        let x_1385 : f32 = u_xlat11.w;
        x_1381 = x_1385;
      } else {
        let x_1388 : f32 = u_xlat11.x;
        x_1381 = x_1388;
      }
      let x_1389 : f32 = x_1381;
      u_xlat35.x = x_1389;
      let x_1392 : bool = u_xlatb7.x;
      if (x_1392) {
        let x_1396 : vec4<f32> = u_xlat11;
        x_1393 = vec3<f32>(x_1396.x, x_1396.y, x_1396.z);
      } else {
        let x_1399 : vec2<f32> = u_xlat35;
        x_1393 = vec3<f32>(x_1399.x, x_1399.x, x_1399.x);
      }
      let x_1401 : vec3<f32> = x_1393;
      let x_1402 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1408 : vec4<f32> = u_xlat11;
    let x_1410 : u32 = u_xlatu45;
    let x_1413 : vec4<f32> = x_901.x_AdditionalLightsColor[bitcast<i32>(x_1410)];
    let x_1415 : vec3<f32> = (vec3<f32>(x_1408.x, x_1408.y, x_1408.z) * vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
    let x_1416 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
    let x_1418 : f32 = u_xlat33;
    let x_1420 : vec4<f32> = u_xlat11;
    let x_1422 : vec3<f32> = (vec3<f32>(x_1418, x_1418, x_1418) * vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
    let x_1423 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
    let x_1425 : vec4<f32> = u_xlat2;
    let x_1427 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1425.x, x_1425.y, x_1425.z), x_1427);
    let x_1429 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1429, 0.0f, 1.0f);
    let x_1431 : f32 = u_xlat45;
    let x_1432 : f32 = u_xlat47;
    u_xlat45 = (x_1431 * x_1432);
    let x_1434 : f32 = u_xlat45;
    let x_1436 : vec4<f32> = u_xlat11;
    let x_1438 : vec3<f32> = (vec3<f32>(x_1434, x_1434, x_1434) * vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1439 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
    let x_1441 : vec3<f32> = u_xlat9;
    let x_1442 : f32 = u_xlat48;
    let x_1445 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1441 * vec3<f32>(x_1442, x_1442, x_1442)) + x_1445);
    let x_1447 : vec3<f32> = u_xlat9;
    let x_1448 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1447, x_1448);
    let x_1450 : f32 = u_xlat45;
    u_xlat45 = max(x_1450, 1.17549435e-37f);
    let x_1452 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1452);
    let x_1454 : f32 = u_xlat45;
    let x_1456 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1454, x_1454, x_1454) * x_1456);
    let x_1458 : vec4<f32> = u_xlat2;
    let x_1460 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1458.x, x_1458.y, x_1458.z), x_1460);
    let x_1462 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1462, 0.0f, 1.0f);
    let x_1464 : vec3<f32> = u_xlat10;
    let x_1465 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1464, x_1465);
    let x_1467 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1467, 0.0f, 1.0f);
    let x_1469 : f32 = u_xlat45;
    let x_1470 : f32 = u_xlat45;
    u_xlat45 = (x_1469 * x_1470);
    let x_1472 : f32 = u_xlat45;
    let x_1474 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1472 * x_1474) + 1.000010014f);
    let x_1477 : f32 = u_xlat47;
    let x_1478 : f32 = u_xlat47;
    u_xlat47 = (x_1477 * x_1478);
    let x_1480 : f32 = u_xlat45;
    let x_1481 : f32 = u_xlat45;
    u_xlat45 = (x_1480 * x_1481);
    let x_1483 : f32 = u_xlat47;
    u_xlat47 = max(x_1483, 0.100000001f);
    let x_1485 : f32 = u_xlat45;
    let x_1486 : f32 = u_xlat47;
    u_xlat45 = (x_1485 * x_1486);
    let x_1488 : f32 = u_xlat19;
    let x_1489 : f32 = u_xlat45;
    u_xlat45 = (x_1488 * x_1489);
    let x_1491 : f32 = u_xlat46;
    let x_1492 : f32 = u_xlat45;
    u_xlat45 = (x_1491 / x_1492);
    let x_1494 : vec4<f32> = u_xlat0;
    let x_1496 : f32 = u_xlat45;
    let x_1499 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1494.x, x_1494.y, x_1494.z) * vec3<f32>(x_1496, x_1496, x_1496)) + x_1499);
    let x_1501 : vec3<f32> = u_xlat9;
    let x_1502 : vec4<f32> = u_xlat11;
    let x_1505 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1501 * vec3<f32>(x_1502.x, x_1502.y, x_1502.z)) + x_1505);

    continuing {
      let x_1507 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1507 + bitcast<u32>(1i));
    }
  }
  let x_1509 : vec3<f32> = u_xlat4;
  let x_1510 : vec4<f32> = u_xlat5;
  let x_1513 : vec4<f32> = u_xlat6;
  let x_1515 : vec3<f32> = ((x_1509 * vec3<f32>(x_1510.x, x_1510.x, x_1510.x)) + vec3<f32>(x_1513.x, x_1513.y, x_1513.z));
  let x_1516 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
  let x_1520 : vec3<f32> = u_xlat22;
  let x_1521 : vec4<f32> = u_xlat0;
  let x_1523 : vec3<f32> = (x_1520 + vec3<f32>(x_1521.x, x_1521.y, x_1521.z));
  let x_1524 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1524.w);
  let x_1529 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1529 == 1.0f);
  let x_1531 : bool = u_xlatb0;
  if (x_1531) {
    let x_1536 : f32 = u_xlat1.x;
    x_1532 = x_1536;
  } else {
    x_1532 = 1.0f;
  }
  let x_1538 : f32 = x_1532;
  SV_Target0.w = x_1538;
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

