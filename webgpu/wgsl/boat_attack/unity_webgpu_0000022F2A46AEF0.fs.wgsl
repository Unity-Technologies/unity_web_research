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

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_350 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_417 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_608 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_865 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_978 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat3 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat42 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat19 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat48 : f32;
  var x_504 : f32;
  var x_515 : vec3<f32>;
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
  var x_1280 : f32;
  var x_1293 : f32;
  var x_1345 : f32;
  var x_1357 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1495 : f32;
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
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat44 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat44;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_95 : bool = u_xlatb42;
  if (x_95) {
    let x_100 : f32 = u_xlat2.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat3.x = x_107;
  let x_109 : bool = u_xlatb42;
  if (x_109) {
    let x_115 : f32 = u_xlat2.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat3.y = x_119;
  let x_121 : bool = u_xlatb42;
  if (x_121) {
    let x_126 : f32 = u_xlat2.z;
    x_122 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_129;
  }
  let x_130 : f32 = x_122;
  u_xlat3.z = x_130;
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_134, x_135);
  let x_137 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_137);
  let x_139 : f32 = u_xlat42;
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_139, x_139, x_139) * x_141);
  let x_150 : vec2<f32> = vs_TEXCOORD8;
  let x_152 : f32 = x_44.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_150, x_152);
  u_xlat4 = x_153;
  let x_159 : vec2<f32> = vs_TEXCOORD8;
  let x_161 : f32 = x_44.x_GlobalMipBias.x;
  let x_162 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_159, x_161);
  u_xlat5 = vec3<f32>(x_162.x, x_162.y, x_162.z);
  let x_164 : vec4<f32> = u_xlat4;
  let x_168 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_171 : vec3<f32> = u_xlat2;
  let x_172 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_171, vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : f32 = u_xlat42;
  u_xlat42 = (x_175 + 0.5f);
  let x_178 : f32 = u_xlat42;
  let x_180 : vec3<f32> = u_xlat5;
  let x_181 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * x_180);
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : f32 = u_xlat4.w;
  u_xlat42 = max(x_185, 0.0001f);
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : f32 = u_xlat42;
  let x_192 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) / vec3<f32>(x_190, x_190, x_190));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_197 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_198 : vec2<f32> = vec2<f32>(x_197.x, x_197.y);
  let x_202 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_198.x, x_198.y));
  let x_203 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_202.x, x_202.y, x_203.z);
  let x_205 : vec3<f32> = u_xlat5;
  let x_207 : vec4<f32> = hlslcc_FragCoord;
  let x_209 : vec2<f32> = (vec2<f32>(x_205.x, x_205.y) * vec2<f32>(x_207.x, x_207.y));
  let x_210 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_209.x, x_209.y, x_210.z);
  let x_213 : f32 = u_xlat5.y;
  let x_216 : f32 = x_44.x_ScaleBiasRt.x;
  let x_219 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_213 * x_216) + x_219);
  let x_221 : f32 = u_xlat42;
  u_xlat5.z = (-(x_221) + 1.0f);
  let x_226 : f32 = x_57.x_Metallic;
  u_xlat42 = ((-(x_226) * 0.959999979f) + 0.959999979f);
  let x_231 : f32 = u_xlat42;
  let x_234 : f32 = x_57.x_Smoothness;
  u_xlat44 = (-(x_231) + x_234);
  let x_237 : f32 = u_xlat42;
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec3<f32>(x_237, x_237, x_237) * vec3<f32>(x_239.y, x_239.z, x_239.w));
  let x_242 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = x_57.x_BaseColor;
  let x_250 : vec3<f32> = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_245.x, x_245.y, x_245.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_254 : f32 = x_57.x_Metallic;
  let x_256 : f32 = x_57.x_Metallic;
  let x_258 : f32 = x_57.x_Metallic;
  let x_259 : vec3<f32> = vec3<f32>(x_254, x_256, x_258);
  let x_264 : vec4<f32> = u_xlat0;
  let x_269 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_264.x, x_264.y, x_264.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : f32 = x_57.x_Smoothness;
  u_xlat42 = (-(x_273) + 1.0f);
  let x_277 : f32 = u_xlat42;
  let x_278 : f32 = u_xlat42;
  u_xlat45 = (x_277 * x_278);
  let x_280 : f32 = u_xlat45;
  u_xlat45 = max(x_280, 0.0078125f);
  let x_284 : f32 = u_xlat45;
  let x_285 : f32 = u_xlat45;
  u_xlat46 = (x_284 * x_285);
  let x_287 : f32 = u_xlat44;
  u_xlat44 = (x_287 + 1.0f);
  let x_289 : f32 = u_xlat44;
  u_xlat44 = clamp(x_289, 0.0f, 1.0f);
  let x_292 : f32 = u_xlat45;
  u_xlat19 = ((x_292 * 4.0f) + 2.0f);
  let x_302 : vec3<f32> = u_xlat5;
  let x_305 : f32 = x_44.x_GlobalMipBias.x;
  let x_306 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_302.x, x_302.z), x_305);
  u_xlat5.x = x_306.x;
  let x_311 : f32 = u_xlat5.x;
  u_xlat33 = (x_311 + -1.0f);
  let x_316 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_317 : f32 = u_xlat33;
  u_xlat33 = ((x_316 * x_317) + 1.0f);
  let x_321 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_321, 1.0f);
  let x_326 : vec4<f32> = vs_TEXCOORD6;
  let x_327 : vec2<f32> = vec2<f32>(x_326.x, x_326.y);
  let x_329 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_327.x, x_327.y, x_329);
  let x_342 : vec3<f32> = txVec0;
  let x_344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_342.xy, x_342.z);
  u_xlat47 = x_344;
  let x_352 : f32 = x_350.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_352) + 1.0f);
  let x_356 : f32 = u_xlat47;
  let x_358 : f32 = x_350.x_MainLightShadowParams.x;
  let x_361 : f32 = u_xlat6.x;
  u_xlat47 = ((x_356 * x_358) + x_361);
  let x_365 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_365);
  let x_369 : f32 = vs_TEXCOORD6.z;
  u_xlatb20 = (x_369 >= 1.0f);
  let x_371 : bool = u_xlatb20;
  let x_372 : bool = u_xlatb6;
  u_xlatb6 = (x_371 | x_372);
  let x_374 : bool = u_xlatb6;
  let x_375 : f32 = u_xlat47;
  u_xlat47 = select(x_375, 1.0f, x_374);
  let x_377 : vec3<f32> = vs_TEXCOORD1;
  let x_379 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_381 : vec3<f32> = (x_377 + -(x_379));
  let x_382 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat6;
  let x_386 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_391 : f32 = u_xlat6.x;
  let x_393 : f32 = x_350.x_MainLightShadowParams.z;
  let x_396 : f32 = x_350.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_391 * x_393) + x_396);
  let x_400 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_400, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat47;
  u_xlat20 = (-(x_404) + 1.0f);
  let x_408 : f32 = u_xlat6.x;
  let x_409 : f32 = u_xlat20;
  let x_411 : f32 = u_xlat47;
  u_xlat47 = ((x_408 * x_409) + x_411);
  let x_419 : f32 = x_417.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_419 == -1.0f));
  let x_421 : bool = u_xlatb6;
  if (x_421) {
    let x_424 : vec3<f32> = vs_TEXCOORD1;
    let x_427 : vec4<f32> = x_417.x_MainLightWorldToLight[1i];
    let x_429 : vec2<f32> = (vec2<f32>(x_424.y, x_424.y) * vec2<f32>(x_427.x, x_427.y));
    let x_430 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
    let x_433 : vec4<f32> = x_417.x_MainLightWorldToLight[0i];
    let x_435 : vec3<f32> = vs_TEXCOORD1;
    let x_438 : vec4<f32> = u_xlat6;
    let x_440 : vec2<f32> = ((vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_435.x, x_435.x)) + vec2<f32>(x_438.x, x_438.y));
    let x_441 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
    let x_444 : vec4<f32> = x_417.x_MainLightWorldToLight[2i];
    let x_446 : vec3<f32> = vs_TEXCOORD1;
    let x_449 : vec4<f32> = u_xlat6;
    let x_451 : vec2<f32> = ((vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_446.z, x_446.z)) + vec2<f32>(x_449.x, x_449.y));
    let x_452 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
    let x_454 : vec4<f32> = u_xlat6;
    let x_458 : vec4<f32> = x_417.x_MainLightWorldToLight[3i];
    let x_460 : vec2<f32> = (vec2<f32>(x_454.x, x_454.y) + vec2<f32>(x_458.x, x_458.y));
    let x_461 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
    let x_463 : vec4<f32> = u_xlat6;
    let x_467 : vec2<f32> = ((vec2<f32>(x_463.x, x_463.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_468 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
    let x_475 : vec4<f32> = u_xlat6;
    let x_478 : f32 = x_44.x_GlobalMipBias.x;
    let x_479 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_475.x, x_475.y), x_478);
    u_xlat6 = x_479;
    let x_484 : f32 = x_417.x_MainLightCookieTextureFormat;
    let x_486 : f32 = x_417.x_MainLightCookieTextureFormat;
    let x_488 : f32 = x_417.x_MainLightCookieTextureFormat;
    let x_490 : f32 = x_417.x_MainLightCookieTextureFormat;
    let x_491 : vec4<f32> = vec4<f32>(x_484, x_486, x_488, x_490);
    let x_499 : vec4<bool> = (vec4<f32>(x_491.x, x_491.y, x_491.z, x_491.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_499.x, x_499.y);
    let x_503 : bool = u_xlatb7.y;
    if (x_503) {
      let x_508 : f32 = u_xlat6.w;
      x_504 = x_508;
    } else {
      let x_511 : f32 = u_xlat6.x;
      x_504 = x_511;
    }
    let x_512 : f32 = x_504;
    u_xlat48 = x_512;
    let x_514 : bool = u_xlatb7.x;
    if (x_514) {
      let x_518 : vec4<f32> = u_xlat6;
      x_515 = vec3<f32>(x_518.x, x_518.y, x_518.z);
    } else {
      let x_521 : f32 = u_xlat48;
      x_515 = vec3<f32>(x_521, x_521, x_521);
    }
    let x_523 : vec3<f32> = x_515;
    let x_524 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_530 : vec4<f32> = u_xlat6;
  let x_533 : vec4<f32> = x_44.x_MainLightColor;
  let x_535 : vec3<f32> = (vec3<f32>(x_530.x, x_530.y, x_530.z) * vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : f32 = u_xlat33;
  let x_540 : vec4<f32> = u_xlat6;
  let x_542 : vec3<f32> = (vec3<f32>(x_538, x_538, x_538) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec3<f32> = u_xlat3;
  let x_547 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(-(x_545), x_547);
  let x_549 : f32 = u_xlat48;
  let x_550 : f32 = u_xlat48;
  u_xlat48 = (x_549 + x_550);
  let x_553 : vec3<f32> = u_xlat2;
  let x_554 : f32 = u_xlat48;
  let x_558 : vec3<f32> = u_xlat3;
  let x_560 : vec3<f32> = ((x_553 * -(vec3<f32>(x_554, x_554, x_554))) + -(x_558));
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec3<f32> = u_xlat2;
  let x_564 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(x_563, x_564);
  let x_566 : f32 = u_xlat48;
  u_xlat48 = clamp(x_566, 0.0f, 1.0f);
  let x_568 : f32 = u_xlat48;
  u_xlat48 = (-(x_568) + 1.0f);
  let x_571 : f32 = u_xlat48;
  let x_572 : f32 = u_xlat48;
  u_xlat48 = (x_571 * x_572);
  let x_574 : f32 = u_xlat48;
  let x_575 : f32 = u_xlat48;
  u_xlat48 = (x_574 * x_575);
  let x_578 : f32 = u_xlat42;
  u_xlat49 = ((-(x_578) * 0.699999988f) + 1.700000048f);
  let x_584 : f32 = u_xlat42;
  let x_585 : f32 = u_xlat49;
  u_xlat42 = (x_584 * x_585);
  let x_587 : f32 = u_xlat42;
  u_xlat42 = (x_587 * 6.0f);
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : f32 = u_xlat42;
  let x_601 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_598.x, x_598.y, x_598.z), x_600);
  u_xlat7 = x_601;
  let x_603 : f32 = u_xlat7.w;
  u_xlat42 = (x_603 + -1.0f);
  let x_610 : f32 = x_608.unity_SpecCube0_HDR.w;
  let x_611 : f32 = u_xlat42;
  u_xlat42 = ((x_610 * x_611) + 1.0f);
  let x_614 : f32 = u_xlat42;
  u_xlat42 = max(x_614, 0.0f);
  let x_616 : f32 = u_xlat42;
  u_xlat42 = log2(x_616);
  let x_618 : f32 = u_xlat42;
  let x_620 : f32 = x_608.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_618 * x_620);
  let x_622 : f32 = u_xlat42;
  u_xlat42 = exp2(x_622);
  let x_624 : f32 = u_xlat42;
  let x_626 : f32 = x_608.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_624 * x_626);
  let x_628 : vec4<f32> = u_xlat7;
  let x_630 : f32 = u_xlat42;
  let x_632 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(x_630, x_630, x_630));
  let x_633 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_637 : f32 = u_xlat45;
  let x_639 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_637, x_637) * vec2<f32>(x_639, x_639)) + vec2<f32>(-1.0f, 1.0f));
  let x_645 : f32 = u_xlat8.y;
  u_xlat42 = (1.0f / x_645);
  let x_648 : vec4<f32> = u_xlat0;
  let x_651 : f32 = u_xlat44;
  u_xlat22 = (-(vec3<f32>(x_648.x, x_648.y, x_648.z)) + vec3<f32>(x_651, x_651, x_651));
  let x_654 : f32 = u_xlat48;
  let x_656 : vec3<f32> = u_xlat22;
  let x_658 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_654, x_654, x_654) * x_656) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : f32 = u_xlat42;
  let x_663 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_661, x_661, x_661) * x_663);
  let x_665 : vec4<f32> = u_xlat7;
  let x_667 : vec3<f32> = u_xlat22;
  let x_668 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * x_667);
  let x_669 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec4<f32> = u_xlat4;
  let x_673 : vec3<f32> = u_xlat15;
  let x_675 : vec4<f32> = u_xlat7;
  let x_677 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.y, x_671.z) * x_673) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : f32 = u_xlat47;
  let x_683 : f32 = x_608.unity_LightData.z;
  u_xlat42 = (x_680 * x_683);
  let x_685 : vec3<f32> = u_xlat2;
  let x_687 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(x_685, vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : f32 = u_xlat44;
  u_xlat44 = clamp(x_690, 0.0f, 1.0f);
  let x_692 : f32 = u_xlat42;
  let x_693 : f32 = u_xlat44;
  u_xlat42 = (x_692 * x_693);
  let x_695 : f32 = u_xlat42;
  let x_697 : vec4<f32> = u_xlat6;
  let x_699 : vec3<f32> = (vec3<f32>(x_695, x_695, x_695) * vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec3<f32> = u_xlat3;
  let x_704 : vec4<f32> = x_44.x_MainLightPosition;
  let x_706 : vec3<f32> = (x_702 + vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat7;
  let x_711 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_709.x, x_709.y, x_709.z), vec3<f32>(x_711.x, x_711.y, x_711.z));
  let x_714 : f32 = u_xlat42;
  u_xlat42 = max(x_714, 1.17549435e-37f);
  let x_717 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_717);
  let x_719 : f32 = u_xlat42;
  let x_721 : vec4<f32> = u_xlat7;
  let x_723 : vec3<f32> = (vec3<f32>(x_719, x_719, x_719) * vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : vec3<f32> = u_xlat2;
  let x_727 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_726, vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : f32 = u_xlat42;
  u_xlat42 = clamp(x_730, 0.0f, 1.0f);
  let x_733 : vec4<f32> = x_44.x_MainLightPosition;
  let x_735 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_733.x, x_733.y, x_733.z), vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : f32 = u_xlat44;
  u_xlat44 = clamp(x_738, 0.0f, 1.0f);
  let x_740 : f32 = u_xlat42;
  let x_741 : f32 = u_xlat42;
  u_xlat42 = (x_740 * x_741);
  let x_743 : f32 = u_xlat42;
  let x_745 : f32 = u_xlat8.x;
  u_xlat42 = ((x_743 * x_745) + 1.000010014f);
  let x_749 : f32 = u_xlat44;
  let x_750 : f32 = u_xlat44;
  u_xlat44 = (x_749 * x_750);
  let x_752 : f32 = u_xlat42;
  let x_753 : f32 = u_xlat42;
  u_xlat42 = (x_752 * x_753);
  let x_755 : f32 = u_xlat44;
  u_xlat44 = max(x_755, 0.100000001f);
  let x_758 : f32 = u_xlat42;
  let x_759 : f32 = u_xlat44;
  u_xlat42 = (x_758 * x_759);
  let x_761 : f32 = u_xlat19;
  let x_762 : f32 = u_xlat42;
  u_xlat42 = (x_761 * x_762);
  let x_764 : f32 = u_xlat46;
  let x_765 : f32 = u_xlat42;
  u_xlat42 = (x_764 / x_765);
  let x_767 : vec4<f32> = u_xlat0;
  let x_769 : f32 = u_xlat42;
  let x_772 : vec3<f32> = u_xlat15;
  let x_773 : vec3<f32> = ((vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(x_769, x_769, x_769)) + x_772);
  let x_774 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat6;
  let x_778 : vec4<f32> = u_xlat7;
  let x_780 : vec3<f32> = (vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_784 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_786 : f32 = x_608.unity_LightData.y;
  u_xlat42 = min(x_784, x_786);
  let x_790 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_790));
  let x_794 : f32 = x_417.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_796 : f32 = x_417.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_798 : f32 = x_417.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_800 : f32 = x_417.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_801 : vec4<f32> = vec4<f32>(x_794, x_796, x_798, x_800);
  let x_807 : vec4<bool> = (vec4<f32>(x_801.x, x_801.y, x_801.z, x_801.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_807.x, x_807.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_818 : u32 = u_xlatu_loop_1;
    let x_819 : u32 = u_xlatu42;
    if ((x_818 < x_819)) {
    } else {
      break;
    }
    let x_822 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_822 >> 2u);
    let x_826 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_826 & 3u));
    let x_829 : u32 = u_xlatu45;
    let x_832 : vec4<f32> = x_608.unity_LightIndices[bitcast<i32>(x_829)];
    let x_842 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_847 : vec4<u32> = indexable[x_842];
    u_xlat45 = dot(x_832, bitcast<vec4<f32>>(x_847));
    let x_850 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_850));
    let x_854 : vec3<f32> = vs_TEXCOORD1;
    let x_866 : u32 = u_xlatu45;
    let x_869 : vec4<f32> = x_865.x_AdditionalLightsPosition[bitcast<i32>(x_866)];
    let x_872 : u32 = u_xlatu45;
    let x_875 : vec4<f32> = x_865.x_AdditionalLightsPosition[bitcast<i32>(x_872)];
    u_xlat9 = ((-(x_854) * vec3<f32>(x_869.w, x_869.w, x_869.w)) + vec3<f32>(x_875.x, x_875.y, x_875.z));
    let x_878 : vec3<f32> = u_xlat9;
    let x_879 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_878, x_879);
    let x_881 : f32 = u_xlat47;
    u_xlat47 = max(x_881, 6.10351562e-05f);
    let x_884 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_884);
    let x_887 : f32 = u_xlat48;
    let x_889 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_887, x_887, x_887) * x_889);
    let x_892 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_892);
    let x_895 : f32 = u_xlat47;
    let x_896 : u32 = u_xlatu45;
    let x_899 : f32 = x_865.x_AdditionalLightsAttenuation[bitcast<i32>(x_896)].x;
    u_xlat47 = (x_895 * x_899);
    let x_901 : f32 = u_xlat47;
    let x_903 : f32 = u_xlat47;
    u_xlat47 = ((-(x_901) * x_903) + 1.0f);
    let x_906 : f32 = u_xlat47;
    u_xlat47 = max(x_906, 0.0f);
    let x_908 : f32 = u_xlat47;
    let x_909 : f32 = u_xlat47;
    u_xlat47 = (x_908 * x_909);
    let x_911 : f32 = u_xlat47;
    let x_913 : f32 = u_xlat35.x;
    u_xlat47 = (x_911 * x_913);
    let x_915 : u32 = u_xlatu45;
    let x_918 : vec4<f32> = x_865.x_AdditionalLightsSpotDir[bitcast<i32>(x_915)];
    let x_920 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), x_920);
    let x_924 : f32 = u_xlat35.x;
    let x_925 : u32 = u_xlatu45;
    let x_928 : f32 = x_865.x_AdditionalLightsAttenuation[bitcast<i32>(x_925)].z;
    let x_930 : u32 = u_xlatu45;
    let x_933 : f32 = x_865.x_AdditionalLightsAttenuation[bitcast<i32>(x_930)].w;
    u_xlat35.x = ((x_924 * x_928) + x_933);
    let x_937 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_937, 0.0f, 1.0f);
    let x_941 : f32 = u_xlat35.x;
    let x_943 : f32 = u_xlat35.x;
    u_xlat35.x = (x_941 * x_943);
    let x_946 : f32 = u_xlat47;
    let x_948 : f32 = u_xlat35.x;
    u_xlat47 = (x_946 * x_948);
    let x_951 : u32 = u_xlatu45;
    u_xlatu35 = (x_951 >> 5u);
    let x_954 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_954) & 31i)));
    let x_960 : i32 = u_xlati49;
    let x_962 : u32 = u_xlatu35;
    let x_965 : f32 = x_417.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_962)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_960) & bitcast<u32>(x_965)));
    let x_969 : i32 = u_xlati35;
    if ((x_969 != 0i)) {
      let x_979 : u32 = u_xlatu45;
      let x_982 : f32 = x_978.x_AdditionalLightsLightTypes[bitcast<i32>(x_979)].el;
      u_xlati35 = i32(x_982);
      let x_984 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_984 != 0i));
      let x_988 : u32 = u_xlatu45;
      u_xlati51 = (bitcast<i32>(x_988) << bitcast<u32>(2i));
      let x_991 : i32 = u_xlati49;
      if ((x_991 != 0i)) {
        let x_996 : vec3<f32> = vs_TEXCOORD1;
        let x_998 : i32 = u_xlati51;
        let x_1001 : i32 = u_xlati51;
        let x_1005 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_998 + 1i) / 4i)][((x_1001 + 1i) % 4i)];
        let x_1007 : vec3<f32> = (vec3<f32>(x_996.y, x_996.y, x_996.y) * vec3<f32>(x_1005.x, x_1005.y, x_1005.w));
        let x_1008 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
        let x_1010 : i32 = u_xlati51;
        let x_1012 : i32 = u_xlati51;
        let x_1015 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[(x_1010 / 4i)][(x_1012 % 4i)];
        let x_1017 : vec3<f32> = vs_TEXCOORD1;
        let x_1020 : vec4<f32> = u_xlat11;
        let x_1022 : vec3<f32> = ((vec3<f32>(x_1015.x, x_1015.y, x_1015.w) * vec3<f32>(x_1017.x, x_1017.x, x_1017.x)) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
        let x_1023 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
        let x_1025 : i32 = u_xlati51;
        let x_1028 : i32 = u_xlati51;
        let x_1032 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1025 + 2i) / 4i)][((x_1028 + 2i) % 4i)];
        let x_1034 : vec3<f32> = vs_TEXCOORD1;
        let x_1037 : vec4<f32> = u_xlat11;
        let x_1039 : vec3<f32> = ((vec3<f32>(x_1032.x, x_1032.y, x_1032.w) * vec3<f32>(x_1034.z, x_1034.z, x_1034.z)) + vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
        let x_1040 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
        let x_1042 : vec4<f32> = u_xlat11;
        let x_1044 : i32 = u_xlati51;
        let x_1047 : i32 = u_xlati51;
        let x_1051 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1044 + 3i) / 4i)][((x_1047 + 3i) % 4i)];
        let x_1053 : vec3<f32> = (vec3<f32>(x_1042.x, x_1042.y, x_1042.z) + vec3<f32>(x_1051.x, x_1051.y, x_1051.w));
        let x_1054 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
        let x_1056 : vec4<f32> = u_xlat11;
        let x_1058 : vec4<f32> = u_xlat11;
        let x_1060 : vec2<f32> = (vec2<f32>(x_1056.x, x_1056.y) / vec2<f32>(x_1058.z, x_1058.z));
        let x_1061 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec4<f32> = u_xlat11;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1067 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat11;
        let x_1073 : vec2<f32> = clamp(vec2<f32>(x_1069.x, x_1069.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1074 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1073.x, x_1073.y, x_1074.z, x_1074.w);
        let x_1076 : u32 = u_xlatu45;
        let x_1079 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1076)];
        let x_1081 : vec4<f32> = u_xlat11;
        let x_1084 : u32 = u_xlatu45;
        let x_1087 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1084)];
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1079.x, x_1079.y) * vec2<f32>(x_1081.x, x_1081.y)) + vec2<f32>(x_1087.z, x_1087.w));
        let x_1090 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
      } else {
        let x_1094 : i32 = u_xlati35;
        u_xlatb35 = (x_1094 == 1i);
        let x_1096 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1096);
        let x_1098 : i32 = u_xlati35;
        if ((x_1098 != 0i)) {
          let x_1102 : vec3<f32> = vs_TEXCOORD1;
          let x_1104 : i32 = u_xlati51;
          let x_1107 : i32 = u_xlati51;
          let x_1111 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1104 + 1i) / 4i)][((x_1107 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1102.y, x_1102.y) * vec2<f32>(x_1111.x, x_1111.y));
          let x_1114 : i32 = u_xlati51;
          let x_1116 : i32 = u_xlati51;
          let x_1119 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[(x_1114 / 4i)][(x_1116 % 4i)];
          let x_1121 : vec3<f32> = vs_TEXCOORD1;
          let x_1124 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1121.x, x_1121.x)) + x_1124);
          let x_1126 : i32 = u_xlati51;
          let x_1129 : i32 = u_xlati51;
          let x_1133 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1126 + 2i) / 4i)][((x_1129 + 2i) % 4i)];
          let x_1135 : vec3<f32> = vs_TEXCOORD1;
          let x_1138 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1135.z, x_1135.z)) + x_1138);
          let x_1140 : vec2<f32> = u_xlat35;
          let x_1141 : i32 = u_xlati51;
          let x_1144 : i32 = u_xlati51;
          let x_1148 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1141 + 3i) / 4i)][((x_1144 + 3i) % 4i)];
          u_xlat35 = (x_1140 + vec2<f32>(x_1148.x, x_1148.y));
          let x_1151 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1151 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1154 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1154);
          let x_1156 : u32 = u_xlatu45;
          let x_1159 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1156)];
          let x_1161 : vec2<f32> = u_xlat35;
          let x_1163 : u32 = u_xlatu45;
          let x_1166 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1163)];
          let x_1168 : vec2<f32> = ((vec2<f32>(x_1159.x, x_1159.y) * x_1161) + vec2<f32>(x_1166.z, x_1166.w));
          let x_1169 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1168.x, x_1168.y, x_1169.z, x_1169.w);
        } else {
          let x_1173 : vec3<f32> = vs_TEXCOORD1;
          let x_1175 : i32 = u_xlati51;
          let x_1178 : i32 = u_xlati51;
          let x_1182 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1175 + 1i) / 4i)][((x_1178 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1173.y, x_1173.y, x_1173.y, x_1173.y) * x_1182);
          let x_1184 : i32 = u_xlati51;
          let x_1186 : i32 = u_xlati51;
          let x_1189 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[(x_1184 / 4i)][(x_1186 % 4i)];
          let x_1190 : vec3<f32> = vs_TEXCOORD1;
          let x_1193 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1189 * vec4<f32>(x_1190.x, x_1190.x, x_1190.x, x_1190.x)) + x_1193);
          let x_1195 : i32 = u_xlati51;
          let x_1198 : i32 = u_xlati51;
          let x_1202 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1195 + 2i) / 4i)][((x_1198 + 2i) % 4i)];
          let x_1203 : vec3<f32> = vs_TEXCOORD1;
          let x_1206 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1202 * vec4<f32>(x_1203.z, x_1203.z, x_1203.z, x_1203.z)) + x_1206);
          let x_1208 : vec4<f32> = u_xlat12;
          let x_1209 : i32 = u_xlati51;
          let x_1212 : i32 = u_xlati51;
          let x_1216 : vec4<f32> = x_978.x_AdditionalLightsWorldToLights[((x_1209 + 3i) / 4i)][((x_1212 + 3i) % 4i)];
          u_xlat12 = (x_1208 + x_1216);
          let x_1218 : vec4<f32> = u_xlat12;
          let x_1220 : vec4<f32> = u_xlat12;
          let x_1222 : vec3<f32> = (vec3<f32>(x_1218.x, x_1218.y, x_1218.z) / vec3<f32>(x_1220.w, x_1220.w, x_1220.w));
          let x_1223 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
          let x_1225 : vec4<f32> = u_xlat12;
          let x_1227 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1225.x, x_1225.y, x_1225.z), vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
          let x_1232 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1232);
          let x_1235 : vec2<f32> = u_xlat35;
          let x_1237 : vec4<f32> = u_xlat12;
          let x_1239 : vec3<f32> = (vec3<f32>(x_1235.x, x_1235.x, x_1235.x) * vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
          let x_1240 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
          let x_1242 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1242.x, x_1242.y, x_1242.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1249 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1249, 0.000001f);
          let x_1254 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1254);
          let x_1258 : vec2<f32> = u_xlat35;
          let x_1260 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1258.x, x_1258.x, x_1258.x) * vec3<f32>(x_1260.z, x_1260.x, x_1260.y));
          let x_1264 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1264);
          let x_1268 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1268, 0.0f, 1.0f);
          let x_1272 : vec3<f32> = u_xlat13;
          let x_1275 : vec4<bool> = (vec4<f32>(x_1272.y, x_1272.z, x_1272.y, x_1272.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1275.x, x_1275.y);
          let x_1279 : bool = u_xlatb39.x;
          if (x_1279) {
            let x_1284 : f32 = u_xlat13.x;
            x_1280 = x_1284;
          } else {
            let x_1287 : f32 = u_xlat13.x;
            x_1280 = -(x_1287);
          }
          let x_1289 : f32 = x_1280;
          u_xlat39.x = x_1289;
          let x_1292 : bool = u_xlatb39.y;
          if (x_1292) {
            let x_1297 : f32 = u_xlat13.x;
            x_1293 = x_1297;
          } else {
            let x_1300 : f32 = u_xlat13.x;
            x_1293 = -(x_1300);
          }
          let x_1302 : f32 = x_1293;
          u_xlat39.y = x_1302;
          let x_1304 : vec4<f32> = u_xlat12;
          let x_1306 : vec2<f32> = u_xlat35;
          let x_1309 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1304.x, x_1304.y) * vec2<f32>(x_1306.x, x_1306.x)) + x_1309);
          let x_1311 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1311 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1314 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1314, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1318 : u32 = u_xlatu45;
          let x_1321 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1318)];
          let x_1323 : vec2<f32> = u_xlat35;
          let x_1325 : u32 = u_xlatu45;
          let x_1328 : vec4<f32> = x_978.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1325)];
          let x_1330 : vec2<f32> = ((vec2<f32>(x_1321.x, x_1321.y) * x_1323) + vec2<f32>(x_1328.z, x_1328.w));
          let x_1331 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1331.w);
        }
      }
      let x_1338 : vec4<f32> = u_xlat11;
      let x_1341 : f32 = x_44.x_GlobalMipBias.x;
      let x_1342 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1338.x, x_1338.y), x_1341);
      u_xlat11 = x_1342;
      let x_1344 : bool = u_xlatb7.y;
      if (x_1344) {
        let x_1349 : f32 = u_xlat11.w;
        x_1345 = x_1349;
      } else {
        let x_1352 : f32 = u_xlat11.x;
        x_1345 = x_1352;
      }
      let x_1353 : f32 = x_1345;
      u_xlat35.x = x_1353;
      let x_1356 : bool = u_xlatb7.x;
      if (x_1356) {
        let x_1360 : vec4<f32> = u_xlat11;
        x_1357 = vec3<f32>(x_1360.x, x_1360.y, x_1360.z);
      } else {
        let x_1363 : vec2<f32> = u_xlat35;
        x_1357 = vec3<f32>(x_1363.x, x_1363.x, x_1363.x);
      }
      let x_1365 : vec3<f32> = x_1357;
      let x_1366 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1372 : vec4<f32> = u_xlat11;
    let x_1374 : u32 = u_xlatu45;
    let x_1377 : vec4<f32> = x_865.x_AdditionalLightsColor[bitcast<i32>(x_1374)];
    let x_1379 : vec3<f32> = (vec3<f32>(x_1372.x, x_1372.y, x_1372.z) * vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
    let x_1380 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
    let x_1382 : f32 = u_xlat33;
    let x_1384 : vec4<f32> = u_xlat11;
    let x_1386 : vec3<f32> = (vec3<f32>(x_1382, x_1382, x_1382) * vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
    let x_1387 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
    let x_1389 : vec3<f32> = u_xlat2;
    let x_1390 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1389, x_1390);
    let x_1392 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1392, 0.0f, 1.0f);
    let x_1394 : f32 = u_xlat45;
    let x_1395 : f32 = u_xlat47;
    u_xlat45 = (x_1394 * x_1395);
    let x_1397 : f32 = u_xlat45;
    let x_1399 : vec4<f32> = u_xlat11;
    let x_1401 : vec3<f32> = (vec3<f32>(x_1397, x_1397, x_1397) * vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
    let x_1402 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
    let x_1404 : vec3<f32> = u_xlat9;
    let x_1405 : f32 = u_xlat48;
    let x_1408 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1404 * vec3<f32>(x_1405, x_1405, x_1405)) + x_1408);
    let x_1410 : vec3<f32> = u_xlat9;
    let x_1411 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1410, x_1411);
    let x_1413 : f32 = u_xlat45;
    u_xlat45 = max(x_1413, 1.17549435e-37f);
    let x_1415 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1415);
    let x_1417 : f32 = u_xlat45;
    let x_1419 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1417, x_1417, x_1417) * x_1419);
    let x_1421 : vec3<f32> = u_xlat2;
    let x_1422 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1421, x_1422);
    let x_1424 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1424, 0.0f, 1.0f);
    let x_1426 : vec3<f32> = u_xlat10;
    let x_1427 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1426, x_1427);
    let x_1429 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1429, 0.0f, 1.0f);
    let x_1431 : f32 = u_xlat45;
    let x_1432 : f32 = u_xlat45;
    u_xlat45 = (x_1431 * x_1432);
    let x_1434 : f32 = u_xlat45;
    let x_1436 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1434 * x_1436) + 1.000010014f);
    let x_1439 : f32 = u_xlat47;
    let x_1440 : f32 = u_xlat47;
    u_xlat47 = (x_1439 * x_1440);
    let x_1442 : f32 = u_xlat45;
    let x_1443 : f32 = u_xlat45;
    u_xlat45 = (x_1442 * x_1443);
    let x_1445 : f32 = u_xlat47;
    u_xlat47 = max(x_1445, 0.100000001f);
    let x_1447 : f32 = u_xlat45;
    let x_1448 : f32 = u_xlat47;
    u_xlat45 = (x_1447 * x_1448);
    let x_1450 : f32 = u_xlat19;
    let x_1451 : f32 = u_xlat45;
    u_xlat45 = (x_1450 * x_1451);
    let x_1453 : f32 = u_xlat46;
    let x_1454 : f32 = u_xlat45;
    u_xlat45 = (x_1453 / x_1454);
    let x_1456 : vec4<f32> = u_xlat0;
    let x_1458 : f32 = u_xlat45;
    let x_1461 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1456.x, x_1456.y, x_1456.z) * vec3<f32>(x_1458, x_1458, x_1458)) + x_1461);
    let x_1463 : vec3<f32> = u_xlat9;
    let x_1464 : vec4<f32> = u_xlat11;
    let x_1467 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1463 * vec3<f32>(x_1464.x, x_1464.y, x_1464.z)) + x_1467);

    continuing {
      let x_1469 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1469 + bitcast<u32>(1i));
    }
  }
  let x_1471 : vec4<f32> = u_xlat4;
  let x_1473 : vec3<f32> = u_xlat5;
  let x_1476 : vec4<f32> = u_xlat6;
  let x_1478 : vec3<f32> = ((vec3<f32>(x_1471.x, x_1471.y, x_1471.z) * vec3<f32>(x_1473.x, x_1473.x, x_1473.x)) + vec3<f32>(x_1476.x, x_1476.y, x_1476.z));
  let x_1479 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
  let x_1483 : vec3<f32> = u_xlat22;
  let x_1484 : vec4<f32> = u_xlat0;
  let x_1486 : vec3<f32> = (x_1483 + vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
  let x_1487 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
  let x_1492 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1492 == 1.0f);
  let x_1494 : bool = u_xlatb0;
  if (x_1494) {
    let x_1499 : f32 = u_xlat1.x;
    x_1495 = x_1499;
  } else {
    x_1495 = 1.0f;
  }
  let x_1501 : f32 = x_1495;
  SV_Target0.w = x_1501;
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

