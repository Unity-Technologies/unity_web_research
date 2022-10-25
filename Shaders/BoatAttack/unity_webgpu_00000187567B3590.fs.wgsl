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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_166 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_339 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_629 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1085 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1193 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb14 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat3 : vec3<f32>;
  var x_108 : f32;
  var x_122 : f32;
  var x_134 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu14 : u32;
  var u_xlati14 : i32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat43 : f32;
  var u_xlat39 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlatb40 : bool;
  var x_578 : f32;
  var u_xlat40 : f32;
  var x_698 : f32;
  var x_709 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu39 : u32;
  var u_xlatb31 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati46 : i32;
  var u_xlat45 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlatu48 : u32;
  var u_xlati10 : i32;
  var u_xlati48 : i32;
  var u_xlati23 : i32;
  var u_xlat10 : vec4<f32>;
  var u_xlatb48 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb23 : vec3<bool>;
  var u_xlat23 : vec3<f32>;
  var x_1509 : f32;
  var x_1522 : f32;
  var x_1584 : f32;
  var x_1595 : vec3<f32>;
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
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_58.x, x_58.y), x_61);
  u_xlat1.x = x_62.x;
  let x_71 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_71 == 0.0f);
  let x_77 : vec3<f32> = vs_TEXCOORD7;
  let x_82 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_83 : vec3<f32> = (-(x_77) + x_82);
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat27.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_95 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_95);
  let x_98 : vec2<f32> = u_xlat27;
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec3<f32> = (vec3<f32>(x_98.x, x_98.x, x_98.x) * vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_107 : bool = u_xlatb14;
  if (x_107) {
    let x_112 : f32 = u_xlat2.x;
    x_108 = x_112;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[0i].z;
    x_108 = x_118;
  }
  let x_119 : f32 = x_108;
  u_xlat3.x = x_119;
  let x_121 : bool = u_xlatb14;
  if (x_121) {
    let x_127 : f32 = u_xlat2.y;
    x_122 = x_127;
  } else {
    let x_130 : f32 = x_44.unity_MatrixV[1i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat3.y = x_131;
  let x_133 : bool = u_xlatb14;
  if (x_133) {
    let x_138 : f32 = u_xlat2.z;
    x_134 = x_138;
  } else {
    let x_142 : f32 = x_44.unity_MatrixV[2i].z;
    x_134 = x_142;
  }
  let x_143 : f32 = x_134;
  u_xlat3.z = x_143;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat14.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_152);
  let x_155 : vec3<f32> = u_xlat14;
  let x_157 : vec3<f32> = vs_TEXCOORD3;
  let x_158 : vec3<f32> = (vec3<f32>(x_155.x, x_155.x, x_155.x) * x_157);
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec3<f32> = vs_TEXCOORD7;
  let x_169 : vec4<f32> = x_166.x_CascadeShadowSplitSpheres0;
  u_xlat14 = (x_161 + -(vec3<f32>(x_169.x, x_169.y, x_169.z)));
  let x_174 : vec3<f32> = vs_TEXCOORD7;
  let x_176 : vec4<f32> = x_166.x_CascadeShadowSplitSpheres1;
  u_xlat4 = (x_174 + -(vec3<f32>(x_176.x, x_176.y, x_176.z)));
  let x_181 : vec3<f32> = vs_TEXCOORD7;
  let x_184 : vec4<f32> = x_166.x_CascadeShadowSplitSpheres2;
  let x_187 : vec3<f32> = (x_181 + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : vec3<f32> = vs_TEXCOORD7;
  let x_194 : vec4<f32> = x_166.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_191 + -(vec3<f32>(x_194.x, x_194.y, x_194.z)));
  let x_199 : vec3<f32> = u_xlat14;
  let x_200 : vec3<f32> = u_xlat14;
  u_xlat7.x = dot(x_199, x_200);
  let x_203 : vec3<f32> = u_xlat4;
  let x_204 : vec3<f32> = u_xlat4;
  u_xlat7.y = dot(x_203, x_204);
  let x_207 : vec4<f32> = u_xlat5;
  let x_209 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_207.x, x_207.y, x_207.z), vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_213 : vec3<f32> = u_xlat6;
  let x_214 : vec3<f32> = u_xlat6;
  u_xlat7.w = dot(x_213, x_214);
  let x_220 : vec4<f32> = u_xlat7;
  let x_223 : vec4<f32> = x_166.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_220 < x_223);
  let x_226 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb4.x;
  u_xlat14.x = select(-0.0f, -1.0f, x_242);
  let x_248 : bool = u_xlatb4.y;
  u_xlat14.y = select(-0.0f, -1.0f, x_248);
  let x_252 : bool = u_xlatb4.z;
  u_xlat14.z = select(-0.0f, -1.0f, x_252);
  let x_255 : vec3<f32> = u_xlat14;
  let x_256 : vec4<f32> = u_xlat5;
  u_xlat14 = (x_255 + vec3<f32>(x_256.y, x_256.z, x_256.w));
  let x_259 : vec3<f32> = u_xlat14;
  let x_261 : vec3<f32> = max(x_259, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_262 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_261.z);
  let x_264 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(x_264, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_272 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_272) + 4.0f);
  let x_279 : f32 = u_xlat14.x;
  u_xlatu14 = u32(x_279);
  let x_283 : u32 = u_xlatu14;
  u_xlati14 = (bitcast<i32>(x_283) << bitcast<u32>(2i));
  let x_286 : vec3<f32> = vs_TEXCOORD7;
  let x_288 : i32 = u_xlati14;
  let x_291 : i32 = u_xlati14;
  let x_295 : vec4<f32> = x_166.x_MainLightWorldToShadow[((x_288 + 1i) / 4i)][((x_291 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_286.y, x_286.y, x_286.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : i32 = u_xlati14;
  let x_300 : i32 = u_xlati14;
  let x_303 : vec4<f32> = x_166.x_MainLightWorldToShadow[(x_298 / 4i)][(x_300 % 4i)];
  let x_305 : vec3<f32> = vs_TEXCOORD7;
  let x_308 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + x_308);
  let x_310 : i32 = u_xlati14;
  let x_313 : i32 = u_xlati14;
  let x_317 : vec4<f32> = x_166.x_MainLightWorldToShadow[((x_310 + 2i) / 4i)][((x_313 + 2i) % 4i)];
  let x_319 : vec3<f32> = vs_TEXCOORD7;
  let x_322 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(x_319.z, x_319.z, x_319.z)) + x_322);
  let x_324 : vec3<f32> = u_xlat4;
  let x_325 : i32 = u_xlati14;
  let x_328 : i32 = u_xlati14;
  let x_332 : vec4<f32> = x_166.x_MainLightWorldToShadow[((x_325 + 3i) / 4i)][((x_328 + 3i) % 4i)];
  u_xlat14 = (x_324 + vec3<f32>(x_332.x, x_332.y, x_332.z));
  u_xlat2.w = 1.0f;
  let x_342 : vec4<f32> = x_339.unity_SHAr;
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_342, x_343);
  let x_348 : vec4<f32> = x_339.unity_SHAg;
  let x_349 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_348, x_349);
  let x_354 : vec4<f32> = x_339.unity_SHAb;
  let x_355 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_354, x_355);
  let x_358 : vec4<f32> = u_xlat2;
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_358.y, x_358.z, x_358.z, x_358.x) * vec4<f32>(x_360.x, x_360.y, x_360.z, x_360.z));
  let x_365 : vec4<f32> = x_339.unity_SHBr;
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_365, x_366);
  let x_371 : vec4<f32> = x_339.unity_SHBg;
  let x_372 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_371, x_372);
  let x_377 : vec4<f32> = x_339.unity_SHBb;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_377, x_378);
  let x_383 : f32 = u_xlat2.y;
  let x_385 : f32 = u_xlat2.y;
  u_xlat41 = (x_383 * x_385);
  let x_388 : f32 = u_xlat2.x;
  let x_390 : f32 = u_xlat2.x;
  let x_392 : f32 = u_xlat41;
  u_xlat41 = ((x_388 * x_390) + -(x_392));
  let x_397 : vec4<f32> = x_339.unity_SHC;
  let x_399 : f32 = u_xlat41;
  let x_402 : vec3<f32> = u_xlat6;
  let x_403 : vec3<f32> = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399, x_399, x_399)) + x_402);
  let x_404 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec3<f32> = u_xlat4;
  let x_407 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_406 + vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_410, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_414 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_415 : vec2<f32> = vec2<f32>(x_414.x, x_414.y);
  let x_419 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_415.x, x_415.y));
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat5;
  let x_424 : vec4<f32> = hlslcc_FragCoord;
  let x_426 : vec2<f32> = (vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_424.x, x_424.y));
  let x_427 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_430 : f32 = u_xlat5.y;
  let x_433 : f32 = x_44.x_ScaleBiasRt.x;
  let x_436 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat41 = ((x_430 * x_433) + x_436);
  let x_438 : f32 = u_xlat41;
  u_xlat5.z = (-(x_438) + 1.0f);
  let x_443 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_443) * 0.959999979f) + 0.959999979f);
  let x_449 : f32 = u_xlat41;
  u_xlat42 = (-(x_449) + 1.0f);
  let x_452 : vec4<f32> = u_xlat0;
  let x_454 : f32 = u_xlat41;
  u_xlat6 = (vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_454, x_454, x_454));
  let x_457 : vec4<f32> = u_xlat0;
  let x_461 : vec3<f32> = (vec3<f32>(x_457.x, x_457.y, x_457.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_462 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat1;
  let x_466 : vec4<f32> = u_xlat0;
  let x_471 : vec3<f32> = ((vec3<f32>(x_464.x, x_464.x, x_464.x) * vec3<f32>(x_466.x, x_466.y, x_466.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_472 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_475) + 1.0f);
  let x_480 : f32 = u_xlat1.x;
  let x_482 : f32 = u_xlat1.x;
  u_xlat41 = (x_480 * x_482);
  let x_484 : f32 = u_xlat41;
  u_xlat41 = max(x_484, 0.0078125f);
  let x_488 : f32 = u_xlat41;
  let x_489 : f32 = u_xlat41;
  u_xlat43 = (x_488 * x_489);
  let x_493 : f32 = u_xlat0.w;
  let x_494 : f32 = u_xlat42;
  u_xlat39 = (x_493 + x_494);
  let x_496 : f32 = u_xlat39;
  u_xlat39 = clamp(x_496, 0.0f, 1.0f);
  let x_498 : f32 = u_xlat41;
  u_xlat42 = ((x_498 * 4.0f) + 2.0f);
  let x_506 : vec4<f32> = u_xlat5;
  let x_509 : f32 = x_44.x_GlobalMipBias.x;
  let x_510 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_506.x, x_506.z), x_509);
  u_xlat5.x = x_510.x;
  let x_515 : f32 = u_xlat5.x;
  u_xlat18 = (x_515 + -1.0f);
  let x_518 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_519 : f32 = u_xlat18;
  u_xlat18 = ((x_518 * x_519) + 1.0f);
  let x_523 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_523, 1.0f);
  let x_527 : vec3<f32> = u_xlat14;
  let x_528 : vec2<f32> = vec2<f32>(x_527.x, x_527.y);
  let x_530 : f32 = u_xlat14.z;
  txVec0 = vec3<f32>(x_528.x, x_528.y, x_530);
  let x_542 : vec3<f32> = txVec0;
  let x_544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_542.xy, x_542.z);
  u_xlat14.x = x_544;
  let x_547 : f32 = x_166.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_547) + 1.0f);
  let x_552 : f32 = u_xlat14.x;
  let x_554 : f32 = x_166.x_MainLightShadowParams.x;
  let x_557 : f32 = u_xlat27.x;
  u_xlat14.x = ((x_552 * x_554) + x_557);
  let x_564 : f32 = u_xlat14.z;
  u_xlatb27.x = (0.0f >= x_564);
  let x_569 : f32 = u_xlat14.z;
  u_xlatb40 = (x_569 >= 1.0f);
  let x_571 : bool = u_xlatb40;
  let x_573 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_571 | x_573);
  let x_577 : bool = u_xlatb27.x;
  if (x_577) {
    x_578 = 1.0f;
  } else {
    let x_583 : f32 = u_xlat14.x;
    x_578 = x_583;
  }
  let x_584 : f32 = x_578;
  u_xlat14.x = x_584;
  let x_586 : vec3<f32> = vs_TEXCOORD7;
  let x_588 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_590 : vec3<f32> = (x_586 + -(x_588));
  let x_591 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec4<f32> = u_xlat7;
  let x_595 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_600 : f32 = u_xlat27.x;
  let x_602 : f32 = x_166.x_MainLightShadowParams.z;
  let x_605 : f32 = x_166.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_600 * x_602) + x_605);
  let x_609 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_609, 0.0f, 1.0f);
  let x_614 : f32 = u_xlat14.x;
  u_xlat40 = (-(x_614) + 1.0f);
  let x_618 : f32 = u_xlat27.x;
  let x_619 : f32 = u_xlat40;
  let x_622 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_618 * x_619) + x_622);
  let x_631 : f32 = x_629.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_631 == -1.0f));
  let x_635 : bool = u_xlatb27.x;
  if (x_635) {
    let x_638 : vec3<f32> = vs_TEXCOORD7;
    let x_641 : vec4<f32> = x_629.x_MainLightWorldToLight[1i];
    u_xlat27 = (vec2<f32>(x_638.y, x_638.y) * vec2<f32>(x_641.x, x_641.y));
    let x_645 : vec4<f32> = x_629.x_MainLightWorldToLight[0i];
    let x_647 : vec3<f32> = vs_TEXCOORD7;
    let x_650 : vec2<f32> = u_xlat27;
    u_xlat27 = ((vec2<f32>(x_645.x, x_645.y) * vec2<f32>(x_647.x, x_647.x)) + x_650);
    let x_653 : vec4<f32> = x_629.x_MainLightWorldToLight[2i];
    let x_655 : vec3<f32> = vs_TEXCOORD7;
    let x_658 : vec2<f32> = u_xlat27;
    u_xlat27 = ((vec2<f32>(x_653.x, x_653.y) * vec2<f32>(x_655.z, x_655.z)) + x_658);
    let x_660 : vec2<f32> = u_xlat27;
    let x_662 : vec4<f32> = x_629.x_MainLightWorldToLight[3i];
    u_xlat27 = (x_660 + vec2<f32>(x_662.x, x_662.y));
    let x_665 : vec2<f32> = u_xlat27;
    u_xlat27 = ((x_665 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_675 : vec2<f32> = u_xlat27;
    let x_677 : f32 = x_44.x_GlobalMipBias.x;
    let x_678 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_675, x_677);
    u_xlat7 = x_678;
    let x_680 : f32 = x_629.x_MainLightCookieTextureFormat;
    let x_682 : f32 = x_629.x_MainLightCookieTextureFormat;
    let x_684 : f32 = x_629.x_MainLightCookieTextureFormat;
    let x_686 : f32 = x_629.x_MainLightCookieTextureFormat;
    let x_687 : vec4<f32> = vec4<f32>(x_680, x_682, x_684, x_686);
    let x_694 : vec4<bool> = (vec4<f32>(x_687.x, x_687.y, x_687.z, x_687.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb27 = vec2<bool>(x_694.x, x_694.y);
    let x_697 : bool = u_xlatb27.y;
    if (x_697) {
      let x_702 : f32 = u_xlat7.w;
      x_698 = x_702;
    } else {
      let x_705 : f32 = u_xlat7.x;
      x_698 = x_705;
    }
    let x_706 : f32 = x_698;
    u_xlat40 = x_706;
    let x_708 : bool = u_xlatb27.x;
    if (x_708) {
      let x_712 : vec4<f32> = u_xlat7;
      x_709 = vec3<f32>(x_712.x, x_712.y, x_712.z);
    } else {
      let x_715 : f32 = u_xlat40;
      x_709 = vec3<f32>(x_715, x_715, x_715);
    }
    let x_717 : vec3<f32> = x_709;
    let x_718 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_724 : vec4<f32> = u_xlat7;
  let x_727 : vec4<f32> = x_44.x_MainLightColor;
  let x_729 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : f32 = u_xlat18;
  let x_734 : vec4<f32> = u_xlat7;
  let x_736 : vec3<f32> = (vec3<f32>(x_732, x_732, x_732) * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec3<f32> = u_xlat3;
  let x_741 : vec4<f32> = u_xlat2;
  u_xlat27.x = dot(-(x_739), vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_746 : f32 = u_xlat27.x;
  let x_748 : f32 = u_xlat27.x;
  u_xlat27.x = (x_746 + x_748);
  let x_752 : vec4<f32> = u_xlat2;
  let x_754 : vec2<f32> = u_xlat27;
  let x_758 : vec3<f32> = u_xlat3;
  let x_760 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.y, x_752.z) * -(vec3<f32>(x_754.x, x_754.x, x_754.x))) + -(x_758));
  let x_761 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat2;
  let x_765 : vec3<f32> = u_xlat3;
  u_xlat27.x = dot(vec3<f32>(x_763.x, x_763.y, x_763.z), x_765);
  let x_769 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_769, 0.0f, 1.0f);
  let x_773 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_773) + 1.0f);
  let x_778 : f32 = u_xlat27.x;
  let x_780 : f32 = u_xlat27.x;
  u_xlat1.z = (x_778 * x_780);
  let x_784 : f32 = u_xlat1.x;
  u_xlat1.w = ((-(x_784) * 0.699999988f) + 1.700000048f);
  let x_791 : vec4<f32> = u_xlat1;
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : vec2<f32> = (vec2<f32>(x_791.w, x_791.z) * vec2<f32>(x_793.x, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_796.y, x_795.y, x_796.w);
  let x_799 : f32 = u_xlat1.x;
  u_xlat1.x = (x_799 * 6.0f);
  let x_811 : vec4<f32> = u_xlat8;
  let x_814 : f32 = u_xlat1.x;
  let x_815 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_811.x, x_811.y, x_811.z), x_814);
  u_xlat8 = x_815;
  let x_817 : f32 = u_xlat8.w;
  u_xlat1.x = (x_817 + -1.0f);
  let x_821 : f32 = x_339.unity_SpecCube0_HDR.w;
  let x_823 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_821 * x_823) + 1.0f);
  let x_828 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_828, 0.0f);
  let x_832 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_832);
  let x_836 : f32 = u_xlat1.x;
  let x_838 : f32 = x_339.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_836 * x_838);
  let x_842 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_842);
  let x_846 : f32 = u_xlat1.x;
  let x_848 : f32 = x_339.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_846 * x_848);
  let x_851 : vec4<f32> = u_xlat8;
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = (vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(x_853.x, x_853.x, x_853.x));
  let x_856 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : f32 = u_xlat41;
  let x_860 : f32 = u_xlat41;
  let x_864 : vec2<f32> = ((vec2<f32>(x_858, x_858) * vec2<f32>(x_860, x_860)) + vec2<f32>(-1.0f, 1.0f));
  let x_865 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_864.x, x_865.y, x_865.z, x_864.y);
  let x_868 : f32 = u_xlat1.w;
  u_xlat40 = (1.0f / x_868);
  let x_871 : vec4<f32> = u_xlat0;
  let x_874 : f32 = u_xlat39;
  u_xlat9 = (-(vec3<f32>(x_871.x, x_871.y, x_871.z)) + vec3<f32>(x_874, x_874, x_874));
  let x_877 : vec4<f32> = u_xlat1;
  let x_879 : vec3<f32> = u_xlat9;
  let x_881 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_877.z, x_877.z, x_877.z) * x_879) + vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : f32 = u_xlat40;
  let x_886 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_884, x_884, x_884) * x_886);
  let x_888 : vec4<f32> = u_xlat8;
  let x_890 : vec3<f32> = u_xlat9;
  let x_891 : vec3<f32> = (vec3<f32>(x_888.x, x_888.y, x_888.z) * x_890);
  let x_892 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec3<f32> = u_xlat4;
  let x_895 : vec3<f32> = u_xlat6;
  let x_897 : vec4<f32> = u_xlat8;
  u_xlat4 = ((x_894 * x_895) + vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_901 : f32 = u_xlat14.x;
  let x_903 : f32 = x_339.unity_LightData.z;
  u_xlat39 = (x_901 * x_903);
  let x_905 : vec4<f32> = u_xlat2;
  let x_908 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat14.x = dot(vec3<f32>(x_905.x, x_905.y, x_905.z), vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_913 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_913, 0.0f, 1.0f);
  let x_916 : f32 = u_xlat39;
  let x_918 : f32 = u_xlat14.x;
  u_xlat39 = (x_916 * x_918);
  let x_920 : f32 = u_xlat39;
  let x_922 : vec4<f32> = u_xlat7;
  u_xlat14 = (vec3<f32>(x_920, x_920, x_920) * vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec3<f32> = u_xlat3;
  let x_927 : vec4<f32> = x_44.x_MainLightPosition;
  let x_929 : vec3<f32> = (x_925 + vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat7;
  let x_934 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_932.x, x_932.y, x_932.z), vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_937 : f32 = u_xlat39;
  u_xlat39 = max(x_937, 1.17549435e-37f);
  let x_940 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_940);
  let x_942 : f32 = u_xlat39;
  let x_944 : vec4<f32> = u_xlat7;
  let x_946 : vec3<f32> = (vec3<f32>(x_942, x_942, x_942) * vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
  let x_949 : vec4<f32> = u_xlat2;
  let x_951 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_949.x, x_949.y, x_949.z), vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : f32 = u_xlat39;
  u_xlat39 = clamp(x_954, 0.0f, 1.0f);
  let x_957 : vec4<f32> = x_44.x_MainLightPosition;
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat41 = dot(vec3<f32>(x_957.x, x_957.y, x_957.z), vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : f32 = u_xlat41;
  u_xlat41 = clamp(x_962, 0.0f, 1.0f);
  let x_964 : f32 = u_xlat39;
  let x_965 : f32 = u_xlat39;
  u_xlat39 = (x_964 * x_965);
  let x_967 : f32 = u_xlat39;
  let x_969 : f32 = u_xlat1.x;
  u_xlat39 = ((x_967 * x_969) + 1.000010014f);
  let x_973 : f32 = u_xlat41;
  let x_974 : f32 = u_xlat41;
  u_xlat41 = (x_973 * x_974);
  let x_976 : f32 = u_xlat39;
  let x_977 : f32 = u_xlat39;
  u_xlat39 = (x_976 * x_977);
  let x_979 : f32 = u_xlat41;
  u_xlat41 = max(x_979, 0.100000001f);
  let x_982 : f32 = u_xlat39;
  let x_983 : f32 = u_xlat41;
  u_xlat39 = (x_982 * x_983);
  let x_985 : f32 = u_xlat42;
  let x_986 : f32 = u_xlat39;
  u_xlat39 = (x_985 * x_986);
  let x_988 : f32 = u_xlat43;
  let x_989 : f32 = u_xlat39;
  u_xlat39 = (x_988 / x_989);
  let x_991 : vec4<f32> = u_xlat0;
  let x_993 : f32 = u_xlat39;
  let x_996 : vec3<f32> = u_xlat6;
  let x_997 : vec3<f32> = ((vec3<f32>(x_991.x, x_991.y, x_991.z) * vec3<f32>(x_993, x_993, x_993)) + x_996);
  let x_998 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1000 : vec3<f32> = u_xlat14;
  let x_1001 : vec4<f32> = u_xlat7;
  u_xlat14 = (x_1000 * vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1005 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1007 : f32 = x_339.unity_LightData.y;
  u_xlat39 = min(x_1005, x_1007);
  let x_1010 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_1010));
  let x_1015 : f32 = x_629.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1017 : f32 = x_629.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1019 : f32 = x_629.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1021 : f32 = x_629.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1022 : vec4<f32> = vec4<f32>(x_1015, x_1017, x_1019, x_1021);
  let x_1028 : vec4<bool> = (vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1022.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb31 = vec2<bool>(x_1028.x, x_1028.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1039 : u32 = u_xlatu_loop_1;
    let x_1040 : u32 = u_xlatu39;
    if ((x_1039 < x_1040)) {
    } else {
      break;
    }
    let x_1043 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1043 >> 2u);
    let x_1046 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1046 & 3u));
    let x_1050 : u32 = u_xlatu45;
    let x_1053 : vec4<f32> = x_339.unity_LightIndices[bitcast<i32>(x_1050)];
    let x_1063 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1068 : vec4<u32> = indexable[x_1063];
    u_xlat45 = dot(x_1053, bitcast<vec4<f32>>(x_1068));
    let x_1071 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1071));
    let x_1074 : vec3<f32> = vs_TEXCOORD7;
    let x_1086 : u32 = u_xlatu45;
    let x_1089 : vec4<f32> = x_1085.x_AdditionalLightsPosition[bitcast<i32>(x_1086)];
    let x_1092 : u32 = u_xlatu45;
    let x_1095 : vec4<f32> = x_1085.x_AdditionalLightsPosition[bitcast<i32>(x_1092)];
    let x_1097 : vec3<f32> = ((-(x_1074) * vec3<f32>(x_1089.w, x_1089.w, x_1089.w)) + vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
    let x_1098 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
    let x_1101 : vec4<f32> = u_xlat8;
    let x_1103 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(vec3<f32>(x_1101.x, x_1101.y, x_1101.z), vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
    let x_1106 : f32 = u_xlat46;
    u_xlat46 = max(x_1106, 6.10351562e-05f);
    let x_1110 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1110);
    let x_1112 : f32 = u_xlat47;
    let x_1114 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1112, x_1112, x_1112) * vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
    let x_1118 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1118);
    let x_1120 : f32 = u_xlat46;
    let x_1121 : u32 = u_xlatu45;
    let x_1124 : f32 = x_1085.x_AdditionalLightsAttenuation[bitcast<i32>(x_1121)].x;
    u_xlat46 = (x_1120 * x_1124);
    let x_1126 : f32 = u_xlat46;
    let x_1128 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1126) * x_1128) + 1.0f);
    let x_1131 : f32 = u_xlat46;
    u_xlat46 = max(x_1131, 0.0f);
    let x_1133 : f32 = u_xlat46;
    let x_1134 : f32 = u_xlat46;
    u_xlat46 = (x_1133 * x_1134);
    let x_1136 : f32 = u_xlat46;
    let x_1137 : f32 = u_xlat48;
    u_xlat46 = (x_1136 * x_1137);
    let x_1139 : u32 = u_xlatu45;
    let x_1142 : vec4<f32> = x_1085.x_AdditionalLightsSpotDir[bitcast<i32>(x_1139)];
    let x_1144 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1142.x, x_1142.y, x_1142.z), x_1144);
    let x_1146 : f32 = u_xlat48;
    let x_1147 : u32 = u_xlatu45;
    let x_1150 : f32 = x_1085.x_AdditionalLightsAttenuation[bitcast<i32>(x_1147)].z;
    let x_1152 : u32 = u_xlatu45;
    let x_1155 : f32 = x_1085.x_AdditionalLightsAttenuation[bitcast<i32>(x_1152)].w;
    u_xlat48 = ((x_1146 * x_1150) + x_1155);
    let x_1157 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1157, 0.0f, 1.0f);
    let x_1159 : f32 = u_xlat48;
    let x_1160 : f32 = u_xlat48;
    u_xlat48 = (x_1159 * x_1160);
    let x_1162 : f32 = u_xlat46;
    let x_1163 : f32 = u_xlat48;
    u_xlat46 = (x_1162 * x_1163);
    let x_1166 : u32 = u_xlatu45;
    u_xlatu48 = (x_1166 >> 5u);
    let x_1169 : u32 = u_xlatu45;
    u_xlati10 = (1i << bitcast<u32>((bitcast<i32>(x_1169) & 31i)));
    let x_1175 : i32 = u_xlati10;
    let x_1177 : u32 = u_xlatu48;
    let x_1180 : f32 = x_629.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1177)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_1175) & bitcast<u32>(x_1180)));
    let x_1184 : i32 = u_xlati48;
    if ((x_1184 != 0i)) {
      let x_1194 : u32 = u_xlatu45;
      let x_1197 : f32 = x_1193.x_AdditionalLightsLightTypes[bitcast<i32>(x_1194)].el;
      u_xlati48 = i32(x_1197);
      let x_1199 : i32 = u_xlati48;
      u_xlati10 = select(1i, 0i, (x_1199 != 0i));
      let x_1203 : u32 = u_xlatu45;
      u_xlati23 = (bitcast<i32>(x_1203) << bitcast<u32>(2i));
      let x_1206 : i32 = u_xlati10;
      if ((x_1206 != 0i)) {
        let x_1211 : vec3<f32> = vs_TEXCOORD7;
        let x_1213 : i32 = u_xlati23;
        let x_1216 : i32 = u_xlati23;
        let x_1220 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[((x_1213 + 1i) / 4i)][((x_1216 + 1i) % 4i)];
        let x_1222 : vec3<f32> = (vec3<f32>(x_1211.y, x_1211.y, x_1211.y) * vec3<f32>(x_1220.x, x_1220.y, x_1220.w));
        let x_1223 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1222.x, x_1223.y, x_1222.y, x_1222.z);
        let x_1225 : i32 = u_xlati23;
        let x_1227 : i32 = u_xlati23;
        let x_1230 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[(x_1225 / 4i)][(x_1227 % 4i)];
        let x_1232 : vec3<f32> = vs_TEXCOORD7;
        let x_1235 : vec4<f32> = u_xlat10;
        let x_1237 : vec3<f32> = ((vec3<f32>(x_1230.x, x_1230.y, x_1230.w) * vec3<f32>(x_1232.x, x_1232.x, x_1232.x)) + vec3<f32>(x_1235.x, x_1235.z, x_1235.w));
        let x_1238 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1237.x, x_1238.y, x_1237.y, x_1237.z);
        let x_1240 : i32 = u_xlati23;
        let x_1243 : i32 = u_xlati23;
        let x_1247 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[((x_1240 + 2i) / 4i)][((x_1243 + 2i) % 4i)];
        let x_1249 : vec3<f32> = vs_TEXCOORD7;
        let x_1252 : vec4<f32> = u_xlat10;
        let x_1254 : vec3<f32> = ((vec3<f32>(x_1247.x, x_1247.y, x_1247.w) * vec3<f32>(x_1249.z, x_1249.z, x_1249.z)) + vec3<f32>(x_1252.x, x_1252.z, x_1252.w));
        let x_1255 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1254.x, x_1255.y, x_1254.y, x_1254.z);
        let x_1257 : vec4<f32> = u_xlat10;
        let x_1259 : i32 = u_xlati23;
        let x_1262 : i32 = u_xlati23;
        let x_1266 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[((x_1259 + 3i) / 4i)][((x_1262 + 3i) % 4i)];
        let x_1268 : vec3<f32> = (vec3<f32>(x_1257.x, x_1257.z, x_1257.w) + vec3<f32>(x_1266.x, x_1266.y, x_1266.w));
        let x_1269 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1268.x, x_1269.y, x_1268.y, x_1268.z);
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1273 : vec4<f32> = u_xlat10;
        let x_1275 : vec2<f32> = (vec2<f32>(x_1271.x, x_1271.z) / vec2<f32>(x_1273.w, x_1273.w));
        let x_1276 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1275.x, x_1276.y, x_1275.y, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat10;
        let x_1281 : vec2<f32> = ((vec2<f32>(x_1278.x, x_1278.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1282 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1281.x, x_1282.y, x_1281.y, x_1282.w);
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1288 : vec2<f32> = clamp(vec2<f32>(x_1284.x, x_1284.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1288.x, x_1289.y, x_1288.y, x_1289.w);
        let x_1291 : u32 = u_xlatu45;
        let x_1294 : vec4<f32> = x_1193.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1291)];
        let x_1296 : vec4<f32> = u_xlat10;
        let x_1299 : u32 = u_xlatu45;
        let x_1302 : vec4<f32> = x_1193.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1299)];
        let x_1304 : vec2<f32> = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1296.x, x_1296.z)) + vec2<f32>(x_1302.z, x_1302.w));
        let x_1305 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1304.x, x_1305.y, x_1304.y, x_1305.w);
      } else {
        let x_1309 : i32 = u_xlati48;
        u_xlatb48 = (x_1309 == 1i);
        let x_1311 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1311);
        let x_1313 : i32 = u_xlati48;
        if ((x_1313 != 0i)) {
          let x_1318 : vec3<f32> = vs_TEXCOORD7;
          let x_1320 : i32 = u_xlati23;
          let x_1323 : i32 = u_xlati23;
          let x_1327 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[((x_1320 + 1i) / 4i)][((x_1323 + 1i) % 4i)];
          let x_1329 : vec2<f32> = (vec2<f32>(x_1318.y, x_1318.y) * vec2<f32>(x_1327.x, x_1327.y));
          let x_1330 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
          let x_1332 : i32 = u_xlati23;
          let x_1334 : i32 = u_xlati23;
          let x_1337 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[(x_1332 / 4i)][(x_1334 % 4i)];
          let x_1339 : vec3<f32> = vs_TEXCOORD7;
          let x_1342 : vec4<f32> = u_xlat11;
          let x_1344 : vec2<f32> = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1339.x, x_1339.x)) + vec2<f32>(x_1342.x, x_1342.y));
          let x_1345 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1344.x, x_1344.y, x_1345.z, x_1345.w);
          let x_1347 : i32 = u_xlati23;
          let x_1350 : i32 = u_xlati23;
          let x_1354 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[((x_1347 + 2i) / 4i)][((x_1350 + 2i) % 4i)];
          let x_1356 : vec3<f32> = vs_TEXCOORD7;
          let x_1359 : vec4<f32> = u_xlat11;
          let x_1361 : vec2<f32> = ((vec2<f32>(x_1354.x, x_1354.y) * vec2<f32>(x_1356.z, x_1356.z)) + vec2<f32>(x_1359.x, x_1359.y));
          let x_1362 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1361.x, x_1361.y, x_1362.z, x_1362.w);
          let x_1364 : vec4<f32> = u_xlat11;
          let x_1366 : i32 = u_xlati23;
          let x_1369 : i32 = u_xlati23;
          let x_1373 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[((x_1366 + 3i) / 4i)][((x_1369 + 3i) % 4i)];
          let x_1375 : vec2<f32> = (vec2<f32>(x_1364.x, x_1364.y) + vec2<f32>(x_1373.x, x_1373.y));
          let x_1376 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1375.x, x_1375.y, x_1376.z, x_1376.w);
          let x_1378 : vec4<f32> = u_xlat11;
          let x_1381 : vec2<f32> = ((vec2<f32>(x_1378.x, x_1378.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1382 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
          let x_1384 : vec4<f32> = u_xlat11;
          let x_1386 : vec2<f32> = fract(vec2<f32>(x_1384.x, x_1384.y));
          let x_1387 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1386.x, x_1386.y, x_1387.z, x_1387.w);
          let x_1389 : u32 = u_xlatu45;
          let x_1392 : vec4<f32> = x_1193.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1389)];
          let x_1394 : vec4<f32> = u_xlat11;
          let x_1397 : u32 = u_xlatu45;
          let x_1400 : vec4<f32> = x_1193.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1397)];
          let x_1402 : vec2<f32> = ((vec2<f32>(x_1392.x, x_1392.y) * vec2<f32>(x_1394.x, x_1394.y)) + vec2<f32>(x_1400.z, x_1400.w));
          let x_1403 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1402.x, x_1403.y, x_1402.y, x_1403.w);
        } else {
          let x_1406 : vec3<f32> = vs_TEXCOORD7;
          let x_1408 : i32 = u_xlati23;
          let x_1411 : i32 = u_xlati23;
          let x_1415 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[((x_1408 + 1i) / 4i)][((x_1411 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1406.y, x_1406.y, x_1406.y, x_1406.y) * x_1415);
          let x_1417 : i32 = u_xlati23;
          let x_1419 : i32 = u_xlati23;
          let x_1422 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[(x_1417 / 4i)][(x_1419 % 4i)];
          let x_1423 : vec3<f32> = vs_TEXCOORD7;
          let x_1426 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1422 * vec4<f32>(x_1423.x, x_1423.x, x_1423.x, x_1423.x)) + x_1426);
          let x_1428 : i32 = u_xlati23;
          let x_1431 : i32 = u_xlati23;
          let x_1435 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[((x_1428 + 2i) / 4i)][((x_1431 + 2i) % 4i)];
          let x_1436 : vec3<f32> = vs_TEXCOORD7;
          let x_1439 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1435 * vec4<f32>(x_1436.z, x_1436.z, x_1436.z, x_1436.z)) + x_1439);
          let x_1441 : vec4<f32> = u_xlat11;
          let x_1442 : i32 = u_xlati23;
          let x_1445 : i32 = u_xlati23;
          let x_1449 : vec4<f32> = x_1193.x_AdditionalLightsWorldToLights[((x_1442 + 3i) / 4i)][((x_1445 + 3i) % 4i)];
          u_xlat11 = (x_1441 + x_1449);
          let x_1451 : vec4<f32> = u_xlat11;
          let x_1453 : vec4<f32> = u_xlat11;
          let x_1455 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) / vec3<f32>(x_1453.w, x_1453.w, x_1453.w));
          let x_1456 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
          let x_1458 : vec4<f32> = u_xlat11;
          let x_1460 : vec4<f32> = u_xlat11;
          u_xlat48 = dot(vec3<f32>(x_1458.x, x_1458.y, x_1458.z), vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
          let x_1463 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1463);
          let x_1465 : f32 = u_xlat48;
          let x_1467 : vec4<f32> = u_xlat11;
          let x_1469 : vec3<f32> = (vec3<f32>(x_1465, x_1465, x_1465) * vec3<f32>(x_1467.x, x_1467.y, x_1467.z));
          let x_1470 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
          let x_1472 : vec4<f32> = u_xlat11;
          u_xlat48 = dot(abs(vec3<f32>(x_1472.x, x_1472.y, x_1472.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1477 : f32 = u_xlat48;
          u_xlat48 = max(x_1477, 0.000001f);
          let x_1480 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1480);
          let x_1483 : f32 = u_xlat48;
          let x_1485 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_1483, x_1483, x_1483) * vec3<f32>(x_1485.z, x_1485.x, x_1485.y));
          let x_1489 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1489);
          let x_1493 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1493, 0.0f, 1.0f);
          let x_1499 : vec3<f32> = u_xlat12;
          let x_1502 : vec4<bool> = (vec4<f32>(x_1499.y, x_1499.y, x_1499.z, x_1499.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1503 : vec2<bool> = vec2<bool>(x_1502.x, x_1502.z);
          let x_1504 : vec3<bool> = u_xlatb23;
          u_xlatb23 = vec3<bool>(x_1503.x, x_1504.y, x_1503.y);
          let x_1508 : bool = u_xlatb23.x;
          if (x_1508) {
            let x_1513 : f32 = u_xlat12.x;
            x_1509 = x_1513;
          } else {
            let x_1516 : f32 = u_xlat12.x;
            x_1509 = -(x_1516);
          }
          let x_1518 : f32 = x_1509;
          u_xlat23.x = x_1518;
          let x_1521 : bool = u_xlatb23.z;
          if (x_1521) {
            let x_1526 : f32 = u_xlat12.x;
            x_1522 = x_1526;
          } else {
            let x_1529 : f32 = u_xlat12.x;
            x_1522 = -(x_1529);
          }
          let x_1531 : f32 = x_1522;
          u_xlat23.z = x_1531;
          let x_1533 : vec4<f32> = u_xlat11;
          let x_1535 : f32 = u_xlat48;
          let x_1538 : vec3<f32> = u_xlat23;
          let x_1540 : vec2<f32> = ((vec2<f32>(x_1533.x, x_1533.y) * vec2<f32>(x_1535, x_1535)) + vec2<f32>(x_1538.x, x_1538.z));
          let x_1541 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1540.x, x_1541.y, x_1540.y);
          let x_1543 : vec3<f32> = u_xlat23;
          let x_1546 : vec2<f32> = ((vec2<f32>(x_1543.x, x_1543.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1547 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1546.x, x_1547.y, x_1546.y);
          let x_1549 : vec3<f32> = u_xlat23;
          let x_1553 : vec2<f32> = clamp(vec2<f32>(x_1549.x, x_1549.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1554 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1553.x, x_1554.y, x_1553.y);
          let x_1556 : u32 = u_xlatu45;
          let x_1559 : vec4<f32> = x_1193.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1556)];
          let x_1561 : vec3<f32> = u_xlat23;
          let x_1564 : u32 = u_xlatu45;
          let x_1567 : vec4<f32> = x_1193.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1564)];
          let x_1569 : vec2<f32> = ((vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(x_1561.x, x_1561.z)) + vec2<f32>(x_1567.z, x_1567.w));
          let x_1570 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1569.x, x_1570.y, x_1569.y, x_1570.w);
        }
      }
      let x_1577 : vec4<f32> = u_xlat10;
      let x_1580 : f32 = x_44.x_GlobalMipBias.x;
      let x_1581 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1577.x, x_1577.z), x_1580);
      u_xlat10 = x_1581;
      let x_1583 : bool = u_xlatb31.y;
      if (x_1583) {
        let x_1588 : f32 = u_xlat10.w;
        x_1584 = x_1588;
      } else {
        let x_1591 : f32 = u_xlat10.x;
        x_1584 = x_1591;
      }
      let x_1592 : f32 = x_1584;
      u_xlat48 = x_1592;
      let x_1594 : bool = u_xlatb31.x;
      if (x_1594) {
        let x_1598 : vec4<f32> = u_xlat10;
        x_1595 = vec3<f32>(x_1598.x, x_1598.y, x_1598.z);
      } else {
        let x_1601 : f32 = u_xlat48;
        x_1595 = vec3<f32>(x_1601, x_1601, x_1601);
      }
      let x_1603 : vec3<f32> = x_1595;
      let x_1604 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1603.x, x_1603.y, x_1603.z, x_1604.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_1610 : vec4<f32> = u_xlat10;
    let x_1612 : u32 = u_xlatu45;
    let x_1615 : vec4<f32> = x_1085.x_AdditionalLightsColor[bitcast<i32>(x_1612)];
    let x_1617 : vec3<f32> = (vec3<f32>(x_1610.x, x_1610.y, x_1610.z) * vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
    let x_1618 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);
    let x_1620 : f32 = u_xlat18;
    let x_1622 : vec4<f32> = u_xlat10;
    let x_1624 : vec3<f32> = (vec3<f32>(x_1620, x_1620, x_1620) * vec3<f32>(x_1622.x, x_1622.y, x_1622.z));
    let x_1625 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1624.x, x_1624.y, x_1624.z, x_1625.w);
    let x_1627 : vec4<f32> = u_xlat2;
    let x_1629 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1627.x, x_1627.y, x_1627.z), x_1629);
    let x_1631 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1631, 0.0f, 1.0f);
    let x_1633 : f32 = u_xlat45;
    let x_1634 : f32 = u_xlat46;
    u_xlat45 = (x_1633 * x_1634);
    let x_1636 : f32 = u_xlat45;
    let x_1638 : vec4<f32> = u_xlat10;
    let x_1640 : vec3<f32> = (vec3<f32>(x_1636, x_1636, x_1636) * vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
    let x_1641 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
    let x_1643 : vec4<f32> = u_xlat8;
    let x_1645 : f32 = u_xlat47;
    let x_1648 : vec3<f32> = u_xlat3;
    let x_1649 : vec3<f32> = ((vec3<f32>(x_1643.x, x_1643.y, x_1643.z) * vec3<f32>(x_1645, x_1645, x_1645)) + x_1648);
    let x_1650 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1650.w);
    let x_1652 : vec4<f32> = u_xlat8;
    let x_1654 : vec4<f32> = u_xlat8;
    u_xlat45 = dot(vec3<f32>(x_1652.x, x_1652.y, x_1652.z), vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
    let x_1657 : f32 = u_xlat45;
    u_xlat45 = max(x_1657, 1.17549435e-37f);
    let x_1659 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1659);
    let x_1661 : f32 = u_xlat45;
    let x_1663 : vec4<f32> = u_xlat8;
    let x_1665 : vec3<f32> = (vec3<f32>(x_1661, x_1661, x_1661) * vec3<f32>(x_1663.x, x_1663.y, x_1663.z));
    let x_1666 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1665.x, x_1665.y, x_1665.z, x_1666.w);
    let x_1668 : vec4<f32> = u_xlat2;
    let x_1670 : vec4<f32> = u_xlat8;
    u_xlat45 = dot(vec3<f32>(x_1668.x, x_1668.y, x_1668.z), vec3<f32>(x_1670.x, x_1670.y, x_1670.z));
    let x_1673 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1673, 0.0f, 1.0f);
    let x_1675 : vec3<f32> = u_xlat9;
    let x_1676 : vec4<f32> = u_xlat8;
    u_xlat46 = dot(x_1675, vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
    let x_1679 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1679, 0.0f, 1.0f);
    let x_1681 : f32 = u_xlat45;
    let x_1682 : f32 = u_xlat45;
    u_xlat45 = (x_1681 * x_1682);
    let x_1684 : f32 = u_xlat45;
    let x_1686 : f32 = u_xlat1.x;
    u_xlat45 = ((x_1684 * x_1686) + 1.000010014f);
    let x_1689 : f32 = u_xlat46;
    let x_1690 : f32 = u_xlat46;
    u_xlat46 = (x_1689 * x_1690);
    let x_1692 : f32 = u_xlat45;
    let x_1693 : f32 = u_xlat45;
    u_xlat45 = (x_1692 * x_1693);
    let x_1695 : f32 = u_xlat46;
    u_xlat46 = max(x_1695, 0.100000001f);
    let x_1697 : f32 = u_xlat45;
    let x_1698 : f32 = u_xlat46;
    u_xlat45 = (x_1697 * x_1698);
    let x_1700 : f32 = u_xlat42;
    let x_1701 : f32 = u_xlat45;
    u_xlat45 = (x_1700 * x_1701);
    let x_1703 : f32 = u_xlat43;
    let x_1704 : f32 = u_xlat45;
    u_xlat45 = (x_1703 / x_1704);
    let x_1706 : vec4<f32> = u_xlat0;
    let x_1708 : f32 = u_xlat45;
    let x_1711 : vec3<f32> = u_xlat6;
    let x_1712 : vec3<f32> = ((vec3<f32>(x_1706.x, x_1706.y, x_1706.z) * vec3<f32>(x_1708, x_1708, x_1708)) + x_1711);
    let x_1713 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);
    let x_1715 : vec4<f32> = u_xlat8;
    let x_1717 : vec4<f32> = u_xlat10;
    let x_1720 : vec4<f32> = u_xlat7;
    let x_1722 : vec3<f32> = ((vec3<f32>(x_1715.x, x_1715.y, x_1715.z) * vec3<f32>(x_1717.x, x_1717.y, x_1717.z)) + vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
    let x_1723 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);

    continuing {
      let x_1725 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1725 + bitcast<u32>(1i));
    }
  }
  let x_1727 : vec3<f32> = u_xlat4;
  let x_1728 : vec4<f32> = u_xlat5;
  let x_1731 : vec3<f32> = u_xlat14;
  let x_1732 : vec3<f32> = ((x_1727 * vec3<f32>(x_1728.x, x_1728.x, x_1728.x)) + x_1731);
  let x_1733 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  let x_1737 : vec4<f32> = u_xlat7;
  let x_1739 : vec4<f32> = u_xlat0;
  let x_1741 : vec3<f32> = (vec3<f32>(x_1737.x, x_1737.y, x_1737.z) + vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1742 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

