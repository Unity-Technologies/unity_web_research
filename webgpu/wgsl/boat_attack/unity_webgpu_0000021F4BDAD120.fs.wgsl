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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_369 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_436 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_626 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_883 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_996 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb15 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat48 : f32;
  var x_522 : f32;
  var x_533 : vec3<f32>;
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
  var x_1298 : f32;
  var x_1311 : f32;
  var x_1363 : f32;
  var x_1375 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb15 = (x_70 == 0.0f);
  let x_77 : vec3<f32> = vs_TEXCOORD7;
  let x_82 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_77) + x_82);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat29;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_107;
  let x_110 : bool = u_xlatb15;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat2;
    x_111 = x_114;
  } else {
    let x_116 : vec4<f32> = u_xlat3;
    x_111 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  }
  let x_118 : vec3<f32> = x_111;
  u_xlat15 = x_118;
  let x_120 : vec3<f32> = vs_TEXCOORD3;
  let x_121 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_120, x_121);
  let x_125 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_125);
  let x_128 : vec3<f32> = u_xlat2;
  let x_130 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_134 : f32 = vs_TEXCOORD7.y;
  let x_136 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat44 = (x_134 * x_136);
  let x_139 : f32 = x_44.unity_MatrixV[0i].z;
  let x_141 : f32 = vs_TEXCOORD7.x;
  let x_143 : f32 = u_xlat44;
  u_xlat44 = ((x_139 * x_141) + x_143);
  let x_146 : f32 = x_44.unity_MatrixV[2i].z;
  let x_148 : f32 = vs_TEXCOORD7.z;
  let x_150 : f32 = u_xlat44;
  u_xlat44 = ((x_146 * x_148) + x_150);
  let x_152 : f32 = u_xlat44;
  let x_155 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat44 = (x_152 + x_155);
  let x_157 : f32 = u_xlat44;
  let x_161 : f32 = x_44.x_ProjectionParams.y;
  u_xlat44 = (-(x_157) + -(x_161));
  let x_164 : f32 = u_xlat44;
  u_xlat44 = max(x_164, 0.0f);
  let x_166 : f32 = u_xlat44;
  let x_169 : f32 = x_44.unity_FogParams.x;
  u_xlat44 = (x_166 * x_169);
  let x_176 : vec4<f32> = vs_TEXCOORD0;
  let x_179 : f32 = x_44.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat3 = x_180;
  let x_186 : vec4<f32> = vs_TEXCOORD0;
  let x_189 : f32 = x_44.x_GlobalMipBias.x;
  let x_190 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_186.z, x_186.w), x_189);
  u_xlat4 = vec3<f32>(x_190.x, x_190.y, x_190.z);
  let x_192 : vec4<f32> = u_xlat3;
  let x_196 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : vec3<f32> = u_xlat2;
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_199, vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_205 : f32 = u_xlat3.x;
  u_xlat3.x = (x_205 + 0.5f);
  let x_209 : vec4<f32> = u_xlat3;
  let x_211 : vec3<f32> = u_xlat4;
  let x_212 : vec3<f32> = (vec3<f32>(x_209.x, x_209.x, x_209.x) * x_211);
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_217 : f32 = u_xlat3.w;
  u_xlat45 = max(x_217, 0.0001f);
  let x_220 : vec4<f32> = u_xlat3;
  let x_222 : f32 = u_xlat45;
  let x_224 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) / vec3<f32>(x_222, x_222, x_222));
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_230 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_231 : vec2<f32> = vec2<f32>(x_230.x, x_230.y);
  let x_235 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_231.x, x_231.y));
  let x_236 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_235.x, x_235.y, x_236.z);
  let x_238 : vec3<f32> = u_xlat4;
  let x_240 : vec4<f32> = hlslcc_FragCoord;
  let x_242 : vec2<f32> = (vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.x, x_240.y));
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_242.x, x_242.y, x_243.z);
  let x_246 : f32 = u_xlat4.y;
  let x_249 : f32 = x_44.x_ScaleBiasRt.x;
  let x_252 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat45 = ((x_246 * x_249) + x_252);
  let x_254 : f32 = u_xlat45;
  u_xlat4.z = (-(x_254) + 1.0f);
  let x_258 : f32 = u_xlat1;
  u_xlat45 = ((-(x_258) * 0.959999979f) + 0.959999979f);
  let x_264 : f32 = u_xlat45;
  u_xlat18 = (-(x_264) + 1.0f);
  let x_268 : vec4<f32> = u_xlat0;
  let x_270 : f32 = u_xlat45;
  u_xlat5 = (vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270, x_270, x_270));
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : f32 = u_xlat1;
  let x_282 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280, x_280, x_280) * vec3<f32>(x_282.x, x_282.y, x_282.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_291 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_291) + 1.0f);
  let x_294 : f32 = u_xlat1;
  let x_295 : f32 = u_xlat1;
  u_xlat45 = (x_294 * x_295);
  let x_297 : f32 = u_xlat45;
  u_xlat45 = max(x_297, 0.0078125f);
  let x_301 : f32 = u_xlat45;
  let x_302 : f32 = u_xlat45;
  u_xlat46 = (x_301 * x_302);
  let x_306 : f32 = u_xlat0.w;
  let x_307 : f32 = u_xlat18;
  u_xlat42 = (x_306 + x_307);
  let x_309 : f32 = u_xlat42;
  u_xlat42 = clamp(x_309, 0.0f, 1.0f);
  let x_311 : f32 = u_xlat45;
  u_xlat18 = ((x_311 * 4.0f) + 2.0f);
  let x_321 : vec3<f32> = u_xlat4;
  let x_324 : f32 = x_44.x_GlobalMipBias.x;
  let x_325 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_321.x, x_321.z), x_324);
  u_xlat4.x = x_325.x;
  let x_330 : f32 = u_xlat4.x;
  u_xlat32 = (x_330 + -1.0f);
  let x_335 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_336 : f32 = u_xlat32;
  u_xlat32 = ((x_335 * x_336) + 1.0f);
  let x_340 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_340, 1.0f);
  let x_345 : vec4<f32> = vs_TEXCOORD8;
  let x_346 : vec2<f32> = vec2<f32>(x_345.x, x_345.y);
  let x_348 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_346.x, x_346.y, x_348);
  let x_361 : vec3<f32> = txVec0;
  let x_363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_361.xy, x_361.z);
  u_xlat47 = x_363;
  let x_371 : f32 = x_369.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_371) + 1.0f);
  let x_375 : f32 = u_xlat47;
  let x_377 : f32 = x_369.x_MainLightShadowParams.x;
  let x_380 : f32 = u_xlat6.x;
  u_xlat47 = ((x_375 * x_377) + x_380);
  let x_384 : f32 = vs_TEXCOORD8.z;
  u_xlatb6 = (0.0f >= x_384);
  let x_388 : f32 = vs_TEXCOORD8.z;
  u_xlatb20 = (x_388 >= 1.0f);
  let x_390 : bool = u_xlatb20;
  let x_391 : bool = u_xlatb6;
  u_xlatb6 = (x_390 | x_391);
  let x_393 : bool = u_xlatb6;
  let x_394 : f32 = u_xlat47;
  u_xlat47 = select(x_394, 1.0f, x_393);
  let x_396 : vec3<f32> = vs_TEXCOORD7;
  let x_398 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_400 : vec3<f32> = (x_396 + -(x_398));
  let x_401 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat6;
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_403.x, x_403.y, x_403.z), vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_410 : f32 = u_xlat6.x;
  let x_412 : f32 = x_369.x_MainLightShadowParams.z;
  let x_415 : f32 = x_369.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_410 * x_412) + x_415);
  let x_419 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_419, 0.0f, 1.0f);
  let x_423 : f32 = u_xlat47;
  u_xlat20 = (-(x_423) + 1.0f);
  let x_427 : f32 = u_xlat6.x;
  let x_428 : f32 = u_xlat20;
  let x_430 : f32 = u_xlat47;
  u_xlat47 = ((x_427 * x_428) + x_430);
  let x_438 : f32 = x_436.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_438 == -1.0f));
  let x_440 : bool = u_xlatb6;
  if (x_440) {
    let x_443 : vec3<f32> = vs_TEXCOORD7;
    let x_446 : vec4<f32> = x_436.x_MainLightWorldToLight[1i];
    let x_448 : vec2<f32> = (vec2<f32>(x_443.y, x_443.y) * vec2<f32>(x_446.x, x_446.y));
    let x_449 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
    let x_452 : vec4<f32> = x_436.x_MainLightWorldToLight[0i];
    let x_454 : vec3<f32> = vs_TEXCOORD7;
    let x_457 : vec4<f32> = u_xlat6;
    let x_459 : vec2<f32> = ((vec2<f32>(x_452.x, x_452.y) * vec2<f32>(x_454.x, x_454.x)) + vec2<f32>(x_457.x, x_457.y));
    let x_460 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
    let x_463 : vec4<f32> = x_436.x_MainLightWorldToLight[2i];
    let x_465 : vec3<f32> = vs_TEXCOORD7;
    let x_468 : vec4<f32> = u_xlat6;
    let x_470 : vec2<f32> = ((vec2<f32>(x_463.x, x_463.y) * vec2<f32>(x_465.z, x_465.z)) + vec2<f32>(x_468.x, x_468.y));
    let x_471 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
    let x_473 : vec4<f32> = u_xlat6;
    let x_476 : vec4<f32> = x_436.x_MainLightWorldToLight[3i];
    let x_478 : vec2<f32> = (vec2<f32>(x_473.x, x_473.y) + vec2<f32>(x_476.x, x_476.y));
    let x_479 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
    let x_481 : vec4<f32> = u_xlat6;
    let x_485 : vec2<f32> = ((vec2<f32>(x_481.x, x_481.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_486 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
    let x_493 : vec4<f32> = u_xlat6;
    let x_496 : f32 = x_44.x_GlobalMipBias.x;
    let x_497 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_493.x, x_493.y), x_496);
    u_xlat6 = x_497;
    let x_502 : f32 = x_436.x_MainLightCookieTextureFormat;
    let x_504 : f32 = x_436.x_MainLightCookieTextureFormat;
    let x_506 : f32 = x_436.x_MainLightCookieTextureFormat;
    let x_508 : f32 = x_436.x_MainLightCookieTextureFormat;
    let x_509 : vec4<f32> = vec4<f32>(x_502, x_504, x_506, x_508);
    let x_517 : vec4<bool> = (vec4<f32>(x_509.x, x_509.y, x_509.z, x_509.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_517.x, x_517.y);
    let x_521 : bool = u_xlatb7.y;
    if (x_521) {
      let x_526 : f32 = u_xlat6.w;
      x_522 = x_526;
    } else {
      let x_529 : f32 = u_xlat6.x;
      x_522 = x_529;
    }
    let x_530 : f32 = x_522;
    u_xlat48 = x_530;
    let x_532 : bool = u_xlatb7.x;
    if (x_532) {
      let x_536 : vec4<f32> = u_xlat6;
      x_533 = vec3<f32>(x_536.x, x_536.y, x_536.z);
    } else {
      let x_539 : f32 = u_xlat48;
      x_533 = vec3<f32>(x_539, x_539, x_539);
    }
    let x_541 : vec3<f32> = x_533;
    let x_542 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_548 : vec4<f32> = u_xlat6;
  let x_551 : vec4<f32> = x_44.x_MainLightColor;
  let x_553 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) * vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : f32 = u_xlat32;
  let x_558 : vec4<f32> = u_xlat6;
  let x_560 : vec3<f32> = (vec3<f32>(x_556, x_556, x_556) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec3<f32> = u_xlat15;
  let x_565 : vec3<f32> = u_xlat2;
  u_xlat48 = dot(-(x_563), x_565);
  let x_567 : f32 = u_xlat48;
  let x_568 : f32 = u_xlat48;
  u_xlat48 = (x_567 + x_568);
  let x_571 : vec3<f32> = u_xlat2;
  let x_572 : f32 = u_xlat48;
  let x_576 : vec3<f32> = u_xlat15;
  let x_578 : vec3<f32> = ((x_571 * -(vec3<f32>(x_572, x_572, x_572))) + -(x_576));
  let x_579 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec3<f32> = u_xlat2;
  let x_582 : vec3<f32> = u_xlat15;
  u_xlat48 = dot(x_581, x_582);
  let x_584 : f32 = u_xlat48;
  u_xlat48 = clamp(x_584, 0.0f, 1.0f);
  let x_586 : f32 = u_xlat48;
  u_xlat48 = (-(x_586) + 1.0f);
  let x_589 : f32 = u_xlat48;
  let x_590 : f32 = u_xlat48;
  u_xlat48 = (x_589 * x_590);
  let x_592 : f32 = u_xlat48;
  let x_593 : f32 = u_xlat48;
  u_xlat48 = (x_592 * x_593);
  let x_596 : f32 = u_xlat1;
  u_xlat49 = ((-(x_596) * 0.699999988f) + 1.700000048f);
  let x_602 : f32 = u_xlat1;
  let x_603 : f32 = u_xlat49;
  u_xlat1 = (x_602 * x_603);
  let x_605 : f32 = u_xlat1;
  u_xlat1 = (x_605 * 6.0f);
  let x_616 : vec4<f32> = u_xlat7;
  let x_618 : f32 = u_xlat1;
  let x_619 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_616.x, x_616.y, x_616.z), x_618);
  u_xlat7 = x_619;
  let x_621 : f32 = u_xlat7.w;
  u_xlat1 = (x_621 + -1.0f);
  let x_628 : f32 = x_626.unity_SpecCube0_HDR.w;
  let x_629 : f32 = u_xlat1;
  u_xlat1 = ((x_628 * x_629) + 1.0f);
  let x_632 : f32 = u_xlat1;
  u_xlat1 = max(x_632, 0.0f);
  let x_634 : f32 = u_xlat1;
  u_xlat1 = log2(x_634);
  let x_636 : f32 = u_xlat1;
  let x_638 : f32 = x_626.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_636 * x_638);
  let x_640 : f32 = u_xlat1;
  u_xlat1 = exp2(x_640);
  let x_642 : f32 = u_xlat1;
  let x_644 : f32 = x_626.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_642 * x_644);
  let x_646 : vec4<f32> = u_xlat7;
  let x_648 : f32 = u_xlat1;
  let x_650 : vec3<f32> = (vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_648, x_648, x_648));
  let x_651 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_655 : f32 = u_xlat45;
  let x_657 : f32 = u_xlat45;
  u_xlat8 = ((vec2<f32>(x_655, x_655) * vec2<f32>(x_657, x_657)) + vec2<f32>(-1.0f, 1.0f));
  let x_663 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_663);
  let x_666 : vec4<f32> = u_xlat0;
  let x_669 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_666.x, x_666.y, x_666.z)) + vec3<f32>(x_669, x_669, x_669));
  let x_672 : f32 = u_xlat48;
  let x_674 : vec3<f32> = u_xlat22;
  let x_676 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_672, x_672, x_672) * x_674) + vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : f32 = u_xlat1;
  let x_681 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_679, x_679, x_679) * x_681);
  let x_683 : vec4<f32> = u_xlat7;
  let x_685 : vec3<f32> = u_xlat22;
  let x_686 : vec3<f32> = (vec3<f32>(x_683.x, x_683.y, x_683.z) * x_685);
  let x_687 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec4<f32> = u_xlat3;
  let x_691 : vec3<f32> = u_xlat5;
  let x_693 : vec4<f32> = u_xlat7;
  let x_695 : vec3<f32> = ((vec3<f32>(x_689.x, x_689.y, x_689.z) * x_691) + vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : f32 = u_xlat47;
  let x_701 : f32 = x_626.unity_LightData.z;
  u_xlat42 = (x_698 * x_701);
  let x_703 : vec3<f32> = u_xlat2;
  let x_705 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_703, vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : f32 = u_xlat1;
  u_xlat1 = clamp(x_708, 0.0f, 1.0f);
  let x_710 : f32 = u_xlat42;
  let x_711 : f32 = u_xlat1;
  u_xlat42 = (x_710 * x_711);
  let x_713 : f32 = u_xlat42;
  let x_715 : vec4<f32> = u_xlat6;
  let x_717 : vec3<f32> = (vec3<f32>(x_713, x_713, x_713) * vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec3<f32> = u_xlat15;
  let x_722 : vec4<f32> = x_44.x_MainLightPosition;
  let x_724 : vec3<f32> = (x_720 + vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec4<f32> = u_xlat7;
  let x_729 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_727.x, x_727.y, x_727.z), vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : f32 = u_xlat42;
  u_xlat42 = max(x_732, 1.17549435e-37f);
  let x_735 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_735);
  let x_737 : f32 = u_xlat42;
  let x_739 : vec4<f32> = u_xlat7;
  let x_741 : vec3<f32> = (vec3<f32>(x_737, x_737, x_737) * vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec3<f32> = u_xlat2;
  let x_745 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_744, vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : f32 = u_xlat42;
  u_xlat42 = clamp(x_748, 0.0f, 1.0f);
  let x_751 : vec4<f32> = x_44.x_MainLightPosition;
  let x_753 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_751.x, x_751.y, x_751.z), vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_756 : f32 = u_xlat1;
  u_xlat1 = clamp(x_756, 0.0f, 1.0f);
  let x_758 : f32 = u_xlat42;
  let x_759 : f32 = u_xlat42;
  u_xlat42 = (x_758 * x_759);
  let x_761 : f32 = u_xlat42;
  let x_763 : f32 = u_xlat8.x;
  u_xlat42 = ((x_761 * x_763) + 1.000010014f);
  let x_767 : f32 = u_xlat1;
  let x_768 : f32 = u_xlat1;
  u_xlat1 = (x_767 * x_768);
  let x_770 : f32 = u_xlat42;
  let x_771 : f32 = u_xlat42;
  u_xlat42 = (x_770 * x_771);
  let x_773 : f32 = u_xlat1;
  u_xlat1 = max(x_773, 0.100000001f);
  let x_776 : f32 = u_xlat42;
  let x_777 : f32 = u_xlat1;
  u_xlat42 = (x_776 * x_777);
  let x_779 : f32 = u_xlat18;
  let x_780 : f32 = u_xlat42;
  u_xlat42 = (x_779 * x_780);
  let x_782 : f32 = u_xlat46;
  let x_783 : f32 = u_xlat42;
  u_xlat42 = (x_782 / x_783);
  let x_785 : vec4<f32> = u_xlat0;
  let x_787 : f32 = u_xlat42;
  let x_790 : vec3<f32> = u_xlat5;
  let x_791 : vec3<f32> = ((vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_787, x_787, x_787)) + x_790);
  let x_792 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec4<f32> = u_xlat6;
  let x_796 : vec4<f32> = u_xlat7;
  let x_798 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_802 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_804 : f32 = x_626.unity_LightData.y;
  u_xlat42 = min(x_802, x_804);
  let x_808 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_808));
  let x_812 : f32 = x_436.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_814 : f32 = x_436.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_816 : f32 = x_436.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_818 : f32 = x_436.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_819 : vec4<f32> = vec4<f32>(x_812, x_814, x_816, x_818);
  let x_825 : vec4<bool> = (vec4<f32>(x_819.x, x_819.y, x_819.z, x_819.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_825.x, x_825.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_836 : u32 = u_xlatu_loop_1;
    let x_837 : u32 = u_xlatu42;
    if ((x_836 < x_837)) {
    } else {
      break;
    }
    let x_840 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_840 >> 2u);
    let x_844 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_844 & 3u));
    let x_847 : u32 = u_xlatu45;
    let x_850 : vec4<f32> = x_626.unity_LightIndices[bitcast<i32>(x_847)];
    let x_860 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_865 : vec4<u32> = indexable[x_860];
    u_xlat45 = dot(x_850, bitcast<vec4<f32>>(x_865));
    let x_868 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_868));
    let x_872 : vec3<f32> = vs_TEXCOORD7;
    let x_884 : u32 = u_xlatu45;
    let x_887 : vec4<f32> = x_883.x_AdditionalLightsPosition[bitcast<i32>(x_884)];
    let x_890 : u32 = u_xlatu45;
    let x_893 : vec4<f32> = x_883.x_AdditionalLightsPosition[bitcast<i32>(x_890)];
    u_xlat9 = ((-(x_872) * vec3<f32>(x_887.w, x_887.w, x_887.w)) + vec3<f32>(x_893.x, x_893.y, x_893.z));
    let x_896 : vec3<f32> = u_xlat9;
    let x_897 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_896, x_897);
    let x_899 : f32 = u_xlat47;
    u_xlat47 = max(x_899, 6.10351562e-05f);
    let x_902 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_902);
    let x_905 : f32 = u_xlat48;
    let x_907 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_905, x_905, x_905) * x_907);
    let x_910 : f32 = u_xlat47;
    u_xlat35.x = (1.0f / x_910);
    let x_913 : f32 = u_xlat47;
    let x_914 : u32 = u_xlatu45;
    let x_917 : f32 = x_883.x_AdditionalLightsAttenuation[bitcast<i32>(x_914)].x;
    u_xlat47 = (x_913 * x_917);
    let x_919 : f32 = u_xlat47;
    let x_921 : f32 = u_xlat47;
    u_xlat47 = ((-(x_919) * x_921) + 1.0f);
    let x_924 : f32 = u_xlat47;
    u_xlat47 = max(x_924, 0.0f);
    let x_926 : f32 = u_xlat47;
    let x_927 : f32 = u_xlat47;
    u_xlat47 = (x_926 * x_927);
    let x_929 : f32 = u_xlat47;
    let x_931 : f32 = u_xlat35.x;
    u_xlat47 = (x_929 * x_931);
    let x_933 : u32 = u_xlatu45;
    let x_936 : vec4<f32> = x_883.x_AdditionalLightsSpotDir[bitcast<i32>(x_933)];
    let x_938 : vec3<f32> = u_xlat10;
    u_xlat35.x = dot(vec3<f32>(x_936.x, x_936.y, x_936.z), x_938);
    let x_942 : f32 = u_xlat35.x;
    let x_943 : u32 = u_xlatu45;
    let x_946 : f32 = x_883.x_AdditionalLightsAttenuation[bitcast<i32>(x_943)].z;
    let x_948 : u32 = u_xlatu45;
    let x_951 : f32 = x_883.x_AdditionalLightsAttenuation[bitcast<i32>(x_948)].w;
    u_xlat35.x = ((x_942 * x_946) + x_951);
    let x_955 : f32 = u_xlat35.x;
    u_xlat35.x = clamp(x_955, 0.0f, 1.0f);
    let x_959 : f32 = u_xlat35.x;
    let x_961 : f32 = u_xlat35.x;
    u_xlat35.x = (x_959 * x_961);
    let x_964 : f32 = u_xlat47;
    let x_966 : f32 = u_xlat35.x;
    u_xlat47 = (x_964 * x_966);
    let x_969 : u32 = u_xlatu45;
    u_xlatu35 = (x_969 >> 5u);
    let x_972 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_972) & 31i)));
    let x_978 : i32 = u_xlati49;
    let x_980 : u32 = u_xlatu35;
    let x_983 : f32 = x_436.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_980)].el;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_978) & bitcast<u32>(x_983)));
    let x_987 : i32 = u_xlati35;
    if ((x_987 != 0i)) {
      let x_997 : u32 = u_xlatu45;
      let x_1000 : f32 = x_996.x_AdditionalLightsLightTypes[bitcast<i32>(x_997)].el;
      u_xlati35 = i32(x_1000);
      let x_1002 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1002 != 0i));
      let x_1006 : u32 = u_xlatu45;
      u_xlati51 = (bitcast<i32>(x_1006) << bitcast<u32>(2i));
      let x_1009 : i32 = u_xlati49;
      if ((x_1009 != 0i)) {
        let x_1014 : vec3<f32> = vs_TEXCOORD7;
        let x_1016 : i32 = u_xlati51;
        let x_1019 : i32 = u_xlati51;
        let x_1023 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[((x_1016 + 1i) / 4i)][((x_1019 + 1i) % 4i)];
        let x_1025 : vec3<f32> = (vec3<f32>(x_1014.y, x_1014.y, x_1014.y) * vec3<f32>(x_1023.x, x_1023.y, x_1023.w));
        let x_1026 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
        let x_1028 : i32 = u_xlati51;
        let x_1030 : i32 = u_xlati51;
        let x_1033 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[(x_1028 / 4i)][(x_1030 % 4i)];
        let x_1035 : vec3<f32> = vs_TEXCOORD7;
        let x_1038 : vec4<f32> = u_xlat11;
        let x_1040 : vec3<f32> = ((vec3<f32>(x_1033.x, x_1033.y, x_1033.w) * vec3<f32>(x_1035.x, x_1035.x, x_1035.x)) + vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
        let x_1041 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
        let x_1043 : i32 = u_xlati51;
        let x_1046 : i32 = u_xlati51;
        let x_1050 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[((x_1043 + 2i) / 4i)][((x_1046 + 2i) % 4i)];
        let x_1052 : vec3<f32> = vs_TEXCOORD7;
        let x_1055 : vec4<f32> = u_xlat11;
        let x_1057 : vec3<f32> = ((vec3<f32>(x_1050.x, x_1050.y, x_1050.w) * vec3<f32>(x_1052.z, x_1052.z, x_1052.z)) + vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
        let x_1058 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat11;
        let x_1062 : i32 = u_xlati51;
        let x_1065 : i32 = u_xlati51;
        let x_1069 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[((x_1062 + 3i) / 4i)][((x_1065 + 3i) % 4i)];
        let x_1071 : vec3<f32> = (vec3<f32>(x_1060.x, x_1060.y, x_1060.z) + vec3<f32>(x_1069.x, x_1069.y, x_1069.w));
        let x_1072 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
        let x_1074 : vec4<f32> = u_xlat11;
        let x_1076 : vec4<f32> = u_xlat11;
        let x_1078 : vec2<f32> = (vec2<f32>(x_1074.x, x_1074.y) / vec2<f32>(x_1076.z, x_1076.z));
        let x_1079 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1078.x, x_1078.y, x_1079.z, x_1079.w);
        let x_1081 : vec4<f32> = u_xlat11;
        let x_1084 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1085 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1087 : vec4<f32> = u_xlat11;
        let x_1091 : vec2<f32> = clamp(vec2<f32>(x_1087.x, x_1087.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1092 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1092.w);
        let x_1094 : u32 = u_xlatu45;
        let x_1097 : vec4<f32> = x_996.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1094)];
        let x_1099 : vec4<f32> = u_xlat11;
        let x_1102 : u32 = u_xlatu45;
        let x_1105 : vec4<f32> = x_996.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1102)];
        let x_1107 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1099.x, x_1099.y)) + vec2<f32>(x_1105.z, x_1105.w));
        let x_1108 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
      } else {
        let x_1112 : i32 = u_xlati35;
        u_xlatb35 = (x_1112 == 1i);
        let x_1114 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1114);
        let x_1116 : i32 = u_xlati35;
        if ((x_1116 != 0i)) {
          let x_1120 : vec3<f32> = vs_TEXCOORD7;
          let x_1122 : i32 = u_xlati51;
          let x_1125 : i32 = u_xlati51;
          let x_1129 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[((x_1122 + 1i) / 4i)][((x_1125 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1120.y, x_1120.y) * vec2<f32>(x_1129.x, x_1129.y));
          let x_1132 : i32 = u_xlati51;
          let x_1134 : i32 = u_xlati51;
          let x_1137 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[(x_1132 / 4i)][(x_1134 % 4i)];
          let x_1139 : vec3<f32> = vs_TEXCOORD7;
          let x_1142 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1137.x, x_1137.y) * vec2<f32>(x_1139.x, x_1139.x)) + x_1142);
          let x_1144 : i32 = u_xlati51;
          let x_1147 : i32 = u_xlati51;
          let x_1151 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[((x_1144 + 2i) / 4i)][((x_1147 + 2i) % 4i)];
          let x_1153 : vec3<f32> = vs_TEXCOORD7;
          let x_1156 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(x_1153.z, x_1153.z)) + x_1156);
          let x_1158 : vec2<f32> = u_xlat35;
          let x_1159 : i32 = u_xlati51;
          let x_1162 : i32 = u_xlati51;
          let x_1166 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[((x_1159 + 3i) / 4i)][((x_1162 + 3i) % 4i)];
          u_xlat35 = (x_1158 + vec2<f32>(x_1166.x, x_1166.y));
          let x_1169 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1169 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1172 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1172);
          let x_1174 : u32 = u_xlatu45;
          let x_1177 : vec4<f32> = x_996.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1174)];
          let x_1179 : vec2<f32> = u_xlat35;
          let x_1181 : u32 = u_xlatu45;
          let x_1184 : vec4<f32> = x_996.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1181)];
          let x_1186 : vec2<f32> = ((vec2<f32>(x_1177.x, x_1177.y) * x_1179) + vec2<f32>(x_1184.z, x_1184.w));
          let x_1187 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        } else {
          let x_1191 : vec3<f32> = vs_TEXCOORD7;
          let x_1193 : i32 = u_xlati51;
          let x_1196 : i32 = u_xlati51;
          let x_1200 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[((x_1193 + 1i) / 4i)][((x_1196 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1191.y, x_1191.y, x_1191.y, x_1191.y) * x_1200);
          let x_1202 : i32 = u_xlati51;
          let x_1204 : i32 = u_xlati51;
          let x_1207 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[(x_1202 / 4i)][(x_1204 % 4i)];
          let x_1208 : vec3<f32> = vs_TEXCOORD7;
          let x_1211 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1207 * vec4<f32>(x_1208.x, x_1208.x, x_1208.x, x_1208.x)) + x_1211);
          let x_1213 : i32 = u_xlati51;
          let x_1216 : i32 = u_xlati51;
          let x_1220 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[((x_1213 + 2i) / 4i)][((x_1216 + 2i) % 4i)];
          let x_1221 : vec3<f32> = vs_TEXCOORD7;
          let x_1224 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1220 * vec4<f32>(x_1221.z, x_1221.z, x_1221.z, x_1221.z)) + x_1224);
          let x_1226 : vec4<f32> = u_xlat12;
          let x_1227 : i32 = u_xlati51;
          let x_1230 : i32 = u_xlati51;
          let x_1234 : vec4<f32> = x_996.x_AdditionalLightsWorldToLights[((x_1227 + 3i) / 4i)][((x_1230 + 3i) % 4i)];
          u_xlat12 = (x_1226 + x_1234);
          let x_1236 : vec4<f32> = u_xlat12;
          let x_1238 : vec4<f32> = u_xlat12;
          let x_1240 : vec3<f32> = (vec3<f32>(x_1236.x, x_1236.y, x_1236.z) / vec3<f32>(x_1238.w, x_1238.w, x_1238.w));
          let x_1241 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
          let x_1243 : vec4<f32> = u_xlat12;
          let x_1245 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1243.x, x_1243.y, x_1243.z), vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
          let x_1250 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1250);
          let x_1253 : vec2<f32> = u_xlat35;
          let x_1255 : vec4<f32> = u_xlat12;
          let x_1257 : vec3<f32> = (vec3<f32>(x_1253.x, x_1253.x, x_1253.x) * vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
          let x_1258 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
          let x_1260 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1260.x, x_1260.y, x_1260.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1267 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1267, 0.000001f);
          let x_1272 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1272);
          let x_1276 : vec2<f32> = u_xlat35;
          let x_1278 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1276.x, x_1276.x, x_1276.x) * vec3<f32>(x_1278.z, x_1278.x, x_1278.y));
          let x_1282 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1282);
          let x_1286 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1286, 0.0f, 1.0f);
          let x_1290 : vec3<f32> = u_xlat13;
          let x_1293 : vec4<bool> = (vec4<f32>(x_1290.y, x_1290.z, x_1290.y, x_1290.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1293.x, x_1293.y);
          let x_1297 : bool = u_xlatb39.x;
          if (x_1297) {
            let x_1302 : f32 = u_xlat13.x;
            x_1298 = x_1302;
          } else {
            let x_1305 : f32 = u_xlat13.x;
            x_1298 = -(x_1305);
          }
          let x_1307 : f32 = x_1298;
          u_xlat39.x = x_1307;
          let x_1310 : bool = u_xlatb39.y;
          if (x_1310) {
            let x_1315 : f32 = u_xlat13.x;
            x_1311 = x_1315;
          } else {
            let x_1318 : f32 = u_xlat13.x;
            x_1311 = -(x_1318);
          }
          let x_1320 : f32 = x_1311;
          u_xlat39.y = x_1320;
          let x_1322 : vec4<f32> = u_xlat12;
          let x_1324 : vec2<f32> = u_xlat35;
          let x_1327 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(x_1324.x, x_1324.x)) + x_1327);
          let x_1329 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1329 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1332 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1332, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1336 : u32 = u_xlatu45;
          let x_1339 : vec4<f32> = x_996.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1336)];
          let x_1341 : vec2<f32> = u_xlat35;
          let x_1343 : u32 = u_xlatu45;
          let x_1346 : vec4<f32> = x_996.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1343)];
          let x_1348 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.y) * x_1341) + vec2<f32>(x_1346.z, x_1346.w));
          let x_1349 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1349.w);
        }
      }
      let x_1356 : vec4<f32> = u_xlat11;
      let x_1359 : f32 = x_44.x_GlobalMipBias.x;
      let x_1360 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1356.x, x_1356.y), x_1359);
      u_xlat11 = x_1360;
      let x_1362 : bool = u_xlatb7.y;
      if (x_1362) {
        let x_1367 : f32 = u_xlat11.w;
        x_1363 = x_1367;
      } else {
        let x_1370 : f32 = u_xlat11.x;
        x_1363 = x_1370;
      }
      let x_1371 : f32 = x_1363;
      u_xlat35.x = x_1371;
      let x_1374 : bool = u_xlatb7.x;
      if (x_1374) {
        let x_1378 : vec4<f32> = u_xlat11;
        x_1375 = vec3<f32>(x_1378.x, x_1378.y, x_1378.z);
      } else {
        let x_1381 : vec2<f32> = u_xlat35;
        x_1375 = vec3<f32>(x_1381.x, x_1381.x, x_1381.x);
      }
      let x_1383 : vec3<f32> = x_1375;
      let x_1384 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1390 : vec4<f32> = u_xlat11;
    let x_1392 : u32 = u_xlatu45;
    let x_1395 : vec4<f32> = x_883.x_AdditionalLightsColor[bitcast<i32>(x_1392)];
    let x_1397 : vec3<f32> = (vec3<f32>(x_1390.x, x_1390.y, x_1390.z) * vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
    let x_1398 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
    let x_1400 : f32 = u_xlat32;
    let x_1402 : vec4<f32> = u_xlat11;
    let x_1404 : vec3<f32> = (vec3<f32>(x_1400, x_1400, x_1400) * vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
    let x_1405 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);
    let x_1407 : vec3<f32> = u_xlat2;
    let x_1408 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1407, x_1408);
    let x_1410 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1410, 0.0f, 1.0f);
    let x_1412 : f32 = u_xlat45;
    let x_1413 : f32 = u_xlat47;
    u_xlat45 = (x_1412 * x_1413);
    let x_1415 : f32 = u_xlat45;
    let x_1417 : vec4<f32> = u_xlat11;
    let x_1419 : vec3<f32> = (vec3<f32>(x_1415, x_1415, x_1415) * vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
    let x_1420 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1419.x, x_1419.y, x_1419.z, x_1420.w);
    let x_1422 : vec3<f32> = u_xlat9;
    let x_1423 : f32 = u_xlat48;
    let x_1426 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1422 * vec3<f32>(x_1423, x_1423, x_1423)) + x_1426);
    let x_1428 : vec3<f32> = u_xlat9;
    let x_1429 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1428, x_1429);
    let x_1431 : f32 = u_xlat45;
    u_xlat45 = max(x_1431, 1.17549435e-37f);
    let x_1433 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1433);
    let x_1435 : f32 = u_xlat45;
    let x_1437 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1435, x_1435, x_1435) * x_1437);
    let x_1439 : vec3<f32> = u_xlat2;
    let x_1440 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1439, x_1440);
    let x_1442 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1442, 0.0f, 1.0f);
    let x_1444 : vec3<f32> = u_xlat10;
    let x_1445 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1444, x_1445);
    let x_1447 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1447, 0.0f, 1.0f);
    let x_1449 : f32 = u_xlat45;
    let x_1450 : f32 = u_xlat45;
    u_xlat45 = (x_1449 * x_1450);
    let x_1452 : f32 = u_xlat45;
    let x_1454 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1452 * x_1454) + 1.000010014f);
    let x_1457 : f32 = u_xlat47;
    let x_1458 : f32 = u_xlat47;
    u_xlat47 = (x_1457 * x_1458);
    let x_1460 : f32 = u_xlat45;
    let x_1461 : f32 = u_xlat45;
    u_xlat45 = (x_1460 * x_1461);
    let x_1463 : f32 = u_xlat47;
    u_xlat47 = max(x_1463, 0.100000001f);
    let x_1465 : f32 = u_xlat45;
    let x_1466 : f32 = u_xlat47;
    u_xlat45 = (x_1465 * x_1466);
    let x_1468 : f32 = u_xlat18;
    let x_1469 : f32 = u_xlat45;
    u_xlat45 = (x_1468 * x_1469);
    let x_1471 : f32 = u_xlat46;
    let x_1472 : f32 = u_xlat45;
    u_xlat45 = (x_1471 / x_1472);
    let x_1474 : vec4<f32> = u_xlat0;
    let x_1476 : f32 = u_xlat45;
    let x_1479 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1474.x, x_1474.y, x_1474.z) * vec3<f32>(x_1476, x_1476, x_1476)) + x_1479);
    let x_1481 : vec3<f32> = u_xlat9;
    let x_1482 : vec4<f32> = u_xlat11;
    let x_1485 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1481 * vec3<f32>(x_1482.x, x_1482.y, x_1482.z)) + x_1485);

    continuing {
      let x_1487 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1487 + bitcast<u32>(1i));
    }
  }
  let x_1489 : vec4<f32> = u_xlat3;
  let x_1491 : vec3<f32> = u_xlat4;
  let x_1494 : vec4<f32> = u_xlat6;
  let x_1496 : vec3<f32> = ((vec3<f32>(x_1489.x, x_1489.y, x_1489.z) * vec3<f32>(x_1491.x, x_1491.x, x_1491.x)) + vec3<f32>(x_1494.x, x_1494.y, x_1494.z));
  let x_1497 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
  let x_1499 : vec3<f32> = u_xlat22;
  let x_1500 : vec4<f32> = u_xlat0;
  let x_1502 : vec3<f32> = (x_1499 + vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
  let x_1503 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
  let x_1505 : f32 = u_xlat44;
  let x_1506 : f32 = u_xlat44;
  u_xlat42 = (x_1505 * -(x_1506));
  let x_1509 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1509);
  let x_1511 : vec4<f32> = u_xlat0;
  let x_1515 : vec4<f32> = x_44.unity_FogColor;
  let x_1518 : vec3<f32> = (vec3<f32>(x_1511.x, x_1511.y, x_1511.z) + -(vec3<f32>(x_1515.x, x_1515.y, x_1515.z)));
  let x_1519 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
  let x_1523 : f32 = u_xlat42;
  let x_1525 : vec4<f32> = u_xlat0;
  let x_1529 : vec4<f32> = x_44.unity_FogColor;
  let x_1531 : vec3<f32> = ((vec3<f32>(x_1523, x_1523, x_1523) * vec3<f32>(x_1525.x, x_1525.y, x_1525.z)) + vec3<f32>(x_1529.x, x_1529.y, x_1529.z));
  let x_1532 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1531.x, x_1531.y, x_1531.z, x_1532.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

