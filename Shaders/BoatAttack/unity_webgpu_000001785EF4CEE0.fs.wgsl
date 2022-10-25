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

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_322 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_383 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_574 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_829 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_932 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb42 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat4 : vec3<f32>;
  var x_107 : f32;
  var x_121 : f32;
  var x_133 : f32;
  var u_xlat42 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat48 : f32;
  var u_xlatb48 : bool;
  var u_xlatb7 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlatb8 : vec2<bool>;
  var x_470 : f32;
  var x_481 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat49 : f32;
  var u_xlat9 : vec2<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb34 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat50 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat52 : f32;
  var u_xlatu52 : u32;
  var u_xlati11 : i32;
  var u_xlati52 : i32;
  var u_xlati25 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb52 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb25 : vec3<bool>;
  var u_xlat25 : vec3<f32>;
  var x_1248 : f32;
  var x_1261 : f32;
  var x_1323 : f32;
  var x_1334 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1485 : f32;
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
  u_xlatb42 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat44 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat44;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_106 : bool = u_xlatb42;
  if (x_106) {
    let x_111 : f32 = u_xlat3.x;
    x_107 = x_111;
  } else {
    let x_117 : f32 = x_44.unity_MatrixV[0i].z;
    x_107 = x_117;
  }
  let x_118 : f32 = x_107;
  u_xlat4.x = x_118;
  let x_120 : bool = u_xlatb42;
  if (x_120) {
    let x_126 : f32 = u_xlat3.y;
    x_121 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[1i].z;
    x_121 = x_129;
  }
  let x_130 : f32 = x_121;
  u_xlat4.y = x_130;
  let x_132 : bool = u_xlatb42;
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
  u_xlat42 = dot(x_145, x_146);
  let x_148 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat42;
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
  u_xlat42 = ((x_185 * x_188) + x_191);
  let x_193 : f32 = u_xlat42;
  u_xlat6.z = (-(x_193) + 1.0f);
  let x_198 : f32 = x_57.x_Metallic;
  u_xlat42 = ((-(x_198) * 0.959999979f) + 0.959999979f);
  let x_203 : f32 = u_xlat42;
  let x_206 : f32 = x_57.x_Smoothness;
  u_xlat44 = (-(x_203) + x_206);
  let x_209 : f32 = u_xlat42;
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_209, x_209, x_209) * vec3<f32>(x_211.y, x_211.z, x_211.w));
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
  u_xlat42 = (-(x_245) + 1.0f);
  let x_249 : f32 = u_xlat42;
  let x_250 : f32 = u_xlat42;
  u_xlat45 = (x_249 * x_250);
  let x_252 : f32 = u_xlat45;
  u_xlat45 = max(x_252, 0.0078125f);
  let x_256 : f32 = u_xlat45;
  let x_257 : f32 = u_xlat45;
  u_xlat46 = (x_256 * x_257);
  let x_259 : f32 = u_xlat44;
  u_xlat44 = (x_259 + 1.0f);
  let x_261 : f32 = u_xlat44;
  u_xlat44 = clamp(x_261, 0.0f, 1.0f);
  let x_264 : f32 = u_xlat45;
  u_xlat47 = ((x_264 * 4.0f) + 2.0f);
  let x_274 : vec3<f32> = u_xlat6;
  let x_277 : f32 = x_44.x_GlobalMipBias.x;
  let x_278 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_274.x, x_274.z), x_277);
  u_xlat6.x = x_278.x;
  let x_283 : f32 = u_xlat6.x;
  u_xlat20 = (x_283 + -1.0f);
  let x_288 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_289 : f32 = u_xlat20;
  u_xlat20 = ((x_288 * x_289) + 1.0f);
  let x_293 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_293, 1.0f);
  let x_298 : vec4<f32> = vs_TEXCOORD6;
  let x_299 : vec2<f32> = vec2<f32>(x_298.x, x_298.y);
  let x_301 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_299.x, x_299.y, x_301);
  let x_314 : vec3<f32> = txVec0;
  let x_316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_314.xy, x_314.z);
  u_xlat34 = x_316;
  let x_324 : f32 = x_322.x_MainLightShadowParams.x;
  u_xlat48 = (-(x_324) + 1.0f);
  let x_327 : f32 = u_xlat34;
  let x_329 : f32 = x_322.x_MainLightShadowParams.x;
  let x_331 : f32 = u_xlat48;
  u_xlat34 = ((x_327 * x_329) + x_331);
  let x_335 : f32 = vs_TEXCOORD6.z;
  u_xlatb48 = (0.0f >= x_335);
  let x_339 : f32 = vs_TEXCOORD6.z;
  u_xlatb7 = (x_339 >= 1.0f);
  let x_341 : bool = u_xlatb48;
  let x_342 : bool = u_xlatb7;
  u_xlatb48 = (x_341 | x_342);
  let x_344 : bool = u_xlatb48;
  let x_345 : f32 = u_xlat34;
  u_xlat34 = select(x_345, 1.0f, x_344);
  let x_348 : vec3<f32> = vs_TEXCOORD1;
  let x_350 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_352 : vec3<f32> = (x_348 + -(x_350));
  let x_353 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat7;
  let x_357 : vec4<f32> = u_xlat7;
  u_xlat48 = dot(vec3<f32>(x_355.x, x_355.y, x_355.z), vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : f32 = u_xlat48;
  let x_362 : f32 = x_322.x_MainLightShadowParams.z;
  let x_365 : f32 = x_322.x_MainLightShadowParams.w;
  u_xlat48 = ((x_360 * x_362) + x_365);
  let x_367 : f32 = u_xlat48;
  u_xlat48 = clamp(x_367, 0.0f, 1.0f);
  let x_369 : f32 = u_xlat34;
  u_xlat7.x = (-(x_369) + 1.0f);
  let x_373 : f32 = u_xlat48;
  let x_375 : f32 = u_xlat7.x;
  let x_377 : f32 = u_xlat34;
  u_xlat34 = ((x_373 * x_375) + x_377);
  let x_385 : f32 = x_383.x_MainLightCookieTextureFormat;
  u_xlatb48 = !((x_385 == -1.0f));
  let x_387 : bool = u_xlatb48;
  if (x_387) {
    let x_390 : vec3<f32> = vs_TEXCOORD1;
    let x_393 : vec4<f32> = x_383.x_MainLightWorldToLight[1i];
    let x_395 : vec2<f32> = (vec2<f32>(x_390.y, x_390.y) * vec2<f32>(x_393.x, x_393.y));
    let x_396 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
    let x_399 : vec4<f32> = x_383.x_MainLightWorldToLight[0i];
    let x_401 : vec3<f32> = vs_TEXCOORD1;
    let x_404 : vec4<f32> = u_xlat7;
    let x_406 : vec2<f32> = ((vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_401.x, x_401.x)) + vec2<f32>(x_404.x, x_404.y));
    let x_407 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
    let x_410 : vec4<f32> = x_383.x_MainLightWorldToLight[2i];
    let x_412 : vec3<f32> = vs_TEXCOORD1;
    let x_415 : vec4<f32> = u_xlat7;
    let x_417 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_412.z, x_412.z)) + vec2<f32>(x_415.x, x_415.y));
    let x_418 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
    let x_420 : vec4<f32> = u_xlat7;
    let x_424 : vec4<f32> = x_383.x_MainLightWorldToLight[3i];
    let x_426 : vec2<f32> = (vec2<f32>(x_420.x, x_420.y) + vec2<f32>(x_424.x, x_424.y));
    let x_427 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
    let x_429 : vec4<f32> = u_xlat7;
    let x_434 : vec2<f32> = ((vec2<f32>(x_429.x, x_429.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_435 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
    let x_442 : vec4<f32> = u_xlat7;
    let x_445 : f32 = x_44.x_GlobalMipBias.x;
    let x_446 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_442.x, x_442.y), x_445);
    u_xlat7 = x_446;
    let x_451 : f32 = x_383.x_MainLightCookieTextureFormat;
    let x_453 : f32 = x_383.x_MainLightCookieTextureFormat;
    let x_455 : f32 = x_383.x_MainLightCookieTextureFormat;
    let x_457 : f32 = x_383.x_MainLightCookieTextureFormat;
    let x_458 : vec4<f32> = vec4<f32>(x_451, x_453, x_455, x_457);
    let x_466 : vec4<bool> = (vec4<f32>(x_458.x, x_458.y, x_458.z, x_458.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_466.x, x_466.y);
    let x_469 : bool = u_xlatb8.y;
    if (x_469) {
      let x_474 : f32 = u_xlat7.w;
      x_470 = x_474;
    } else {
      let x_477 : f32 = u_xlat7.x;
      x_470 = x_477;
    }
    let x_478 : f32 = x_470;
    u_xlat48 = x_478;
    let x_480 : bool = u_xlatb8.x;
    if (x_480) {
      let x_484 : vec4<f32> = u_xlat7;
      x_481 = vec3<f32>(x_484.x, x_484.y, x_484.z);
    } else {
      let x_487 : f32 = u_xlat48;
      x_481 = vec3<f32>(x_487, x_487, x_487);
    }
    let x_489 : vec3<f32> = x_481;
    let x_490 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_496 : vec4<f32> = u_xlat7;
  let x_499 : vec4<f32> = x_44.x_MainLightColor;
  let x_501 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : f32 = u_xlat20;
  let x_506 : vec4<f32> = u_xlat7;
  let x_508 : vec3<f32> = (vec3<f32>(x_504, x_504, x_504) * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec3<f32> = u_xlat4;
  let x_513 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(-(x_511), x_513);
  let x_515 : f32 = u_xlat48;
  let x_516 : f32 = u_xlat48;
  u_xlat48 = (x_515 + x_516);
  let x_519 : vec3<f32> = u_xlat3;
  let x_520 : f32 = u_xlat48;
  let x_524 : vec3<f32> = u_xlat4;
  let x_526 : vec3<f32> = ((x_519 * -(vec3<f32>(x_520, x_520, x_520))) + -(x_524));
  let x_527 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec3<f32> = u_xlat3;
  let x_530 : vec3<f32> = u_xlat4;
  u_xlat48 = dot(x_529, x_530);
  let x_532 : f32 = u_xlat48;
  u_xlat48 = clamp(x_532, 0.0f, 1.0f);
  let x_534 : f32 = u_xlat48;
  u_xlat48 = (-(x_534) + 1.0f);
  let x_537 : f32 = u_xlat48;
  let x_538 : f32 = u_xlat48;
  u_xlat48 = (x_537 * x_538);
  let x_540 : f32 = u_xlat48;
  let x_541 : f32 = u_xlat48;
  u_xlat48 = (x_540 * x_541);
  let x_544 : f32 = u_xlat42;
  u_xlat49 = ((-(x_544) * 0.699999988f) + 1.700000048f);
  let x_550 : f32 = u_xlat42;
  let x_551 : f32 = u_xlat49;
  u_xlat42 = (x_550 * x_551);
  let x_553 : f32 = u_xlat42;
  u_xlat42 = (x_553 * 6.0f);
  let x_564 : vec4<f32> = u_xlat8;
  let x_566 : f32 = u_xlat42;
  let x_567 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_564.x, x_564.y, x_564.z), x_566);
  u_xlat8 = x_567;
  let x_569 : f32 = u_xlat8.w;
  u_xlat42 = (x_569 + -1.0f);
  let x_576 : f32 = x_574.unity_SpecCube0_HDR.w;
  let x_577 : f32 = u_xlat42;
  u_xlat42 = ((x_576 * x_577) + 1.0f);
  let x_580 : f32 = u_xlat42;
  u_xlat42 = max(x_580, 0.0f);
  let x_582 : f32 = u_xlat42;
  u_xlat42 = log2(x_582);
  let x_584 : f32 = u_xlat42;
  let x_586 : f32 = x_574.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_584 * x_586);
  let x_588 : f32 = u_xlat42;
  u_xlat42 = exp2(x_588);
  let x_590 : f32 = u_xlat42;
  let x_592 : f32 = x_574.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_590 * x_592);
  let x_594 : vec4<f32> = u_xlat8;
  let x_596 : f32 = u_xlat42;
  let x_598 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(x_596, x_596, x_596));
  let x_599 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_603 : f32 = u_xlat45;
  let x_605 : f32 = u_xlat45;
  u_xlat9 = ((vec2<f32>(x_603, x_603) * vec2<f32>(x_605, x_605)) + vec2<f32>(-1.0f, 1.0f));
  let x_611 : f32 = u_xlat9.y;
  u_xlat42 = (1.0f / x_611);
  let x_614 : vec4<f32> = u_xlat0;
  let x_617 : f32 = u_xlat44;
  u_xlat23 = (-(vec3<f32>(x_614.x, x_614.y, x_614.z)) + vec3<f32>(x_617, x_617, x_617));
  let x_620 : f32 = u_xlat48;
  let x_622 : vec3<f32> = u_xlat23;
  let x_624 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_620, x_620, x_620) * x_622) + vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : f32 = u_xlat42;
  let x_629 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_627, x_627, x_627) * x_629);
  let x_631 : vec4<f32> = u_xlat8;
  let x_633 : vec3<f32> = u_xlat23;
  let x_634 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) * x_633);
  let x_635 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec3<f32> = u_xlat5;
  let x_638 : vec3<f32> = u_xlat15;
  let x_640 : vec4<f32> = u_xlat8;
  u_xlat5 = ((x_637 * x_638) + vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : f32 = u_xlat34;
  let x_646 : f32 = x_574.unity_LightData.z;
  u_xlat42 = (x_643 * x_646);
  let x_648 : vec3<f32> = u_xlat3;
  let x_650 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(x_648, vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : f32 = u_xlat44;
  u_xlat44 = clamp(x_653, 0.0f, 1.0f);
  let x_655 : f32 = u_xlat42;
  let x_656 : f32 = u_xlat44;
  u_xlat42 = (x_655 * x_656);
  let x_658 : f32 = u_xlat42;
  let x_660 : vec4<f32> = u_xlat7;
  let x_662 : vec3<f32> = (vec3<f32>(x_658, x_658, x_658) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec3<f32> = u_xlat4;
  let x_667 : vec4<f32> = x_44.x_MainLightPosition;
  let x_669 : vec3<f32> = (x_665 + vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec4<f32> = u_xlat8;
  let x_674 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_672.x, x_672.y, x_672.z), vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : f32 = u_xlat42;
  u_xlat42 = max(x_677, 1.17549435e-37f);
  let x_680 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_680);
  let x_682 : f32 = u_xlat42;
  let x_684 : vec4<f32> = u_xlat8;
  let x_686 : vec3<f32> = (vec3<f32>(x_682, x_682, x_682) * vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec3<f32> = u_xlat3;
  let x_690 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_689, vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : f32 = u_xlat42;
  u_xlat42 = clamp(x_693, 0.0f, 1.0f);
  let x_696 : vec4<f32> = x_44.x_MainLightPosition;
  let x_698 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_696.x, x_696.y, x_696.z), vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : f32 = u_xlat44;
  u_xlat44 = clamp(x_701, 0.0f, 1.0f);
  let x_703 : f32 = u_xlat42;
  let x_704 : f32 = u_xlat42;
  u_xlat42 = (x_703 * x_704);
  let x_706 : f32 = u_xlat42;
  let x_708 : f32 = u_xlat9.x;
  u_xlat42 = ((x_706 * x_708) + 1.000010014f);
  let x_712 : f32 = u_xlat44;
  let x_713 : f32 = u_xlat44;
  u_xlat44 = (x_712 * x_713);
  let x_715 : f32 = u_xlat42;
  let x_716 : f32 = u_xlat42;
  u_xlat42 = (x_715 * x_716);
  let x_718 : f32 = u_xlat44;
  u_xlat44 = max(x_718, 0.100000001f);
  let x_721 : f32 = u_xlat42;
  let x_722 : f32 = u_xlat44;
  u_xlat42 = (x_721 * x_722);
  let x_724 : f32 = u_xlat47;
  let x_725 : f32 = u_xlat42;
  u_xlat42 = (x_724 * x_725);
  let x_727 : f32 = u_xlat46;
  let x_728 : f32 = u_xlat42;
  u_xlat42 = (x_727 / x_728);
  let x_730 : vec4<f32> = u_xlat0;
  let x_732 : f32 = u_xlat42;
  let x_735 : vec3<f32> = u_xlat15;
  let x_736 : vec3<f32> = ((vec3<f32>(x_730.x, x_730.y, x_730.z) * vec3<f32>(x_732, x_732, x_732)) + x_735);
  let x_737 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat7;
  let x_741 : vec4<f32> = u_xlat8;
  let x_743 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_747 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_749 : f32 = x_574.unity_LightData.y;
  u_xlat42 = min(x_747, x_749);
  let x_753 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_753));
  let x_758 : f32 = x_383.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_760 : f32 = x_383.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_762 : f32 = x_383.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_764 : f32 = x_383.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_765 : vec4<f32> = vec4<f32>(x_758, x_760, x_762, x_764);
  let x_772 : vec4<bool> = (vec4<f32>(x_765.x, x_765.y, x_765.z, x_765.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_772.x, x_772.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_783 : u32 = u_xlatu_loop_1;
    let x_784 : u32 = u_xlatu42;
    if ((x_783 < x_784)) {
    } else {
      break;
    }
    let x_787 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_787 >> 2u);
    let x_791 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_791 & 3u));
    let x_794 : u32 = u_xlatu45;
    let x_797 : vec4<f32> = x_574.unity_LightIndices[bitcast<i32>(x_794)];
    let x_807 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_812 : vec4<u32> = indexable[x_807];
    u_xlat45 = dot(x_797, bitcast<vec4<f32>>(x_812));
    let x_815 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_815));
    let x_818 : vec3<f32> = vs_TEXCOORD1;
    let x_830 : u32 = u_xlatu45;
    let x_833 : vec4<f32> = x_829.x_AdditionalLightsPosition[bitcast<i32>(x_830)];
    let x_836 : u32 = u_xlatu45;
    let x_839 : vec4<f32> = x_829.x_AdditionalLightsPosition[bitcast<i32>(x_836)];
    u_xlat23 = ((-(x_818) * vec3<f32>(x_833.w, x_833.w, x_833.w)) + vec3<f32>(x_839.x, x_839.y, x_839.z));
    let x_842 : vec3<f32> = u_xlat23;
    let x_843 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_842, x_843);
    let x_845 : f32 = u_xlat49;
    u_xlat49 = max(x_845, 6.10351562e-05f);
    let x_849 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_849);
    let x_852 : f32 = u_xlat50;
    let x_854 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_852, x_852, x_852) * x_854);
    let x_857 : f32 = u_xlat49;
    u_xlat52 = (1.0f / x_857);
    let x_859 : f32 = u_xlat49;
    let x_860 : u32 = u_xlatu45;
    let x_863 : f32 = x_829.x_AdditionalLightsAttenuation[bitcast<i32>(x_860)].x;
    u_xlat49 = (x_859 * x_863);
    let x_865 : f32 = u_xlat49;
    let x_867 : f32 = u_xlat49;
    u_xlat49 = ((-(x_865) * x_867) + 1.0f);
    let x_870 : f32 = u_xlat49;
    u_xlat49 = max(x_870, 0.0f);
    let x_872 : f32 = u_xlat49;
    let x_873 : f32 = u_xlat49;
    u_xlat49 = (x_872 * x_873);
    let x_875 : f32 = u_xlat49;
    let x_876 : f32 = u_xlat52;
    u_xlat49 = (x_875 * x_876);
    let x_878 : u32 = u_xlatu45;
    let x_881 : vec4<f32> = x_829.x_AdditionalLightsSpotDir[bitcast<i32>(x_878)];
    let x_883 : vec3<f32> = u_xlat10;
    u_xlat52 = dot(vec3<f32>(x_881.x, x_881.y, x_881.z), x_883);
    let x_885 : f32 = u_xlat52;
    let x_886 : u32 = u_xlatu45;
    let x_889 : f32 = x_829.x_AdditionalLightsAttenuation[bitcast<i32>(x_886)].z;
    let x_891 : u32 = u_xlatu45;
    let x_894 : f32 = x_829.x_AdditionalLightsAttenuation[bitcast<i32>(x_891)].w;
    u_xlat52 = ((x_885 * x_889) + x_894);
    let x_896 : f32 = u_xlat52;
    u_xlat52 = clamp(x_896, 0.0f, 1.0f);
    let x_898 : f32 = u_xlat52;
    let x_899 : f32 = u_xlat52;
    u_xlat52 = (x_898 * x_899);
    let x_901 : f32 = u_xlat49;
    let x_902 : f32 = u_xlat52;
    u_xlat49 = (x_901 * x_902);
    let x_905 : u32 = u_xlatu45;
    u_xlatu52 = (x_905 >> 5u);
    let x_908 : u32 = u_xlatu45;
    u_xlati11 = (1i << bitcast<u32>((bitcast<i32>(x_908) & 31i)));
    let x_914 : i32 = u_xlati11;
    let x_916 : u32 = u_xlatu52;
    let x_919 : f32 = x_383.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_916)].el;
    u_xlati52 = bitcast<i32>((bitcast<u32>(x_914) & bitcast<u32>(x_919)));
    let x_923 : i32 = u_xlati52;
    if ((x_923 != 0i)) {
      let x_933 : u32 = u_xlatu45;
      let x_936 : f32 = x_932.x_AdditionalLightsLightTypes[bitcast<i32>(x_933)].el;
      u_xlati52 = i32(x_936);
      let x_938 : i32 = u_xlati52;
      u_xlati11 = select(1i, 0i, (x_938 != 0i));
      let x_942 : u32 = u_xlatu45;
      u_xlati25 = (bitcast<i32>(x_942) << bitcast<u32>(2i));
      let x_945 : i32 = u_xlati11;
      if ((x_945 != 0i)) {
        let x_950 : vec3<f32> = vs_TEXCOORD1;
        let x_952 : i32 = u_xlati25;
        let x_955 : i32 = u_xlati25;
        let x_959 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[((x_952 + 1i) / 4i)][((x_955 + 1i) % 4i)];
        let x_961 : vec3<f32> = (vec3<f32>(x_950.y, x_950.y, x_950.y) * vec3<f32>(x_959.x, x_959.y, x_959.w));
        let x_962 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_961.x, x_962.y, x_961.y, x_961.z);
        let x_964 : i32 = u_xlati25;
        let x_966 : i32 = u_xlati25;
        let x_969 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[(x_964 / 4i)][(x_966 % 4i)];
        let x_971 : vec3<f32> = vs_TEXCOORD1;
        let x_974 : vec4<f32> = u_xlat11;
        let x_976 : vec3<f32> = ((vec3<f32>(x_969.x, x_969.y, x_969.w) * vec3<f32>(x_971.x, x_971.x, x_971.x)) + vec3<f32>(x_974.x, x_974.z, x_974.w));
        let x_977 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_976.x, x_977.y, x_976.y, x_976.z);
        let x_979 : i32 = u_xlati25;
        let x_982 : i32 = u_xlati25;
        let x_986 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[((x_979 + 2i) / 4i)][((x_982 + 2i) % 4i)];
        let x_988 : vec3<f32> = vs_TEXCOORD1;
        let x_991 : vec4<f32> = u_xlat11;
        let x_993 : vec3<f32> = ((vec3<f32>(x_986.x, x_986.y, x_986.w) * vec3<f32>(x_988.z, x_988.z, x_988.z)) + vec3<f32>(x_991.x, x_991.z, x_991.w));
        let x_994 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_993.x, x_994.y, x_993.y, x_993.z);
        let x_996 : vec4<f32> = u_xlat11;
        let x_998 : i32 = u_xlati25;
        let x_1001 : i32 = u_xlati25;
        let x_1005 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[((x_998 + 3i) / 4i)][((x_1001 + 3i) % 4i)];
        let x_1007 : vec3<f32> = (vec3<f32>(x_996.x, x_996.z, x_996.w) + vec3<f32>(x_1005.x, x_1005.y, x_1005.w));
        let x_1008 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1007.x, x_1008.y, x_1007.y, x_1007.z);
        let x_1010 : vec4<f32> = u_xlat11;
        let x_1012 : vec4<f32> = u_xlat11;
        let x_1014 : vec2<f32> = (vec2<f32>(x_1010.x, x_1010.z) / vec2<f32>(x_1012.w, x_1012.w));
        let x_1015 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1014.x, x_1015.y, x_1014.y, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat11;
        let x_1020 : vec2<f32> = ((vec2<f32>(x_1017.x, x_1017.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1021 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1021.w);
        let x_1023 : vec4<f32> = u_xlat11;
        let x_1027 : vec2<f32> = clamp(vec2<f32>(x_1023.x, x_1023.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1028 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1027.x, x_1028.y, x_1027.y, x_1028.w);
        let x_1030 : u32 = u_xlatu45;
        let x_1033 : vec4<f32> = x_932.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1030)];
        let x_1035 : vec4<f32> = u_xlat11;
        let x_1038 : u32 = u_xlatu45;
        let x_1041 : vec4<f32> = x_932.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1038)];
        let x_1043 : vec2<f32> = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1035.x, x_1035.z)) + vec2<f32>(x_1041.z, x_1041.w));
        let x_1044 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1043.x, x_1044.y, x_1043.y, x_1044.w);
      } else {
        let x_1048 : i32 = u_xlati52;
        u_xlatb52 = (x_1048 == 1i);
        let x_1050 : bool = u_xlatb52;
        u_xlati52 = select(0i, 1i, x_1050);
        let x_1052 : i32 = u_xlati52;
        if ((x_1052 != 0i)) {
          let x_1057 : vec3<f32> = vs_TEXCOORD1;
          let x_1059 : i32 = u_xlati25;
          let x_1062 : i32 = u_xlati25;
          let x_1066 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[((x_1059 + 1i) / 4i)][((x_1062 + 1i) % 4i)];
          let x_1068 : vec2<f32> = (vec2<f32>(x_1057.y, x_1057.y) * vec2<f32>(x_1066.x, x_1066.y));
          let x_1069 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
          let x_1071 : i32 = u_xlati25;
          let x_1073 : i32 = u_xlati25;
          let x_1076 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[(x_1071 / 4i)][(x_1073 % 4i)];
          let x_1078 : vec3<f32> = vs_TEXCOORD1;
          let x_1081 : vec4<f32> = u_xlat12;
          let x_1083 : vec2<f32> = ((vec2<f32>(x_1076.x, x_1076.y) * vec2<f32>(x_1078.x, x_1078.x)) + vec2<f32>(x_1081.x, x_1081.y));
          let x_1084 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
          let x_1086 : i32 = u_xlati25;
          let x_1089 : i32 = u_xlati25;
          let x_1093 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[((x_1086 + 2i) / 4i)][((x_1089 + 2i) % 4i)];
          let x_1095 : vec3<f32> = vs_TEXCOORD1;
          let x_1098 : vec4<f32> = u_xlat12;
          let x_1100 : vec2<f32> = ((vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(x_1095.z, x_1095.z)) + vec2<f32>(x_1098.x, x_1098.y));
          let x_1101 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
          let x_1103 : vec4<f32> = u_xlat12;
          let x_1105 : i32 = u_xlati25;
          let x_1108 : i32 = u_xlati25;
          let x_1112 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[((x_1105 + 3i) / 4i)][((x_1108 + 3i) % 4i)];
          let x_1114 : vec2<f32> = (vec2<f32>(x_1103.x, x_1103.y) + vec2<f32>(x_1112.x, x_1112.y));
          let x_1115 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
          let x_1117 : vec4<f32> = u_xlat12;
          let x_1120 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1121 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1120.x, x_1120.y, x_1121.z, x_1121.w);
          let x_1123 : vec4<f32> = u_xlat12;
          let x_1125 : vec2<f32> = fract(vec2<f32>(x_1123.x, x_1123.y));
          let x_1126 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
          let x_1128 : u32 = u_xlatu45;
          let x_1131 : vec4<f32> = x_932.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1128)];
          let x_1133 : vec4<f32> = u_xlat12;
          let x_1136 : u32 = u_xlatu45;
          let x_1139 : vec4<f32> = x_932.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1136)];
          let x_1141 : vec2<f32> = ((vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(x_1133.x, x_1133.y)) + vec2<f32>(x_1139.z, x_1139.w));
          let x_1142 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1142.w);
        } else {
          let x_1145 : vec3<f32> = vs_TEXCOORD1;
          let x_1147 : i32 = u_xlati25;
          let x_1150 : i32 = u_xlati25;
          let x_1154 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[((x_1147 + 1i) / 4i)][((x_1150 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1145.y, x_1145.y, x_1145.y, x_1145.y) * x_1154);
          let x_1156 : i32 = u_xlati25;
          let x_1158 : i32 = u_xlati25;
          let x_1161 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[(x_1156 / 4i)][(x_1158 % 4i)];
          let x_1162 : vec3<f32> = vs_TEXCOORD1;
          let x_1165 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1161 * vec4<f32>(x_1162.x, x_1162.x, x_1162.x, x_1162.x)) + x_1165);
          let x_1167 : i32 = u_xlati25;
          let x_1170 : i32 = u_xlati25;
          let x_1174 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[((x_1167 + 2i) / 4i)][((x_1170 + 2i) % 4i)];
          let x_1175 : vec3<f32> = vs_TEXCOORD1;
          let x_1178 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1174 * vec4<f32>(x_1175.z, x_1175.z, x_1175.z, x_1175.z)) + x_1178);
          let x_1180 : vec4<f32> = u_xlat12;
          let x_1181 : i32 = u_xlati25;
          let x_1184 : i32 = u_xlati25;
          let x_1188 : vec4<f32> = x_932.x_AdditionalLightsWorldToLights[((x_1181 + 3i) / 4i)][((x_1184 + 3i) % 4i)];
          u_xlat12 = (x_1180 + x_1188);
          let x_1190 : vec4<f32> = u_xlat12;
          let x_1192 : vec4<f32> = u_xlat12;
          let x_1194 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) / vec3<f32>(x_1192.w, x_1192.w, x_1192.w));
          let x_1195 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
          let x_1197 : vec4<f32> = u_xlat12;
          let x_1199 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(vec3<f32>(x_1197.x, x_1197.y, x_1197.z), vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
          let x_1202 : f32 = u_xlat52;
          u_xlat52 = inverseSqrt(x_1202);
          let x_1204 : f32 = u_xlat52;
          let x_1206 : vec4<f32> = u_xlat12;
          let x_1208 : vec3<f32> = (vec3<f32>(x_1204, x_1204, x_1204) * vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
          let x_1209 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
          let x_1211 : vec4<f32> = u_xlat12;
          u_xlat52 = dot(abs(vec3<f32>(x_1211.x, x_1211.y, x_1211.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1216 : f32 = u_xlat52;
          u_xlat52 = max(x_1216, 0.000001f);
          let x_1219 : f32 = u_xlat52;
          u_xlat52 = (1.0f / x_1219);
          let x_1222 : f32 = u_xlat52;
          let x_1224 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1222, x_1222, x_1222) * vec3<f32>(x_1224.z, x_1224.x, x_1224.y));
          let x_1228 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1228);
          let x_1232 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1232, 0.0f, 1.0f);
          let x_1238 : vec3<f32> = u_xlat13;
          let x_1241 : vec4<bool> = (vec4<f32>(x_1238.y, x_1238.y, x_1238.z, x_1238.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1242 : vec2<bool> = vec2<bool>(x_1241.x, x_1241.z);
          let x_1243 : vec3<bool> = u_xlatb25;
          u_xlatb25 = vec3<bool>(x_1242.x, x_1243.y, x_1242.y);
          let x_1247 : bool = u_xlatb25.x;
          if (x_1247) {
            let x_1252 : f32 = u_xlat13.x;
            x_1248 = x_1252;
          } else {
            let x_1255 : f32 = u_xlat13.x;
            x_1248 = -(x_1255);
          }
          let x_1257 : f32 = x_1248;
          u_xlat25.x = x_1257;
          let x_1260 : bool = u_xlatb25.z;
          if (x_1260) {
            let x_1265 : f32 = u_xlat13.x;
            x_1261 = x_1265;
          } else {
            let x_1268 : f32 = u_xlat13.x;
            x_1261 = -(x_1268);
          }
          let x_1270 : f32 = x_1261;
          u_xlat25.z = x_1270;
          let x_1272 : vec4<f32> = u_xlat12;
          let x_1274 : f32 = u_xlat52;
          let x_1277 : vec3<f32> = u_xlat25;
          let x_1279 : vec2<f32> = ((vec2<f32>(x_1272.x, x_1272.y) * vec2<f32>(x_1274, x_1274)) + vec2<f32>(x_1277.x, x_1277.z));
          let x_1280 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1279.x, x_1280.y, x_1279.y);
          let x_1282 : vec3<f32> = u_xlat25;
          let x_1285 : vec2<f32> = ((vec2<f32>(x_1282.x, x_1282.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1286 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1285.x, x_1286.y, x_1285.y);
          let x_1288 : vec3<f32> = u_xlat25;
          let x_1292 : vec2<f32> = clamp(vec2<f32>(x_1288.x, x_1288.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1293 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1292.x, x_1293.y, x_1292.y);
          let x_1295 : u32 = u_xlatu45;
          let x_1298 : vec4<f32> = x_932.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1295)];
          let x_1300 : vec3<f32> = u_xlat25;
          let x_1303 : u32 = u_xlatu45;
          let x_1306 : vec4<f32> = x_932.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1303)];
          let x_1308 : vec2<f32> = ((vec2<f32>(x_1298.x, x_1298.y) * vec2<f32>(x_1300.x, x_1300.z)) + vec2<f32>(x_1306.z, x_1306.w));
          let x_1309 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1308.x, x_1309.y, x_1308.y, x_1309.w);
        }
      }
      let x_1316 : vec4<f32> = u_xlat11;
      let x_1319 : f32 = x_44.x_GlobalMipBias.x;
      let x_1320 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1316.x, x_1316.z), x_1319);
      u_xlat11 = x_1320;
      let x_1322 : bool = u_xlatb34.y;
      if (x_1322) {
        let x_1327 : f32 = u_xlat11.w;
        x_1323 = x_1327;
      } else {
        let x_1330 : f32 = u_xlat11.x;
        x_1323 = x_1330;
      }
      let x_1331 : f32 = x_1323;
      u_xlat52 = x_1331;
      let x_1333 : bool = u_xlatb34.x;
      if (x_1333) {
        let x_1337 : vec4<f32> = u_xlat11;
        x_1334 = vec3<f32>(x_1337.x, x_1337.y, x_1337.z);
      } else {
        let x_1340 : f32 = u_xlat52;
        x_1334 = vec3<f32>(x_1340, x_1340, x_1340);
      }
      let x_1342 : vec3<f32> = x_1334;
      let x_1343 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1349 : vec4<f32> = u_xlat11;
    let x_1351 : u32 = u_xlatu45;
    let x_1354 : vec4<f32> = x_829.x_AdditionalLightsColor[bitcast<i32>(x_1351)];
    let x_1356 : vec3<f32> = (vec3<f32>(x_1349.x, x_1349.y, x_1349.z) * vec3<f32>(x_1354.x, x_1354.y, x_1354.z));
    let x_1357 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1357.w);
    let x_1359 : f32 = u_xlat20;
    let x_1361 : vec4<f32> = u_xlat11;
    let x_1363 : vec3<f32> = (vec3<f32>(x_1359, x_1359, x_1359) * vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
    let x_1364 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
    let x_1366 : vec3<f32> = u_xlat3;
    let x_1367 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1366, x_1367);
    let x_1369 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1369, 0.0f, 1.0f);
    let x_1371 : f32 = u_xlat45;
    let x_1372 : f32 = u_xlat49;
    u_xlat45 = (x_1371 * x_1372);
    let x_1374 : f32 = u_xlat45;
    let x_1376 : vec4<f32> = u_xlat11;
    let x_1378 : vec3<f32> = (vec3<f32>(x_1374, x_1374, x_1374) * vec3<f32>(x_1376.x, x_1376.y, x_1376.z));
    let x_1379 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
    let x_1381 : vec3<f32> = u_xlat23;
    let x_1382 : f32 = u_xlat50;
    let x_1385 : vec3<f32> = u_xlat4;
    u_xlat23 = ((x_1381 * vec3<f32>(x_1382, x_1382, x_1382)) + x_1385);
    let x_1387 : vec3<f32> = u_xlat23;
    let x_1388 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(x_1387, x_1388);
    let x_1390 : f32 = u_xlat45;
    u_xlat45 = max(x_1390, 1.17549435e-37f);
    let x_1392 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1392);
    let x_1394 : f32 = u_xlat45;
    let x_1396 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1394, x_1394, x_1394) * x_1396);
    let x_1398 : vec3<f32> = u_xlat3;
    let x_1399 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(x_1398, x_1399);
    let x_1401 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1401, 0.0f, 1.0f);
    let x_1403 : vec3<f32> = u_xlat10;
    let x_1404 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(x_1403, x_1404);
    let x_1406 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1406, 0.0f, 1.0f);
    let x_1408 : f32 = u_xlat45;
    let x_1409 : f32 = u_xlat45;
    u_xlat45 = (x_1408 * x_1409);
    let x_1411 : f32 = u_xlat45;
    let x_1413 : f32 = u_xlat9.x;
    u_xlat45 = ((x_1411 * x_1413) + 1.000010014f);
    let x_1416 : f32 = u_xlat49;
    let x_1417 : f32 = u_xlat49;
    u_xlat49 = (x_1416 * x_1417);
    let x_1419 : f32 = u_xlat45;
    let x_1420 : f32 = u_xlat45;
    u_xlat45 = (x_1419 * x_1420);
    let x_1422 : f32 = u_xlat49;
    u_xlat49 = max(x_1422, 0.100000001f);
    let x_1424 : f32 = u_xlat45;
    let x_1425 : f32 = u_xlat49;
    u_xlat45 = (x_1424 * x_1425);
    let x_1427 : f32 = u_xlat47;
    let x_1428 : f32 = u_xlat45;
    u_xlat45 = (x_1427 * x_1428);
    let x_1430 : f32 = u_xlat46;
    let x_1431 : f32 = u_xlat45;
    u_xlat45 = (x_1430 / x_1431);
    let x_1433 : vec4<f32> = u_xlat0;
    let x_1435 : f32 = u_xlat45;
    let x_1438 : vec3<f32> = u_xlat15;
    u_xlat23 = ((vec3<f32>(x_1433.x, x_1433.y, x_1433.z) * vec3<f32>(x_1435, x_1435, x_1435)) + x_1438);
    let x_1440 : vec3<f32> = u_xlat23;
    let x_1441 : vec4<f32> = u_xlat11;
    let x_1444 : vec4<f32> = u_xlat8;
    let x_1446 : vec3<f32> = ((x_1440 * vec3<f32>(x_1441.x, x_1441.y, x_1441.z)) + vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
    let x_1447 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);

    continuing {
      let x_1449 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1449 + bitcast<u32>(1i));
    }
  }
  let x_1451 : vec3<f32> = u_xlat5;
  let x_1452 : vec3<f32> = u_xlat6;
  let x_1455 : vec4<f32> = u_xlat7;
  let x_1457 : vec3<f32> = ((x_1451 * vec3<f32>(x_1452.x, x_1452.x, x_1452.x)) + vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
  let x_1458 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
  let x_1460 : vec4<f32> = u_xlat8;
  let x_1462 : vec4<f32> = u_xlat0;
  let x_1464 : vec3<f32> = (vec3<f32>(x_1460.x, x_1460.y, x_1460.z) + vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
  let x_1465 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
  let x_1469 : vec3<f32> = u_xlat2;
  let x_1471 : vec4<f32> = x_57.x_EmissionColor;
  let x_1474 : vec4<f32> = u_xlat0;
  let x_1476 : vec3<f32> = ((x_1469 * vec3<f32>(x_1471.x, x_1471.y, x_1471.z)) + vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
  let x_1477 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
  let x_1482 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1482 == 1.0f);
  let x_1484 : bool = u_xlatb0;
  if (x_1484) {
    let x_1489 : f32 = u_xlat1.x;
    x_1485 = x_1489;
  } else {
    x_1485 = 1.0f;
  }
  let x_1491 : f32 = x_1485;
  SV_Target0.w = x_1491;
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

