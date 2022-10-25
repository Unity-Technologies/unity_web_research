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

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_447 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1763 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2078 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2188 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_131 : f32;
  var u_xlatb19 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlatb21 : bool;
  var x_241 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat59 : f32;
  var u_xlatb60 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat60 : f32;
  var u_xlatb61 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat61 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat24 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat26 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
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
  var u_xlatb5 : bool;
  var u_xlatb6 : vec2<bool>;
  var x_1847 : f32;
  var x_1858 : vec3<f32>;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu62 : u32;
  var u_xlati44 : i32;
  var u_xlat62 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat44 : f32;
  var u_xlat63 : f32;
  var u_xlatu63 : u32;
  var u_xlati64 : i32;
  var u_xlati63 : i32;
  var u_xlati65 : i32;
  var u_xlatb63 : bool;
  var u_xlat47 : vec2<f32>;
  var u_xlatb47 : vec2<bool>;
  var x_2481 : f32;
  var x_2494 : f32;
  var x_2546 : f32;
  var x_2557 : vec3<f32>;
  var x_2737 : f32;
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
  u_xlat19.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat38 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat57 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat57;
  let x_105 : f32 = u_xlat38;
  u_xlat38 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat38;
  u_xlat38 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat19.x;
  let x_113 : f32 = u_xlat38;
  u_xlat19.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat19.x;
  u_xlat19.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb38;
  if (x_130) {
    let x_135 : f32 = u_xlat19.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat19.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat19.x;
  u_xlatb19 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb19;
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
  let x_185 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat19;
  let x_189 : vec3<f32> = u_xlat19;
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
  u_xlatb21 = (x_238 >= 0.0f);
  let x_240 : bool = u_xlatb21;
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
  let x_272 : vec3<f32> = u_xlat19;
  let x_275 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_272.z, x_272.z, x_272.z) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec3<f32> = u_xlat19;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_278.x, x_278.x, x_278.x) * vec3<f32>(x_281.x, x_281.y, x_281.z)) + x_284);
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = vs_TEXCOORD2;
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z)) + x_292);
  let x_294 : vec3<f32> = u_xlat2;
  let x_295 : vec3<f32> = u_xlat2;
  u_xlat19.x = dot(x_294, x_295);
  let x_299 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_299);
  let x_302 : vec3<f32> = u_xlat19;
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
  u_xlat19.x = dot(x_317, x_318);
  let x_322 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_322, 1.17549435e-37f);
  let x_327 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_327);
  let x_333 : f32 = vs_TEXCOORD1.y;
  let x_336 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat57 = (x_333 * x_336);
  let x_339 : f32 = x_44.unity_MatrixV[0i].z;
  let x_341 : f32 = vs_TEXCOORD1.x;
  let x_343 : f32 = u_xlat57;
  u_xlat57 = ((x_339 * x_341) + x_343);
  let x_346 : f32 = x_44.unity_MatrixV[2i].z;
  let x_348 : f32 = vs_TEXCOORD1.z;
  let x_350 : f32 = u_xlat57;
  u_xlat57 = ((x_346 * x_348) + x_350);
  let x_352 : f32 = u_xlat57;
  let x_355 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat57 = (x_352 + x_355);
  let x_357 : f32 = u_xlat57;
  let x_361 : f32 = x_44.x_ProjectionParams.y;
  u_xlat57 = (-(x_357) + -(x_361));
  let x_364 : f32 = u_xlat57;
  u_xlat57 = max(x_364, 0.0f);
  let x_366 : f32 = u_xlat57;
  let x_369 : f32 = x_44.unity_FogParams.x;
  u_xlat57 = (x_366 * x_369);
  let x_378 : vec2<f32> = vs_TEXCOORD7;
  let x_380 : f32 = x_44.x_GlobalMipBias.x;
  let x_381 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_378, x_380);
  u_xlat4 = vec3<f32>(x_381.x, x_381.y, x_381.z);
  let x_386 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_387 : vec2<f32> = vec2<f32>(x_386.x, x_386.y);
  let x_391 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_387.x, x_387.y));
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat5;
  let x_396 : vec4<f32> = hlslcc_FragCoord;
  let x_398 : vec2<f32> = (vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_396.x, x_396.y));
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
  let x_402 : f32 = u_xlat5.y;
  let x_405 : f32 = x_44.x_ScaleBiasRt.x;
  let x_408 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_402 * x_405) + x_408);
  let x_412 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_412) + 1.0f);
  let x_421 : vec4<f32> = u_xlat5;
  let x_424 : f32 = x_44.x_GlobalMipBias.x;
  let x_425 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_421.x, x_421.z), x_424);
  u_xlat1.x = x_425.x;
  let x_430 : f32 = u_xlat1.x;
  u_xlat59 = (x_430 + -1.0f);
  let x_434 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_435 : f32 = u_xlat59;
  u_xlat59 = ((x_434 * x_435) + 1.0f);
  let x_439 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_439, 1.0f);
  let x_449 : f32 = x_447.x_MainLightShadowParams.y;
  u_xlatb60 = (0.0f < x_449);
  let x_451 : bool = u_xlatb60;
  if (x_451) {
    let x_455 : f32 = x_447.x_MainLightShadowParams.y;
    u_xlatb60 = (x_455 == 1.0f);
    let x_457 : bool = u_xlatb60;
    if (x_457) {
      let x_461 : vec4<f32> = vs_TEXCOORD6;
      let x_465 : vec4<f32> = x_447.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_461.x, x_461.y, x_461.x, x_461.y) + x_465);
      let x_468 : vec4<f32> = u_xlat5;
      let x_469 : vec2<f32> = vec2<f32>(x_468.x, x_468.y);
      let x_471 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_469.x, x_469.y, x_471);
      let x_484 : vec3<f32> = txVec0;
      let x_486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_484.xy, x_484.z);
      u_xlat6.x = x_486;
      let x_489 : vec4<f32> = u_xlat5;
      let x_490 : vec2<f32> = vec2<f32>(x_489.z, x_489.w);
      let x_492 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_490.x, x_490.y, x_492);
      let x_499 : vec3<f32> = txVec1;
      let x_501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_499.xy, x_499.z);
      u_xlat6.y = x_501;
      let x_503 : vec4<f32> = vs_TEXCOORD6;
      let x_507 : vec4<f32> = x_447.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_503.x, x_503.y, x_503.x, x_503.y) + x_507);
      let x_510 : vec4<f32> = u_xlat5;
      let x_511 : vec2<f32> = vec2<f32>(x_510.x, x_510.y);
      let x_513 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_511.x, x_511.y, x_513);
      let x_520 : vec3<f32> = txVec2;
      let x_522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_520.xy, x_520.z);
      u_xlat6.z = x_522;
      let x_525 : vec4<f32> = u_xlat5;
      let x_526 : vec2<f32> = vec2<f32>(x_525.z, x_525.w);
      let x_528 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_526.x, x_526.y, x_528);
      let x_535 : vec3<f32> = txVec3;
      let x_537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_535.xy, x_535.z);
      u_xlat6.w = x_537;
      let x_540 : vec4<f32> = u_xlat6;
      u_xlat60 = dot(x_540, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_547 : f32 = x_447.x_MainLightShadowParams.y;
      u_xlatb61 = (x_547 == 2.0f);
      let x_549 : bool = u_xlatb61;
      if (x_549) {
        let x_552 : vec4<f32> = vs_TEXCOORD6;
        let x_555 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_559 : vec2<f32> = ((vec2<f32>(x_552.x, x_552.y) * vec2<f32>(x_555.z, x_555.w)) + vec2<f32>(0.5f, 0.5f));
        let x_560 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat5;
        let x_564 : vec2<f32> = floor(vec2<f32>(x_562.x, x_562.y));
        let x_565 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_569 : vec4<f32> = vs_TEXCOORD6;
        let x_572 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_575 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(x_572.z, x_572.w)) + -(vec2<f32>(x_575.x, x_575.y)));
        let x_579 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_579.x, x_579.x, x_579.y, x_579.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_584 : vec4<f32> = u_xlat6;
        let x_586 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_584.x, x_584.x, x_584.z, x_584.z) * vec4<f32>(x_586.x, x_586.x, x_586.z, x_586.z));
        let x_589 : vec4<f32> = u_xlat7;
        let x_593 : vec2<f32> = (vec2<f32>(x_589.y, x_589.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_594 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_593.x, x_594.y, x_593.y, x_594.w);
        let x_596 : vec4<f32> = u_xlat7;
        let x_599 : vec2<f32> = u_xlat43;
        let x_601 : vec2<f32> = ((vec2<f32>(x_596.x, x_596.z) * vec2<f32>(0.5f, 0.5f)) + -(x_599));
        let x_602 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
        let x_605 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_605) + vec2<f32>(1.0f, 1.0f));
        let x_609 : vec2<f32> = u_xlat43;
        let x_611 : vec2<f32> = min(x_609, vec2<f32>(0.0f, 0.0f));
        let x_612 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
        let x_614 : vec4<f32> = u_xlat8;
        let x_617 : vec4<f32> = u_xlat8;
        let x_620 : vec2<f32> = u_xlat45;
        let x_621 : vec2<f32> = ((-(vec2<f32>(x_614.x, x_614.y)) * vec2<f32>(x_617.x, x_617.y)) + x_620);
        let x_622 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
        let x_624 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_624, vec2<f32>(0.0f, 0.0f));
        let x_626 : vec2<f32> = u_xlat43;
        let x_628 : vec2<f32> = u_xlat43;
        let x_630 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_626) * x_628) + vec2<f32>(x_630.y, x_630.w));
        let x_633 : vec4<f32> = u_xlat8;
        let x_635 : vec2<f32> = (vec2<f32>(x_633.x, x_633.y) + vec2<f32>(1.0f, 1.0f));
        let x_636 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_638 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_638 + vec2<f32>(1.0f, 1.0f));
        let x_641 : vec4<f32> = u_xlat7;
        let x_645 : vec2<f32> = (vec2<f32>(x_641.x, x_641.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_646 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_648 : vec2<f32> = u_xlat45;
        let x_649 : vec2<f32> = (x_648 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_650 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat8;
        let x_654 : vec2<f32> = (vec2<f32>(x_652.x, x_652.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_658 : vec2<f32> = u_xlat43;
        let x_659 : vec2<f32> = (x_658 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_660 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_662 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_662.y, x_662.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_666 : f32 = u_xlat8.x;
        u_xlat9.z = x_666;
        let x_669 : f32 = u_xlat43.x;
        u_xlat9.w = x_669;
        let x_672 : f32 = u_xlat10.x;
        u_xlat7.z = x_672;
        let x_675 : f32 = u_xlat6.x;
        u_xlat7.w = x_675;
        let x_678 : vec4<f32> = u_xlat7;
        let x_680 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_678.z, x_678.w, x_678.x, x_678.z) + vec4<f32>(x_680.z, x_680.w, x_680.x, x_680.z));
        let x_684 : f32 = u_xlat9.y;
        u_xlat8.z = x_684;
        let x_687 : f32 = u_xlat43.y;
        u_xlat8.w = x_687;
        let x_690 : f32 = u_xlat7.y;
        u_xlat10.z = x_690;
        let x_693 : f32 = u_xlat6.z;
        u_xlat10.w = x_693;
        let x_695 : vec4<f32> = u_xlat8;
        let x_697 : vec4<f32> = u_xlat10;
        let x_699 : vec3<f32> = (vec3<f32>(x_695.z, x_695.y, x_695.w) + vec3<f32>(x_697.z, x_697.y, x_697.w));
        let x_700 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat7;
        let x_704 : vec4<f32> = u_xlat11;
        let x_706 : vec3<f32> = (vec3<f32>(x_702.x, x_702.z, x_702.w) / vec3<f32>(x_704.z, x_704.w, x_704.y));
        let x_707 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
        let x_709 : vec4<f32> = u_xlat7;
        let x_715 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_716 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat10;
        let x_720 : vec4<f32> = u_xlat6;
        let x_722 : vec3<f32> = (vec3<f32>(x_718.z, x_718.y, x_718.w) / vec3<f32>(x_720.x, x_720.y, x_720.z));
        let x_723 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
        let x_725 : vec4<f32> = u_xlat8;
        let x_727 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_728 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
        let x_730 : vec4<f32> = u_xlat7;
        let x_733 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_735 : vec3<f32> = (vec3<f32>(x_730.y, x_730.x, x_730.z) * vec3<f32>(x_733.x, x_733.x, x_733.x));
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
        let x_738 : vec4<f32> = u_xlat8;
        let x_741 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_743 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(x_741.y, x_741.y, x_741.y));
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
        let x_747 : f32 = u_xlat8.x;
        u_xlat7.w = x_747;
        let x_749 : vec4<f32> = u_xlat5;
        let x_752 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_755 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_749.x, x_749.y, x_749.x, x_749.y) * vec4<f32>(x_752.x, x_752.y, x_752.x, x_752.y)) + vec4<f32>(x_755.y, x_755.w, x_755.x, x_755.w));
        let x_758 : vec4<f32> = u_xlat5;
        let x_761 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_764 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_758.x, x_758.y) * vec2<f32>(x_761.x, x_761.y)) + vec2<f32>(x_764.z, x_764.w));
        let x_768 : f32 = u_xlat7.y;
        u_xlat8.w = x_768;
        let x_770 : vec4<f32> = u_xlat8;
        let x_771 : vec2<f32> = vec2<f32>(x_770.y, x_770.z);
        let x_772 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_772.x, x_771.x, x_772.z, x_771.y);
        let x_774 : vec4<f32> = u_xlat5;
        let x_777 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_780 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_774.x, x_774.y, x_774.x, x_774.y) * vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y)) + vec4<f32>(x_780.x, x_780.y, x_780.z, x_780.y));
        let x_783 : vec4<f32> = u_xlat5;
        let x_786 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_789 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y) * vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y)) + vec4<f32>(x_789.w, x_789.y, x_789.w, x_789.z));
        let x_792 : vec4<f32> = u_xlat5;
        let x_795 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_798 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y) * vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y)) + vec4<f32>(x_798.x, x_798.w, x_798.z, x_798.w));
        let x_802 : vec4<f32> = u_xlat6;
        let x_804 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_802.x, x_802.x, x_802.x, x_802.y) * vec4<f32>(x_804.z, x_804.w, x_804.y, x_804.z));
        let x_808 : vec4<f32> = u_xlat6;
        let x_810 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_808.y, x_808.y, x_808.z, x_808.z) * x_810);
        let x_814 : f32 = u_xlat6.z;
        let x_816 : f32 = u_xlat11.y;
        u_xlat61 = (x_814 * x_816);
        let x_819 : vec4<f32> = u_xlat9;
        let x_820 : vec2<f32> = vec2<f32>(x_819.x, x_819.y);
        let x_822 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_820.x, x_820.y, x_822);
        let x_829 : vec3<f32> = txVec4;
        let x_831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_829.xy, x_829.z);
        u_xlat5.x = x_831;
        let x_834 : vec4<f32> = u_xlat9;
        let x_835 : vec2<f32> = vec2<f32>(x_834.z, x_834.w);
        let x_837 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_835.x, x_835.y, x_837);
        let x_845 : vec3<f32> = txVec5;
        let x_847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_845.xy, x_845.z);
        u_xlat24 = x_847;
        let x_848 : f32 = u_xlat24;
        let x_850 : f32 = u_xlat12.y;
        u_xlat24 = (x_848 * x_850);
        let x_853 : f32 = u_xlat12.x;
        let x_855 : f32 = u_xlat5.x;
        let x_857 : f32 = u_xlat24;
        u_xlat5.x = ((x_853 * x_855) + x_857);
        let x_861 : vec2<f32> = u_xlat43;
        let x_863 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_870 : vec3<f32> = txVec6;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_870.xy, x_870.z);
        u_xlat24 = x_872;
        let x_874 : f32 = u_xlat12.z;
        let x_875 : f32 = u_xlat24;
        let x_878 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_874 * x_875) + x_878);
        let x_882 : vec4<f32> = u_xlat8;
        let x_883 : vec2<f32> = vec2<f32>(x_882.x, x_882.y);
        let x_885 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_883.x, x_883.y, x_885);
        let x_892 : vec3<f32> = txVec7;
        let x_894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_892.xy, x_892.z);
        u_xlat24 = x_894;
        let x_896 : f32 = u_xlat12.w;
        let x_897 : f32 = u_xlat24;
        let x_900 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_896 * x_897) + x_900);
        let x_904 : vec4<f32> = u_xlat10;
        let x_905 : vec2<f32> = vec2<f32>(x_904.x, x_904.y);
        let x_907 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec8;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_914.xy, x_914.z);
        u_xlat24 = x_916;
        let x_918 : f32 = u_xlat13.x;
        let x_919 : f32 = u_xlat24;
        let x_922 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_918 * x_919) + x_922);
        let x_926 : vec4<f32> = u_xlat10;
        let x_927 : vec2<f32> = vec2<f32>(x_926.z, x_926.w);
        let x_929 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_936 : vec3<f32> = txVec9;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_936.xy, x_936.z);
        u_xlat24 = x_938;
        let x_940 : f32 = u_xlat13.y;
        let x_941 : f32 = u_xlat24;
        let x_944 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_940 * x_941) + x_944);
        let x_948 : vec4<f32> = u_xlat8;
        let x_949 : vec2<f32> = vec2<f32>(x_948.z, x_948.w);
        let x_951 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_958 : vec3<f32> = txVec10;
        let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_958.xy, x_958.z);
        u_xlat24 = x_960;
        let x_962 : f32 = u_xlat13.z;
        let x_963 : f32 = u_xlat24;
        let x_966 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_962 * x_963) + x_966);
        let x_970 : vec4<f32> = u_xlat7;
        let x_971 : vec2<f32> = vec2<f32>(x_970.x, x_970.y);
        let x_973 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_971.x, x_971.y, x_973);
        let x_980 : vec3<f32> = txVec11;
        let x_982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_980.xy, x_980.z);
        u_xlat24 = x_982;
        let x_984 : f32 = u_xlat13.w;
        let x_985 : f32 = u_xlat24;
        let x_988 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_984 * x_985) + x_988);
        let x_992 : vec4<f32> = u_xlat7;
        let x_993 : vec2<f32> = vec2<f32>(x_992.z, x_992.w);
        let x_995 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_993.x, x_993.y, x_995);
        let x_1002 : vec3<f32> = txVec12;
        let x_1004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1002.xy, x_1002.z);
        u_xlat24 = x_1004;
        let x_1005 : f32 = u_xlat61;
        let x_1006 : f32 = u_xlat24;
        let x_1009 : f32 = u_xlat5.x;
        u_xlat60 = ((x_1005 * x_1006) + x_1009);
      } else {
        let x_1012 : vec4<f32> = vs_TEXCOORD6;
        let x_1015 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1018 : vec2<f32> = ((vec2<f32>(x_1012.x, x_1012.y) * vec2<f32>(x_1015.z, x_1015.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1019 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat5;
        let x_1023 : vec2<f32> = floor(vec2<f32>(x_1021.x, x_1021.y));
        let x_1024 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1023.x, x_1023.y, x_1024.z, x_1024.w);
        let x_1026 : vec4<f32> = vs_TEXCOORD6;
        let x_1029 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(x_1029.z, x_1029.w)) + -(vec2<f32>(x_1032.x, x_1032.y)));
        let x_1036 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1036.x, x_1036.x, x_1036.y, x_1036.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1039 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1039.x, x_1039.x, x_1039.z, x_1039.z) * vec4<f32>(x_1041.x, x_1041.x, x_1041.z, x_1041.z));
        let x_1044 : vec4<f32> = u_xlat7;
        let x_1048 : vec2<f32> = (vec2<f32>(x_1044.y, x_1044.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1049 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1049.x, x_1048.x, x_1049.z, x_1048.y);
        let x_1051 : vec4<f32> = u_xlat7;
        let x_1054 : vec2<f32> = u_xlat43;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1054));
        let x_1057 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1056.x, x_1057.y, x_1056.y, x_1057.w);
        let x_1059 : vec2<f32> = u_xlat43;
        let x_1061 : vec2<f32> = (-(x_1059) + vec2<f32>(1.0f, 1.0f));
        let x_1062 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1064 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1064, vec2<f32>(0.0f, 0.0f));
        let x_1066 : vec2<f32> = u_xlat45;
        let x_1068 : vec2<f32> = u_xlat45;
        let x_1070 : vec4<f32> = u_xlat7;
        let x_1072 : vec2<f32> = ((-(x_1066) * x_1068) + vec2<f32>(x_1070.x, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1075 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1075, vec2<f32>(0.0f, 0.0f));
        let x_1078 : vec2<f32> = u_xlat45;
        let x_1080 : vec2<f32> = u_xlat45;
        let x_1082 : vec4<f32> = u_xlat6;
        let x_1084 : vec2<f32> = ((-(x_1078) * x_1080) + vec2<f32>(x_1082.y, x_1082.w));
        let x_1085 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1084.x, x_1085.y, x_1084.y);
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1089 : vec2<f32> = (vec2<f32>(x_1087.x, x_1087.y) + vec2<f32>(2.0f, 2.0f));
        let x_1090 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1092 : vec3<f32> = u_xlat25;
        let x_1094 : vec2<f32> = (vec2<f32>(x_1092.x, x_1092.z) + vec2<f32>(2.0f, 2.0f));
        let x_1095 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1095.x, x_1094.x, x_1095.z, x_1094.y);
        let x_1098 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1098 * 0.081632003f);
        let x_1102 : vec4<f32> = u_xlat6;
        let x_1105 : vec3<f32> = (vec3<f32>(x_1102.z, x_1102.x, x_1102.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1106 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
        let x_1108 : vec4<f32> = u_xlat7;
        let x_1111 : vec2<f32> = (vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1112 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1115 : f32 = u_xlat10.y;
        u_xlat9.x = x_1115;
        let x_1117 : vec2<f32> = u_xlat43;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1125.x, x_1124.x, x_1125.z, x_1124.y);
        let x_1127 : vec2<f32> = u_xlat43;
        let x_1131 : vec2<f32> = ((vec2<f32>(x_1127.x, x_1127.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1132 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1131.x, x_1132.y, x_1131.y, x_1132.w);
        let x_1135 : f32 = u_xlat6.x;
        u_xlat7.y = x_1135;
        let x_1138 : f32 = u_xlat8.y;
        u_xlat7.w = x_1138;
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1140 + x_1141);
        let x_1143 : vec2<f32> = u_xlat43;
        let x_1146 : vec2<f32> = ((vec2<f32>(x_1143.y, x_1143.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1147 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1147.x, x_1146.x, x_1147.z, x_1146.y);
        let x_1149 : vec2<f32> = u_xlat43;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1149.y, x_1149.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1153 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1152.x, x_1153.y, x_1152.y, x_1153.w);
        let x_1156 : f32 = u_xlat6.y;
        u_xlat8.y = x_1156;
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1159 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1158 + x_1159);
        let x_1161 : vec4<f32> = u_xlat7;
        let x_1162 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1161 / x_1162);
        let x_1164 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1164 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1170 : vec4<f32> = u_xlat8;
        let x_1171 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1170 / x_1171);
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1173 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1178 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1175.w, x_1175.x, x_1175.y, x_1175.z) * vec4<f32>(x_1178.x, x_1178.x, x_1178.x, x_1178.x));
        let x_1181 : vec4<f32> = u_xlat8;
        let x_1184 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1181.x, x_1181.w, x_1181.y, x_1181.z) * vec4<f32>(x_1184.y, x_1184.y, x_1184.y, x_1184.y));
        let x_1187 : vec4<f32> = u_xlat7;
        let x_1188 : vec3<f32> = vec3<f32>(x_1187.y, x_1187.z, x_1187.w);
        let x_1189 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1188.x, x_1189.y, x_1188.y, x_1188.z);
        let x_1192 : f32 = u_xlat8.x;
        u_xlat10.y = x_1192;
        let x_1194 : vec4<f32> = u_xlat5;
        let x_1197 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y) * vec4<f32>(x_1197.x, x_1197.y, x_1197.x, x_1197.y)) + vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1200.y));
        let x_1203 : vec4<f32> = u_xlat5;
        let x_1206 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(x_1206.x, x_1206.y)) + vec2<f32>(x_1209.w, x_1209.y));
        let x_1213 : f32 = u_xlat10.y;
        u_xlat7.y = x_1213;
        let x_1216 : f32 = u_xlat8.z;
        u_xlat10.y = x_1216;
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1221 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y) * vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.y)) + vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1224.y));
        let x_1227 : vec4<f32> = u_xlat5;
        let x_1230 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1233 : vec4<f32> = u_xlat10;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1227.x, x_1227.y) * vec2<f32>(x_1230.x, x_1230.y)) + vec2<f32>(x_1233.w, x_1233.y));
        let x_1236 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
        let x_1239 : f32 = u_xlat10.y;
        u_xlat7.z = x_1239;
        let x_1242 : vec4<f32> = u_xlat5;
        let x_1245 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y) * vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y)) + vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.z));
        let x_1252 : f32 = u_xlat8.w;
        u_xlat10.y = x_1252;
        let x_1255 : vec4<f32> = u_xlat5;
        let x_1258 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y) * vec4<f32>(x_1258.x, x_1258.y, x_1258.x, x_1258.y)) + vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1261.y));
        let x_1265 : vec4<f32> = u_xlat5;
        let x_1268 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1271 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1265.x, x_1265.y) * vec2<f32>(x_1268.x, x_1268.y)) + vec2<f32>(x_1271.w, x_1271.y));
        let x_1275 : f32 = u_xlat10.y;
        u_xlat7.w = x_1275;
        let x_1278 : vec4<f32> = u_xlat5;
        let x_1281 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1284 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1278.x, x_1278.y) * vec2<f32>(x_1281.x, x_1281.y)) + vec2<f32>(x_1284.x, x_1284.w));
        let x_1287 : vec4<f32> = u_xlat10;
        let x_1288 : vec3<f32> = vec3<f32>(x_1287.x, x_1287.z, x_1287.w);
        let x_1289 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1288.x, x_1289.y, x_1288.y, x_1288.z);
        let x_1291 : vec4<f32> = u_xlat5;
        let x_1294 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1297.y));
        let x_1301 : vec4<f32> = u_xlat5;
        let x_1304 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.w, x_1307.y));
        let x_1311 : f32 = u_xlat7.x;
        u_xlat8.x = x_1311;
        let x_1313 : vec4<f32> = u_xlat5;
        let x_1316 : vec4<f32> = x_447.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1321 : vec2<f32> = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.x, x_1319.y));
        let x_1322 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1322.w);
        let x_1325 : vec4<f32> = u_xlat6;
        let x_1327 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1325.x, x_1325.x, x_1325.x, x_1325.x) * x_1327);
        let x_1330 : vec4<f32> = u_xlat6;
        let x_1332 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1330.y, x_1330.y, x_1330.y, x_1330.y) * x_1332);
        let x_1335 : vec4<f32> = u_xlat6;
        let x_1337 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1335.z, x_1335.z, x_1335.z, x_1335.z) * x_1337);
        let x_1339 : vec4<f32> = u_xlat6;
        let x_1341 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1339.w, x_1339.w, x_1339.w, x_1339.w) * x_1341);
        let x_1344 : vec4<f32> = u_xlat11;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.x, x_1344.y);
        let x_1347 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec13;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1354.xy, x_1354.z);
        u_xlat61 = x_1356;
        let x_1358 : vec4<f32> = u_xlat11;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.z, x_1358.w);
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec14;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat7.x = x_1370;
        let x_1373 : f32 = u_xlat7.x;
        let x_1375 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1373 * x_1375);
        let x_1379 : f32 = u_xlat16.x;
        let x_1380 : f32 = u_xlat61;
        let x_1383 : f32 = u_xlat7.x;
        u_xlat61 = ((x_1379 * x_1380) + x_1383);
        let x_1386 : vec2<f32> = u_xlat43;
        let x_1388 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec15;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat43.x = x_1397;
        let x_1400 : f32 = u_xlat16.z;
        let x_1402 : f32 = u_xlat43.x;
        let x_1404 : f32 = u_xlat61;
        u_xlat61 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat14;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec16;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat43.x = x_1419;
        let x_1422 : f32 = u_xlat16.w;
        let x_1424 : f32 = u_xlat43.x;
        let x_1426 : f32 = u_xlat61;
        u_xlat61 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat12;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec17;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1439.xy, x_1439.z);
        u_xlat43.x = x_1441;
        let x_1444 : f32 = u_xlat17.x;
        let x_1446 : f32 = u_xlat43.x;
        let x_1448 : f32 = u_xlat61;
        u_xlat61 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat12;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.z, x_1451.w);
        let x_1454 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec18;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1461.xy, x_1461.z);
        u_xlat43.x = x_1463;
        let x_1466 : f32 = u_xlat17.y;
        let x_1468 : f32 = u_xlat43.x;
        let x_1470 : f32 = u_xlat61;
        u_xlat61 = ((x_1466 * x_1468) + x_1470);
        let x_1473 : vec4<f32> = u_xlat13;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.x, x_1473.y);
        let x_1476 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec19;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1483.xy, x_1483.z);
        u_xlat43.x = x_1485;
        let x_1488 : f32 = u_xlat17.z;
        let x_1490 : f32 = u_xlat43.x;
        let x_1492 : f32 = u_xlat61;
        u_xlat61 = ((x_1488 * x_1490) + x_1492);
        let x_1495 : vec4<f32> = u_xlat14;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.z, x_1495.w);
        let x_1498 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec20;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat43.x = x_1507;
        let x_1510 : f32 = u_xlat17.w;
        let x_1512 : f32 = u_xlat43.x;
        let x_1514 : f32 = u_xlat61;
        u_xlat61 = ((x_1510 * x_1512) + x_1514);
        let x_1517 : vec4<f32> = u_xlat15;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.x, x_1517.y);
        let x_1520 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec21;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1527.xy, x_1527.z);
        u_xlat43.x = x_1529;
        let x_1532 : f32 = u_xlat18.x;
        let x_1534 : f32 = u_xlat43.x;
        let x_1536 : f32 = u_xlat61;
        u_xlat61 = ((x_1532 * x_1534) + x_1536);
        let x_1539 : vec4<f32> = u_xlat15;
        let x_1540 : vec2<f32> = vec2<f32>(x_1539.z, x_1539.w);
        let x_1542 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1540.x, x_1540.y, x_1542);
        let x_1549 : vec3<f32> = txVec22;
        let x_1551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1549.xy, x_1549.z);
        u_xlat43.x = x_1551;
        let x_1554 : f32 = u_xlat18.y;
        let x_1556 : f32 = u_xlat43.x;
        let x_1558 : f32 = u_xlat61;
        u_xlat61 = ((x_1554 * x_1556) + x_1558);
        let x_1561 : vec2<f32> = u_xlat26;
        let x_1563 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec23;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1570.xy, x_1570.z);
        u_xlat43.x = x_1572;
        let x_1575 : f32 = u_xlat18.z;
        let x_1577 : f32 = u_xlat43.x;
        let x_1579 : f32 = u_xlat61;
        u_xlat61 = ((x_1575 * x_1577) + x_1579);
        let x_1582 : vec2<f32> = u_xlat51;
        let x_1584 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1582.x, x_1582.y, x_1584);
        let x_1591 : vec3<f32> = txVec24;
        let x_1593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1591.xy, x_1591.z);
        u_xlat43.x = x_1593;
        let x_1596 : f32 = u_xlat18.w;
        let x_1598 : f32 = u_xlat43.x;
        let x_1600 : f32 = u_xlat61;
        u_xlat61 = ((x_1596 * x_1598) + x_1600);
        let x_1603 : vec4<f32> = u_xlat10;
        let x_1604 : vec2<f32> = vec2<f32>(x_1603.x, x_1603.y);
        let x_1606 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec25;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1613.xy, x_1613.z);
        u_xlat43.x = x_1615;
        let x_1618 : f32 = u_xlat6.x;
        let x_1620 : f32 = u_xlat43.x;
        let x_1622 : f32 = u_xlat61;
        u_xlat61 = ((x_1618 * x_1620) + x_1622);
        let x_1625 : vec4<f32> = u_xlat10;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.z, x_1625.w);
        let x_1628 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec26;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1635.xy, x_1635.z);
        u_xlat43.x = x_1637;
        let x_1640 : f32 = u_xlat6.y;
        let x_1642 : f32 = u_xlat43.x;
        let x_1644 : f32 = u_xlat61;
        u_xlat61 = ((x_1640 * x_1642) + x_1644);
        let x_1647 : vec2<f32> = u_xlat46;
        let x_1649 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec27;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1656.xy, x_1656.z);
        u_xlat43.x = x_1658;
        let x_1661 : f32 = u_xlat6.z;
        let x_1663 : f32 = u_xlat43.x;
        let x_1665 : f32 = u_xlat61;
        u_xlat61 = ((x_1661 * x_1663) + x_1665);
        let x_1668 : vec4<f32> = u_xlat5;
        let x_1669 : vec2<f32> = vec2<f32>(x_1668.x, x_1668.y);
        let x_1671 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
        let x_1678 : vec3<f32> = txVec28;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1678.xy, x_1678.z);
        u_xlat5.x = x_1680;
        let x_1683 : f32 = u_xlat6.w;
        let x_1685 : f32 = u_xlat5.x;
        let x_1687 : f32 = u_xlat61;
        u_xlat60 = ((x_1683 * x_1685) + x_1687);
      }
    }
  } else {
    let x_1691 : vec4<f32> = vs_TEXCOORD6;
    let x_1692 : vec2<f32> = vec2<f32>(x_1691.x, x_1691.y);
    let x_1694 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
    let x_1701 : vec3<f32> = txVec29;
    let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1701.xy, x_1701.z);
    u_xlat60 = x_1703;
  }
  let x_1705 : f32 = x_447.x_MainLightShadowParams.x;
  u_xlat61 = (-(x_1705) + 1.0f);
  let x_1708 : f32 = u_xlat60;
  let x_1710 : f32 = x_447.x_MainLightShadowParams.x;
  let x_1712 : f32 = u_xlat61;
  u_xlat60 = ((x_1708 * x_1710) + x_1712);
  let x_1715 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (0.0f >= x_1715);
  let x_1719 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_1719 >= 1.0f);
  let x_1721 : bool = u_xlatb61;
  let x_1722 : bool = u_xlatb5;
  u_xlatb61 = (x_1721 | x_1722);
  let x_1724 : bool = u_xlatb61;
  let x_1725 : f32 = u_xlat60;
  u_xlat60 = select(x_1725, 1.0f, x_1724);
  let x_1727 : vec3<f32> = vs_TEXCOORD1;
  let x_1730 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1732 : vec3<f32> = (x_1727 + -(x_1730));
  let x_1733 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1732.x, x_1732.y, x_1732.z, x_1733.w);
  let x_1735 : vec4<f32> = u_xlat5;
  let x_1737 : vec4<f32> = u_xlat5;
  u_xlat61 = dot(vec3<f32>(x_1735.x, x_1735.y, x_1735.z), vec3<f32>(x_1737.x, x_1737.y, x_1737.z));
  let x_1740 : f32 = u_xlat61;
  let x_1742 : f32 = x_447.x_MainLightShadowParams.z;
  let x_1745 : f32 = x_447.x_MainLightShadowParams.w;
  u_xlat61 = ((x_1740 * x_1742) + x_1745);
  let x_1747 : f32 = u_xlat61;
  u_xlat61 = clamp(x_1747, 0.0f, 1.0f);
  let x_1749 : f32 = u_xlat60;
  u_xlat5.x = (-(x_1749) + 1.0f);
  let x_1753 : f32 = u_xlat61;
  let x_1755 : f32 = u_xlat5.x;
  let x_1757 : f32 = u_xlat60;
  u_xlat60 = ((x_1753 * x_1755) + x_1757);
  let x_1765 : f32 = x_1763.x_MainLightCookieTextureFormat;
  u_xlatb61 = !((x_1765 == -1.0f));
  let x_1767 : bool = u_xlatb61;
  if (x_1767) {
    let x_1770 : vec3<f32> = vs_TEXCOORD1;
    let x_1773 : vec4<f32> = x_1763.x_MainLightWorldToLight[1i];
    let x_1775 : vec2<f32> = (vec2<f32>(x_1770.y, x_1770.y) * vec2<f32>(x_1773.x, x_1773.y));
    let x_1776 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1775.x, x_1775.y, x_1776.z, x_1776.w);
    let x_1779 : vec4<f32> = x_1763.x_MainLightWorldToLight[0i];
    let x_1781 : vec3<f32> = vs_TEXCOORD1;
    let x_1784 : vec4<f32> = u_xlat5;
    let x_1786 : vec2<f32> = ((vec2<f32>(x_1779.x, x_1779.y) * vec2<f32>(x_1781.x, x_1781.x)) + vec2<f32>(x_1784.x, x_1784.y));
    let x_1787 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1786.x, x_1786.y, x_1787.z, x_1787.w);
    let x_1790 : vec4<f32> = x_1763.x_MainLightWorldToLight[2i];
    let x_1792 : vec3<f32> = vs_TEXCOORD1;
    let x_1795 : vec4<f32> = u_xlat5;
    let x_1797 : vec2<f32> = ((vec2<f32>(x_1790.x, x_1790.y) * vec2<f32>(x_1792.z, x_1792.z)) + vec2<f32>(x_1795.x, x_1795.y));
    let x_1798 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1797.x, x_1797.y, x_1798.z, x_1798.w);
    let x_1800 : vec4<f32> = u_xlat5;
    let x_1803 : vec4<f32> = x_1763.x_MainLightWorldToLight[3i];
    let x_1805 : vec2<f32> = (vec2<f32>(x_1800.x, x_1800.y) + vec2<f32>(x_1803.x, x_1803.y));
    let x_1806 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1805.x, x_1805.y, x_1806.z, x_1806.w);
    let x_1808 : vec4<f32> = u_xlat5;
    let x_1811 : vec2<f32> = ((vec2<f32>(x_1808.x, x_1808.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1812 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1811.x, x_1811.y, x_1812.z, x_1812.w);
    let x_1819 : vec4<f32> = u_xlat5;
    let x_1822 : f32 = x_44.x_GlobalMipBias.x;
    let x_1823 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1819.x, x_1819.y), x_1822);
    u_xlat5 = x_1823;
    let x_1828 : f32 = x_1763.x_MainLightCookieTextureFormat;
    let x_1830 : f32 = x_1763.x_MainLightCookieTextureFormat;
    let x_1832 : f32 = x_1763.x_MainLightCookieTextureFormat;
    let x_1834 : f32 = x_1763.x_MainLightCookieTextureFormat;
    let x_1835 : vec4<f32> = vec4<f32>(x_1828, x_1830, x_1832, x_1834);
    let x_1843 : vec4<bool> = (vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1835.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1843.x, x_1843.y);
    let x_1846 : bool = u_xlatb6.y;
    if (x_1846) {
      let x_1851 : f32 = u_xlat5.w;
      x_1847 = x_1851;
    } else {
      let x_1854 : f32 = u_xlat5.x;
      x_1847 = x_1854;
    }
    let x_1855 : f32 = x_1847;
    u_xlat61 = x_1855;
    let x_1857 : bool = u_xlatb6.x;
    if (x_1857) {
      let x_1861 : vec4<f32> = u_xlat5;
      x_1858 = vec3<f32>(x_1861.x, x_1861.y, x_1861.z);
    } else {
      let x_1864 : f32 = u_xlat61;
      x_1858 = vec3<f32>(x_1864, x_1864, x_1864);
    }
    let x_1866 : vec3<f32> = x_1858;
    let x_1867 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1866.x, x_1866.y, x_1866.z, x_1867.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1873 : vec4<f32> = u_xlat5;
  let x_1876 : vec4<f32> = x_44.x_MainLightColor;
  let x_1878 : vec3<f32> = (vec3<f32>(x_1873.x, x_1873.y, x_1873.z) * vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
  let x_1879 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
  let x_1881 : f32 = u_xlat59;
  let x_1883 : vec4<f32> = u_xlat5;
  let x_1885 : vec3<f32> = (vec3<f32>(x_1881, x_1881, x_1881) * vec3<f32>(x_1883.x, x_1883.y, x_1883.z));
  let x_1886 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1885.x, x_1885.y, x_1885.z, x_1886.w);
  let x_1888 : vec4<f32> = u_xlat1;
  let x_1890 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_1888.x, x_1888.x, x_1888.x) * x_1890);
  let x_1892 : f32 = u_xlat60;
  let x_1894 : f32 = x_236.unity_LightData.z;
  u_xlat1.x = (x_1892 * x_1894);
  let x_1897 : vec4<f32> = u_xlat1;
  let x_1899 : vec4<f32> = u_xlat5;
  let x_1901 : vec3<f32> = (vec3<f32>(x_1897.x, x_1897.x, x_1897.x) * vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
  let x_1902 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);
  let x_1904 : vec3<f32> = u_xlat2;
  let x_1906 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_1904, vec3<f32>(x_1906.x, x_1906.y, x_1906.z));
  let x_1911 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1911, 0.0f, 1.0f);
  let x_1914 : vec4<f32> = u_xlat1;
  let x_1916 : vec4<f32> = u_xlat5;
  let x_1918 : vec3<f32> = (vec3<f32>(x_1914.x, x_1914.x, x_1914.x) * vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
  let x_1919 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1918.x, x_1918.y, x_1918.z, x_1919.w);
  let x_1922 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_1922 * 10.0f) + 1.0f);
  let x_1928 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1928);
  let x_1931 : vec3<f32> = u_xlat3;
  let x_1932 : vec3<f32> = u_xlat19;
  let x_1936 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1938 : vec3<f32> = ((x_1931 * vec3<f32>(x_1932.x, x_1932.x, x_1932.x)) + vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
  let x_1939 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
  let x_1941 : vec4<f32> = u_xlat7;
  let x_1943 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1941.x, x_1941.y, x_1941.z), vec3<f32>(x_1943.x, x_1943.y, x_1943.z));
  let x_1946 : f32 = u_xlat60;
  u_xlat60 = max(x_1946, 1.17549435e-37f);
  let x_1948 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1948);
  let x_1950 : f32 = u_xlat60;
  let x_1952 : vec4<f32> = u_xlat7;
  let x_1954 : vec3<f32> = (vec3<f32>(x_1950, x_1950, x_1950) * vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1955 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
  let x_1957 : vec3<f32> = u_xlat2;
  let x_1958 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1957, vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
  let x_1961 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1961, 0.0f, 1.0f);
  let x_1963 : f32 = u_xlat60;
  u_xlat60 = log2(x_1963);
  let x_1966 : f32 = u_xlat1.x;
  let x_1967 : f32 = u_xlat60;
  u_xlat60 = (x_1966 * x_1967);
  let x_1969 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1969);
  let x_1971 : f32 = u_xlat60;
  let x_1974 : vec4<f32> = x_57.x_SpecColor;
  let x_1976 : vec3<f32> = (vec3<f32>(x_1971, x_1971, x_1971) * vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
  let x_1977 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
  let x_1979 : vec4<f32> = u_xlat5;
  let x_1981 : vec4<f32> = u_xlat7;
  let x_1983 : vec3<f32> = (vec3<f32>(x_1979.x, x_1979.y, x_1979.z) * vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1984 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
  let x_1986 : vec4<f32> = u_xlat6;
  let x_1988 : vec4<f32> = u_xlat1;
  let x_1991 : vec4<f32> = u_xlat5;
  let x_1993 : vec3<f32> = ((vec3<f32>(x_1986.x, x_1986.y, x_1986.z) * vec3<f32>(x_1988.y, x_1988.z, x_1988.w)) + vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1994 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
  let x_1997 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1999 : f32 = x_236.unity_LightData.y;
  u_xlat60 = min(x_1997, x_1999);
  let x_2003 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2003));
  let x_2007 : f32 = x_1763.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2009 : f32 = x_1763.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2011 : f32 = x_1763.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2013 : f32 = x_1763.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2014 : vec4<f32> = vec4<f32>(x_2007, x_2009, x_2011, x_2013);
  let x_2020 : vec4<bool> = (vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2014.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2020.x, x_2020.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2031 : u32 = u_xlatu_loop_1;
    let x_2032 : u32 = u_xlatu60;
    if ((x_2031 < x_2032)) {
    } else {
      break;
    }
    let x_2035 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_2035 >> 2u);
    let x_2039 : u32 = u_xlatu_loop_1;
    u_xlati44 = bitcast<i32>((x_2039 & 3u));
    let x_2043 : u32 = u_xlatu62;
    let x_2046 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_2043)];
    let x_2056 : i32 = u_xlati44;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2061 : vec4<u32> = indexable[x_2056];
    u_xlat62 = dot(x_2046, bitcast<vec4<f32>>(x_2061));
    let x_2064 : f32 = u_xlat62;
    u_xlatu62 = bitcast<u32>(i32(x_2064));
    let x_2067 : vec3<f32> = vs_TEXCOORD1;
    let x_2079 : u32 = u_xlatu62;
    let x_2082 : vec4<f32> = x_2078.x_AdditionalLightsPosition[bitcast<i32>(x_2079)];
    let x_2085 : u32 = u_xlatu62;
    let x_2088 : vec4<f32> = x_2078.x_AdditionalLightsPosition[bitcast<i32>(x_2085)];
    let x_2090 : vec3<f32> = ((-(x_2067) * vec3<f32>(x_2082.w, x_2082.w, x_2082.w)) + vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
    let x_2091 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2090.x, x_2090.y, x_2090.z, x_2091.w);
    let x_2094 : vec4<f32> = u_xlat8;
    let x_2096 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_2094.x, x_2094.y, x_2094.z), vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
    let x_2099 : f32 = u_xlat44;
    u_xlat44 = max(x_2099, 6.10351562e-05f);
    let x_2103 : f32 = u_xlat44;
    u_xlat63 = inverseSqrt(x_2103);
    let x_2105 : f32 = u_xlat63;
    let x_2107 : vec4<f32> = u_xlat8;
    let x_2109 : vec3<f32> = (vec3<f32>(x_2105, x_2105, x_2105) * vec3<f32>(x_2107.x, x_2107.y, x_2107.z));
    let x_2110 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2109.x, x_2109.y, x_2109.z, x_2110.w);
    let x_2112 : f32 = u_xlat44;
    u_xlat63 = (1.0f / x_2112);
    let x_2114 : f32 = u_xlat44;
    let x_2115 : u32 = u_xlatu62;
    let x_2118 : f32 = x_2078.x_AdditionalLightsAttenuation[bitcast<i32>(x_2115)].x;
    u_xlat44 = (x_2114 * x_2118);
    let x_2120 : f32 = u_xlat44;
    let x_2122 : f32 = u_xlat44;
    u_xlat44 = ((-(x_2120) * x_2122) + 1.0f);
    let x_2125 : f32 = u_xlat44;
    u_xlat44 = max(x_2125, 0.0f);
    let x_2127 : f32 = u_xlat44;
    let x_2128 : f32 = u_xlat44;
    u_xlat44 = (x_2127 * x_2128);
    let x_2130 : f32 = u_xlat44;
    let x_2131 : f32 = u_xlat63;
    u_xlat44 = (x_2130 * x_2131);
    let x_2133 : u32 = u_xlatu62;
    let x_2136 : vec4<f32> = x_2078.x_AdditionalLightsSpotDir[bitcast<i32>(x_2133)];
    let x_2138 : vec4<f32> = u_xlat8;
    u_xlat63 = dot(vec3<f32>(x_2136.x, x_2136.y, x_2136.z), vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
    let x_2141 : f32 = u_xlat63;
    let x_2142 : u32 = u_xlatu62;
    let x_2145 : f32 = x_2078.x_AdditionalLightsAttenuation[bitcast<i32>(x_2142)].z;
    let x_2147 : u32 = u_xlatu62;
    let x_2150 : f32 = x_2078.x_AdditionalLightsAttenuation[bitcast<i32>(x_2147)].w;
    u_xlat63 = ((x_2141 * x_2145) + x_2150);
    let x_2152 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2152, 0.0f, 1.0f);
    let x_2154 : f32 = u_xlat63;
    let x_2155 : f32 = u_xlat63;
    u_xlat63 = (x_2154 * x_2155);
    let x_2157 : f32 = u_xlat63;
    let x_2158 : f32 = u_xlat44;
    u_xlat44 = (x_2157 * x_2158);
    let x_2161 : u32 = u_xlatu62;
    u_xlatu63 = (x_2161 >> 5u);
    let x_2164 : u32 = u_xlatu62;
    u_xlati64 = (1i << bitcast<u32>((bitcast<i32>(x_2164) & 31i)));
    let x_2170 : i32 = u_xlati64;
    let x_2172 : u32 = u_xlatu63;
    let x_2175 : f32 = x_1763.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2172)].el;
    u_xlati63 = bitcast<i32>((bitcast<u32>(x_2170) & bitcast<u32>(x_2175)));
    let x_2179 : i32 = u_xlati63;
    if ((x_2179 != 0i)) {
      let x_2189 : u32 = u_xlatu62;
      let x_2192 : f32 = x_2188.x_AdditionalLightsLightTypes[bitcast<i32>(x_2189)].el;
      u_xlati63 = i32(x_2192);
      let x_2194 : i32 = u_xlati63;
      u_xlati64 = select(1i, 0i, (x_2194 != 0i));
      let x_2198 : u32 = u_xlatu62;
      u_xlati65 = (bitcast<i32>(x_2198) << bitcast<u32>(2i));
      let x_2201 : i32 = u_xlati64;
      if ((x_2201 != 0i)) {
        let x_2205 : vec3<f32> = vs_TEXCOORD1;
        let x_2207 : i32 = u_xlati65;
        let x_2210 : i32 = u_xlati65;
        let x_2214 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[((x_2207 + 1i) / 4i)][((x_2210 + 1i) % 4i)];
        let x_2216 : vec3<f32> = (vec3<f32>(x_2205.y, x_2205.y, x_2205.y) * vec3<f32>(x_2214.x, x_2214.y, x_2214.w));
        let x_2217 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2216.x, x_2216.y, x_2216.z, x_2217.w);
        let x_2219 : i32 = u_xlati65;
        let x_2221 : i32 = u_xlati65;
        let x_2224 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[(x_2219 / 4i)][(x_2221 % 4i)];
        let x_2226 : vec3<f32> = vs_TEXCOORD1;
        let x_2229 : vec4<f32> = u_xlat9;
        let x_2231 : vec3<f32> = ((vec3<f32>(x_2224.x, x_2224.y, x_2224.w) * vec3<f32>(x_2226.x, x_2226.x, x_2226.x)) + vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
        let x_2232 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
        let x_2234 : i32 = u_xlati65;
        let x_2237 : i32 = u_xlati65;
        let x_2241 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[((x_2234 + 2i) / 4i)][((x_2237 + 2i) % 4i)];
        let x_2243 : vec3<f32> = vs_TEXCOORD1;
        let x_2246 : vec4<f32> = u_xlat9;
        let x_2248 : vec3<f32> = ((vec3<f32>(x_2241.x, x_2241.y, x_2241.w) * vec3<f32>(x_2243.z, x_2243.z, x_2243.z)) + vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
        let x_2249 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);
        let x_2251 : vec4<f32> = u_xlat9;
        let x_2253 : i32 = u_xlati65;
        let x_2256 : i32 = u_xlati65;
        let x_2260 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[((x_2253 + 3i) / 4i)][((x_2256 + 3i) % 4i)];
        let x_2262 : vec3<f32> = (vec3<f32>(x_2251.x, x_2251.y, x_2251.z) + vec3<f32>(x_2260.x, x_2260.y, x_2260.w));
        let x_2263 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
        let x_2265 : vec4<f32> = u_xlat9;
        let x_2267 : vec4<f32> = u_xlat9;
        let x_2269 : vec2<f32> = (vec2<f32>(x_2265.x, x_2265.y) / vec2<f32>(x_2267.z, x_2267.z));
        let x_2270 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2269.x, x_2269.y, x_2270.z, x_2270.w);
        let x_2272 : vec4<f32> = u_xlat9;
        let x_2275 : vec2<f32> = ((vec2<f32>(x_2272.x, x_2272.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2276 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2275.x, x_2275.y, x_2276.z, x_2276.w);
        let x_2278 : vec4<f32> = u_xlat9;
        let x_2282 : vec2<f32> = clamp(vec2<f32>(x_2278.x, x_2278.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2283 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2282.x, x_2282.y, x_2283.z, x_2283.w);
        let x_2285 : u32 = u_xlatu62;
        let x_2288 : vec4<f32> = x_2188.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2285)];
        let x_2290 : vec4<f32> = u_xlat9;
        let x_2293 : u32 = u_xlatu62;
        let x_2296 : vec4<f32> = x_2188.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2293)];
        let x_2298 : vec2<f32> = ((vec2<f32>(x_2288.x, x_2288.y) * vec2<f32>(x_2290.x, x_2290.y)) + vec2<f32>(x_2296.z, x_2296.w));
        let x_2299 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2298.x, x_2298.y, x_2299.z, x_2299.w);
      } else {
        let x_2303 : i32 = u_xlati63;
        u_xlatb63 = (x_2303 == 1i);
        let x_2305 : bool = u_xlatb63;
        u_xlati63 = select(0i, 1i, x_2305);
        let x_2307 : i32 = u_xlati63;
        if ((x_2307 != 0i)) {
          let x_2312 : vec3<f32> = vs_TEXCOORD1;
          let x_2314 : i32 = u_xlati65;
          let x_2317 : i32 = u_xlati65;
          let x_2321 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[((x_2314 + 1i) / 4i)][((x_2317 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2312.y, x_2312.y) * vec2<f32>(x_2321.x, x_2321.y));
          let x_2324 : i32 = u_xlati65;
          let x_2326 : i32 = u_xlati65;
          let x_2329 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[(x_2324 / 4i)][(x_2326 % 4i)];
          let x_2331 : vec3<f32> = vs_TEXCOORD1;
          let x_2334 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2329.x, x_2329.y) * vec2<f32>(x_2331.x, x_2331.x)) + x_2334);
          let x_2336 : i32 = u_xlati65;
          let x_2339 : i32 = u_xlati65;
          let x_2343 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[((x_2336 + 2i) / 4i)][((x_2339 + 2i) % 4i)];
          let x_2345 : vec3<f32> = vs_TEXCOORD1;
          let x_2348 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2343.x, x_2343.y) * vec2<f32>(x_2345.z, x_2345.z)) + x_2348);
          let x_2350 : vec2<f32> = u_xlat47;
          let x_2351 : i32 = u_xlati65;
          let x_2354 : i32 = u_xlati65;
          let x_2358 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[((x_2351 + 3i) / 4i)][((x_2354 + 3i) % 4i)];
          u_xlat47 = (x_2350 + vec2<f32>(x_2358.x, x_2358.y));
          let x_2361 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2361 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2364 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2364);
          let x_2366 : u32 = u_xlatu62;
          let x_2369 : vec4<f32> = x_2188.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2366)];
          let x_2371 : vec2<f32> = u_xlat47;
          let x_2373 : u32 = u_xlatu62;
          let x_2376 : vec4<f32> = x_2188.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2373)];
          let x_2378 : vec2<f32> = ((vec2<f32>(x_2369.x, x_2369.y) * x_2371) + vec2<f32>(x_2376.z, x_2376.w));
          let x_2379 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2378.x, x_2378.y, x_2379.z, x_2379.w);
        } else {
          let x_2382 : vec3<f32> = vs_TEXCOORD1;
          let x_2384 : i32 = u_xlati65;
          let x_2387 : i32 = u_xlati65;
          let x_2391 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[((x_2384 + 1i) / 4i)][((x_2387 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_2382.y, x_2382.y, x_2382.y, x_2382.y) * x_2391);
          let x_2393 : i32 = u_xlati65;
          let x_2395 : i32 = u_xlati65;
          let x_2398 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[(x_2393 / 4i)][(x_2395 % 4i)];
          let x_2399 : vec3<f32> = vs_TEXCOORD1;
          let x_2402 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2398 * vec4<f32>(x_2399.x, x_2399.x, x_2399.x, x_2399.x)) + x_2402);
          let x_2404 : i32 = u_xlati65;
          let x_2407 : i32 = u_xlati65;
          let x_2411 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[((x_2404 + 2i) / 4i)][((x_2407 + 2i) % 4i)];
          let x_2412 : vec3<f32> = vs_TEXCOORD1;
          let x_2415 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2411 * vec4<f32>(x_2412.z, x_2412.z, x_2412.z, x_2412.z)) + x_2415);
          let x_2417 : vec4<f32> = u_xlat10;
          let x_2418 : i32 = u_xlati65;
          let x_2421 : i32 = u_xlati65;
          let x_2425 : vec4<f32> = x_2188.x_AdditionalLightsWorldToLights[((x_2418 + 3i) / 4i)][((x_2421 + 3i) % 4i)];
          u_xlat10 = (x_2417 + x_2425);
          let x_2427 : vec4<f32> = u_xlat10;
          let x_2429 : vec4<f32> = u_xlat10;
          let x_2431 : vec3<f32> = (vec3<f32>(x_2427.x, x_2427.y, x_2427.z) / vec3<f32>(x_2429.w, x_2429.w, x_2429.w));
          let x_2432 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2432.w);
          let x_2434 : vec4<f32> = u_xlat10;
          let x_2436 : vec4<f32> = u_xlat10;
          u_xlat63 = dot(vec3<f32>(x_2434.x, x_2434.y, x_2434.z), vec3<f32>(x_2436.x, x_2436.y, x_2436.z));
          let x_2439 : f32 = u_xlat63;
          u_xlat63 = inverseSqrt(x_2439);
          let x_2441 : f32 = u_xlat63;
          let x_2443 : vec4<f32> = u_xlat10;
          let x_2445 : vec3<f32> = (vec3<f32>(x_2441, x_2441, x_2441) * vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
          let x_2446 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
          let x_2448 : vec4<f32> = u_xlat10;
          u_xlat63 = dot(abs(vec3<f32>(x_2448.x, x_2448.y, x_2448.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2453 : f32 = u_xlat63;
          u_xlat63 = max(x_2453, 0.000001f);
          let x_2456 : f32 = u_xlat63;
          u_xlat63 = (1.0f / x_2456);
          let x_2458 : f32 = u_xlat63;
          let x_2460 : vec4<f32> = u_xlat10;
          let x_2462 : vec3<f32> = (vec3<f32>(x_2458, x_2458, x_2458) * vec3<f32>(x_2460.z, x_2460.x, x_2460.y));
          let x_2463 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2462.x, x_2462.y, x_2462.z, x_2463.w);
          let x_2466 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_2466);
          let x_2470 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_2470, 0.0f, 1.0f);
          let x_2474 : vec4<f32> = u_xlat11;
          let x_2477 : vec4<bool> = (vec4<f32>(x_2474.y, x_2474.z, x_2474.y, x_2474.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2477.x, x_2477.y);
          let x_2480 : bool = u_xlatb47.x;
          if (x_2480) {
            let x_2485 : f32 = u_xlat11.x;
            x_2481 = x_2485;
          } else {
            let x_2488 : f32 = u_xlat11.x;
            x_2481 = -(x_2488);
          }
          let x_2490 : f32 = x_2481;
          u_xlat47.x = x_2490;
          let x_2493 : bool = u_xlatb47.y;
          if (x_2493) {
            let x_2498 : f32 = u_xlat11.x;
            x_2494 = x_2498;
          } else {
            let x_2501 : f32 = u_xlat11.x;
            x_2494 = -(x_2501);
          }
          let x_2503 : f32 = x_2494;
          u_xlat47.y = x_2503;
          let x_2505 : vec4<f32> = u_xlat10;
          let x_2507 : f32 = u_xlat63;
          let x_2510 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2505.x, x_2505.y) * vec2<f32>(x_2507, x_2507)) + x_2510);
          let x_2512 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2512 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2515 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2515, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2519 : u32 = u_xlatu62;
          let x_2522 : vec4<f32> = x_2188.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2519)];
          let x_2524 : vec2<f32> = u_xlat47;
          let x_2526 : u32 = u_xlatu62;
          let x_2529 : vec4<f32> = x_2188.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2526)];
          let x_2531 : vec2<f32> = ((vec2<f32>(x_2522.x, x_2522.y) * x_2524) + vec2<f32>(x_2529.z, x_2529.w));
          let x_2532 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2531.x, x_2531.y, x_2532.z, x_2532.w);
        }
      }
      let x_2539 : vec4<f32> = u_xlat9;
      let x_2542 : f32 = x_44.x_GlobalMipBias.x;
      let x_2543 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2539.x, x_2539.y), x_2542);
      u_xlat9 = x_2543;
      let x_2545 : bool = u_xlatb6.y;
      if (x_2545) {
        let x_2550 : f32 = u_xlat9.w;
        x_2546 = x_2550;
      } else {
        let x_2553 : f32 = u_xlat9.x;
        x_2546 = x_2553;
      }
      let x_2554 : f32 = x_2546;
      u_xlat63 = x_2554;
      let x_2556 : bool = u_xlatb6.x;
      if (x_2556) {
        let x_2560 : vec4<f32> = u_xlat9;
        x_2557 = vec3<f32>(x_2560.x, x_2560.y, x_2560.z);
      } else {
        let x_2563 : f32 = u_xlat63;
        x_2557 = vec3<f32>(x_2563, x_2563, x_2563);
      }
      let x_2565 : vec3<f32> = x_2557;
      let x_2566 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2565.x, x_2565.y, x_2565.z, x_2566.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_2572 : vec4<f32> = u_xlat9;
    let x_2574 : u32 = u_xlatu62;
    let x_2577 : vec4<f32> = x_2078.x_AdditionalLightsColor[bitcast<i32>(x_2574)];
    let x_2579 : vec3<f32> = (vec3<f32>(x_2572.x, x_2572.y, x_2572.z) * vec3<f32>(x_2577.x, x_2577.y, x_2577.z));
    let x_2580 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2579.x, x_2579.y, x_2579.z, x_2580.w);
    let x_2582 : f32 = u_xlat59;
    let x_2584 : vec4<f32> = u_xlat9;
    let x_2586 : vec3<f32> = (vec3<f32>(x_2582, x_2582, x_2582) * vec3<f32>(x_2584.x, x_2584.y, x_2584.z));
    let x_2587 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2587.w);
    let x_2589 : f32 = u_xlat44;
    let x_2591 : vec4<f32> = u_xlat9;
    let x_2593 : vec3<f32> = (vec3<f32>(x_2589, x_2589, x_2589) * vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
    let x_2594 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
    let x_2596 : vec3<f32> = u_xlat2;
    let x_2597 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(x_2596, vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
    let x_2600 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2600, 0.0f, 1.0f);
    let x_2602 : f32 = u_xlat62;
    let x_2604 : vec4<f32> = u_xlat9;
    let x_2606 : vec3<f32> = (vec3<f32>(x_2602, x_2602, x_2602) * vec3<f32>(x_2604.x, x_2604.y, x_2604.z));
    let x_2607 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2606.x, x_2606.y, x_2606.z, x_2607.w);
    let x_2609 : vec3<f32> = u_xlat3;
    let x_2610 : vec3<f32> = u_xlat19;
    let x_2613 : vec4<f32> = u_xlat8;
    let x_2615 : vec3<f32> = ((x_2609 * vec3<f32>(x_2610.x, x_2610.x, x_2610.x)) + vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
    let x_2616 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
    let x_2618 : vec4<f32> = u_xlat8;
    let x_2620 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(vec3<f32>(x_2618.x, x_2618.y, x_2618.z), vec3<f32>(x_2620.x, x_2620.y, x_2620.z));
    let x_2623 : f32 = u_xlat62;
    u_xlat62 = max(x_2623, 1.17549435e-37f);
    let x_2625 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_2625);
    let x_2627 : f32 = u_xlat62;
    let x_2629 : vec4<f32> = u_xlat8;
    let x_2631 : vec3<f32> = (vec3<f32>(x_2627, x_2627, x_2627) * vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
    let x_2632 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
    let x_2634 : vec3<f32> = u_xlat2;
    let x_2635 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(x_2634, vec3<f32>(x_2635.x, x_2635.y, x_2635.z));
    let x_2638 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2638, 0.0f, 1.0f);
    let x_2640 : f32 = u_xlat62;
    u_xlat62 = log2(x_2640);
    let x_2643 : f32 = u_xlat1.x;
    let x_2644 : f32 = u_xlat62;
    u_xlat62 = (x_2643 * x_2644);
    let x_2646 : f32 = u_xlat62;
    u_xlat62 = exp2(x_2646);
    let x_2648 : f32 = u_xlat62;
    let x_2651 : vec4<f32> = x_57.x_SpecColor;
    let x_2653 : vec3<f32> = (vec3<f32>(x_2648, x_2648, x_2648) * vec3<f32>(x_2651.x, x_2651.y, x_2651.z));
    let x_2654 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2653.x, x_2653.y, x_2653.z, x_2654.w);
    let x_2656 : vec4<f32> = u_xlat8;
    let x_2658 : vec4<f32> = u_xlat9;
    let x_2660 : vec3<f32> = (vec3<f32>(x_2656.x, x_2656.y, x_2656.z) * vec3<f32>(x_2658.x, x_2658.y, x_2658.z));
    let x_2661 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2660.x, x_2660.y, x_2660.z, x_2661.w);
    let x_2663 : vec4<f32> = u_xlat10;
    let x_2665 : vec4<f32> = u_xlat1;
    let x_2668 : vec4<f32> = u_xlat8;
    let x_2670 : vec3<f32> = ((vec3<f32>(x_2663.x, x_2663.y, x_2663.z) * vec3<f32>(x_2665.y, x_2665.z, x_2665.w)) + vec3<f32>(x_2668.x, x_2668.y, x_2668.z));
    let x_2671 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2670.x, x_2670.y, x_2670.z, x_2671.w);
    let x_2673 : vec4<f32> = u_xlat7;
    let x_2675 : vec4<f32> = u_xlat8;
    let x_2677 : vec3<f32> = (vec3<f32>(x_2673.x, x_2673.y, x_2673.z) + vec3<f32>(x_2675.x, x_2675.y, x_2675.z));
    let x_2678 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2678.w);

    continuing {
      let x_2680 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2680 + bitcast<u32>(1i));
    }
  }
  let x_2682 : vec3<f32> = u_xlat4;
  let x_2683 : vec4<f32> = u_xlat1;
  let x_2686 : vec4<f32> = u_xlat5;
  let x_2688 : vec3<f32> = ((x_2682 * vec3<f32>(x_2683.y, x_2683.z, x_2683.w)) + vec3<f32>(x_2686.x, x_2686.y, x_2686.z));
  let x_2689 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
  let x_2691 : vec4<f32> = u_xlat7;
  let x_2693 : vec4<f32> = u_xlat1;
  let x_2695 : vec3<f32> = (vec3<f32>(x_2691.x, x_2691.y, x_2691.z) + vec3<f32>(x_2693.x, x_2693.y, x_2693.z));
  let x_2696 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2696.w);
  let x_2698 : f32 = u_xlat57;
  let x_2699 : f32 = u_xlat57;
  u_xlat19.x = (x_2698 * -(x_2699));
  let x_2704 : f32 = u_xlat19.x;
  u_xlat19.x = exp2(x_2704);
  let x_2707 : vec4<f32> = u_xlat1;
  let x_2711 : vec4<f32> = x_44.unity_FogColor;
  let x_2714 : vec3<f32> = (vec3<f32>(x_2707.x, x_2707.y, x_2707.z) + -(vec3<f32>(x_2711.x, x_2711.y, x_2711.z)));
  let x_2715 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2714.x, x_2714.y, x_2714.z, x_2715.w);
  let x_2719 : vec3<f32> = u_xlat19;
  let x_2721 : vec4<f32> = u_xlat1;
  let x_2725 : vec4<f32> = x_44.unity_FogColor;
  let x_2727 : vec3<f32> = ((vec3<f32>(x_2719.x, x_2719.x, x_2719.x) * vec3<f32>(x_2721.x, x_2721.y, x_2721.z)) + vec3<f32>(x_2725.x, x_2725.y, x_2725.z));
  let x_2728 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2728.w);
  let x_2731 : f32 = x_57.x_Surface;
  u_xlatb19 = (x_2731 == 1.0f);
  let x_2733 : bool = u_xlatb19;
  let x_2734 : bool = u_xlatb38;
  u_xlatb19 = (x_2733 | x_2734);
  let x_2736 : bool = u_xlatb19;
  if (x_2736) {
    let x_2741 : f32 = u_xlat0.x;
    x_2737 = x_2741;
  } else {
    x_2737 = 1.0f;
  }
  let x_2743 : f32 = x_2737;
  SV_Target0.w = x_2743;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

