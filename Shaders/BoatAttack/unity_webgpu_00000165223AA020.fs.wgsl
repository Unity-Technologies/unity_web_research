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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_491 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1806 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2124 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2234 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat4 : vec4<f32>;
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
  var x_1890 : f32;
  var x_1901 : vec3<f32>;
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
  var x_2527 : f32;
  var x_2540 : f32;
  var x_2592 : f32;
  var x_2603 : vec3<f32>;
  var x_2784 : f32;
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
  let x_381 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_378, x_380);
  u_xlat4 = x_381;
  let x_387 : vec2<f32> = vs_TEXCOORD7;
  let x_389 : f32 = x_44.x_GlobalMipBias.x;
  let x_390 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_387, x_389);
  let x_391 : vec3<f32> = vec3<f32>(x_390.x, x_390.y, x_390.z);
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat4;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec3<f32> = u_xlat2;
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(x_401, vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_407 : f32 = u_xlat1.x;
  u_xlat1.x = (x_407 + 0.5f);
  let x_410 : vec4<f32> = u_xlat1;
  let x_412 : vec4<f32> = u_xlat5;
  let x_414 : vec3<f32> = (vec3<f32>(x_410.x, x_410.x, x_410.x) * vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_418 : f32 = u_xlat4.w;
  u_xlat1.x = max(x_418, 0.0001f);
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : vec4<f32> = u_xlat1;
  let x_425 : vec3<f32> = (vec3<f32>(x_421.x, x_421.y, x_421.z) / vec3<f32>(x_423.x, x_423.x, x_423.x));
  let x_426 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_430 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_431 : vec2<f32> = vec2<f32>(x_430.x, x_430.y);
  let x_435 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_431.x, x_431.y));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat5;
  let x_440 : vec4<f32> = hlslcc_FragCoord;
  let x_442 : vec2<f32> = (vec2<f32>(x_438.x, x_438.y) * vec2<f32>(x_440.x, x_440.y));
  let x_443 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
  let x_446 : f32 = u_xlat5.y;
  let x_449 : f32 = x_44.x_ScaleBiasRt.x;
  let x_452 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_446 * x_449) + x_452);
  let x_456 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_456) + 1.0f);
  let x_465 : vec4<f32> = u_xlat5;
  let x_468 : f32 = x_44.x_GlobalMipBias.x;
  let x_469 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_465.x, x_465.z), x_468);
  u_xlat1.x = x_469.x;
  let x_474 : f32 = u_xlat1.x;
  u_xlat59 = (x_474 + -1.0f);
  let x_478 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_479 : f32 = u_xlat59;
  u_xlat59 = ((x_478 * x_479) + 1.0f);
  let x_483 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_483, 1.0f);
  let x_493 : f32 = x_491.x_MainLightShadowParams.y;
  u_xlatb60 = (0.0f < x_493);
  let x_495 : bool = u_xlatb60;
  if (x_495) {
    let x_499 : f32 = x_491.x_MainLightShadowParams.y;
    u_xlatb60 = (x_499 == 1.0f);
    let x_501 : bool = u_xlatb60;
    if (x_501) {
      let x_505 : vec4<f32> = vs_TEXCOORD6;
      let x_509 : vec4<f32> = x_491.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_505.x, x_505.y, x_505.x, x_505.y) + x_509);
      let x_512 : vec4<f32> = u_xlat5;
      let x_513 : vec2<f32> = vec2<f32>(x_512.x, x_512.y);
      let x_515 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_513.x, x_513.y, x_515);
      let x_528 : vec3<f32> = txVec0;
      let x_530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_528.xy, x_528.z);
      u_xlat6.x = x_530;
      let x_533 : vec4<f32> = u_xlat5;
      let x_534 : vec2<f32> = vec2<f32>(x_533.z, x_533.w);
      let x_536 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_534.x, x_534.y, x_536);
      let x_543 : vec3<f32> = txVec1;
      let x_545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_543.xy, x_543.z);
      u_xlat6.y = x_545;
      let x_547 : vec4<f32> = vs_TEXCOORD6;
      let x_551 : vec4<f32> = x_491.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_547.x, x_547.y, x_547.x, x_547.y) + x_551);
      let x_554 : vec4<f32> = u_xlat5;
      let x_555 : vec2<f32> = vec2<f32>(x_554.x, x_554.y);
      let x_557 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_555.x, x_555.y, x_557);
      let x_564 : vec3<f32> = txVec2;
      let x_566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_564.xy, x_564.z);
      u_xlat6.z = x_566;
      let x_569 : vec4<f32> = u_xlat5;
      let x_570 : vec2<f32> = vec2<f32>(x_569.z, x_569.w);
      let x_572 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_570.x, x_570.y, x_572);
      let x_579 : vec3<f32> = txVec3;
      let x_581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_579.xy, x_579.z);
      u_xlat6.w = x_581;
      let x_584 : vec4<f32> = u_xlat6;
      u_xlat60 = dot(x_584, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_591 : f32 = x_491.x_MainLightShadowParams.y;
      u_xlatb61 = (x_591 == 2.0f);
      let x_593 : bool = u_xlatb61;
      if (x_593) {
        let x_596 : vec4<f32> = vs_TEXCOORD6;
        let x_599 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_603 : vec2<f32> = ((vec2<f32>(x_596.x, x_596.y) * vec2<f32>(x_599.z, x_599.w)) + vec2<f32>(0.5f, 0.5f));
        let x_604 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat5;
        let x_608 : vec2<f32> = floor(vec2<f32>(x_606.x, x_606.y));
        let x_609 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_613 : vec4<f32> = vs_TEXCOORD6;
        let x_616 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_619 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_613.x, x_613.y) * vec2<f32>(x_616.z, x_616.w)) + -(vec2<f32>(x_619.x, x_619.y)));
        let x_623 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_623.x, x_623.x, x_623.y, x_623.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_628 : vec4<f32> = u_xlat6;
        let x_630 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_628.x, x_628.x, x_628.z, x_628.z) * vec4<f32>(x_630.x, x_630.x, x_630.z, x_630.z));
        let x_633 : vec4<f32> = u_xlat7;
        let x_637 : vec2<f32> = (vec2<f32>(x_633.y, x_633.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_638 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_637.x, x_638.y, x_637.y, x_638.w);
        let x_640 : vec4<f32> = u_xlat7;
        let x_643 : vec2<f32> = u_xlat43;
        let x_645 : vec2<f32> = ((vec2<f32>(x_640.x, x_640.z) * vec2<f32>(0.5f, 0.5f)) + -(x_643));
        let x_646 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_649 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_649) + vec2<f32>(1.0f, 1.0f));
        let x_653 : vec2<f32> = u_xlat43;
        let x_655 : vec2<f32> = min(x_653, vec2<f32>(0.0f, 0.0f));
        let x_656 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
        let x_658 : vec4<f32> = u_xlat8;
        let x_661 : vec4<f32> = u_xlat8;
        let x_664 : vec2<f32> = u_xlat45;
        let x_665 : vec2<f32> = ((-(vec2<f32>(x_658.x, x_658.y)) * vec2<f32>(x_661.x, x_661.y)) + x_664);
        let x_666 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
        let x_668 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_668, vec2<f32>(0.0f, 0.0f));
        let x_670 : vec2<f32> = u_xlat43;
        let x_672 : vec2<f32> = u_xlat43;
        let x_674 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_670) * x_672) + vec2<f32>(x_674.y, x_674.w));
        let x_677 : vec4<f32> = u_xlat8;
        let x_679 : vec2<f32> = (vec2<f32>(x_677.x, x_677.y) + vec2<f32>(1.0f, 1.0f));
        let x_680 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
        let x_682 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_682 + vec2<f32>(1.0f, 1.0f));
        let x_685 : vec4<f32> = u_xlat7;
        let x_689 : vec2<f32> = (vec2<f32>(x_685.x, x_685.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_690 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_692 : vec2<f32> = u_xlat45;
        let x_693 : vec2<f32> = (x_692 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat8;
        let x_698 : vec2<f32> = (vec2<f32>(x_696.x, x_696.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_699.w);
        let x_702 : vec2<f32> = u_xlat43;
        let x_703 : vec2<f32> = (x_702 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_704 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_703.x, x_703.y, x_704.z, x_704.w);
        let x_706 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_706.y, x_706.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_710 : f32 = u_xlat8.x;
        u_xlat9.z = x_710;
        let x_713 : f32 = u_xlat43.x;
        u_xlat9.w = x_713;
        let x_716 : f32 = u_xlat10.x;
        u_xlat7.z = x_716;
        let x_719 : f32 = u_xlat6.x;
        u_xlat7.w = x_719;
        let x_722 : vec4<f32> = u_xlat7;
        let x_724 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_722.z, x_722.w, x_722.x, x_722.z) + vec4<f32>(x_724.z, x_724.w, x_724.x, x_724.z));
        let x_728 : f32 = u_xlat9.y;
        u_xlat8.z = x_728;
        let x_731 : f32 = u_xlat43.y;
        u_xlat8.w = x_731;
        let x_734 : f32 = u_xlat7.y;
        u_xlat10.z = x_734;
        let x_737 : f32 = u_xlat6.z;
        u_xlat10.w = x_737;
        let x_739 : vec4<f32> = u_xlat8;
        let x_741 : vec4<f32> = u_xlat10;
        let x_743 : vec3<f32> = (vec3<f32>(x_739.z, x_739.y, x_739.w) + vec3<f32>(x_741.z, x_741.y, x_741.w));
        let x_744 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
        let x_746 : vec4<f32> = u_xlat7;
        let x_748 : vec4<f32> = u_xlat11;
        let x_750 : vec3<f32> = (vec3<f32>(x_746.x, x_746.z, x_746.w) / vec3<f32>(x_748.z, x_748.w, x_748.y));
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
        let x_753 : vec4<f32> = u_xlat7;
        let x_758 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_759 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
        let x_761 : vec4<f32> = u_xlat10;
        let x_763 : vec4<f32> = u_xlat6;
        let x_765 : vec3<f32> = (vec3<f32>(x_761.z, x_761.y, x_761.w) / vec3<f32>(x_763.x, x_763.y, x_763.z));
        let x_766 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
        let x_768 : vec4<f32> = u_xlat8;
        let x_770 : vec3<f32> = (vec3<f32>(x_768.x, x_768.y, x_768.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_771 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
        let x_773 : vec4<f32> = u_xlat7;
        let x_776 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_778 : vec3<f32> = (vec3<f32>(x_773.y, x_773.x, x_773.z) * vec3<f32>(x_776.x, x_776.x, x_776.x));
        let x_779 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
        let x_781 : vec4<f32> = u_xlat8;
        let x_784 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_786 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) * vec3<f32>(x_784.y, x_784.y, x_784.y));
        let x_787 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
        let x_790 : f32 = u_xlat8.x;
        u_xlat7.w = x_790;
        let x_792 : vec4<f32> = u_xlat5;
        let x_795 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_798 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y) * vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y)) + vec4<f32>(x_798.y, x_798.w, x_798.x, x_798.w));
        let x_801 : vec4<f32> = u_xlat5;
        let x_804 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_807 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_801.x, x_801.y) * vec2<f32>(x_804.x, x_804.y)) + vec2<f32>(x_807.z, x_807.w));
        let x_811 : f32 = u_xlat7.y;
        u_xlat8.w = x_811;
        let x_813 : vec4<f32> = u_xlat8;
        let x_814 : vec2<f32> = vec2<f32>(x_813.y, x_813.z);
        let x_815 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_815.x, x_814.x, x_815.z, x_814.y);
        let x_817 : vec4<f32> = u_xlat5;
        let x_820 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_823 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y) * vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y)) + vec4<f32>(x_823.x, x_823.y, x_823.z, x_823.y));
        let x_826 : vec4<f32> = u_xlat5;
        let x_829 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_832 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_826.x, x_826.y, x_826.x, x_826.y) * vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y)) + vec4<f32>(x_832.w, x_832.y, x_832.w, x_832.z));
        let x_835 : vec4<f32> = u_xlat5;
        let x_838 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_841 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) * vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y)) + vec4<f32>(x_841.x, x_841.w, x_841.z, x_841.w));
        let x_845 : vec4<f32> = u_xlat6;
        let x_847 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_845.x, x_845.x, x_845.x, x_845.y) * vec4<f32>(x_847.z, x_847.w, x_847.y, x_847.z));
        let x_851 : vec4<f32> = u_xlat6;
        let x_853 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_851.y, x_851.y, x_851.z, x_851.z) * x_853);
        let x_857 : f32 = u_xlat6.z;
        let x_859 : f32 = u_xlat11.y;
        u_xlat61 = (x_857 * x_859);
        let x_862 : vec4<f32> = u_xlat9;
        let x_863 : vec2<f32> = vec2<f32>(x_862.x, x_862.y);
        let x_865 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_863.x, x_863.y, x_865);
        let x_872 : vec3<f32> = txVec4;
        let x_874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_872.xy, x_872.z);
        u_xlat5.x = x_874;
        let x_877 : vec4<f32> = u_xlat9;
        let x_878 : vec2<f32> = vec2<f32>(x_877.z, x_877.w);
        let x_880 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_878.x, x_878.y, x_880);
        let x_888 : vec3<f32> = txVec5;
        let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_888.xy, x_888.z);
        u_xlat24 = x_890;
        let x_891 : f32 = u_xlat24;
        let x_893 : f32 = u_xlat12.y;
        u_xlat24 = (x_891 * x_893);
        let x_896 : f32 = u_xlat12.x;
        let x_898 : f32 = u_xlat5.x;
        let x_900 : f32 = u_xlat24;
        u_xlat5.x = ((x_896 * x_898) + x_900);
        let x_904 : vec2<f32> = u_xlat43;
        let x_906 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_904.x, x_904.y, x_906);
        let x_913 : vec3<f32> = txVec6;
        let x_915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_913.xy, x_913.z);
        u_xlat24 = x_915;
        let x_917 : f32 = u_xlat12.z;
        let x_918 : f32 = u_xlat24;
        let x_921 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_917 * x_918) + x_921);
        let x_925 : vec4<f32> = u_xlat8;
        let x_926 : vec2<f32> = vec2<f32>(x_925.x, x_925.y);
        let x_928 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_926.x, x_926.y, x_928);
        let x_935 : vec3<f32> = txVec7;
        let x_937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_935.xy, x_935.z);
        u_xlat24 = x_937;
        let x_939 : f32 = u_xlat12.w;
        let x_940 : f32 = u_xlat24;
        let x_943 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_939 * x_940) + x_943);
        let x_947 : vec4<f32> = u_xlat10;
        let x_948 : vec2<f32> = vec2<f32>(x_947.x, x_947.y);
        let x_950 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec8;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_957.xy, x_957.z);
        u_xlat24 = x_959;
        let x_961 : f32 = u_xlat13.x;
        let x_962 : f32 = u_xlat24;
        let x_965 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_961 * x_962) + x_965);
        let x_969 : vec4<f32> = u_xlat10;
        let x_970 : vec2<f32> = vec2<f32>(x_969.z, x_969.w);
        let x_972 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_970.x, x_970.y, x_972);
        let x_979 : vec3<f32> = txVec9;
        let x_981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_979.xy, x_979.z);
        u_xlat24 = x_981;
        let x_983 : f32 = u_xlat13.y;
        let x_984 : f32 = u_xlat24;
        let x_987 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_983 * x_984) + x_987);
        let x_991 : vec4<f32> = u_xlat8;
        let x_992 : vec2<f32> = vec2<f32>(x_991.z, x_991.w);
        let x_994 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_992.x, x_992.y, x_994);
        let x_1001 : vec3<f32> = txVec10;
        let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1001.xy, x_1001.z);
        u_xlat24 = x_1003;
        let x_1005 : f32 = u_xlat13.z;
        let x_1006 : f32 = u_xlat24;
        let x_1009 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1005 * x_1006) + x_1009);
        let x_1013 : vec4<f32> = u_xlat7;
        let x_1014 : vec2<f32> = vec2<f32>(x_1013.x, x_1013.y);
        let x_1016 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
        let x_1023 : vec3<f32> = txVec11;
        let x_1025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1023.xy, x_1023.z);
        u_xlat24 = x_1025;
        let x_1027 : f32 = u_xlat13.w;
        let x_1028 : f32 = u_xlat24;
        let x_1031 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1027 * x_1028) + x_1031);
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1036 : vec2<f32> = vec2<f32>(x_1035.z, x_1035.w);
        let x_1038 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1036.x, x_1036.y, x_1038);
        let x_1045 : vec3<f32> = txVec12;
        let x_1047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1045.xy, x_1045.z);
        u_xlat24 = x_1047;
        let x_1048 : f32 = u_xlat61;
        let x_1049 : f32 = u_xlat24;
        let x_1052 : f32 = u_xlat5.x;
        u_xlat60 = ((x_1048 * x_1049) + x_1052);
      } else {
        let x_1055 : vec4<f32> = vs_TEXCOORD6;
        let x_1058 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1061 : vec2<f32> = ((vec2<f32>(x_1055.x, x_1055.y) * vec2<f32>(x_1058.z, x_1058.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1062 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1064 : vec4<f32> = u_xlat5;
        let x_1066 : vec2<f32> = floor(vec2<f32>(x_1064.x, x_1064.y));
        let x_1067 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : vec4<f32> = vs_TEXCOORD6;
        let x_1072 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1069.x, x_1069.y) * vec2<f32>(x_1072.z, x_1072.w)) + -(vec2<f32>(x_1075.x, x_1075.y)));
        let x_1079 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1079.x, x_1079.x, x_1079.y, x_1079.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1082 : vec4<f32> = u_xlat6;
        let x_1084 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1082.x, x_1082.x, x_1082.z, x_1082.z) * vec4<f32>(x_1084.x, x_1084.x, x_1084.z, x_1084.z));
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1091 : vec2<f32> = (vec2<f32>(x_1087.y, x_1087.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1092.x, x_1091.x, x_1092.z, x_1091.y);
        let x_1094 : vec4<f32> = u_xlat7;
        let x_1097 : vec2<f32> = u_xlat43;
        let x_1099 : vec2<f32> = ((vec2<f32>(x_1094.x, x_1094.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1097));
        let x_1100 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1099.x, x_1100.y, x_1099.y, x_1100.w);
        let x_1102 : vec2<f32> = u_xlat43;
        let x_1104 : vec2<f32> = (-(x_1102) + vec2<f32>(1.0f, 1.0f));
        let x_1105 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1104.x, x_1104.y, x_1105.z, x_1105.w);
        let x_1107 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1107, vec2<f32>(0.0f, 0.0f));
        let x_1109 : vec2<f32> = u_xlat45;
        let x_1111 : vec2<f32> = u_xlat45;
        let x_1113 : vec4<f32> = u_xlat7;
        let x_1115 : vec2<f32> = ((-(x_1109) * x_1111) + vec2<f32>(x_1113.x, x_1113.y));
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1115.x, x_1115.y, x_1116.z, x_1116.w);
        let x_1118 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1118, vec2<f32>(0.0f, 0.0f));
        let x_1121 : vec2<f32> = u_xlat45;
        let x_1123 : vec2<f32> = u_xlat45;
        let x_1125 : vec4<f32> = u_xlat6;
        let x_1127 : vec2<f32> = ((-(x_1121) * x_1123) + vec2<f32>(x_1125.y, x_1125.w));
        let x_1128 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1127.x, x_1128.y, x_1127.y);
        let x_1130 : vec4<f32> = u_xlat7;
        let x_1132 : vec2<f32> = (vec2<f32>(x_1130.x, x_1130.y) + vec2<f32>(2.0f, 2.0f));
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec3<f32> = u_xlat25;
        let x_1137 : vec2<f32> = (vec2<f32>(x_1135.x, x_1135.z) + vec2<f32>(2.0f, 2.0f));
        let x_1138 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1138.x, x_1137.x, x_1138.z, x_1137.y);
        let x_1141 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1141 * 0.081632003f);
        let x_1145 : vec4<f32> = u_xlat6;
        let x_1148 : vec3<f32> = (vec3<f32>(x_1145.z, x_1145.x, x_1145.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1154 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1155 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1158 : f32 = u_xlat10.y;
        u_xlat9.x = x_1158;
        let x_1160 : vec2<f32> = u_xlat43;
        let x_1167 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1168 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1167.x, x_1168.z, x_1167.y);
        let x_1170 : vec2<f32> = u_xlat43;
        let x_1174 : vec2<f32> = ((vec2<f32>(x_1170.x, x_1170.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1175 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1174.x, x_1175.y, x_1174.y, x_1175.w);
        let x_1178 : f32 = u_xlat6.x;
        u_xlat7.y = x_1178;
        let x_1181 : f32 = u_xlat8.y;
        u_xlat7.w = x_1181;
        let x_1183 : vec4<f32> = u_xlat7;
        let x_1184 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1183 + x_1184);
        let x_1186 : vec2<f32> = u_xlat43;
        let x_1189 : vec2<f32> = ((vec2<f32>(x_1186.y, x_1186.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1190.x, x_1189.x, x_1190.z, x_1189.y);
        let x_1192 : vec2<f32> = u_xlat43;
        let x_1195 : vec2<f32> = ((vec2<f32>(x_1192.y, x_1192.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1196 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1195.x, x_1196.y, x_1195.y, x_1196.w);
        let x_1199 : f32 = u_xlat6.y;
        u_xlat8.y = x_1199;
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1201 + x_1202);
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1205 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1204 / x_1205);
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1207 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1213 : vec4<f32> = u_xlat8;
        let x_1214 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1213 / x_1214);
        let x_1216 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1216 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1218 : vec4<f32> = u_xlat7;
        let x_1221 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1218.w, x_1218.x, x_1218.y, x_1218.z) * vec4<f32>(x_1221.x, x_1221.x, x_1221.x, x_1221.x));
        let x_1224 : vec4<f32> = u_xlat8;
        let x_1227 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1224.x, x_1224.w, x_1224.y, x_1224.z) * vec4<f32>(x_1227.y, x_1227.y, x_1227.y, x_1227.y));
        let x_1230 : vec4<f32> = u_xlat7;
        let x_1231 : vec3<f32> = vec3<f32>(x_1230.y, x_1230.z, x_1230.w);
        let x_1232 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1231.x, x_1232.y, x_1231.y, x_1231.z);
        let x_1235 : f32 = u_xlat8.x;
        u_xlat10.y = x_1235;
        let x_1237 : vec4<f32> = u_xlat5;
        let x_1240 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1243 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y) * vec4<f32>(x_1240.x, x_1240.y, x_1240.x, x_1240.y)) + vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1243.y));
        let x_1246 : vec4<f32> = u_xlat5;
        let x_1249 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1252 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1246.x, x_1246.y) * vec2<f32>(x_1249.x, x_1249.y)) + vec2<f32>(x_1252.w, x_1252.y));
        let x_1256 : f32 = u_xlat10.y;
        u_xlat7.y = x_1256;
        let x_1259 : f32 = u_xlat8.z;
        u_xlat10.y = x_1259;
        let x_1261 : vec4<f32> = u_xlat5;
        let x_1264 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y) * vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y)) + vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1267.y));
        let x_1270 : vec4<f32> = u_xlat5;
        let x_1273 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat10;
        let x_1278 : vec2<f32> = ((vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(x_1273.x, x_1273.y)) + vec2<f32>(x_1276.w, x_1276.y));
        let x_1279 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
        let x_1282 : f32 = u_xlat10.y;
        u_xlat7.z = x_1282;
        let x_1285 : vec4<f32> = u_xlat5;
        let x_1288 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1291 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y) * vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y)) + vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.z));
        let x_1295 : f32 = u_xlat8.w;
        u_xlat10.y = x_1295;
        let x_1298 : vec4<f32> = u_xlat5;
        let x_1301 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1304.y));
        let x_1308 : vec4<f32> = u_xlat5;
        let x_1311 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1308.x, x_1308.y) * vec2<f32>(x_1311.x, x_1311.y)) + vec2<f32>(x_1314.w, x_1314.y));
        let x_1318 : f32 = u_xlat10.y;
        u_xlat7.w = x_1318;
        let x_1321 : vec4<f32> = u_xlat5;
        let x_1324 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1321.x, x_1321.y) * vec2<f32>(x_1324.x, x_1324.y)) + vec2<f32>(x_1327.x, x_1327.w));
        let x_1330 : vec4<f32> = u_xlat10;
        let x_1331 : vec3<f32> = vec3<f32>(x_1330.x, x_1330.z, x_1330.w);
        let x_1332 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1331.x, x_1332.y, x_1331.y, x_1331.z);
        let x_1334 : vec4<f32> = u_xlat5;
        let x_1337 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y) * vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y)) + vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1340.y));
        let x_1344 : vec4<f32> = u_xlat5;
        let x_1347 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1350 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1344.x, x_1344.y) * vec2<f32>(x_1347.x, x_1347.y)) + vec2<f32>(x_1350.w, x_1350.y));
        let x_1354 : f32 = u_xlat7.x;
        u_xlat8.x = x_1354;
        let x_1356 : vec4<f32> = u_xlat5;
        let x_1359 : vec4<f32> = x_491.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat8;
        let x_1364 : vec2<f32> = ((vec2<f32>(x_1356.x, x_1356.y) * vec2<f32>(x_1359.x, x_1359.y)) + vec2<f32>(x_1362.x, x_1362.y));
        let x_1365 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1364.x, x_1364.y, x_1365.z, x_1365.w);
        let x_1368 : vec4<f32> = u_xlat6;
        let x_1370 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1368.x, x_1368.x, x_1368.x, x_1368.x) * x_1370);
        let x_1373 : vec4<f32> = u_xlat6;
        let x_1375 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1373.y, x_1373.y, x_1373.y, x_1373.y) * x_1375);
        let x_1378 : vec4<f32> = u_xlat6;
        let x_1380 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1378.z, x_1378.z, x_1378.z, x_1378.z) * x_1380);
        let x_1382 : vec4<f32> = u_xlat6;
        let x_1384 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1382.w, x_1382.w, x_1382.w, x_1382.w) * x_1384);
        let x_1387 : vec4<f32> = u_xlat11;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec13;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1397.xy, x_1397.z);
        u_xlat61 = x_1399;
        let x_1401 : vec4<f32> = u_xlat11;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.z, x_1401.w);
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec14;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat7.x = x_1413;
        let x_1416 : f32 = u_xlat7.x;
        let x_1418 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1416 * x_1418);
        let x_1422 : f32 = u_xlat16.x;
        let x_1423 : f32 = u_xlat61;
        let x_1426 : f32 = u_xlat7.x;
        u_xlat61 = ((x_1422 * x_1423) + x_1426);
        let x_1429 : vec2<f32> = u_xlat43;
        let x_1431 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec15;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1438.xy, x_1438.z);
        u_xlat43.x = x_1440;
        let x_1443 : f32 = u_xlat16.z;
        let x_1445 : f32 = u_xlat43.x;
        let x_1447 : f32 = u_xlat61;
        u_xlat61 = ((x_1443 * x_1445) + x_1447);
        let x_1450 : vec4<f32> = u_xlat14;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec16;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat43.x = x_1462;
        let x_1465 : f32 = u_xlat16.w;
        let x_1467 : f32 = u_xlat43.x;
        let x_1469 : f32 = u_xlat61;
        u_xlat61 = ((x_1465 * x_1467) + x_1469);
        let x_1472 : vec4<f32> = u_xlat12;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.x, x_1472.y);
        let x_1475 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec17;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat43.x = x_1484;
        let x_1487 : f32 = u_xlat17.x;
        let x_1489 : f32 = u_xlat43.x;
        let x_1491 : f32 = u_xlat61;
        u_xlat61 = ((x_1487 * x_1489) + x_1491);
        let x_1494 : vec4<f32> = u_xlat12;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.z, x_1494.w);
        let x_1497 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec18;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat43.x = x_1506;
        let x_1509 : f32 = u_xlat17.y;
        let x_1511 : f32 = u_xlat43.x;
        let x_1513 : f32 = u_xlat61;
        u_xlat61 = ((x_1509 * x_1511) + x_1513);
        let x_1516 : vec4<f32> = u_xlat13;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.x, x_1516.y);
        let x_1519 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec19;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat43.x = x_1528;
        let x_1531 : f32 = u_xlat17.z;
        let x_1533 : f32 = u_xlat43.x;
        let x_1535 : f32 = u_xlat61;
        u_xlat61 = ((x_1531 * x_1533) + x_1535);
        let x_1538 : vec4<f32> = u_xlat14;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.z, x_1538.w);
        let x_1541 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec20;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1548.xy, x_1548.z);
        u_xlat43.x = x_1550;
        let x_1553 : f32 = u_xlat17.w;
        let x_1555 : f32 = u_xlat43.x;
        let x_1557 : f32 = u_xlat61;
        u_xlat61 = ((x_1553 * x_1555) + x_1557);
        let x_1560 : vec4<f32> = u_xlat15;
        let x_1561 : vec2<f32> = vec2<f32>(x_1560.x, x_1560.y);
        let x_1563 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec21;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1570.xy, x_1570.z);
        u_xlat43.x = x_1572;
        let x_1575 : f32 = u_xlat18.x;
        let x_1577 : f32 = u_xlat43.x;
        let x_1579 : f32 = u_xlat61;
        u_xlat61 = ((x_1575 * x_1577) + x_1579);
        let x_1582 : vec4<f32> = u_xlat15;
        let x_1583 : vec2<f32> = vec2<f32>(x_1582.z, x_1582.w);
        let x_1585 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1583.x, x_1583.y, x_1585);
        let x_1592 : vec3<f32> = txVec22;
        let x_1594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1592.xy, x_1592.z);
        u_xlat43.x = x_1594;
        let x_1597 : f32 = u_xlat18.y;
        let x_1599 : f32 = u_xlat43.x;
        let x_1601 : f32 = u_xlat61;
        u_xlat61 = ((x_1597 * x_1599) + x_1601);
        let x_1604 : vec2<f32> = u_xlat26;
        let x_1606 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec23;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1613.xy, x_1613.z);
        u_xlat43.x = x_1615;
        let x_1618 : f32 = u_xlat18.z;
        let x_1620 : f32 = u_xlat43.x;
        let x_1622 : f32 = u_xlat61;
        u_xlat61 = ((x_1618 * x_1620) + x_1622);
        let x_1625 : vec2<f32> = u_xlat51;
        let x_1627 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1625.x, x_1625.y, x_1627);
        let x_1634 : vec3<f32> = txVec24;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1634.xy, x_1634.z);
        u_xlat43.x = x_1636;
        let x_1639 : f32 = u_xlat18.w;
        let x_1641 : f32 = u_xlat43.x;
        let x_1643 : f32 = u_xlat61;
        u_xlat61 = ((x_1639 * x_1641) + x_1643);
        let x_1646 : vec4<f32> = u_xlat10;
        let x_1647 : vec2<f32> = vec2<f32>(x_1646.x, x_1646.y);
        let x_1649 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec25;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1656.xy, x_1656.z);
        u_xlat43.x = x_1658;
        let x_1661 : f32 = u_xlat6.x;
        let x_1663 : f32 = u_xlat43.x;
        let x_1665 : f32 = u_xlat61;
        u_xlat61 = ((x_1661 * x_1663) + x_1665);
        let x_1668 : vec4<f32> = u_xlat10;
        let x_1669 : vec2<f32> = vec2<f32>(x_1668.z, x_1668.w);
        let x_1671 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
        let x_1678 : vec3<f32> = txVec26;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1678.xy, x_1678.z);
        u_xlat43.x = x_1680;
        let x_1683 : f32 = u_xlat6.y;
        let x_1685 : f32 = u_xlat43.x;
        let x_1687 : f32 = u_xlat61;
        u_xlat61 = ((x_1683 * x_1685) + x_1687);
        let x_1690 : vec2<f32> = u_xlat46;
        let x_1692 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec27;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1699.xy, x_1699.z);
        u_xlat43.x = x_1701;
        let x_1704 : f32 = u_xlat6.z;
        let x_1706 : f32 = u_xlat43.x;
        let x_1708 : f32 = u_xlat61;
        u_xlat61 = ((x_1704 * x_1706) + x_1708);
        let x_1711 : vec4<f32> = u_xlat5;
        let x_1712 : vec2<f32> = vec2<f32>(x_1711.x, x_1711.y);
        let x_1714 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1712.x, x_1712.y, x_1714);
        let x_1721 : vec3<f32> = txVec28;
        let x_1723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1721.xy, x_1721.z);
        u_xlat5.x = x_1723;
        let x_1726 : f32 = u_xlat6.w;
        let x_1728 : f32 = u_xlat5.x;
        let x_1730 : f32 = u_xlat61;
        u_xlat60 = ((x_1726 * x_1728) + x_1730);
      }
    }
  } else {
    let x_1734 : vec4<f32> = vs_TEXCOORD6;
    let x_1735 : vec2<f32> = vec2<f32>(x_1734.x, x_1734.y);
    let x_1737 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
    let x_1744 : vec3<f32> = txVec29;
    let x_1746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1744.xy, x_1744.z);
    u_xlat60 = x_1746;
  }
  let x_1748 : f32 = x_491.x_MainLightShadowParams.x;
  u_xlat61 = (-(x_1748) + 1.0f);
  let x_1751 : f32 = u_xlat60;
  let x_1753 : f32 = x_491.x_MainLightShadowParams.x;
  let x_1755 : f32 = u_xlat61;
  u_xlat60 = ((x_1751 * x_1753) + x_1755);
  let x_1758 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (0.0f >= x_1758);
  let x_1762 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_1762 >= 1.0f);
  let x_1764 : bool = u_xlatb61;
  let x_1765 : bool = u_xlatb5;
  u_xlatb61 = (x_1764 | x_1765);
  let x_1767 : bool = u_xlatb61;
  let x_1768 : f32 = u_xlat60;
  u_xlat60 = select(x_1768, 1.0f, x_1767);
  let x_1770 : vec3<f32> = vs_TEXCOORD1;
  let x_1773 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1775 : vec3<f32> = (x_1770 + -(x_1773));
  let x_1776 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1776.w);
  let x_1778 : vec4<f32> = u_xlat5;
  let x_1780 : vec4<f32> = u_xlat5;
  u_xlat61 = dot(vec3<f32>(x_1778.x, x_1778.y, x_1778.z), vec3<f32>(x_1780.x, x_1780.y, x_1780.z));
  let x_1783 : f32 = u_xlat61;
  let x_1785 : f32 = x_491.x_MainLightShadowParams.z;
  let x_1788 : f32 = x_491.x_MainLightShadowParams.w;
  u_xlat61 = ((x_1783 * x_1785) + x_1788);
  let x_1790 : f32 = u_xlat61;
  u_xlat61 = clamp(x_1790, 0.0f, 1.0f);
  let x_1792 : f32 = u_xlat60;
  u_xlat5.x = (-(x_1792) + 1.0f);
  let x_1796 : f32 = u_xlat61;
  let x_1798 : f32 = u_xlat5.x;
  let x_1800 : f32 = u_xlat60;
  u_xlat60 = ((x_1796 * x_1798) + x_1800);
  let x_1808 : f32 = x_1806.x_MainLightCookieTextureFormat;
  u_xlatb61 = !((x_1808 == -1.0f));
  let x_1810 : bool = u_xlatb61;
  if (x_1810) {
    let x_1813 : vec3<f32> = vs_TEXCOORD1;
    let x_1816 : vec4<f32> = x_1806.x_MainLightWorldToLight[1i];
    let x_1818 : vec2<f32> = (vec2<f32>(x_1813.y, x_1813.y) * vec2<f32>(x_1816.x, x_1816.y));
    let x_1819 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1818.x, x_1818.y, x_1819.z, x_1819.w);
    let x_1822 : vec4<f32> = x_1806.x_MainLightWorldToLight[0i];
    let x_1824 : vec3<f32> = vs_TEXCOORD1;
    let x_1827 : vec4<f32> = u_xlat5;
    let x_1829 : vec2<f32> = ((vec2<f32>(x_1822.x, x_1822.y) * vec2<f32>(x_1824.x, x_1824.x)) + vec2<f32>(x_1827.x, x_1827.y));
    let x_1830 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1829.x, x_1829.y, x_1830.z, x_1830.w);
    let x_1833 : vec4<f32> = x_1806.x_MainLightWorldToLight[2i];
    let x_1835 : vec3<f32> = vs_TEXCOORD1;
    let x_1838 : vec4<f32> = u_xlat5;
    let x_1840 : vec2<f32> = ((vec2<f32>(x_1833.x, x_1833.y) * vec2<f32>(x_1835.z, x_1835.z)) + vec2<f32>(x_1838.x, x_1838.y));
    let x_1841 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1840.x, x_1840.y, x_1841.z, x_1841.w);
    let x_1843 : vec4<f32> = u_xlat5;
    let x_1846 : vec4<f32> = x_1806.x_MainLightWorldToLight[3i];
    let x_1848 : vec2<f32> = (vec2<f32>(x_1843.x, x_1843.y) + vec2<f32>(x_1846.x, x_1846.y));
    let x_1849 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1848.x, x_1848.y, x_1849.z, x_1849.w);
    let x_1851 : vec4<f32> = u_xlat5;
    let x_1854 : vec2<f32> = ((vec2<f32>(x_1851.x, x_1851.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1855 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1854.x, x_1854.y, x_1855.z, x_1855.w);
    let x_1862 : vec4<f32> = u_xlat5;
    let x_1865 : f32 = x_44.x_GlobalMipBias.x;
    let x_1866 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1862.x, x_1862.y), x_1865);
    u_xlat5 = x_1866;
    let x_1871 : f32 = x_1806.x_MainLightCookieTextureFormat;
    let x_1873 : f32 = x_1806.x_MainLightCookieTextureFormat;
    let x_1875 : f32 = x_1806.x_MainLightCookieTextureFormat;
    let x_1877 : f32 = x_1806.x_MainLightCookieTextureFormat;
    let x_1878 : vec4<f32> = vec4<f32>(x_1871, x_1873, x_1875, x_1877);
    let x_1886 : vec4<bool> = (vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1878.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_1886.x, x_1886.y);
    let x_1889 : bool = u_xlatb6.y;
    if (x_1889) {
      let x_1894 : f32 = u_xlat5.w;
      x_1890 = x_1894;
    } else {
      let x_1897 : f32 = u_xlat5.x;
      x_1890 = x_1897;
    }
    let x_1898 : f32 = x_1890;
    u_xlat61 = x_1898;
    let x_1900 : bool = u_xlatb6.x;
    if (x_1900) {
      let x_1904 : vec4<f32> = u_xlat5;
      x_1901 = vec3<f32>(x_1904.x, x_1904.y, x_1904.z);
    } else {
      let x_1907 : f32 = u_xlat61;
      x_1901 = vec3<f32>(x_1907, x_1907, x_1907);
    }
    let x_1909 : vec3<f32> = x_1901;
    let x_1910 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1916 : vec4<f32> = u_xlat5;
  let x_1919 : vec4<f32> = x_44.x_MainLightColor;
  let x_1921 : vec3<f32> = (vec3<f32>(x_1916.x, x_1916.y, x_1916.z) * vec3<f32>(x_1919.x, x_1919.y, x_1919.z));
  let x_1922 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1921.x, x_1921.y, x_1921.z, x_1922.w);
  let x_1924 : f32 = u_xlat59;
  let x_1926 : vec4<f32> = u_xlat5;
  let x_1928 : vec3<f32> = (vec3<f32>(x_1924, x_1924, x_1924) * vec3<f32>(x_1926.x, x_1926.y, x_1926.z));
  let x_1929 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1928.x, x_1928.y, x_1928.z, x_1929.w);
  let x_1931 : vec4<f32> = u_xlat1;
  let x_1933 : vec4<f32> = u_xlat4;
  let x_1935 : vec3<f32> = (vec3<f32>(x_1931.x, x_1931.x, x_1931.x) * vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
  let x_1936 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
  let x_1938 : f32 = u_xlat60;
  let x_1940 : f32 = x_236.unity_LightData.z;
  u_xlat1.x = (x_1938 * x_1940);
  let x_1943 : vec4<f32> = u_xlat1;
  let x_1945 : vec4<f32> = u_xlat5;
  let x_1947 : vec3<f32> = (vec3<f32>(x_1943.x, x_1943.x, x_1943.x) * vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1948 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
  let x_1950 : vec3<f32> = u_xlat2;
  let x_1952 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_1950, vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1957 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1957, 0.0f, 1.0f);
  let x_1960 : vec4<f32> = u_xlat1;
  let x_1962 : vec4<f32> = u_xlat5;
  let x_1964 : vec3<f32> = (vec3<f32>(x_1960.x, x_1960.x, x_1960.x) * vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
  let x_1965 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
  let x_1968 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_1968 * 10.0f) + 1.0f);
  let x_1974 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1974);
  let x_1977 : vec3<f32> = u_xlat3;
  let x_1978 : vec3<f32> = u_xlat19;
  let x_1982 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1984 : vec3<f32> = ((x_1977 * vec3<f32>(x_1978.x, x_1978.x, x_1978.x)) + vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
  let x_1985 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1985.w);
  let x_1987 : vec4<f32> = u_xlat7;
  let x_1989 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1987.x, x_1987.y, x_1987.z), vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
  let x_1992 : f32 = u_xlat60;
  u_xlat60 = max(x_1992, 1.17549435e-37f);
  let x_1994 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1994);
  let x_1996 : f32 = u_xlat60;
  let x_1998 : vec4<f32> = u_xlat7;
  let x_2000 : vec3<f32> = (vec3<f32>(x_1996, x_1996, x_1996) * vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
  let x_2001 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2001.w);
  let x_2003 : vec3<f32> = u_xlat2;
  let x_2004 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_2003, vec3<f32>(x_2004.x, x_2004.y, x_2004.z));
  let x_2007 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2007, 0.0f, 1.0f);
  let x_2009 : f32 = u_xlat60;
  u_xlat60 = log2(x_2009);
  let x_2012 : f32 = u_xlat1.x;
  let x_2013 : f32 = u_xlat60;
  u_xlat60 = (x_2012 * x_2013);
  let x_2015 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2015);
  let x_2017 : f32 = u_xlat60;
  let x_2020 : vec4<f32> = x_57.x_SpecColor;
  let x_2022 : vec3<f32> = (vec3<f32>(x_2017, x_2017, x_2017) * vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
  let x_2023 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
  let x_2025 : vec4<f32> = u_xlat5;
  let x_2027 : vec4<f32> = u_xlat7;
  let x_2029 : vec3<f32> = (vec3<f32>(x_2025.x, x_2025.y, x_2025.z) * vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2030 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
  let x_2032 : vec4<f32> = u_xlat6;
  let x_2034 : vec4<f32> = u_xlat1;
  let x_2037 : vec4<f32> = u_xlat5;
  let x_2039 : vec3<f32> = ((vec3<f32>(x_2032.x, x_2032.y, x_2032.z) * vec3<f32>(x_2034.y, x_2034.z, x_2034.w)) + vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
  let x_2040 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
  let x_2043 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2045 : f32 = x_236.unity_LightData.y;
  u_xlat60 = min(x_2043, x_2045);
  let x_2049 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2049));
  let x_2053 : f32 = x_1806.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2055 : f32 = x_1806.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2057 : f32 = x_1806.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2059 : f32 = x_1806.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2060 : vec4<f32> = vec4<f32>(x_2053, x_2055, x_2057, x_2059);
  let x_2066 : vec4<bool> = (vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2060.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2066.x, x_2066.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2077 : u32 = u_xlatu_loop_1;
    let x_2078 : u32 = u_xlatu60;
    if ((x_2077 < x_2078)) {
    } else {
      break;
    }
    let x_2081 : u32 = u_xlatu_loop_1;
    u_xlatu62 = (x_2081 >> 2u);
    let x_2085 : u32 = u_xlatu_loop_1;
    u_xlati44 = bitcast<i32>((x_2085 & 3u));
    let x_2089 : u32 = u_xlatu62;
    let x_2092 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_2089)];
    let x_2102 : i32 = u_xlati44;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2107 : vec4<u32> = indexable[x_2102];
    u_xlat62 = dot(x_2092, bitcast<vec4<f32>>(x_2107));
    let x_2110 : f32 = u_xlat62;
    u_xlatu62 = bitcast<u32>(i32(x_2110));
    let x_2113 : vec3<f32> = vs_TEXCOORD1;
    let x_2125 : u32 = u_xlatu62;
    let x_2128 : vec4<f32> = x_2124.x_AdditionalLightsPosition[bitcast<i32>(x_2125)];
    let x_2131 : u32 = u_xlatu62;
    let x_2134 : vec4<f32> = x_2124.x_AdditionalLightsPosition[bitcast<i32>(x_2131)];
    let x_2136 : vec3<f32> = ((-(x_2113) * vec3<f32>(x_2128.w, x_2128.w, x_2128.w)) + vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
    let x_2137 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
    let x_2140 : vec4<f32> = u_xlat8;
    let x_2142 : vec4<f32> = u_xlat8;
    u_xlat44 = dot(vec3<f32>(x_2140.x, x_2140.y, x_2140.z), vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
    let x_2145 : f32 = u_xlat44;
    u_xlat44 = max(x_2145, 6.10351562e-05f);
    let x_2149 : f32 = u_xlat44;
    u_xlat63 = inverseSqrt(x_2149);
    let x_2151 : f32 = u_xlat63;
    let x_2153 : vec4<f32> = u_xlat8;
    let x_2155 : vec3<f32> = (vec3<f32>(x_2151, x_2151, x_2151) * vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
    let x_2156 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
    let x_2158 : f32 = u_xlat44;
    u_xlat63 = (1.0f / x_2158);
    let x_2160 : f32 = u_xlat44;
    let x_2161 : u32 = u_xlatu62;
    let x_2164 : f32 = x_2124.x_AdditionalLightsAttenuation[bitcast<i32>(x_2161)].x;
    u_xlat44 = (x_2160 * x_2164);
    let x_2166 : f32 = u_xlat44;
    let x_2168 : f32 = u_xlat44;
    u_xlat44 = ((-(x_2166) * x_2168) + 1.0f);
    let x_2171 : f32 = u_xlat44;
    u_xlat44 = max(x_2171, 0.0f);
    let x_2173 : f32 = u_xlat44;
    let x_2174 : f32 = u_xlat44;
    u_xlat44 = (x_2173 * x_2174);
    let x_2176 : f32 = u_xlat44;
    let x_2177 : f32 = u_xlat63;
    u_xlat44 = (x_2176 * x_2177);
    let x_2179 : u32 = u_xlatu62;
    let x_2182 : vec4<f32> = x_2124.x_AdditionalLightsSpotDir[bitcast<i32>(x_2179)];
    let x_2184 : vec4<f32> = u_xlat8;
    u_xlat63 = dot(vec3<f32>(x_2182.x, x_2182.y, x_2182.z), vec3<f32>(x_2184.x, x_2184.y, x_2184.z));
    let x_2187 : f32 = u_xlat63;
    let x_2188 : u32 = u_xlatu62;
    let x_2191 : f32 = x_2124.x_AdditionalLightsAttenuation[bitcast<i32>(x_2188)].z;
    let x_2193 : u32 = u_xlatu62;
    let x_2196 : f32 = x_2124.x_AdditionalLightsAttenuation[bitcast<i32>(x_2193)].w;
    u_xlat63 = ((x_2187 * x_2191) + x_2196);
    let x_2198 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2198, 0.0f, 1.0f);
    let x_2200 : f32 = u_xlat63;
    let x_2201 : f32 = u_xlat63;
    u_xlat63 = (x_2200 * x_2201);
    let x_2203 : f32 = u_xlat63;
    let x_2204 : f32 = u_xlat44;
    u_xlat44 = (x_2203 * x_2204);
    let x_2207 : u32 = u_xlatu62;
    u_xlatu63 = (x_2207 >> 5u);
    let x_2210 : u32 = u_xlatu62;
    u_xlati64 = (1i << bitcast<u32>((bitcast<i32>(x_2210) & 31i)));
    let x_2216 : i32 = u_xlati64;
    let x_2218 : u32 = u_xlatu63;
    let x_2221 : f32 = x_1806.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2218)].el;
    u_xlati63 = bitcast<i32>((bitcast<u32>(x_2216) & bitcast<u32>(x_2221)));
    let x_2225 : i32 = u_xlati63;
    if ((x_2225 != 0i)) {
      let x_2235 : u32 = u_xlatu62;
      let x_2238 : f32 = x_2234.x_AdditionalLightsLightTypes[bitcast<i32>(x_2235)].el;
      u_xlati63 = i32(x_2238);
      let x_2240 : i32 = u_xlati63;
      u_xlati64 = select(1i, 0i, (x_2240 != 0i));
      let x_2244 : u32 = u_xlatu62;
      u_xlati65 = (bitcast<i32>(x_2244) << bitcast<u32>(2i));
      let x_2247 : i32 = u_xlati64;
      if ((x_2247 != 0i)) {
        let x_2251 : vec3<f32> = vs_TEXCOORD1;
        let x_2253 : i32 = u_xlati65;
        let x_2256 : i32 = u_xlati65;
        let x_2260 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[((x_2253 + 1i) / 4i)][((x_2256 + 1i) % 4i)];
        let x_2262 : vec3<f32> = (vec3<f32>(x_2251.y, x_2251.y, x_2251.y) * vec3<f32>(x_2260.x, x_2260.y, x_2260.w));
        let x_2263 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
        let x_2265 : i32 = u_xlati65;
        let x_2267 : i32 = u_xlati65;
        let x_2270 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[(x_2265 / 4i)][(x_2267 % 4i)];
        let x_2272 : vec3<f32> = vs_TEXCOORD1;
        let x_2275 : vec4<f32> = u_xlat9;
        let x_2277 : vec3<f32> = ((vec3<f32>(x_2270.x, x_2270.y, x_2270.w) * vec3<f32>(x_2272.x, x_2272.x, x_2272.x)) + vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
        let x_2278 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2277.x, x_2277.y, x_2277.z, x_2278.w);
        let x_2280 : i32 = u_xlati65;
        let x_2283 : i32 = u_xlati65;
        let x_2287 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[((x_2280 + 2i) / 4i)][((x_2283 + 2i) % 4i)];
        let x_2289 : vec3<f32> = vs_TEXCOORD1;
        let x_2292 : vec4<f32> = u_xlat9;
        let x_2294 : vec3<f32> = ((vec3<f32>(x_2287.x, x_2287.y, x_2287.w) * vec3<f32>(x_2289.z, x_2289.z, x_2289.z)) + vec3<f32>(x_2292.x, x_2292.y, x_2292.z));
        let x_2295 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2294.x, x_2294.y, x_2294.z, x_2295.w);
        let x_2297 : vec4<f32> = u_xlat9;
        let x_2299 : i32 = u_xlati65;
        let x_2302 : i32 = u_xlati65;
        let x_2306 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[((x_2299 + 3i) / 4i)][((x_2302 + 3i) % 4i)];
        let x_2308 : vec3<f32> = (vec3<f32>(x_2297.x, x_2297.y, x_2297.z) + vec3<f32>(x_2306.x, x_2306.y, x_2306.w));
        let x_2309 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2308.x, x_2308.y, x_2308.z, x_2309.w);
        let x_2311 : vec4<f32> = u_xlat9;
        let x_2313 : vec4<f32> = u_xlat9;
        let x_2315 : vec2<f32> = (vec2<f32>(x_2311.x, x_2311.y) / vec2<f32>(x_2313.z, x_2313.z));
        let x_2316 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2315.x, x_2315.y, x_2316.z, x_2316.w);
        let x_2318 : vec4<f32> = u_xlat9;
        let x_2321 : vec2<f32> = ((vec2<f32>(x_2318.x, x_2318.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2322 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2321.x, x_2321.y, x_2322.z, x_2322.w);
        let x_2324 : vec4<f32> = u_xlat9;
        let x_2328 : vec2<f32> = clamp(vec2<f32>(x_2324.x, x_2324.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2329 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2328.x, x_2328.y, x_2329.z, x_2329.w);
        let x_2331 : u32 = u_xlatu62;
        let x_2334 : vec4<f32> = x_2234.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2331)];
        let x_2336 : vec4<f32> = u_xlat9;
        let x_2339 : u32 = u_xlatu62;
        let x_2342 : vec4<f32> = x_2234.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2339)];
        let x_2344 : vec2<f32> = ((vec2<f32>(x_2334.x, x_2334.y) * vec2<f32>(x_2336.x, x_2336.y)) + vec2<f32>(x_2342.z, x_2342.w));
        let x_2345 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2344.x, x_2344.y, x_2345.z, x_2345.w);
      } else {
        let x_2349 : i32 = u_xlati63;
        u_xlatb63 = (x_2349 == 1i);
        let x_2351 : bool = u_xlatb63;
        u_xlati63 = select(0i, 1i, x_2351);
        let x_2353 : i32 = u_xlati63;
        if ((x_2353 != 0i)) {
          let x_2358 : vec3<f32> = vs_TEXCOORD1;
          let x_2360 : i32 = u_xlati65;
          let x_2363 : i32 = u_xlati65;
          let x_2367 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[((x_2360 + 1i) / 4i)][((x_2363 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2358.y, x_2358.y) * vec2<f32>(x_2367.x, x_2367.y));
          let x_2370 : i32 = u_xlati65;
          let x_2372 : i32 = u_xlati65;
          let x_2375 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[(x_2370 / 4i)][(x_2372 % 4i)];
          let x_2377 : vec3<f32> = vs_TEXCOORD1;
          let x_2380 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2375.x, x_2375.y) * vec2<f32>(x_2377.x, x_2377.x)) + x_2380);
          let x_2382 : i32 = u_xlati65;
          let x_2385 : i32 = u_xlati65;
          let x_2389 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[((x_2382 + 2i) / 4i)][((x_2385 + 2i) % 4i)];
          let x_2391 : vec3<f32> = vs_TEXCOORD1;
          let x_2394 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2389.x, x_2389.y) * vec2<f32>(x_2391.z, x_2391.z)) + x_2394);
          let x_2396 : vec2<f32> = u_xlat47;
          let x_2397 : i32 = u_xlati65;
          let x_2400 : i32 = u_xlati65;
          let x_2404 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[((x_2397 + 3i) / 4i)][((x_2400 + 3i) % 4i)];
          u_xlat47 = (x_2396 + vec2<f32>(x_2404.x, x_2404.y));
          let x_2407 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2407 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2410 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2410);
          let x_2412 : u32 = u_xlatu62;
          let x_2415 : vec4<f32> = x_2234.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2412)];
          let x_2417 : vec2<f32> = u_xlat47;
          let x_2419 : u32 = u_xlatu62;
          let x_2422 : vec4<f32> = x_2234.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2419)];
          let x_2424 : vec2<f32> = ((vec2<f32>(x_2415.x, x_2415.y) * x_2417) + vec2<f32>(x_2422.z, x_2422.w));
          let x_2425 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2424.x, x_2424.y, x_2425.z, x_2425.w);
        } else {
          let x_2428 : vec3<f32> = vs_TEXCOORD1;
          let x_2430 : i32 = u_xlati65;
          let x_2433 : i32 = u_xlati65;
          let x_2437 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[((x_2430 + 1i) / 4i)][((x_2433 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_2428.y, x_2428.y, x_2428.y, x_2428.y) * x_2437);
          let x_2439 : i32 = u_xlati65;
          let x_2441 : i32 = u_xlati65;
          let x_2444 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[(x_2439 / 4i)][(x_2441 % 4i)];
          let x_2445 : vec3<f32> = vs_TEXCOORD1;
          let x_2448 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2444 * vec4<f32>(x_2445.x, x_2445.x, x_2445.x, x_2445.x)) + x_2448);
          let x_2450 : i32 = u_xlati65;
          let x_2453 : i32 = u_xlati65;
          let x_2457 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[((x_2450 + 2i) / 4i)][((x_2453 + 2i) % 4i)];
          let x_2458 : vec3<f32> = vs_TEXCOORD1;
          let x_2461 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_2457 * vec4<f32>(x_2458.z, x_2458.z, x_2458.z, x_2458.z)) + x_2461);
          let x_2463 : vec4<f32> = u_xlat10;
          let x_2464 : i32 = u_xlati65;
          let x_2467 : i32 = u_xlati65;
          let x_2471 : vec4<f32> = x_2234.x_AdditionalLightsWorldToLights[((x_2464 + 3i) / 4i)][((x_2467 + 3i) % 4i)];
          u_xlat10 = (x_2463 + x_2471);
          let x_2473 : vec4<f32> = u_xlat10;
          let x_2475 : vec4<f32> = u_xlat10;
          let x_2477 : vec3<f32> = (vec3<f32>(x_2473.x, x_2473.y, x_2473.z) / vec3<f32>(x_2475.w, x_2475.w, x_2475.w));
          let x_2478 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
          let x_2480 : vec4<f32> = u_xlat10;
          let x_2482 : vec4<f32> = u_xlat10;
          u_xlat63 = dot(vec3<f32>(x_2480.x, x_2480.y, x_2480.z), vec3<f32>(x_2482.x, x_2482.y, x_2482.z));
          let x_2485 : f32 = u_xlat63;
          u_xlat63 = inverseSqrt(x_2485);
          let x_2487 : f32 = u_xlat63;
          let x_2489 : vec4<f32> = u_xlat10;
          let x_2491 : vec3<f32> = (vec3<f32>(x_2487, x_2487, x_2487) * vec3<f32>(x_2489.x, x_2489.y, x_2489.z));
          let x_2492 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2491.x, x_2491.y, x_2491.z, x_2492.w);
          let x_2494 : vec4<f32> = u_xlat10;
          u_xlat63 = dot(abs(vec3<f32>(x_2494.x, x_2494.y, x_2494.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2499 : f32 = u_xlat63;
          u_xlat63 = max(x_2499, 0.000001f);
          let x_2502 : f32 = u_xlat63;
          u_xlat63 = (1.0f / x_2502);
          let x_2504 : f32 = u_xlat63;
          let x_2506 : vec4<f32> = u_xlat10;
          let x_2508 : vec3<f32> = (vec3<f32>(x_2504, x_2504, x_2504) * vec3<f32>(x_2506.z, x_2506.x, x_2506.y));
          let x_2509 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
          let x_2512 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_2512);
          let x_2516 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_2516, 0.0f, 1.0f);
          let x_2520 : vec4<f32> = u_xlat11;
          let x_2523 : vec4<bool> = (vec4<f32>(x_2520.y, x_2520.z, x_2520.y, x_2520.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2523.x, x_2523.y);
          let x_2526 : bool = u_xlatb47.x;
          if (x_2526) {
            let x_2531 : f32 = u_xlat11.x;
            x_2527 = x_2531;
          } else {
            let x_2534 : f32 = u_xlat11.x;
            x_2527 = -(x_2534);
          }
          let x_2536 : f32 = x_2527;
          u_xlat47.x = x_2536;
          let x_2539 : bool = u_xlatb47.y;
          if (x_2539) {
            let x_2544 : f32 = u_xlat11.x;
            x_2540 = x_2544;
          } else {
            let x_2547 : f32 = u_xlat11.x;
            x_2540 = -(x_2547);
          }
          let x_2549 : f32 = x_2540;
          u_xlat47.y = x_2549;
          let x_2551 : vec4<f32> = u_xlat10;
          let x_2553 : f32 = u_xlat63;
          let x_2556 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2551.x, x_2551.y) * vec2<f32>(x_2553, x_2553)) + x_2556);
          let x_2558 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2558 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2561 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2561, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2565 : u32 = u_xlatu62;
          let x_2568 : vec4<f32> = x_2234.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2565)];
          let x_2570 : vec2<f32> = u_xlat47;
          let x_2572 : u32 = u_xlatu62;
          let x_2575 : vec4<f32> = x_2234.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2572)];
          let x_2577 : vec2<f32> = ((vec2<f32>(x_2568.x, x_2568.y) * x_2570) + vec2<f32>(x_2575.z, x_2575.w));
          let x_2578 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2577.x, x_2577.y, x_2578.z, x_2578.w);
        }
      }
      let x_2585 : vec4<f32> = u_xlat9;
      let x_2588 : f32 = x_44.x_GlobalMipBias.x;
      let x_2589 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2585.x, x_2585.y), x_2588);
      u_xlat9 = x_2589;
      let x_2591 : bool = u_xlatb6.y;
      if (x_2591) {
        let x_2596 : f32 = u_xlat9.w;
        x_2592 = x_2596;
      } else {
        let x_2599 : f32 = u_xlat9.x;
        x_2592 = x_2599;
      }
      let x_2600 : f32 = x_2592;
      u_xlat63 = x_2600;
      let x_2602 : bool = u_xlatb6.x;
      if (x_2602) {
        let x_2606 : vec4<f32> = u_xlat9;
        x_2603 = vec3<f32>(x_2606.x, x_2606.y, x_2606.z);
      } else {
        let x_2609 : f32 = u_xlat63;
        x_2603 = vec3<f32>(x_2609, x_2609, x_2609);
      }
      let x_2611 : vec3<f32> = x_2603;
      let x_2612 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_2611.x, x_2611.y, x_2611.z, x_2612.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_2618 : vec4<f32> = u_xlat9;
    let x_2620 : u32 = u_xlatu62;
    let x_2623 : vec4<f32> = x_2124.x_AdditionalLightsColor[bitcast<i32>(x_2620)];
    let x_2625 : vec3<f32> = (vec3<f32>(x_2618.x, x_2618.y, x_2618.z) * vec3<f32>(x_2623.x, x_2623.y, x_2623.z));
    let x_2626 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2625.x, x_2625.y, x_2625.z, x_2626.w);
    let x_2628 : f32 = u_xlat59;
    let x_2630 : vec4<f32> = u_xlat9;
    let x_2632 : vec3<f32> = (vec3<f32>(x_2628, x_2628, x_2628) * vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
    let x_2633 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);
    let x_2635 : f32 = u_xlat44;
    let x_2637 : vec4<f32> = u_xlat9;
    let x_2639 : vec3<f32> = (vec3<f32>(x_2635, x_2635, x_2635) * vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
    let x_2640 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
    let x_2642 : vec3<f32> = u_xlat2;
    let x_2643 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(x_2642, vec3<f32>(x_2643.x, x_2643.y, x_2643.z));
    let x_2646 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2646, 0.0f, 1.0f);
    let x_2648 : f32 = u_xlat62;
    let x_2650 : vec4<f32> = u_xlat9;
    let x_2652 : vec3<f32> = (vec3<f32>(x_2648, x_2648, x_2648) * vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
    let x_2653 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2652.x, x_2652.y, x_2652.z, x_2653.w);
    let x_2655 : vec3<f32> = u_xlat3;
    let x_2656 : vec3<f32> = u_xlat19;
    let x_2659 : vec4<f32> = u_xlat8;
    let x_2661 : vec3<f32> = ((x_2655 * vec3<f32>(x_2656.x, x_2656.x, x_2656.x)) + vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
    let x_2662 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
    let x_2664 : vec4<f32> = u_xlat8;
    let x_2666 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(vec3<f32>(x_2664.x, x_2664.y, x_2664.z), vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
    let x_2669 : f32 = u_xlat62;
    u_xlat62 = max(x_2669, 1.17549435e-37f);
    let x_2671 : f32 = u_xlat62;
    u_xlat62 = inverseSqrt(x_2671);
    let x_2673 : f32 = u_xlat62;
    let x_2675 : vec4<f32> = u_xlat8;
    let x_2677 : vec3<f32> = (vec3<f32>(x_2673, x_2673, x_2673) * vec3<f32>(x_2675.x, x_2675.y, x_2675.z));
    let x_2678 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2678.w);
    let x_2680 : vec3<f32> = u_xlat2;
    let x_2681 : vec4<f32> = u_xlat8;
    u_xlat62 = dot(x_2680, vec3<f32>(x_2681.x, x_2681.y, x_2681.z));
    let x_2684 : f32 = u_xlat62;
    u_xlat62 = clamp(x_2684, 0.0f, 1.0f);
    let x_2686 : f32 = u_xlat62;
    u_xlat62 = log2(x_2686);
    let x_2689 : f32 = u_xlat1.x;
    let x_2690 : f32 = u_xlat62;
    u_xlat62 = (x_2689 * x_2690);
    let x_2692 : f32 = u_xlat62;
    u_xlat62 = exp2(x_2692);
    let x_2694 : f32 = u_xlat62;
    let x_2697 : vec4<f32> = x_57.x_SpecColor;
    let x_2699 : vec3<f32> = (vec3<f32>(x_2694, x_2694, x_2694) * vec3<f32>(x_2697.x, x_2697.y, x_2697.z));
    let x_2700 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2699.x, x_2699.y, x_2699.z, x_2700.w);
    let x_2702 : vec4<f32> = u_xlat8;
    let x_2704 : vec4<f32> = u_xlat9;
    let x_2706 : vec3<f32> = (vec3<f32>(x_2702.x, x_2702.y, x_2702.z) * vec3<f32>(x_2704.x, x_2704.y, x_2704.z));
    let x_2707 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2707.w);
    let x_2709 : vec4<f32> = u_xlat10;
    let x_2711 : vec4<f32> = u_xlat1;
    let x_2714 : vec4<f32> = u_xlat8;
    let x_2716 : vec3<f32> = ((vec3<f32>(x_2709.x, x_2709.y, x_2709.z) * vec3<f32>(x_2711.y, x_2711.z, x_2711.w)) + vec3<f32>(x_2714.x, x_2714.y, x_2714.z));
    let x_2717 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2716.x, x_2716.y, x_2716.z, x_2717.w);
    let x_2719 : vec4<f32> = u_xlat7;
    let x_2721 : vec4<f32> = u_xlat8;
    let x_2723 : vec3<f32> = (vec3<f32>(x_2719.x, x_2719.y, x_2719.z) + vec3<f32>(x_2721.x, x_2721.y, x_2721.z));
    let x_2724 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2723.x, x_2723.y, x_2723.z, x_2724.w);

    continuing {
      let x_2726 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2726 + bitcast<u32>(1i));
    }
  }
  let x_2728 : vec4<f32> = u_xlat4;
  let x_2730 : vec4<f32> = u_xlat1;
  let x_2733 : vec4<f32> = u_xlat5;
  let x_2735 : vec3<f32> = ((vec3<f32>(x_2728.x, x_2728.y, x_2728.z) * vec3<f32>(x_2730.y, x_2730.z, x_2730.w)) + vec3<f32>(x_2733.x, x_2733.y, x_2733.z));
  let x_2736 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2735.x, x_2735.y, x_2735.z, x_2736.w);
  let x_2738 : vec4<f32> = u_xlat7;
  let x_2740 : vec4<f32> = u_xlat1;
  let x_2742 : vec3<f32> = (vec3<f32>(x_2738.x, x_2738.y, x_2738.z) + vec3<f32>(x_2740.x, x_2740.y, x_2740.z));
  let x_2743 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2742.x, x_2742.y, x_2742.z, x_2743.w);
  let x_2745 : f32 = u_xlat57;
  let x_2746 : f32 = u_xlat57;
  u_xlat19.x = (x_2745 * -(x_2746));
  let x_2751 : f32 = u_xlat19.x;
  u_xlat19.x = exp2(x_2751);
  let x_2754 : vec4<f32> = u_xlat1;
  let x_2758 : vec4<f32> = x_44.unity_FogColor;
  let x_2761 : vec3<f32> = (vec3<f32>(x_2754.x, x_2754.y, x_2754.z) + -(vec3<f32>(x_2758.x, x_2758.y, x_2758.z)));
  let x_2762 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2761.x, x_2761.y, x_2761.z, x_2762.w);
  let x_2766 : vec3<f32> = u_xlat19;
  let x_2768 : vec4<f32> = u_xlat1;
  let x_2772 : vec4<f32> = x_44.unity_FogColor;
  let x_2774 : vec3<f32> = ((vec3<f32>(x_2766.x, x_2766.x, x_2766.x) * vec3<f32>(x_2768.x, x_2768.y, x_2768.z)) + vec3<f32>(x_2772.x, x_2772.y, x_2772.z));
  let x_2775 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2774.x, x_2774.y, x_2774.z, x_2775.w);
  let x_2778 : f32 = x_57.x_Surface;
  u_xlatb19 = (x_2778 == 1.0f);
  let x_2780 : bool = u_xlatb19;
  let x_2781 : bool = u_xlatb38;
  u_xlatb19 = (x_2780 | x_2781);
  let x_2783 : bool = u_xlatb19;
  if (x_2783) {
    let x_2788 : f32 = u_xlat0.x;
    x_2784 = x_2788;
  } else {
    x_2784 = 1.0f;
  }
  let x_2790 : f32 = x_2784;
  SV_Target0.w = x_2790;
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

