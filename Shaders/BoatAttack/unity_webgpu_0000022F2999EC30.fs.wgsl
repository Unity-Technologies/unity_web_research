struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_338 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_716 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1023 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1125 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat36 : f32;
  var u_xlatb24 : bool;
  var x_131 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlatb14 : bool;
  var x_241 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlatb16 : bool;
  var u_xlat16 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlat40 : f32;
  var x_803 : f32;
  var x_814 : vec3<f32>;
  var u_xlatu39 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu41 : u32;
  var u_xlati30 : i32;
  var u_xlat41 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat8 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlatu42 : u32;
  var u_xlati43 : i32;
  var u_xlati42 : i32;
  var u_xlati44 : i32;
  var u_xlat9 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat33 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb33 : vec2<bool>;
  var x_1420 : f32;
  var x_1433 : f32;
  var x_1485 : f32;
  var x_1496 : vec3<f32>;
  var x_1654 : f32;
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
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_57.x_BaseColor.w;
  let x_91 : f32 = x_57.x_Cutoff;
  u_xlat12.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat36;
  let x_105 : f32 = u_xlat24;
  u_xlat24 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat24;
  u_xlat24 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat12.x;
  let x_113 : f32 = u_xlat24;
  u_xlat12.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat12.x;
  u_xlat12.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb24;
  if (x_130) {
    let x_135 : f32 = u_xlat12.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat12.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat12.x;
  u_xlatb12 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb12;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_165, x_167);
  u_xlat2 = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_171 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat2.z;
  u_xlat2.x = (x_171 * x_174);
  let x_177 : vec3<f32> = u_xlat2;
  let x_184 : vec2<f32> = ((vec2<f32>(x_177.x, x_177.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_185 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat12;
  let x_189 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 1.00000002e-16f);
  let x_211 : vec4<f32> = hlslcc_FragCoord;
  let x_215 : f32 = x_44.x_DitheringTextureInvSize;
  let x_217 : vec2<f32> = (vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_215, x_215));
  let x_218 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_217.x, x_217.y, x_218.z);
  let x_225 : vec3<f32> = u_xlat2;
  let x_228 : f32 = x_44.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_225.x, x_225.y), x_228);
  u_xlat2.x = x_229.w;
  let x_238 : f32 = x_236.unity_LODFade.x;
  u_xlatb14 = (x_238 >= 0.0f);
  let x_240 : bool = u_xlatb14;
  if (x_240) {
    let x_245 : f32 = u_xlat2.x;
    x_241 = abs(x_245);
  } else {
    let x_249 : f32 = u_xlat2.x;
    x_241 = -(abs(x_249));
  }
  let x_252 : f32 = x_241;
  u_xlat2.x = x_252;
  let x_255 : f32 = u_xlat2.x;
  let x_258 : f32 = x_236.unity_LODFade.x;
  u_xlat2.x = (-(x_255) + x_258);
  let x_263 : f32 = u_xlat2.x;
  u_xlatb2 = (x_263 < 0.0f);
  let x_265 : bool = u_xlatb2;
  if (((select(0i, 1i, x_265) * -1i) != 0i)) {
    discard;
  }
  let x_272 : vec3<f32> = u_xlat12;
  let x_275 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_272.z, x_272.z, x_272.z) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec3<f32> = u_xlat12;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_278.x, x_278.x, x_278.x) * vec3<f32>(x_281.x, x_281.y, x_281.z)) + x_284);
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = vs_TEXCOORD2;
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z)) + x_292);
  let x_294 : vec3<f32> = u_xlat2;
  let x_295 : vec3<f32> = u_xlat2;
  u_xlat12.x = dot(x_294, x_295);
  let x_299 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_299);
  let x_302 : vec3<f32> = u_xlat12;
  let x_304 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304);
  let x_308 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_308;
  let x_311 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_311;
  let x_315 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_315;
  let x_317 : vec3<f32> = u_xlat3;
  let x_318 : vec3<f32> = u_xlat3;
  u_xlat12.x = dot(x_317, x_318);
  let x_322 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_322, 1.17549435e-37f);
  let x_327 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_327);
  let x_333 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres0;
  let x_343 : vec3<f32> = (x_333 + -(vec3<f32>(x_340.x, x_340.y, x_340.z)));
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : vec3<f32> = vs_TEXCOORD1;
  let x_349 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres1;
  let x_352 : vec3<f32> = (x_347 + -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : vec3<f32> = vs_TEXCOORD1;
  let x_359 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_356 + -(vec3<f32>(x_359.x, x_359.y, x_359.z)));
  let x_364 : vec3<f32> = vs_TEXCOORD1;
  let x_366 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_364 + -(vec3<f32>(x_366.x, x_366.y, x_366.z)));
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_376 : vec4<f32> = u_xlat5;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_376.x, x_376.y, x_376.z), vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_382 : vec3<f32> = u_xlat6;
  let x_383 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_382, x_383);
  let x_386 : vec3<f32> = u_xlat7;
  let x_387 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_386, x_387);
  let x_393 : vec4<f32> = u_xlat4;
  let x_396 : vec4<f32> = x_338.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_393 < x_396);
  let x_399 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_399);
  let x_403 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_403);
  let x_407 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_407);
  let x_411 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_411);
  let x_415 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_415);
  let x_420 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_420);
  let x_424 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_424);
  let x_427 : vec4<f32> = u_xlat4;
  let x_429 : vec4<f32> = u_xlat5;
  let x_431 : vec3<f32> = (vec3<f32>(x_427.x, x_427.y, x_427.z) + vec3<f32>(x_429.y, x_429.z, x_429.w));
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat4;
  let x_437 : vec3<f32> = max(vec3<f32>(x_434.x, x_434.y, x_434.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_438.x, x_437.x, x_437.y, x_437.z);
  let x_440 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_440, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_445 : f32 = u_xlat36;
  u_xlat36 = (-(x_445) + 4.0f);
  let x_450 : f32 = u_xlat36;
  u_xlatu36 = u32(x_450);
  let x_454 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_454) << bitcast<u32>(2i));
  let x_457 : vec3<f32> = vs_TEXCOORD1;
  let x_459 : i32 = u_xlati36;
  let x_462 : i32 = u_xlati36;
  let x_466 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_459 + 1i) / 4i)][((x_462 + 1i) % 4i)];
  let x_468 : vec3<f32> = (vec3<f32>(x_457.y, x_457.y, x_457.y) * vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : i32 = u_xlati36;
  let x_473 : i32 = u_xlati36;
  let x_476 : vec4<f32> = x_338.x_MainLightWorldToShadow[(x_471 / 4i)][(x_473 % 4i)];
  let x_478 : vec3<f32> = vs_TEXCOORD1;
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_478.x, x_478.x, x_478.x)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : i32 = u_xlati36;
  let x_489 : i32 = u_xlati36;
  let x_493 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_486 + 2i) / 4i)][((x_489 + 2i) % 4i)];
  let x_495 : vec3<f32> = vs_TEXCOORD1;
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec3<f32> = ((vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_495.z, x_495.z, x_495.z)) + vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat4;
  let x_505 : i32 = u_xlati36;
  let x_508 : i32 = u_xlati36;
  let x_512 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_505 + 3i) / 4i)][((x_508 + 3i) % 4i)];
  let x_514 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : f32 = vs_TEXCOORD1.y;
  let x_521 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_518 * x_521);
  let x_524 : f32 = x_44.unity_MatrixV[0i].z;
  let x_526 : f32 = vs_TEXCOORD1.x;
  let x_528 : f32 = u_xlat36;
  u_xlat36 = ((x_524 * x_526) + x_528);
  let x_531 : f32 = x_44.unity_MatrixV[2i].z;
  let x_533 : f32 = vs_TEXCOORD1.z;
  let x_535 : f32 = u_xlat36;
  u_xlat36 = ((x_531 * x_533) + x_535);
  let x_537 : f32 = u_xlat36;
  let x_539 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_537 + x_539);
  let x_541 : f32 = u_xlat36;
  let x_545 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_541) + -(x_545));
  let x_548 : f32 = u_xlat36;
  u_xlat36 = max(x_548, 0.0f);
  let x_550 : f32 = u_xlat36;
  let x_553 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_550 * x_553);
  let x_561 : vec2<f32> = vs_TEXCOORD7;
  let x_563 : f32 = x_44.x_GlobalMipBias.x;
  let x_564 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_561, x_563);
  let x_565 : vec3<f32> = vec3<f32>(x_564.x, x_564.y, x_564.z);
  let x_566 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_571 : vec2<f32> = vec2<f32>(x_570.x, x_570.y);
  let x_575 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_571.x, x_571.y));
  let x_576 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_575.x, x_575.y, x_576.z);
  let x_578 : vec3<f32> = u_xlat6;
  let x_580 : vec4<f32> = hlslcc_FragCoord;
  let x_582 : vec2<f32> = (vec2<f32>(x_578.x, x_578.y) * vec2<f32>(x_580.x, x_580.y));
  let x_583 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_582.x, x_582.y, x_583.z);
  let x_586 : f32 = u_xlat6.y;
  let x_589 : f32 = x_44.x_ScaleBiasRt.x;
  let x_592 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_586 * x_589) + x_592);
  let x_596 : f32 = u_xlat1.x;
  u_xlat6.z = (-(x_596) + 1.0f);
  let x_605 : vec3<f32> = u_xlat6;
  let x_608 : f32 = x_44.x_GlobalMipBias.x;
  let x_609 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_605.x, x_605.z), x_608);
  u_xlat1.x = x_609.x;
  let x_614 : f32 = u_xlat1.x;
  u_xlat38 = (x_614 + -1.0f);
  let x_617 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_618 : f32 = u_xlat38;
  u_xlat38 = ((x_617 * x_618) + 1.0f);
  let x_622 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_622, 1.0f);
  let x_626 : vec4<f32> = u_xlat4;
  let x_627 : vec2<f32> = vec2<f32>(x_626.x, x_626.y);
  let x_629 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_627.x, x_627.y, x_629);
  let x_642 : vec3<f32> = txVec0;
  let x_644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_642.xy, x_642.z);
  u_xlat39 = x_644;
  let x_646 : f32 = x_338.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_646) + 1.0f);
  let x_650 : f32 = u_xlat39;
  let x_652 : f32 = x_338.x_MainLightShadowParams.x;
  let x_655 : f32 = u_xlat4.x;
  u_xlat39 = ((x_650 * x_652) + x_655);
  let x_658 : f32 = u_xlat4.z;
  u_xlatb4.x = (0.0f >= x_658);
  let x_663 : f32 = u_xlat4.z;
  u_xlatb16 = (x_663 >= 1.0f);
  let x_665 : bool = u_xlatb16;
  let x_667 : bool = u_xlatb4.x;
  u_xlatb4.x = (x_665 | x_667);
  let x_671 : bool = u_xlatb4.x;
  let x_672 : f32 = u_xlat39;
  u_xlat39 = select(x_672, 1.0f, x_671);
  let x_674 : vec3<f32> = vs_TEXCOORD1;
  let x_678 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_680 : vec3<f32> = (x_674 + -(x_678));
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec4<f32> = u_xlat4;
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_683.x, x_683.y, x_683.z), vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_690 : f32 = u_xlat4.x;
  let x_692 : f32 = x_338.x_MainLightShadowParams.z;
  let x_695 : f32 = x_338.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_690 * x_692) + x_695);
  let x_699 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_699, 0.0f, 1.0f);
  let x_703 : f32 = u_xlat39;
  u_xlat16 = (-(x_703) + 1.0f);
  let x_707 : f32 = u_xlat4.x;
  let x_708 : f32 = u_xlat16;
  let x_710 : f32 = u_xlat39;
  u_xlat39 = ((x_707 * x_708) + x_710);
  let x_718 : f32 = x_716.x_MainLightCookieTextureFormat;
  u_xlatb4.x = !((x_718 == -1.0f));
  let x_722 : bool = u_xlatb4.x;
  if (x_722) {
    let x_725 : vec3<f32> = vs_TEXCOORD1;
    let x_728 : vec4<f32> = x_716.x_MainLightWorldToLight[1i];
    let x_730 : vec2<f32> = (vec2<f32>(x_725.y, x_725.y) * vec2<f32>(x_728.x, x_728.y));
    let x_731 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
    let x_734 : vec4<f32> = x_716.x_MainLightWorldToLight[0i];
    let x_736 : vec3<f32> = vs_TEXCOORD1;
    let x_739 : vec4<f32> = u_xlat4;
    let x_741 : vec2<f32> = ((vec2<f32>(x_734.x, x_734.y) * vec2<f32>(x_736.x, x_736.x)) + vec2<f32>(x_739.x, x_739.y));
    let x_742 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_741.x, x_741.y, x_742.z, x_742.w);
    let x_745 : vec4<f32> = x_716.x_MainLightWorldToLight[2i];
    let x_747 : vec3<f32> = vs_TEXCOORD1;
    let x_750 : vec4<f32> = u_xlat4;
    let x_752 : vec2<f32> = ((vec2<f32>(x_745.x, x_745.y) * vec2<f32>(x_747.z, x_747.z)) + vec2<f32>(x_750.x, x_750.y));
    let x_753 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
    let x_755 : vec4<f32> = u_xlat4;
    let x_758 : vec4<f32> = x_716.x_MainLightWorldToLight[3i];
    let x_760 : vec2<f32> = (vec2<f32>(x_755.x, x_755.y) + vec2<f32>(x_758.x, x_758.y));
    let x_761 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_760.x, x_760.y, x_761.z, x_761.w);
    let x_763 : vec4<f32> = u_xlat4;
    let x_767 : vec2<f32> = ((vec2<f32>(x_763.x, x_763.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_768 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
    let x_775 : vec4<f32> = u_xlat4;
    let x_778 : f32 = x_44.x_GlobalMipBias.x;
    let x_779 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_775.x, x_775.y), x_778);
    u_xlat4 = x_779;
    let x_784 : f32 = x_716.x_MainLightCookieTextureFormat;
    let x_786 : f32 = x_716.x_MainLightCookieTextureFormat;
    let x_788 : f32 = x_716.x_MainLightCookieTextureFormat;
    let x_790 : f32 = x_716.x_MainLightCookieTextureFormat;
    let x_791 : vec4<f32> = vec4<f32>(x_784, x_786, x_788, x_790);
    let x_798 : vec4<bool> = (vec4<f32>(x_791.x, x_791.y, x_791.z, x_791.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_798.x, x_798.y);
    let x_802 : bool = u_xlatb6.y;
    if (x_802) {
      let x_807 : f32 = u_xlat4.w;
      x_803 = x_807;
    } else {
      let x_810 : f32 = u_xlat4.x;
      x_803 = x_810;
    }
    let x_811 : f32 = x_803;
    u_xlat40 = x_811;
    let x_813 : bool = u_xlatb6.x;
    if (x_813) {
      let x_817 : vec4<f32> = u_xlat4;
      x_814 = vec3<f32>(x_817.x, x_817.y, x_817.z);
    } else {
      let x_820 : f32 = u_xlat40;
      x_814 = vec3<f32>(x_820, x_820, x_820);
    }
    let x_822 : vec3<f32> = x_814;
    let x_823 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_829 : vec4<f32> = u_xlat4;
  let x_832 : vec4<f32> = x_44.x_MainLightColor;
  let x_834 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : f32 = u_xlat38;
  let x_839 : vec4<f32> = u_xlat4;
  let x_841 : vec3<f32> = (vec3<f32>(x_837, x_837, x_837) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : vec4<f32> = u_xlat5;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.x, x_844.x) * vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : f32 = u_xlat39;
  let x_853 : f32 = x_236.unity_LightData.z;
  u_xlat1.x = (x_851 * x_853);
  let x_856 : vec4<f32> = u_xlat1;
  let x_858 : vec4<f32> = u_xlat4;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.x, x_856.x) * vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec3<f32> = u_xlat2;
  let x_865 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_863, vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_870 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_870, 0.0f, 1.0f);
  let x_873 : vec4<f32> = u_xlat1;
  let x_875 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec3<f32>(x_873.x, x_873.x, x_873.x) * vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_879 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_879 * 10.0f) + 1.0f);
  let x_885 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_885);
  let x_888 : vec3<f32> = u_xlat3;
  let x_889 : vec3<f32> = u_xlat12;
  let x_893 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_888 * vec3<f32>(x_889.x, x_889.x, x_889.x)) + vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_896 : vec3<f32> = u_xlat7;
  let x_897 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_896, x_897);
  let x_899 : f32 = u_xlat39;
  u_xlat39 = max(x_899, 1.17549435e-37f);
  let x_901 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_901);
  let x_903 : f32 = u_xlat39;
  let x_905 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_903, x_903, x_903) * x_905);
  let x_907 : vec3<f32> = u_xlat2;
  let x_908 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_907, x_908);
  let x_910 : f32 = u_xlat39;
  u_xlat39 = clamp(x_910, 0.0f, 1.0f);
  let x_912 : f32 = u_xlat39;
  u_xlat39 = log2(x_912);
  let x_915 : f32 = u_xlat1.x;
  let x_916 : f32 = u_xlat39;
  u_xlat39 = (x_915 * x_916);
  let x_918 : f32 = u_xlat39;
  u_xlat39 = exp2(x_918);
  let x_920 : f32 = u_xlat39;
  let x_923 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_920, x_920, x_920) * vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec4<f32> = u_xlat4;
  let x_928 : vec3<f32> = u_xlat7;
  let x_929 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) * x_928);
  let x_930 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec3<f32> = u_xlat6;
  let x_933 : vec4<f32> = u_xlat1;
  let x_936 : vec4<f32> = u_xlat4;
  let x_938 : vec3<f32> = ((x_932 * vec3<f32>(x_933.y, x_933.z, x_933.w)) + vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_943 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_945 : f32 = x_236.unity_LightData.y;
  u_xlat39 = min(x_943, x_945);
  let x_948 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_948));
  let x_952 : f32 = x_716.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_954 : f32 = x_716.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_956 : f32 = x_716.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_958 : f32 = x_716.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_959 : vec4<f32> = vec4<f32>(x_952, x_954, x_956, x_958);
  let x_965 : vec4<bool> = (vec4<f32>(x_959.x, x_959.y, x_959.z, x_959.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_965.x, x_965.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_976 : u32 = u_xlatu_loop_1;
    let x_977 : u32 = u_xlatu39;
    if ((x_976 < x_977)) {
    } else {
      break;
    }
    let x_980 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_980 >> 2u);
    let x_983 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_983 & 3u));
    let x_987 : u32 = u_xlatu41;
    let x_990 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_987)];
    let x_1000 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1005 : vec4<u32> = indexable[x_1000];
    u_xlat41 = dot(x_990, bitcast<vec4<f32>>(x_1005));
    let x_1008 : f32 = u_xlat41;
    u_xlatu41 = bitcast<u32>(i32(x_1008));
    let x_1012 : vec3<f32> = vs_TEXCOORD1;
    let x_1024 : u32 = u_xlatu41;
    let x_1027 : vec4<f32> = x_1023.x_AdditionalLightsPosition[bitcast<i32>(x_1024)];
    let x_1030 : u32 = u_xlatu41;
    let x_1033 : vec4<f32> = x_1023.x_AdditionalLightsPosition[bitcast<i32>(x_1030)];
    u_xlat8 = ((-(x_1012) * vec3<f32>(x_1027.w, x_1027.w, x_1027.w)) + vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
    let x_1037 : vec3<f32> = u_xlat8;
    let x_1038 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(x_1037, x_1038);
    let x_1040 : f32 = u_xlat30;
    u_xlat30 = max(x_1040, 6.10351562e-05f);
    let x_1044 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1044);
    let x_1046 : f32 = u_xlat42;
    let x_1048 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1046, x_1046, x_1046) * x_1048);
    let x_1050 : f32 = u_xlat30;
    u_xlat42 = (1.0f / x_1050);
    let x_1052 : f32 = u_xlat30;
    let x_1053 : u32 = u_xlatu41;
    let x_1056 : f32 = x_1023.x_AdditionalLightsAttenuation[bitcast<i32>(x_1053)].x;
    u_xlat30 = (x_1052 * x_1056);
    let x_1058 : f32 = u_xlat30;
    let x_1060 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1058) * x_1060) + 1.0f);
    let x_1063 : f32 = u_xlat30;
    u_xlat30 = max(x_1063, 0.0f);
    let x_1065 : f32 = u_xlat30;
    let x_1066 : f32 = u_xlat30;
    u_xlat30 = (x_1065 * x_1066);
    let x_1068 : f32 = u_xlat30;
    let x_1069 : f32 = u_xlat42;
    u_xlat30 = (x_1068 * x_1069);
    let x_1071 : u32 = u_xlatu41;
    let x_1074 : vec4<f32> = x_1023.x_AdditionalLightsSpotDir[bitcast<i32>(x_1071)];
    let x_1076 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1074.x, x_1074.y, x_1074.z), x_1076);
    let x_1078 : f32 = u_xlat42;
    let x_1079 : u32 = u_xlatu41;
    let x_1082 : f32 = x_1023.x_AdditionalLightsAttenuation[bitcast<i32>(x_1079)].z;
    let x_1084 : u32 = u_xlatu41;
    let x_1087 : f32 = x_1023.x_AdditionalLightsAttenuation[bitcast<i32>(x_1084)].w;
    u_xlat42 = ((x_1078 * x_1082) + x_1087);
    let x_1089 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1089, 0.0f, 1.0f);
    let x_1091 : f32 = u_xlat42;
    let x_1092 : f32 = u_xlat42;
    u_xlat42 = (x_1091 * x_1092);
    let x_1094 : f32 = u_xlat42;
    let x_1095 : f32 = u_xlat30;
    u_xlat30 = (x_1094 * x_1095);
    let x_1098 : u32 = u_xlatu41;
    u_xlatu42 = (x_1098 >> 5u);
    let x_1101 : u32 = u_xlatu41;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_1101) & 31i)));
    let x_1107 : i32 = u_xlati43;
    let x_1109 : u32 = u_xlatu42;
    let x_1112 : f32 = x_716.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1109)].el;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_1107) & bitcast<u32>(x_1112)));
    let x_1116 : i32 = u_xlati42;
    if ((x_1116 != 0i)) {
      let x_1126 : u32 = u_xlatu41;
      let x_1129 : f32 = x_1125.x_AdditionalLightsLightTypes[bitcast<i32>(x_1126)].el;
      u_xlati42 = i32(x_1129);
      let x_1131 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_1131 != 0i));
      let x_1135 : u32 = u_xlatu41;
      u_xlati44 = (bitcast<i32>(x_1135) << bitcast<u32>(2i));
      let x_1138 : i32 = u_xlati43;
      if ((x_1138 != 0i)) {
        let x_1143 : vec3<f32> = vs_TEXCOORD1;
        let x_1145 : i32 = u_xlati44;
        let x_1148 : i32 = u_xlati44;
        let x_1152 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[((x_1145 + 1i) / 4i)][((x_1148 + 1i) % 4i)];
        let x_1154 : vec3<f32> = (vec3<f32>(x_1143.y, x_1143.y, x_1143.y) * vec3<f32>(x_1152.x, x_1152.y, x_1152.w));
        let x_1155 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
        let x_1157 : i32 = u_xlati44;
        let x_1159 : i32 = u_xlati44;
        let x_1162 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[(x_1157 / 4i)][(x_1159 % 4i)];
        let x_1164 : vec3<f32> = vs_TEXCOORD1;
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1169 : vec3<f32> = ((vec3<f32>(x_1162.x, x_1162.y, x_1162.w) * vec3<f32>(x_1164.x, x_1164.x, x_1164.x)) + vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
        let x_1172 : i32 = u_xlati44;
        let x_1175 : i32 = u_xlati44;
        let x_1179 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[((x_1172 + 2i) / 4i)][((x_1175 + 2i) % 4i)];
        let x_1181 : vec3<f32> = vs_TEXCOORD1;
        let x_1184 : vec4<f32> = u_xlat9;
        let x_1186 : vec3<f32> = ((vec3<f32>(x_1179.x, x_1179.y, x_1179.w) * vec3<f32>(x_1181.z, x_1181.z, x_1181.z)) + vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
        let x_1187 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
        let x_1189 : vec4<f32> = u_xlat9;
        let x_1191 : i32 = u_xlati44;
        let x_1194 : i32 = u_xlati44;
        let x_1198 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[((x_1191 + 3i) / 4i)][((x_1194 + 3i) % 4i)];
        let x_1200 : vec3<f32> = (vec3<f32>(x_1189.x, x_1189.y, x_1189.z) + vec3<f32>(x_1198.x, x_1198.y, x_1198.w));
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat9;
        let x_1205 : vec4<f32> = u_xlat9;
        let x_1207 : vec2<f32> = (vec2<f32>(x_1203.x, x_1203.y) / vec2<f32>(x_1205.z, x_1205.z));
        let x_1208 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1207.x, x_1207.y, x_1208.z, x_1208.w);
        let x_1210 : vec4<f32> = u_xlat9;
        let x_1213 : vec2<f32> = ((vec2<f32>(x_1210.x, x_1210.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1214 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat9;
        let x_1220 : vec2<f32> = clamp(vec2<f32>(x_1216.x, x_1216.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1221 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1223 : u32 = u_xlatu41;
        let x_1226 : vec4<f32> = x_1125.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1223)];
        let x_1228 : vec4<f32> = u_xlat9;
        let x_1231 : u32 = u_xlatu41;
        let x_1234 : vec4<f32> = x_1125.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1231)];
        let x_1236 : vec2<f32> = ((vec2<f32>(x_1226.x, x_1226.y) * vec2<f32>(x_1228.x, x_1228.y)) + vec2<f32>(x_1234.z, x_1234.w));
        let x_1237 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
      } else {
        let x_1241 : i32 = u_xlati42;
        u_xlatb42 = (x_1241 == 1i);
        let x_1243 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1243);
        let x_1245 : i32 = u_xlati42;
        if ((x_1245 != 0i)) {
          let x_1251 : vec3<f32> = vs_TEXCOORD1;
          let x_1253 : i32 = u_xlati44;
          let x_1256 : i32 = u_xlati44;
          let x_1260 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[((x_1253 + 1i) / 4i)][((x_1256 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1251.y, x_1251.y) * vec2<f32>(x_1260.x, x_1260.y));
          let x_1263 : i32 = u_xlati44;
          let x_1265 : i32 = u_xlati44;
          let x_1268 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[(x_1263 / 4i)][(x_1265 % 4i)];
          let x_1270 : vec3<f32> = vs_TEXCOORD1;
          let x_1273 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1270.x, x_1270.x)) + x_1273);
          let x_1275 : i32 = u_xlati44;
          let x_1278 : i32 = u_xlati44;
          let x_1282 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[((x_1275 + 2i) / 4i)][((x_1278 + 2i) % 4i)];
          let x_1284 : vec3<f32> = vs_TEXCOORD1;
          let x_1287 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1282.x, x_1282.y) * vec2<f32>(x_1284.z, x_1284.z)) + x_1287);
          let x_1289 : vec2<f32> = u_xlat33;
          let x_1290 : i32 = u_xlati44;
          let x_1293 : i32 = u_xlati44;
          let x_1297 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[((x_1290 + 3i) / 4i)][((x_1293 + 3i) % 4i)];
          u_xlat33 = (x_1289 + vec2<f32>(x_1297.x, x_1297.y));
          let x_1300 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1300 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1303 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1303);
          let x_1305 : u32 = u_xlatu41;
          let x_1308 : vec4<f32> = x_1125.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1305)];
          let x_1310 : vec2<f32> = u_xlat33;
          let x_1312 : u32 = u_xlatu41;
          let x_1315 : vec4<f32> = x_1125.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1312)];
          let x_1317 : vec2<f32> = ((vec2<f32>(x_1308.x, x_1308.y) * x_1310) + vec2<f32>(x_1315.z, x_1315.w));
          let x_1318 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
        } else {
          let x_1322 : vec3<f32> = vs_TEXCOORD1;
          let x_1324 : i32 = u_xlati44;
          let x_1327 : i32 = u_xlati44;
          let x_1331 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[((x_1324 + 1i) / 4i)][((x_1327 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1322.y, x_1322.y, x_1322.y, x_1322.y) * x_1331);
          let x_1333 : i32 = u_xlati44;
          let x_1335 : i32 = u_xlati44;
          let x_1338 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[(x_1333 / 4i)][(x_1335 % 4i)];
          let x_1339 : vec3<f32> = vs_TEXCOORD1;
          let x_1342 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1338 * vec4<f32>(x_1339.x, x_1339.x, x_1339.x, x_1339.x)) + x_1342);
          let x_1344 : i32 = u_xlati44;
          let x_1347 : i32 = u_xlati44;
          let x_1351 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[((x_1344 + 2i) / 4i)][((x_1347 + 2i) % 4i)];
          let x_1352 : vec3<f32> = vs_TEXCOORD1;
          let x_1355 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1351 * vec4<f32>(x_1352.z, x_1352.z, x_1352.z, x_1352.z)) + x_1355);
          let x_1357 : vec4<f32> = u_xlat10;
          let x_1358 : i32 = u_xlati44;
          let x_1361 : i32 = u_xlati44;
          let x_1365 : vec4<f32> = x_1125.x_AdditionalLightsWorldToLights[((x_1358 + 3i) / 4i)][((x_1361 + 3i) % 4i)];
          u_xlat10 = (x_1357 + x_1365);
          let x_1367 : vec4<f32> = u_xlat10;
          let x_1369 : vec4<f32> = u_xlat10;
          let x_1371 : vec3<f32> = (vec3<f32>(x_1367.x, x_1367.y, x_1367.z) / vec3<f32>(x_1369.w, x_1369.w, x_1369.w));
          let x_1372 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
          let x_1374 : vec4<f32> = u_xlat10;
          let x_1376 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1374.x, x_1374.y, x_1374.z), vec3<f32>(x_1376.x, x_1376.y, x_1376.z));
          let x_1379 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1379);
          let x_1381 : f32 = u_xlat42;
          let x_1383 : vec4<f32> = u_xlat10;
          let x_1385 : vec3<f32> = (vec3<f32>(x_1381, x_1381, x_1381) * vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
          let x_1386 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
          let x_1388 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1388.x, x_1388.y, x_1388.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1393 : f32 = u_xlat42;
          u_xlat42 = max(x_1393, 0.000001f);
          let x_1396 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1396);
          let x_1399 : f32 = u_xlat42;
          let x_1401 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1399, x_1399, x_1399) * vec3<f32>(x_1401.z, x_1401.x, x_1401.y));
          let x_1405 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1405);
          let x_1409 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1409, 0.0f, 1.0f);
          let x_1413 : vec3<f32> = u_xlat11;
          let x_1416 : vec4<bool> = (vec4<f32>(x_1413.y, x_1413.z, x_1413.y, x_1413.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1416.x, x_1416.y);
          let x_1419 : bool = u_xlatb33.x;
          if (x_1419) {
            let x_1424 : f32 = u_xlat11.x;
            x_1420 = x_1424;
          } else {
            let x_1427 : f32 = u_xlat11.x;
            x_1420 = -(x_1427);
          }
          let x_1429 : f32 = x_1420;
          u_xlat33.x = x_1429;
          let x_1432 : bool = u_xlatb33.y;
          if (x_1432) {
            let x_1437 : f32 = u_xlat11.x;
            x_1433 = x_1437;
          } else {
            let x_1440 : f32 = u_xlat11.x;
            x_1433 = -(x_1440);
          }
          let x_1442 : f32 = x_1433;
          u_xlat33.y = x_1442;
          let x_1444 : vec4<f32> = u_xlat10;
          let x_1446 : f32 = u_xlat42;
          let x_1449 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1444.x, x_1444.y) * vec2<f32>(x_1446, x_1446)) + x_1449);
          let x_1451 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1451 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1454 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1454, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1458 : u32 = u_xlatu41;
          let x_1461 : vec4<f32> = x_1125.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1458)];
          let x_1463 : vec2<f32> = u_xlat33;
          let x_1465 : u32 = u_xlatu41;
          let x_1468 : vec4<f32> = x_1125.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1465)];
          let x_1470 : vec2<f32> = ((vec2<f32>(x_1461.x, x_1461.y) * x_1463) + vec2<f32>(x_1468.z, x_1468.w));
          let x_1471 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1470.x, x_1470.y, x_1471.z, x_1471.w);
        }
      }
      let x_1478 : vec4<f32> = u_xlat9;
      let x_1481 : f32 = x_44.x_GlobalMipBias.x;
      let x_1482 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1478.x, x_1478.y), x_1481);
      u_xlat9 = x_1482;
      let x_1484 : bool = u_xlatb6.y;
      if (x_1484) {
        let x_1489 : f32 = u_xlat9.w;
        x_1485 = x_1489;
      } else {
        let x_1492 : f32 = u_xlat9.x;
        x_1485 = x_1492;
      }
      let x_1493 : f32 = x_1485;
      u_xlat42 = x_1493;
      let x_1495 : bool = u_xlatb6.x;
      if (x_1495) {
        let x_1499 : vec4<f32> = u_xlat9;
        x_1496 = vec3<f32>(x_1499.x, x_1499.y, x_1499.z);
      } else {
        let x_1502 : f32 = u_xlat42;
        x_1496 = vec3<f32>(x_1502, x_1502, x_1502);
      }
      let x_1504 : vec3<f32> = x_1496;
      let x_1505 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1511 : vec4<f32> = u_xlat9;
    let x_1513 : u32 = u_xlatu41;
    let x_1516 : vec4<f32> = x_1023.x_AdditionalLightsColor[bitcast<i32>(x_1513)];
    let x_1518 : vec3<f32> = (vec3<f32>(x_1511.x, x_1511.y, x_1511.z) * vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
    let x_1519 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
    let x_1521 : f32 = u_xlat38;
    let x_1523 : vec4<f32> = u_xlat9;
    let x_1525 : vec3<f32> = (vec3<f32>(x_1521, x_1521, x_1521) * vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
    let x_1526 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
    let x_1528 : f32 = u_xlat30;
    let x_1530 : vec4<f32> = u_xlat9;
    let x_1532 : vec3<f32> = (vec3<f32>(x_1528, x_1528, x_1528) * vec3<f32>(x_1530.x, x_1530.y, x_1530.z));
    let x_1533 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
    let x_1535 : vec3<f32> = u_xlat2;
    let x_1536 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1535, x_1536);
    let x_1538 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1538, 0.0f, 1.0f);
    let x_1540 : f32 = u_xlat41;
    let x_1542 : vec4<f32> = u_xlat9;
    let x_1544 : vec3<f32> = (vec3<f32>(x_1540, x_1540, x_1540) * vec3<f32>(x_1542.x, x_1542.y, x_1542.z));
    let x_1545 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
    let x_1547 : vec3<f32> = u_xlat3;
    let x_1548 : vec3<f32> = u_xlat12;
    let x_1551 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1547 * vec3<f32>(x_1548.x, x_1548.x, x_1548.x)) + x_1551);
    let x_1553 : vec3<f32> = u_xlat8;
    let x_1554 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1553, x_1554);
    let x_1556 : f32 = u_xlat41;
    u_xlat41 = max(x_1556, 1.17549435e-37f);
    let x_1558 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1558);
    let x_1560 : f32 = u_xlat41;
    let x_1562 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1560, x_1560, x_1560) * x_1562);
    let x_1564 : vec3<f32> = u_xlat2;
    let x_1565 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1564, x_1565);
    let x_1567 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1567, 0.0f, 1.0f);
    let x_1569 : f32 = u_xlat41;
    u_xlat41 = log2(x_1569);
    let x_1572 : f32 = u_xlat1.x;
    let x_1573 : f32 = u_xlat41;
    u_xlat41 = (x_1572 * x_1573);
    let x_1575 : f32 = u_xlat41;
    u_xlat41 = exp2(x_1575);
    let x_1577 : f32 = u_xlat41;
    let x_1580 : vec4<f32> = x_57.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1577, x_1577, x_1577) * vec3<f32>(x_1580.x, x_1580.y, x_1580.z));
    let x_1583 : vec3<f32> = u_xlat8;
    let x_1584 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1583 * vec3<f32>(x_1584.x, x_1584.y, x_1584.z));
    let x_1587 : vec4<f32> = u_xlat10;
    let x_1589 : vec4<f32> = u_xlat1;
    let x_1592 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1587.x, x_1587.y, x_1587.z) * vec3<f32>(x_1589.y, x_1589.z, x_1589.w)) + x_1592);
    let x_1594 : vec3<f32> = u_xlat7;
    let x_1595 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1594 + x_1595);

    continuing {
      let x_1597 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1597 + bitcast<u32>(1i));
    }
  }
  let x_1599 : vec4<f32> = u_xlat5;
  let x_1601 : vec4<f32> = u_xlat1;
  let x_1604 : vec4<f32> = u_xlat4;
  let x_1606 : vec3<f32> = ((vec3<f32>(x_1599.x, x_1599.y, x_1599.z) * vec3<f32>(x_1601.y, x_1601.z, x_1601.w)) + vec3<f32>(x_1604.x, x_1604.y, x_1604.z));
  let x_1607 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1607.w);
  let x_1609 : vec3<f32> = u_xlat7;
  let x_1610 : vec4<f32> = u_xlat1;
  let x_1612 : vec3<f32> = (x_1609 + vec3<f32>(x_1610.x, x_1610.y, x_1610.z));
  let x_1613 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1612.x, x_1612.y, x_1612.z, x_1613.w);
  let x_1615 : f32 = u_xlat36;
  let x_1616 : f32 = u_xlat36;
  u_xlat12.x = (x_1615 * -(x_1616));
  let x_1621 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1621);
  let x_1624 : vec4<f32> = u_xlat1;
  let x_1628 : vec4<f32> = x_44.unity_FogColor;
  let x_1631 : vec3<f32> = (vec3<f32>(x_1624.x, x_1624.y, x_1624.z) + -(vec3<f32>(x_1628.x, x_1628.y, x_1628.z)));
  let x_1632 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1631.x, x_1631.y, x_1631.z, x_1632.w);
  let x_1636 : vec3<f32> = u_xlat12;
  let x_1638 : vec4<f32> = u_xlat1;
  let x_1642 : vec4<f32> = x_44.unity_FogColor;
  let x_1644 : vec3<f32> = ((vec3<f32>(x_1636.x, x_1636.x, x_1636.x) * vec3<f32>(x_1638.x, x_1638.y, x_1638.z)) + vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
  let x_1645 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1644.x, x_1644.y, x_1644.z, x_1645.w);
  let x_1648 : f32 = x_57.x_Surface;
  u_xlatb12 = (x_1648 == 1.0f);
  let x_1650 : bool = u_xlatb12;
  let x_1651 : bool = u_xlatb24;
  u_xlatb12 = (x_1650 | x_1651);
  let x_1653 : bool = u_xlatb12;
  if (x_1653) {
    let x_1658 : f32 = u_xlat0.x;
    x_1654 = x_1658;
  } else {
    x_1654 = 1.0f;
  }
  let x_1660 : f32 = x_1654;
  SV_Target0.w = x_1660;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

