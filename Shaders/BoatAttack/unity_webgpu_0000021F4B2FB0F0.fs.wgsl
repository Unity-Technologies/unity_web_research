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

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_362 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1680 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1922 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2044 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_131 : f32;
  var u_xlatb18 : bool;
  var u_xlatb54 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb56 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat56 : f32;
  var u_xlatb57 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat57 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat22 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
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
  var u_xlatb4 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_1764 : f32;
  var x_1775 : vec3<f32>;
  var u_xlatu54 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu57 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat58 : f32;
  var u_xlat41 : vec2<f32>;
  var u_xlatu41 : u32;
  var u_xlati59 : i32;
  var u_xlati41 : i32;
  var u_xlati60 : i32;
  var u_xlatb41 : bool;
  var u_xlatb44 : vec2<bool>;
  var u_xlat44 : vec2<f32>;
  var x_2345 : f32;
  var x_2358 : f32;
  var x_2410 : f32;
  var x_2422 : vec3<f32>;
  var x_2543 : f32;
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
  u_xlat18.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat54;
  let x_105 : f32 = u_xlat36;
  u_xlat36 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat36;
  u_xlat36 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat18.x;
  let x_113 : f32 = u_xlat36;
  u_xlat18.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat18.x;
  u_xlat18.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb36;
  if (x_130) {
    let x_135 : f32 = u_xlat18.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat18.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat18.x;
  u_xlatb18 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb18;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat18;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat18.x = x_177.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
  u_xlatb54 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb54;
  if (x_189) {
    let x_194 : f32 = u_xlat18.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat18.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat18.x = x_201;
  let x_204 : f32 = u_xlat18.x;
  let x_207 : f32 = x_185.unity_LODFade.x;
  u_xlat18.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat18.x;
  u_xlatb18 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb18;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat18.x;
  u_xlat18.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat18;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_238 : f32 = vs_TEXCOORD1.y;
  let x_241 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat18.x = (x_238 * x_241);
  let x_245 : f32 = x_44.unity_MatrixV[0i].z;
  let x_247 : f32 = vs_TEXCOORD1.x;
  let x_250 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_245 * x_247) + x_250);
  let x_254 : f32 = x_44.unity_MatrixV[2i].z;
  let x_256 : f32 = vs_TEXCOORD1.z;
  let x_259 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_254 * x_256) + x_259);
  let x_263 : f32 = u_xlat18.x;
  let x_266 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat18.x = (x_263 + x_266);
  let x_270 : f32 = u_xlat18.x;
  let x_274 : f32 = x_44.x_ProjectionParams.y;
  u_xlat18.x = (-(x_270) + -(x_274));
  let x_279 : f32 = u_xlat18.x;
  u_xlat18.x = max(x_279, 0.0f);
  let x_283 : f32 = u_xlat18.x;
  let x_286 : f32 = x_44.unity_FogParams.x;
  u_xlat18.x = (x_283 * x_286);
  let x_296 : vec2<f32> = vs_TEXCOORD7;
  let x_298 : f32 = x_44.x_GlobalMipBias.x;
  let x_299 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_296, x_298);
  u_xlat3 = vec3<f32>(x_299.x, x_299.y, x_299.z);
  let x_304 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_305 : vec2<f32> = vec2<f32>(x_304.x, x_304.y);
  let x_309 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_305.x, x_305.y));
  let x_310 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_309.x, x_309.y, x_310.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat4;
  let x_314 : vec4<f32> = hlslcc_FragCoord;
  let x_316 : vec2<f32> = (vec2<f32>(x_312.x, x_312.y) * vec2<f32>(x_314.x, x_314.y));
  let x_317 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_316.x, x_316.y, x_317.z, x_317.w);
  let x_320 : f32 = u_xlat4.y;
  let x_323 : f32 = x_44.x_ScaleBiasRt.x;
  let x_326 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat54 = ((x_320 * x_323) + x_326);
  let x_328 : f32 = u_xlat54;
  u_xlat4.z = (-(x_328) + 1.0f);
  let x_337 : vec4<f32> = u_xlat4;
  let x_340 : f32 = x_44.x_GlobalMipBias.x;
  let x_341 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_337.x, x_337.z), x_340);
  u_xlat54 = x_341.x;
  let x_343 : f32 = u_xlat54;
  u_xlat1.x = (x_343 + -1.0f);
  let x_349 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_351 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_349 * x_351) + 1.0f);
  let x_355 : f32 = u_xlat54;
  u_xlat54 = min(x_355, 1.0f);
  let x_364 : f32 = x_362.x_MainLightShadowParams.y;
  u_xlatb56 = (0.0f < x_364);
  let x_366 : bool = u_xlatb56;
  if (x_366) {
    let x_370 : f32 = x_362.x_MainLightShadowParams.y;
    u_xlatb56 = (x_370 == 1.0f);
    let x_372 : bool = u_xlatb56;
    if (x_372) {
      let x_376 : vec4<f32> = vs_TEXCOORD6;
      let x_380 : vec4<f32> = x_362.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_376.x, x_376.y, x_376.x, x_376.y) + x_380);
      let x_383 : vec4<f32> = u_xlat4;
      let x_384 : vec2<f32> = vec2<f32>(x_383.x, x_383.y);
      let x_386 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_384.x, x_384.y, x_386);
      let x_399 : vec3<f32> = txVec0;
      let x_401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_399.xy, x_399.z);
      u_xlat5.x = x_401;
      let x_404 : vec4<f32> = u_xlat4;
      let x_405 : vec2<f32> = vec2<f32>(x_404.z, x_404.w);
      let x_407 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_405.x, x_405.y, x_407);
      let x_414 : vec3<f32> = txVec1;
      let x_416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_414.xy, x_414.z);
      u_xlat5.y = x_416;
      let x_418 : vec4<f32> = vs_TEXCOORD6;
      let x_422 : vec4<f32> = x_362.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_418.x, x_418.y, x_418.x, x_418.y) + x_422);
      let x_425 : vec4<f32> = u_xlat4;
      let x_426 : vec2<f32> = vec2<f32>(x_425.x, x_425.y);
      let x_428 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_426.x, x_426.y, x_428);
      let x_435 : vec3<f32> = txVec2;
      let x_437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_435.xy, x_435.z);
      u_xlat5.z = x_437;
      let x_440 : vec4<f32> = u_xlat4;
      let x_441 : vec2<f32> = vec2<f32>(x_440.z, x_440.w);
      let x_443 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_441.x, x_441.y, x_443);
      let x_450 : vec3<f32> = txVec3;
      let x_452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_450.xy, x_450.z);
      u_xlat5.w = x_452;
      let x_455 : vec4<f32> = u_xlat5;
      u_xlat56 = dot(x_455, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_462 : f32 = x_362.x_MainLightShadowParams.y;
      u_xlatb57 = (x_462 == 2.0f);
      let x_465 : bool = u_xlatb57;
      if (x_465) {
        let x_468 : vec4<f32> = vs_TEXCOORD6;
        let x_471 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_475 : vec2<f32> = ((vec2<f32>(x_468.x, x_468.y) * vec2<f32>(x_471.z, x_471.w)) + vec2<f32>(0.5f, 0.5f));
        let x_476 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_478 : vec4<f32> = u_xlat4;
        let x_480 : vec2<f32> = floor(vec2<f32>(x_478.x, x_478.y));
        let x_481 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_485 : vec4<f32> = vs_TEXCOORD6;
        let x_488 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_491 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_485.x, x_485.y) * vec2<f32>(x_488.z, x_488.w)) + -(vec2<f32>(x_491.x, x_491.y)));
        let x_495 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_495.x, x_495.x, x_495.y, x_495.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_500 : vec4<f32> = u_xlat5;
        let x_502 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_500.x, x_500.x, x_500.z, x_500.z) * vec4<f32>(x_502.x, x_502.x, x_502.z, x_502.z));
        let x_505 : vec4<f32> = u_xlat6;
        let x_509 : vec2<f32> = (vec2<f32>(x_505.y, x_505.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_510 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_509.x, x_510.y, x_509.y, x_510.w);
        let x_512 : vec4<f32> = u_xlat6;
        let x_515 : vec2<f32> = u_xlat40;
        let x_517 : vec2<f32> = ((vec2<f32>(x_512.x, x_512.z) * vec2<f32>(0.5f, 0.5f)) + -(x_515));
        let x_518 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_521 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_521) + vec2<f32>(1.0f, 1.0f));
        let x_525 : vec2<f32> = u_xlat40;
        let x_527 : vec2<f32> = min(x_525, vec2<f32>(0.0f, 0.0f));
        let x_528 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_528.w);
        let x_530 : vec4<f32> = u_xlat7;
        let x_533 : vec4<f32> = u_xlat7;
        let x_536 : vec2<f32> = u_xlat42;
        let x_537 : vec2<f32> = ((-(vec2<f32>(x_530.x, x_530.y)) * vec2<f32>(x_533.x, x_533.y)) + x_536);
        let x_538 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
        let x_540 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_540, vec2<f32>(0.0f, 0.0f));
        let x_542 : vec2<f32> = u_xlat40;
        let x_544 : vec2<f32> = u_xlat40;
        let x_546 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_542) * x_544) + vec2<f32>(x_546.y, x_546.w));
        let x_549 : vec4<f32> = u_xlat7;
        let x_551 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) + vec2<f32>(1.0f, 1.0f));
        let x_552 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
        let x_554 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_554 + vec2<f32>(1.0f, 1.0f));
        let x_557 : vec4<f32> = u_xlat6;
        let x_561 : vec2<f32> = (vec2<f32>(x_557.x, x_557.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_562 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
        let x_564 : vec2<f32> = u_xlat42;
        let x_565 : vec2<f32> = (x_564 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_566 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_568 : vec4<f32> = u_xlat7;
        let x_570 : vec2<f32> = (vec2<f32>(x_568.x, x_568.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_571 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
        let x_574 : vec2<f32> = u_xlat40;
        let x_575 : vec2<f32> = (x_574 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_576 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
        let x_578 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_578.y, x_578.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_582 : f32 = u_xlat7.x;
        u_xlat8.z = x_582;
        let x_585 : f32 = u_xlat40.x;
        u_xlat8.w = x_585;
        let x_588 : f32 = u_xlat9.x;
        u_xlat6.z = x_588;
        let x_591 : f32 = u_xlat5.x;
        u_xlat6.w = x_591;
        let x_594 : vec4<f32> = u_xlat6;
        let x_596 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_594.z, x_594.w, x_594.x, x_594.z) + vec4<f32>(x_596.z, x_596.w, x_596.x, x_596.z));
        let x_600 : f32 = u_xlat8.y;
        u_xlat7.z = x_600;
        let x_603 : f32 = u_xlat40.y;
        u_xlat7.w = x_603;
        let x_606 : f32 = u_xlat6.y;
        u_xlat9.z = x_606;
        let x_609 : f32 = u_xlat5.z;
        u_xlat9.w = x_609;
        let x_611 : vec4<f32> = u_xlat7;
        let x_613 : vec4<f32> = u_xlat9;
        let x_615 : vec3<f32> = (vec3<f32>(x_611.z, x_611.y, x_611.w) + vec3<f32>(x_613.z, x_613.y, x_613.w));
        let x_616 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat6;
        let x_620 : vec4<f32> = u_xlat10;
        let x_622 : vec3<f32> = (vec3<f32>(x_618.x, x_618.z, x_618.w) / vec3<f32>(x_620.z, x_620.w, x_620.y));
        let x_623 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
        let x_625 : vec4<f32> = u_xlat6;
        let x_631 : vec3<f32> = (vec3<f32>(x_625.x, x_625.y, x_625.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_632 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
        let x_634 : vec4<f32> = u_xlat9;
        let x_636 : vec4<f32> = u_xlat5;
        let x_638 : vec3<f32> = (vec3<f32>(x_634.z, x_634.y, x_634.w) / vec3<f32>(x_636.x, x_636.y, x_636.z));
        let x_639 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
        let x_641 : vec4<f32> = u_xlat7;
        let x_643 : vec3<f32> = (vec3<f32>(x_641.x, x_641.y, x_641.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_644 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
        let x_646 : vec4<f32> = u_xlat6;
        let x_649 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_651 : vec3<f32> = (vec3<f32>(x_646.y, x_646.x, x_646.z) * vec3<f32>(x_649.x, x_649.x, x_649.x));
        let x_652 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
        let x_654 : vec4<f32> = u_xlat7;
        let x_657 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_659 : vec3<f32> = (vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_657.y, x_657.y, x_657.y));
        let x_660 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
        let x_663 : f32 = u_xlat7.x;
        u_xlat6.w = x_663;
        let x_665 : vec4<f32> = u_xlat4;
        let x_668 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_671 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_665.x, x_665.y, x_665.x, x_665.y) * vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y)) + vec4<f32>(x_671.y, x_671.w, x_671.x, x_671.w));
        let x_674 : vec4<f32> = u_xlat4;
        let x_677 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_680 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_674.x, x_674.y) * vec2<f32>(x_677.x, x_677.y)) + vec2<f32>(x_680.z, x_680.w));
        let x_684 : f32 = u_xlat6.y;
        u_xlat7.w = x_684;
        let x_686 : vec4<f32> = u_xlat7;
        let x_687 : vec2<f32> = vec2<f32>(x_686.y, x_686.z);
        let x_688 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_688.x, x_687.x, x_688.z, x_687.y);
        let x_690 : vec4<f32> = u_xlat4;
        let x_693 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_696 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_690.x, x_690.y, x_690.x, x_690.y) * vec4<f32>(x_693.x, x_693.y, x_693.x, x_693.y)) + vec4<f32>(x_696.x, x_696.y, x_696.z, x_696.y));
        let x_699 : vec4<f32> = u_xlat4;
        let x_702 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_699.x, x_699.y, x_699.x, x_699.y) * vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y)) + vec4<f32>(x_705.w, x_705.y, x_705.w, x_705.z));
        let x_708 : vec4<f32> = u_xlat4;
        let x_711 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_714 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_708.x, x_708.y, x_708.x, x_708.y) * vec4<f32>(x_711.x, x_711.y, x_711.x, x_711.y)) + vec4<f32>(x_714.x, x_714.w, x_714.z, x_714.w));
        let x_718 : vec4<f32> = u_xlat5;
        let x_720 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_718.x, x_718.x, x_718.x, x_718.y) * vec4<f32>(x_720.z, x_720.w, x_720.y, x_720.z));
        let x_724 : vec4<f32> = u_xlat5;
        let x_726 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_724.y, x_724.y, x_724.z, x_724.z) * x_726);
        let x_730 : f32 = u_xlat5.z;
        let x_732 : f32 = u_xlat10.y;
        u_xlat57 = (x_730 * x_732);
        let x_735 : vec4<f32> = u_xlat8;
        let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
        let x_738 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec4;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_745.xy, x_745.z);
        u_xlat4.x = x_747;
        let x_750 : vec4<f32> = u_xlat8;
        let x_751 : vec2<f32> = vec2<f32>(x_750.z, x_750.w);
        let x_753 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_751.x, x_751.y, x_753);
        let x_761 : vec3<f32> = txVec5;
        let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_761.xy, x_761.z);
        u_xlat22 = x_763;
        let x_764 : f32 = u_xlat22;
        let x_766 : f32 = u_xlat11.y;
        u_xlat22 = (x_764 * x_766);
        let x_769 : f32 = u_xlat11.x;
        let x_771 : f32 = u_xlat4.x;
        let x_773 : f32 = u_xlat22;
        u_xlat4.x = ((x_769 * x_771) + x_773);
        let x_777 : vec2<f32> = u_xlat40;
        let x_779 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_777.x, x_777.y, x_779);
        let x_786 : vec3<f32> = txVec6;
        let x_788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_786.xy, x_786.z);
        u_xlat22 = x_788;
        let x_790 : f32 = u_xlat11.z;
        let x_791 : f32 = u_xlat22;
        let x_794 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_790 * x_791) + x_794);
        let x_798 : vec4<f32> = u_xlat7;
        let x_799 : vec2<f32> = vec2<f32>(x_798.x, x_798.y);
        let x_801 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_808 : vec3<f32> = txVec7;
        let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_808.xy, x_808.z);
        u_xlat22 = x_810;
        let x_812 : f32 = u_xlat11.w;
        let x_813 : f32 = u_xlat22;
        let x_816 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_812 * x_813) + x_816);
        let x_820 : vec4<f32> = u_xlat9;
        let x_821 : vec2<f32> = vec2<f32>(x_820.x, x_820.y);
        let x_823 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec8;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_830.xy, x_830.z);
        u_xlat22 = x_832;
        let x_834 : f32 = u_xlat12.x;
        let x_835 : f32 = u_xlat22;
        let x_838 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_834 * x_835) + x_838);
        let x_842 : vec4<f32> = u_xlat9;
        let x_843 : vec2<f32> = vec2<f32>(x_842.z, x_842.w);
        let x_845 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_843.x, x_843.y, x_845);
        let x_852 : vec3<f32> = txVec9;
        let x_854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_852.xy, x_852.z);
        u_xlat22 = x_854;
        let x_856 : f32 = u_xlat12.y;
        let x_857 : f32 = u_xlat22;
        let x_860 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_856 * x_857) + x_860);
        let x_864 : vec4<f32> = u_xlat7;
        let x_865 : vec2<f32> = vec2<f32>(x_864.z, x_864.w);
        let x_867 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec10;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_874.xy, x_874.z);
        u_xlat22 = x_876;
        let x_878 : f32 = u_xlat12.z;
        let x_879 : f32 = u_xlat22;
        let x_882 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_878 * x_879) + x_882);
        let x_886 : vec4<f32> = u_xlat6;
        let x_887 : vec2<f32> = vec2<f32>(x_886.x, x_886.y);
        let x_889 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_896 : vec3<f32> = txVec11;
        let x_898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_896.xy, x_896.z);
        u_xlat22 = x_898;
        let x_900 : f32 = u_xlat12.w;
        let x_901 : f32 = u_xlat22;
        let x_904 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_900 * x_901) + x_904);
        let x_908 : vec4<f32> = u_xlat6;
        let x_909 : vec2<f32> = vec2<f32>(x_908.z, x_908.w);
        let x_911 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_909.x, x_909.y, x_911);
        let x_918 : vec3<f32> = txVec12;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_918.xy, x_918.z);
        u_xlat22 = x_920;
        let x_921 : f32 = u_xlat57;
        let x_922 : f32 = u_xlat22;
        let x_925 : f32 = u_xlat4.x;
        u_xlat56 = ((x_921 * x_922) + x_925);
      } else {
        let x_928 : vec4<f32> = vs_TEXCOORD6;
        let x_931 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_934 : vec2<f32> = ((vec2<f32>(x_928.x, x_928.y) * vec2<f32>(x_931.z, x_931.w)) + vec2<f32>(0.5f, 0.5f));
        let x_935 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
        let x_937 : vec4<f32> = u_xlat4;
        let x_939 : vec2<f32> = floor(vec2<f32>(x_937.x, x_937.y));
        let x_940 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec4<f32> = vs_TEXCOORD6;
        let x_945 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_948 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_942.x, x_942.y) * vec2<f32>(x_945.z, x_945.w)) + -(vec2<f32>(x_948.x, x_948.y)));
        let x_952 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_952.x, x_952.x, x_952.y, x_952.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_955 : vec4<f32> = u_xlat5;
        let x_957 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_955.x, x_955.x, x_955.z, x_955.z) * vec4<f32>(x_957.x, x_957.x, x_957.z, x_957.z));
        let x_960 : vec4<f32> = u_xlat6;
        let x_964 : vec2<f32> = (vec2<f32>(x_960.y, x_960.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_965 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_965.x, x_964.x, x_965.z, x_964.y);
        let x_967 : vec4<f32> = u_xlat6;
        let x_970 : vec2<f32> = u_xlat40;
        let x_972 : vec2<f32> = ((vec2<f32>(x_967.x, x_967.z) * vec2<f32>(0.5f, 0.5f)) + -(x_970));
        let x_973 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_972.x, x_973.y, x_972.y, x_973.w);
        let x_975 : vec2<f32> = u_xlat40;
        let x_977 : vec2<f32> = (-(x_975) + vec2<f32>(1.0f, 1.0f));
        let x_978 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
        let x_980 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_980, vec2<f32>(0.0f, 0.0f));
        let x_982 : vec2<f32> = u_xlat42;
        let x_984 : vec2<f32> = u_xlat42;
        let x_986 : vec4<f32> = u_xlat6;
        let x_988 : vec2<f32> = ((-(x_982) * x_984) + vec2<f32>(x_986.x, x_986.y));
        let x_989 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_991 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_991, vec2<f32>(0.0f, 0.0f));
        let x_994 : vec2<f32> = u_xlat42;
        let x_996 : vec2<f32> = u_xlat42;
        let x_998 : vec4<f32> = u_xlat5;
        let x_1000 : vec2<f32> = ((-(x_994) * x_996) + vec2<f32>(x_998.y, x_998.w));
        let x_1001 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1000.x, x_1001.y, x_1000.y);
        let x_1003 : vec4<f32> = u_xlat6;
        let x_1006 : vec2<f32> = (vec2<f32>(x_1003.x, x_1003.y) + vec2<f32>(2.0f, 2.0f));
        let x_1007 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec3<f32> = u_xlat23;
        let x_1011 : vec2<f32> = (vec2<f32>(x_1009.x, x_1009.z) + vec2<f32>(2.0f, 2.0f));
        let x_1012 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1012.x, x_1011.x, x_1012.z, x_1011.y);
        let x_1015 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1015 * 0.081632003f);
        let x_1019 : vec4<f32> = u_xlat5;
        let x_1022 : vec3<f32> = (vec3<f32>(x_1019.z, x_1019.x, x_1019.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1023 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
        let x_1025 : vec4<f32> = u_xlat6;
        let x_1028 : vec2<f32> = (vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1029 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1032 : f32 = u_xlat9.y;
        u_xlat8.x = x_1032;
        let x_1034 : vec2<f32> = u_xlat40;
        let x_1041 : vec2<f32> = ((vec2<f32>(x_1034.x, x_1034.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1042.x, x_1041.x, x_1042.z, x_1041.y);
        let x_1044 : vec2<f32> = u_xlat40;
        let x_1048 : vec2<f32> = ((vec2<f32>(x_1044.x, x_1044.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1049 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1049.w);
        let x_1052 : f32 = u_xlat5.x;
        u_xlat6.y = x_1052;
        let x_1055 : f32 = u_xlat7.y;
        u_xlat6.w = x_1055;
        let x_1057 : vec4<f32> = u_xlat6;
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1057 + x_1058);
        let x_1060 : vec2<f32> = u_xlat40;
        let x_1063 : vec2<f32> = ((vec2<f32>(x_1060.y, x_1060.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1064 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1066 : vec2<f32> = u_xlat40;
        let x_1069 : vec2<f32> = ((vec2<f32>(x_1066.y, x_1066.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1070 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1069.x, x_1070.y, x_1069.y, x_1070.w);
        let x_1073 : f32 = u_xlat5.y;
        u_xlat7.y = x_1073;
        let x_1075 : vec4<f32> = u_xlat7;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1075 + x_1076);
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1079 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1078 / x_1079);
        let x_1081 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1081 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1087 : vec4<f32> = u_xlat7;
        let x_1088 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1087 / x_1088);
        let x_1090 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1090 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1092 : vec4<f32> = u_xlat6;
        let x_1095 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1092.w, x_1092.x, x_1092.y, x_1092.z) * vec4<f32>(x_1095.x, x_1095.x, x_1095.x, x_1095.x));
        let x_1098 : vec4<f32> = u_xlat7;
        let x_1101 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1098.x, x_1098.w, x_1098.y, x_1098.z) * vec4<f32>(x_1101.y, x_1101.y, x_1101.y, x_1101.y));
        let x_1104 : vec4<f32> = u_xlat6;
        let x_1105 : vec3<f32> = vec3<f32>(x_1104.y, x_1104.z, x_1104.w);
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1105.x, x_1106.y, x_1105.y, x_1105.z);
        let x_1109 : f32 = u_xlat7.x;
        u_xlat9.y = x_1109;
        let x_1111 : vec4<f32> = u_xlat4;
        let x_1114 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y) * vec4<f32>(x_1114.x, x_1114.y, x_1114.x, x_1114.y)) + vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat4;
        let x_1123 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1123.x, x_1123.y)) + vec2<f32>(x_1126.w, x_1126.y));
        let x_1130 : f32 = u_xlat9.y;
        u_xlat6.y = x_1130;
        let x_1133 : f32 = u_xlat7.z;
        u_xlat9.y = x_1133;
        let x_1135 : vec4<f32> = u_xlat4;
        let x_1138 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y) * vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y)) + vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1141.y));
        let x_1144 : vec4<f32> = u_xlat4;
        let x_1147 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(x_1150.w, x_1150.y));
        let x_1153 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1156 : f32 = u_xlat9.y;
        u_xlat6.z = x_1156;
        let x_1159 : vec4<f32> = u_xlat4;
        let x_1162 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1165 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y) * vec4<f32>(x_1162.x, x_1162.y, x_1162.x, x_1162.y)) + vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.z));
        let x_1169 : f32 = u_xlat7.w;
        u_xlat9.y = x_1169;
        let x_1172 : vec4<f32> = u_xlat4;
        let x_1175 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1178 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y) * vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y)) + vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1178.y));
        let x_1182 : vec4<f32> = u_xlat4;
        let x_1185 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1182.x, x_1182.y) * vec2<f32>(x_1185.x, x_1185.y)) + vec2<f32>(x_1188.w, x_1188.y));
        let x_1192 : f32 = u_xlat9.y;
        u_xlat6.w = x_1192;
        let x_1195 : vec4<f32> = u_xlat4;
        let x_1198 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1195.x, x_1195.y) * vec2<f32>(x_1198.x, x_1198.y)) + vec2<f32>(x_1201.x, x_1201.w));
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1205 : vec3<f32> = vec3<f32>(x_1204.x, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1205.x, x_1206.y, x_1205.y, x_1205.z);
        let x_1208 : vec4<f32> = u_xlat4;
        let x_1211 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1218 : vec4<f32> = u_xlat4;
        let x_1221 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.w, x_1224.y));
        let x_1228 : f32 = u_xlat6.x;
        u_xlat7.x = x_1228;
        let x_1230 : vec4<f32> = u_xlat4;
        let x_1233 : vec4<f32> = x_362.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat7;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(x_1233.x, x_1233.y)) + vec2<f32>(x_1236.x, x_1236.y));
        let x_1239 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1239.w);
        let x_1242 : vec4<f32> = u_xlat5;
        let x_1244 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1242.x, x_1242.x, x_1242.x, x_1242.x) * x_1244);
        let x_1247 : vec4<f32> = u_xlat5;
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1247.y, x_1247.y, x_1247.y, x_1247.y) * x_1249);
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1252.z, x_1252.z, x_1252.z, x_1252.z) * x_1254);
        let x_1256 : vec4<f32> = u_xlat5;
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1256.w, x_1256.w, x_1256.w, x_1256.w) * x_1258);
        let x_1261 : vec4<f32> = u_xlat10;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.x, x_1261.y);
        let x_1264 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec13;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1271.xy, x_1271.z);
        u_xlat57 = x_1273;
        let x_1275 : vec4<f32> = u_xlat10;
        let x_1276 : vec2<f32> = vec2<f32>(x_1275.z, x_1275.w);
        let x_1278 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
        let x_1285 : vec3<f32> = txVec14;
        let x_1287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1285.xy, x_1285.z);
        u_xlat6.x = x_1287;
        let x_1290 : f32 = u_xlat6.x;
        let x_1292 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1290 * x_1292);
        let x_1296 : f32 = u_xlat15.x;
        let x_1297 : f32 = u_xlat57;
        let x_1300 : f32 = u_xlat6.x;
        u_xlat57 = ((x_1296 * x_1297) + x_1300);
        let x_1303 : vec2<f32> = u_xlat40;
        let x_1305 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1303.x, x_1303.y, x_1305);
        let x_1312 : vec3<f32> = txVec15;
        let x_1314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1312.xy, x_1312.z);
        u_xlat40.x = x_1314;
        let x_1317 : f32 = u_xlat15.z;
        let x_1319 : f32 = u_xlat40.x;
        let x_1321 : f32 = u_xlat57;
        u_xlat57 = ((x_1317 * x_1319) + x_1321);
        let x_1324 : vec4<f32> = u_xlat13;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.x, x_1324.y);
        let x_1327 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec16;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat40.x = x_1336;
        let x_1339 : f32 = u_xlat15.w;
        let x_1341 : f32 = u_xlat40.x;
        let x_1343 : f32 = u_xlat57;
        u_xlat57 = ((x_1339 * x_1341) + x_1343);
        let x_1346 : vec4<f32> = u_xlat11;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.x, x_1346.y);
        let x_1349 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec17;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1356.xy, x_1356.z);
        u_xlat40.x = x_1358;
        let x_1361 : f32 = u_xlat16.x;
        let x_1363 : f32 = u_xlat40.x;
        let x_1365 : f32 = u_xlat57;
        u_xlat57 = ((x_1361 * x_1363) + x_1365);
        let x_1368 : vec4<f32> = u_xlat11;
        let x_1369 : vec2<f32> = vec2<f32>(x_1368.z, x_1368.w);
        let x_1371 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec18;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat40.x = x_1380;
        let x_1383 : f32 = u_xlat16.y;
        let x_1385 : f32 = u_xlat40.x;
        let x_1387 : f32 = u_xlat57;
        u_xlat57 = ((x_1383 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat12;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.x, x_1390.y);
        let x_1393 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec19;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat40.x = x_1402;
        let x_1405 : f32 = u_xlat16.z;
        let x_1407 : f32 = u_xlat40.x;
        let x_1409 : f32 = u_xlat57;
        u_xlat57 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat13;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.z, x_1412.w);
        let x_1415 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec20;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat40.x = x_1424;
        let x_1427 : f32 = u_xlat16.w;
        let x_1429 : f32 = u_xlat40.x;
        let x_1431 : f32 = u_xlat57;
        u_xlat57 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat14;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.x, x_1434.y);
        let x_1437 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec21;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat40.x = x_1446;
        let x_1449 : f32 = u_xlat17.x;
        let x_1451 : f32 = u_xlat40.x;
        let x_1453 : f32 = u_xlat57;
        u_xlat57 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat14;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.z, x_1456.w);
        let x_1459 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec22;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat40.x = x_1468;
        let x_1471 : f32 = u_xlat17.y;
        let x_1473 : f32 = u_xlat40.x;
        let x_1475 : f32 = u_xlat57;
        u_xlat57 = ((x_1471 * x_1473) + x_1475);
        let x_1478 : vec2<f32> = u_xlat24;
        let x_1480 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec23;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat40.x = x_1489;
        let x_1492 : f32 = u_xlat17.z;
        let x_1494 : f32 = u_xlat40.x;
        let x_1496 : f32 = u_xlat57;
        u_xlat57 = ((x_1492 * x_1494) + x_1496);
        let x_1499 : vec2<f32> = u_xlat48;
        let x_1501 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec24;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat40.x = x_1510;
        let x_1513 : f32 = u_xlat17.w;
        let x_1515 : f32 = u_xlat40.x;
        let x_1517 : f32 = u_xlat57;
        u_xlat57 = ((x_1513 * x_1515) + x_1517);
        let x_1520 : vec4<f32> = u_xlat9;
        let x_1521 : vec2<f32> = vec2<f32>(x_1520.x, x_1520.y);
        let x_1523 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec25;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1530.xy, x_1530.z);
        u_xlat40.x = x_1532;
        let x_1535 : f32 = u_xlat5.x;
        let x_1537 : f32 = u_xlat40.x;
        let x_1539 : f32 = u_xlat57;
        u_xlat57 = ((x_1535 * x_1537) + x_1539);
        let x_1542 : vec4<f32> = u_xlat9;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.z, x_1542.w);
        let x_1545 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec26;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1552.xy, x_1552.z);
        u_xlat40.x = x_1554;
        let x_1557 : f32 = u_xlat5.y;
        let x_1559 : f32 = u_xlat40.x;
        let x_1561 : f32 = u_xlat57;
        u_xlat57 = ((x_1557 * x_1559) + x_1561);
        let x_1564 : vec2<f32> = u_xlat43;
        let x_1566 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec27;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1573.xy, x_1573.z);
        u_xlat40.x = x_1575;
        let x_1578 : f32 = u_xlat5.z;
        let x_1580 : f32 = u_xlat40.x;
        let x_1582 : f32 = u_xlat57;
        u_xlat57 = ((x_1578 * x_1580) + x_1582);
        let x_1585 : vec4<f32> = u_xlat4;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.x, x_1585.y);
        let x_1588 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec28;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1595.xy, x_1595.z);
        u_xlat4.x = x_1597;
        let x_1600 : f32 = u_xlat5.w;
        let x_1602 : f32 = u_xlat4.x;
        let x_1604 : f32 = u_xlat57;
        u_xlat56 = ((x_1600 * x_1602) + x_1604);
      }
    }
  } else {
    let x_1608 : vec4<f32> = vs_TEXCOORD6;
    let x_1609 : vec2<f32> = vec2<f32>(x_1608.x, x_1608.y);
    let x_1611 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
    let x_1618 : vec3<f32> = txVec29;
    let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1618.xy, x_1618.z);
    u_xlat56 = x_1620;
  }
  let x_1622 : f32 = x_362.x_MainLightShadowParams.x;
  u_xlat57 = (-(x_1622) + 1.0f);
  let x_1625 : f32 = u_xlat56;
  let x_1627 : f32 = x_362.x_MainLightShadowParams.x;
  let x_1629 : f32 = u_xlat57;
  u_xlat56 = ((x_1625 * x_1627) + x_1629);
  let x_1632 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (0.0f >= x_1632);
  let x_1636 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1636 >= 1.0f);
  let x_1638 : bool = u_xlatb57;
  let x_1639 : bool = u_xlatb4;
  u_xlatb57 = (x_1638 | x_1639);
  let x_1641 : bool = u_xlatb57;
  let x_1642 : f32 = u_xlat56;
  u_xlat56 = select(x_1642, 1.0f, x_1641);
  let x_1644 : vec3<f32> = vs_TEXCOORD1;
  let x_1647 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1649 : vec3<f32> = (x_1644 + -(x_1647));
  let x_1650 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1649.x, x_1649.y, x_1649.z, x_1650.w);
  let x_1652 : vec4<f32> = u_xlat4;
  let x_1654 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(vec3<f32>(x_1652.x, x_1652.y, x_1652.z), vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
  let x_1657 : f32 = u_xlat57;
  let x_1659 : f32 = x_362.x_MainLightShadowParams.z;
  let x_1662 : f32 = x_362.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1657 * x_1659) + x_1662);
  let x_1664 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1664, 0.0f, 1.0f);
  let x_1666 : f32 = u_xlat56;
  u_xlat4.x = (-(x_1666) + 1.0f);
  let x_1670 : f32 = u_xlat57;
  let x_1672 : f32 = u_xlat4.x;
  let x_1674 : f32 = u_xlat56;
  u_xlat56 = ((x_1670 * x_1672) + x_1674);
  let x_1682 : f32 = x_1680.x_MainLightCookieTextureFormat;
  u_xlatb57 = !((x_1682 == -1.0f));
  let x_1684 : bool = u_xlatb57;
  if (x_1684) {
    let x_1687 : vec3<f32> = vs_TEXCOORD1;
    let x_1690 : vec4<f32> = x_1680.x_MainLightWorldToLight[1i];
    let x_1692 : vec2<f32> = (vec2<f32>(x_1687.y, x_1687.y) * vec2<f32>(x_1690.x, x_1690.y));
    let x_1693 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1692.x, x_1692.y, x_1693.z, x_1693.w);
    let x_1696 : vec4<f32> = x_1680.x_MainLightWorldToLight[0i];
    let x_1698 : vec3<f32> = vs_TEXCOORD1;
    let x_1701 : vec4<f32> = u_xlat4;
    let x_1703 : vec2<f32> = ((vec2<f32>(x_1696.x, x_1696.y) * vec2<f32>(x_1698.x, x_1698.x)) + vec2<f32>(x_1701.x, x_1701.y));
    let x_1704 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1703.x, x_1703.y, x_1704.z, x_1704.w);
    let x_1707 : vec4<f32> = x_1680.x_MainLightWorldToLight[2i];
    let x_1709 : vec3<f32> = vs_TEXCOORD1;
    let x_1712 : vec4<f32> = u_xlat4;
    let x_1714 : vec2<f32> = ((vec2<f32>(x_1707.x, x_1707.y) * vec2<f32>(x_1709.z, x_1709.z)) + vec2<f32>(x_1712.x, x_1712.y));
    let x_1715 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1714.x, x_1714.y, x_1715.z, x_1715.w);
    let x_1717 : vec4<f32> = u_xlat4;
    let x_1720 : vec4<f32> = x_1680.x_MainLightWorldToLight[3i];
    let x_1722 : vec2<f32> = (vec2<f32>(x_1717.x, x_1717.y) + vec2<f32>(x_1720.x, x_1720.y));
    let x_1723 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1722.x, x_1722.y, x_1723.z, x_1723.w);
    let x_1725 : vec4<f32> = u_xlat4;
    let x_1728 : vec2<f32> = ((vec2<f32>(x_1725.x, x_1725.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1729 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
    let x_1736 : vec4<f32> = u_xlat4;
    let x_1739 : f32 = x_44.x_GlobalMipBias.x;
    let x_1740 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1736.x, x_1736.y), x_1739);
    u_xlat4 = x_1740;
    let x_1745 : f32 = x_1680.x_MainLightCookieTextureFormat;
    let x_1747 : f32 = x_1680.x_MainLightCookieTextureFormat;
    let x_1749 : f32 = x_1680.x_MainLightCookieTextureFormat;
    let x_1751 : f32 = x_1680.x_MainLightCookieTextureFormat;
    let x_1752 : vec4<f32> = vec4<f32>(x_1745, x_1747, x_1749, x_1751);
    let x_1760 : vec4<bool> = (vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1752.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1760.x, x_1760.y);
    let x_1763 : bool = u_xlatb5.y;
    if (x_1763) {
      let x_1768 : f32 = u_xlat4.w;
      x_1764 = x_1768;
    } else {
      let x_1771 : f32 = u_xlat4.x;
      x_1764 = x_1771;
    }
    let x_1772 : f32 = x_1764;
    u_xlat57 = x_1772;
    let x_1774 : bool = u_xlatb5.x;
    if (x_1774) {
      let x_1778 : vec4<f32> = u_xlat4;
      x_1775 = vec3<f32>(x_1778.x, x_1778.y, x_1778.z);
    } else {
      let x_1781 : f32 = u_xlat57;
      x_1775 = vec3<f32>(x_1781, x_1781, x_1781);
    }
    let x_1783 : vec3<f32> = x_1775;
    let x_1784 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1784.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1790 : vec4<f32> = u_xlat4;
  let x_1793 : vec4<f32> = x_44.x_MainLightColor;
  let x_1795 : vec3<f32> = (vec3<f32>(x_1790.x, x_1790.y, x_1790.z) * vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
  let x_1796 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
  let x_1798 : vec4<f32> = u_xlat1;
  let x_1800 : vec4<f32> = u_xlat4;
  let x_1802 : vec3<f32> = (vec3<f32>(x_1798.x, x_1798.x, x_1798.x) * vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
  let x_1803 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
  let x_1805 : f32 = u_xlat54;
  let x_1807 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1805, x_1805, x_1805) * x_1807);
  let x_1809 : f32 = u_xlat56;
  let x_1811 : f32 = x_185.unity_LightData.z;
  u_xlat54 = (x_1809 * x_1811);
  let x_1813 : f32 = u_xlat54;
  let x_1815 : vec4<f32> = u_xlat4;
  let x_1817 : vec3<f32> = (vec3<f32>(x_1813, x_1813, x_1813) * vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
  let x_1818 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1820 : vec3<f32> = u_xlat2;
  let x_1822 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat54 = dot(x_1820, vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
  let x_1825 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1825, 0.0f, 1.0f);
  let x_1827 : f32 = u_xlat54;
  let x_1829 : vec4<f32> = u_xlat4;
  let x_1831 : vec3<f32> = (vec3<f32>(x_1827, x_1827, x_1827) * vec3<f32>(x_1829.x, x_1829.y, x_1829.z));
  let x_1832 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
  let x_1834 : vec4<f32> = u_xlat1;
  let x_1836 : vec4<f32> = u_xlat4;
  let x_1838 : vec3<f32> = (vec3<f32>(x_1834.y, x_1834.z, x_1834.w) * vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1839 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
  let x_1842 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1844 : f32 = x_185.unity_LightData.y;
  u_xlat54 = min(x_1842, x_1844);
  let x_1848 : f32 = u_xlat54;
  u_xlatu54 = bitcast<u32>(i32(x_1848));
  let x_1852 : f32 = x_1680.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1854 : f32 = x_1680.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1856 : f32 = x_1680.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1858 : f32 = x_1680.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1859 : vec4<f32> = vec4<f32>(x_1852, x_1854, x_1856, x_1858);
  let x_1865 : vec4<bool> = (vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1859.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1865.x, x_1865.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1876 : u32 = u_xlatu_loop_1;
    let x_1877 : u32 = u_xlatu54;
    if ((x_1876 < x_1877)) {
    } else {
      break;
    }
    let x_1880 : u32 = u_xlatu_loop_1;
    u_xlatu57 = (x_1880 >> 2u);
    let x_1884 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1884 & 3u));
    let x_1887 : u32 = u_xlatu57;
    let x_1890 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_1887)];
    let x_1900 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1905 : vec4<u32> = indexable[x_1900];
    u_xlat57 = dot(x_1890, bitcast<vec4<f32>>(x_1905));
    let x_1908 : f32 = u_xlat57;
    u_xlatu57 = bitcast<u32>(i32(x_1908));
    let x_1911 : vec3<f32> = vs_TEXCOORD1;
    let x_1923 : u32 = u_xlatu57;
    let x_1926 : vec4<f32> = x_1922.x_AdditionalLightsPosition[bitcast<i32>(x_1923)];
    let x_1929 : u32 = u_xlatu57;
    let x_1932 : vec4<f32> = x_1922.x_AdditionalLightsPosition[bitcast<i32>(x_1929)];
    let x_1934 : vec3<f32> = ((-(x_1911) * vec3<f32>(x_1926.w, x_1926.w, x_1926.w)) + vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
    let x_1935 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
    let x_1938 : vec4<f32> = u_xlat7;
    let x_1940 : vec4<f32> = u_xlat7;
    u_xlat58 = dot(vec3<f32>(x_1938.x, x_1938.y, x_1938.z), vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
    let x_1943 : f32 = u_xlat58;
    u_xlat58 = max(x_1943, 6.10351562e-05f);
    let x_1947 : f32 = u_xlat58;
    u_xlat41.x = inverseSqrt(x_1947);
    let x_1950 : vec2<f32> = u_xlat41;
    let x_1952 : vec4<f32> = u_xlat7;
    let x_1954 : vec3<f32> = (vec3<f32>(x_1950.x, x_1950.x, x_1950.x) * vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
    let x_1957 : f32 = u_xlat58;
    u_xlat41.x = (1.0f / x_1957);
    let x_1960 : f32 = u_xlat58;
    let x_1961 : u32 = u_xlatu57;
    let x_1964 : f32 = x_1922.x_AdditionalLightsAttenuation[bitcast<i32>(x_1961)].x;
    u_xlat58 = (x_1960 * x_1964);
    let x_1966 : f32 = u_xlat58;
    let x_1968 : f32 = u_xlat58;
    u_xlat58 = ((-(x_1966) * x_1968) + 1.0f);
    let x_1971 : f32 = u_xlat58;
    u_xlat58 = max(x_1971, 0.0f);
    let x_1973 : f32 = u_xlat58;
    let x_1974 : f32 = u_xlat58;
    u_xlat58 = (x_1973 * x_1974);
    let x_1976 : f32 = u_xlat58;
    let x_1978 : f32 = u_xlat41.x;
    u_xlat58 = (x_1976 * x_1978);
    let x_1980 : u32 = u_xlatu57;
    let x_1983 : vec4<f32> = x_1922.x_AdditionalLightsSpotDir[bitcast<i32>(x_1980)];
    let x_1985 : vec4<f32> = u_xlat7;
    u_xlat41.x = dot(vec3<f32>(x_1983.x, x_1983.y, x_1983.z), vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
    let x_1990 : f32 = u_xlat41.x;
    let x_1991 : u32 = u_xlatu57;
    let x_1994 : f32 = x_1922.x_AdditionalLightsAttenuation[bitcast<i32>(x_1991)].z;
    let x_1996 : u32 = u_xlatu57;
    let x_1999 : f32 = x_1922.x_AdditionalLightsAttenuation[bitcast<i32>(x_1996)].w;
    u_xlat41.x = ((x_1990 * x_1994) + x_1999);
    let x_2003 : f32 = u_xlat41.x;
    u_xlat41.x = clamp(x_2003, 0.0f, 1.0f);
    let x_2007 : f32 = u_xlat41.x;
    let x_2009 : f32 = u_xlat41.x;
    u_xlat41.x = (x_2007 * x_2009);
    let x_2012 : f32 = u_xlat58;
    let x_2014 : f32 = u_xlat41.x;
    u_xlat58 = (x_2012 * x_2014);
    let x_2017 : u32 = u_xlatu57;
    u_xlatu41 = (x_2017 >> 5u);
    let x_2020 : u32 = u_xlatu57;
    u_xlati59 = (1i << bitcast<u32>((bitcast<i32>(x_2020) & 31i)));
    let x_2026 : i32 = u_xlati59;
    let x_2028 : u32 = u_xlatu41;
    let x_2031 : f32 = x_1680.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2028)].el;
    u_xlati41 = bitcast<i32>((bitcast<u32>(x_2026) & bitcast<u32>(x_2031)));
    let x_2035 : i32 = u_xlati41;
    if ((x_2035 != 0i)) {
      let x_2045 : u32 = u_xlatu57;
      let x_2048 : f32 = x_2044.x_AdditionalLightsLightTypes[bitcast<i32>(x_2045)].el;
      u_xlati41 = i32(x_2048);
      let x_2050 : i32 = u_xlati41;
      u_xlati59 = select(1i, 0i, (x_2050 != 0i));
      let x_2054 : u32 = u_xlatu57;
      u_xlati60 = (bitcast<i32>(x_2054) << bitcast<u32>(2i));
      let x_2057 : i32 = u_xlati59;
      if ((x_2057 != 0i)) {
        let x_2061 : vec3<f32> = vs_TEXCOORD1;
        let x_2063 : i32 = u_xlati60;
        let x_2066 : i32 = u_xlati60;
        let x_2070 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[((x_2063 + 1i) / 4i)][((x_2066 + 1i) % 4i)];
        let x_2072 : vec3<f32> = (vec3<f32>(x_2061.y, x_2061.y, x_2061.y) * vec3<f32>(x_2070.x, x_2070.y, x_2070.w));
        let x_2073 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
        let x_2075 : i32 = u_xlati60;
        let x_2077 : i32 = u_xlati60;
        let x_2080 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[(x_2075 / 4i)][(x_2077 % 4i)];
        let x_2082 : vec3<f32> = vs_TEXCOORD1;
        let x_2085 : vec4<f32> = u_xlat8;
        let x_2087 : vec3<f32> = ((vec3<f32>(x_2080.x, x_2080.y, x_2080.w) * vec3<f32>(x_2082.x, x_2082.x, x_2082.x)) + vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
        let x_2088 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
        let x_2090 : i32 = u_xlati60;
        let x_2093 : i32 = u_xlati60;
        let x_2097 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[((x_2090 + 2i) / 4i)][((x_2093 + 2i) % 4i)];
        let x_2099 : vec3<f32> = vs_TEXCOORD1;
        let x_2102 : vec4<f32> = u_xlat8;
        let x_2104 : vec3<f32> = ((vec3<f32>(x_2097.x, x_2097.y, x_2097.w) * vec3<f32>(x_2099.z, x_2099.z, x_2099.z)) + vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
        let x_2105 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
        let x_2107 : vec4<f32> = u_xlat8;
        let x_2109 : i32 = u_xlati60;
        let x_2112 : i32 = u_xlati60;
        let x_2116 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[((x_2109 + 3i) / 4i)][((x_2112 + 3i) % 4i)];
        let x_2118 : vec3<f32> = (vec3<f32>(x_2107.x, x_2107.y, x_2107.z) + vec3<f32>(x_2116.x, x_2116.y, x_2116.w));
        let x_2119 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2119.w);
        let x_2121 : vec4<f32> = u_xlat8;
        let x_2123 : vec4<f32> = u_xlat8;
        let x_2125 : vec2<f32> = (vec2<f32>(x_2121.x, x_2121.y) / vec2<f32>(x_2123.z, x_2123.z));
        let x_2126 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2125.x, x_2125.y, x_2126.z, x_2126.w);
        let x_2128 : vec4<f32> = u_xlat8;
        let x_2131 : vec2<f32> = ((vec2<f32>(x_2128.x, x_2128.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2132 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2131.x, x_2131.y, x_2132.z, x_2132.w);
        let x_2134 : vec4<f32> = u_xlat8;
        let x_2138 : vec2<f32> = clamp(vec2<f32>(x_2134.x, x_2134.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2139 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2138.x, x_2138.y, x_2139.z, x_2139.w);
        let x_2141 : u32 = u_xlatu57;
        let x_2144 : vec4<f32> = x_2044.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2141)];
        let x_2146 : vec4<f32> = u_xlat8;
        let x_2149 : u32 = u_xlatu57;
        let x_2152 : vec4<f32> = x_2044.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2149)];
        let x_2154 : vec2<f32> = ((vec2<f32>(x_2144.x, x_2144.y) * vec2<f32>(x_2146.x, x_2146.y)) + vec2<f32>(x_2152.z, x_2152.w));
        let x_2155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2154.x, x_2154.y, x_2155.z, x_2155.w);
      } else {
        let x_2159 : i32 = u_xlati41;
        u_xlatb41 = (x_2159 == 1i);
        let x_2161 : bool = u_xlatb41;
        u_xlati41 = select(0i, 1i, x_2161);
        let x_2163 : i32 = u_xlati41;
        if ((x_2163 != 0i)) {
          let x_2167 : vec3<f32> = vs_TEXCOORD1;
          let x_2169 : i32 = u_xlati60;
          let x_2172 : i32 = u_xlati60;
          let x_2176 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[((x_2169 + 1i) / 4i)][((x_2172 + 1i) % 4i)];
          u_xlat41 = (vec2<f32>(x_2167.y, x_2167.y) * vec2<f32>(x_2176.x, x_2176.y));
          let x_2179 : i32 = u_xlati60;
          let x_2181 : i32 = u_xlati60;
          let x_2184 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[(x_2179 / 4i)][(x_2181 % 4i)];
          let x_2186 : vec3<f32> = vs_TEXCOORD1;
          let x_2189 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2184.x, x_2184.y) * vec2<f32>(x_2186.x, x_2186.x)) + x_2189);
          let x_2191 : i32 = u_xlati60;
          let x_2194 : i32 = u_xlati60;
          let x_2198 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[((x_2191 + 2i) / 4i)][((x_2194 + 2i) % 4i)];
          let x_2200 : vec3<f32> = vs_TEXCOORD1;
          let x_2203 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2198.x, x_2198.y) * vec2<f32>(x_2200.z, x_2200.z)) + x_2203);
          let x_2205 : vec2<f32> = u_xlat41;
          let x_2206 : i32 = u_xlati60;
          let x_2209 : i32 = u_xlati60;
          let x_2213 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[((x_2206 + 3i) / 4i)][((x_2209 + 3i) % 4i)];
          u_xlat41 = (x_2205 + vec2<f32>(x_2213.x, x_2213.y));
          let x_2216 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2216 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2219 : vec2<f32> = u_xlat41;
          u_xlat41 = fract(x_2219);
          let x_2221 : u32 = u_xlatu57;
          let x_2224 : vec4<f32> = x_2044.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2221)];
          let x_2226 : vec2<f32> = u_xlat41;
          let x_2228 : u32 = u_xlatu57;
          let x_2231 : vec4<f32> = x_2044.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2228)];
          let x_2233 : vec2<f32> = ((vec2<f32>(x_2224.x, x_2224.y) * x_2226) + vec2<f32>(x_2231.z, x_2231.w));
          let x_2234 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2233.x, x_2233.y, x_2234.z, x_2234.w);
        } else {
          let x_2237 : vec3<f32> = vs_TEXCOORD1;
          let x_2239 : i32 = u_xlati60;
          let x_2242 : i32 = u_xlati60;
          let x_2246 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[((x_2239 + 1i) / 4i)][((x_2242 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2237.y, x_2237.y, x_2237.y, x_2237.y) * x_2246);
          let x_2248 : i32 = u_xlati60;
          let x_2250 : i32 = u_xlati60;
          let x_2253 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[(x_2248 / 4i)][(x_2250 % 4i)];
          let x_2254 : vec3<f32> = vs_TEXCOORD1;
          let x_2257 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2253 * vec4<f32>(x_2254.x, x_2254.x, x_2254.x, x_2254.x)) + x_2257);
          let x_2259 : i32 = u_xlati60;
          let x_2262 : i32 = u_xlati60;
          let x_2266 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[((x_2259 + 2i) / 4i)][((x_2262 + 2i) % 4i)];
          let x_2267 : vec3<f32> = vs_TEXCOORD1;
          let x_2270 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2266 * vec4<f32>(x_2267.z, x_2267.z, x_2267.z, x_2267.z)) + x_2270);
          let x_2272 : vec4<f32> = u_xlat9;
          let x_2273 : i32 = u_xlati60;
          let x_2276 : i32 = u_xlati60;
          let x_2280 : vec4<f32> = x_2044.x_AdditionalLightsWorldToLights[((x_2273 + 3i) / 4i)][((x_2276 + 3i) % 4i)];
          u_xlat9 = (x_2272 + x_2280);
          let x_2282 : vec4<f32> = u_xlat9;
          let x_2284 : vec4<f32> = u_xlat9;
          let x_2286 : vec3<f32> = (vec3<f32>(x_2282.x, x_2282.y, x_2282.z) / vec3<f32>(x_2284.w, x_2284.w, x_2284.w));
          let x_2287 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2286.x, x_2286.y, x_2286.z, x_2287.w);
          let x_2289 : vec4<f32> = u_xlat9;
          let x_2291 : vec4<f32> = u_xlat9;
          u_xlat41.x = dot(vec3<f32>(x_2289.x, x_2289.y, x_2289.z), vec3<f32>(x_2291.x, x_2291.y, x_2291.z));
          let x_2296 : f32 = u_xlat41.x;
          u_xlat41.x = inverseSqrt(x_2296);
          let x_2299 : vec2<f32> = u_xlat41;
          let x_2301 : vec4<f32> = u_xlat9;
          let x_2303 : vec3<f32> = (vec3<f32>(x_2299.x, x_2299.x, x_2299.x) * vec3<f32>(x_2301.x, x_2301.y, x_2301.z));
          let x_2304 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
          let x_2306 : vec4<f32> = u_xlat9;
          u_xlat41.x = dot(abs(vec3<f32>(x_2306.x, x_2306.y, x_2306.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2313 : f32 = u_xlat41.x;
          u_xlat41.x = max(x_2313, 0.000001f);
          let x_2318 : f32 = u_xlat41.x;
          u_xlat41.x = (1.0f / x_2318);
          let x_2321 : vec2<f32> = u_xlat41;
          let x_2323 : vec4<f32> = u_xlat9;
          let x_2325 : vec3<f32> = (vec3<f32>(x_2321.x, x_2321.x, x_2321.x) * vec3<f32>(x_2323.z, x_2323.x, x_2323.y));
          let x_2326 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
          let x_2329 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2329);
          let x_2333 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2333, 0.0f, 1.0f);
          let x_2337 : vec4<f32> = u_xlat10;
          let x_2340 : vec4<bool> = (vec4<f32>(x_2337.y, x_2337.z, x_2337.y, x_2337.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb44 = vec2<bool>(x_2340.x, x_2340.y);
          let x_2344 : bool = u_xlatb44.x;
          if (x_2344) {
            let x_2349 : f32 = u_xlat10.x;
            x_2345 = x_2349;
          } else {
            let x_2352 : f32 = u_xlat10.x;
            x_2345 = -(x_2352);
          }
          let x_2354 : f32 = x_2345;
          u_xlat44.x = x_2354;
          let x_2357 : bool = u_xlatb44.y;
          if (x_2357) {
            let x_2362 : f32 = u_xlat10.x;
            x_2358 = x_2362;
          } else {
            let x_2365 : f32 = u_xlat10.x;
            x_2358 = -(x_2365);
          }
          let x_2367 : f32 = x_2358;
          u_xlat44.y = x_2367;
          let x_2369 : vec4<f32> = u_xlat9;
          let x_2371 : vec2<f32> = u_xlat41;
          let x_2374 : vec2<f32> = u_xlat44;
          u_xlat41 = ((vec2<f32>(x_2369.x, x_2369.y) * vec2<f32>(x_2371.x, x_2371.x)) + x_2374);
          let x_2376 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2376 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2379 : vec2<f32> = u_xlat41;
          u_xlat41 = clamp(x_2379, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2383 : u32 = u_xlatu57;
          let x_2386 : vec4<f32> = x_2044.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2383)];
          let x_2388 : vec2<f32> = u_xlat41;
          let x_2390 : u32 = u_xlatu57;
          let x_2393 : vec4<f32> = x_2044.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2390)];
          let x_2395 : vec2<f32> = ((vec2<f32>(x_2386.x, x_2386.y) * x_2388) + vec2<f32>(x_2393.z, x_2393.w));
          let x_2396 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2395.x, x_2395.y, x_2396.z, x_2396.w);
        }
      }
      let x_2403 : vec4<f32> = u_xlat8;
      let x_2406 : f32 = x_44.x_GlobalMipBias.x;
      let x_2407 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2403.x, x_2403.y), x_2406);
      u_xlat8 = x_2407;
      let x_2409 : bool = u_xlatb5.y;
      if (x_2409) {
        let x_2414 : f32 = u_xlat8.w;
        x_2410 = x_2414;
      } else {
        let x_2417 : f32 = u_xlat8.x;
        x_2410 = x_2417;
      }
      let x_2418 : f32 = x_2410;
      u_xlat41.x = x_2418;
      let x_2421 : bool = u_xlatb5.x;
      if (x_2421) {
        let x_2425 : vec4<f32> = u_xlat8;
        x_2422 = vec3<f32>(x_2425.x, x_2425.y, x_2425.z);
      } else {
        let x_2428 : vec2<f32> = u_xlat41;
        x_2422 = vec3<f32>(x_2428.x, x_2428.x, x_2428.x);
      }
      let x_2430 : vec3<f32> = x_2422;
      let x_2431 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2437 : vec4<f32> = u_xlat8;
    let x_2439 : u32 = u_xlatu57;
    let x_2442 : vec4<f32> = x_1922.x_AdditionalLightsColor[bitcast<i32>(x_2439)];
    let x_2444 : vec3<f32> = (vec3<f32>(x_2437.x, x_2437.y, x_2437.z) * vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
    let x_2445 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
    let x_2447 : vec4<f32> = u_xlat1;
    let x_2449 : vec4<f32> = u_xlat8;
    let x_2451 : vec3<f32> = (vec3<f32>(x_2447.x, x_2447.x, x_2447.x) * vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
    let x_2452 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
    let x_2454 : f32 = u_xlat58;
    let x_2456 : vec4<f32> = u_xlat8;
    let x_2458 : vec3<f32> = (vec3<f32>(x_2454, x_2454, x_2454) * vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
    let x_2459 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
    let x_2461 : vec3<f32> = u_xlat2;
    let x_2462 : vec4<f32> = u_xlat7;
    u_xlat57 = dot(x_2461, vec3<f32>(x_2462.x, x_2462.y, x_2462.z));
    let x_2465 : f32 = u_xlat57;
    u_xlat57 = clamp(x_2465, 0.0f, 1.0f);
    let x_2467 : f32 = u_xlat57;
    let x_2469 : vec4<f32> = u_xlat8;
    let x_2471 : vec3<f32> = (vec3<f32>(x_2467, x_2467, x_2467) * vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
    let x_2472 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2472.w);
    let x_2474 : vec4<f32> = u_xlat7;
    let x_2476 : vec4<f32> = u_xlat1;
    let x_2479 : vec4<f32> = u_xlat6;
    let x_2481 : vec3<f32> = ((vec3<f32>(x_2474.x, x_2474.y, x_2474.z) * vec3<f32>(x_2476.y, x_2476.z, x_2476.w)) + vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
    let x_2482 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2481.x, x_2481.y, x_2481.z, x_2482.w);

    continuing {
      let x_2484 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2484 + bitcast<u32>(1i));
    }
  }
  let x_2486 : vec3<f32> = u_xlat3;
  let x_2487 : vec4<f32> = u_xlat1;
  let x_2490 : vec4<f32> = u_xlat4;
  let x_2492 : vec3<f32> = ((x_2486 * vec3<f32>(x_2487.y, x_2487.z, x_2487.w)) + vec3<f32>(x_2490.x, x_2490.y, x_2490.z));
  let x_2493 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2492.x, x_2492.y, x_2492.z, x_2493.w);
  let x_2495 : vec4<f32> = u_xlat6;
  let x_2497 : vec4<f32> = u_xlat1;
  let x_2499 : vec3<f32> = (vec3<f32>(x_2495.x, x_2495.y, x_2495.z) + vec3<f32>(x_2497.x, x_2497.y, x_2497.z));
  let x_2500 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
  let x_2503 : f32 = u_xlat18.x;
  let x_2505 : f32 = u_xlat18.x;
  u_xlat18.x = (x_2503 * -(x_2505));
  let x_2510 : f32 = u_xlat18.x;
  u_xlat18.x = exp2(x_2510);
  let x_2513 : vec4<f32> = u_xlat1;
  let x_2517 : vec4<f32> = x_44.unity_FogColor;
  let x_2520 : vec3<f32> = (vec3<f32>(x_2513.x, x_2513.y, x_2513.z) + -(vec3<f32>(x_2517.x, x_2517.y, x_2517.z)));
  let x_2521 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2520.x, x_2520.y, x_2520.z, x_2521.w);
  let x_2525 : vec3<f32> = u_xlat18;
  let x_2527 : vec4<f32> = u_xlat1;
  let x_2531 : vec4<f32> = x_44.unity_FogColor;
  let x_2533 : vec3<f32> = ((vec3<f32>(x_2525.x, x_2525.x, x_2525.x) * vec3<f32>(x_2527.x, x_2527.y, x_2527.z)) + vec3<f32>(x_2531.x, x_2531.y, x_2531.z));
  let x_2534 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2533.x, x_2533.y, x_2533.z, x_2534.w);
  let x_2537 : f32 = x_57.x_Surface;
  u_xlatb18 = (x_2537 == 1.0f);
  let x_2539 : bool = u_xlatb18;
  let x_2540 : bool = u_xlatb36;
  u_xlatb18 = (x_2539 | x_2540);
  let x_2542 : bool = u_xlatb18;
  if (x_2542) {
    let x_2547 : f32 = u_xlat0.x;
    x_2543 = x_2547;
  } else {
    x_2543 = 1.0f;
  }
  let x_2549 : f32 = x_2543;
  SV_Target0.w = x_2549;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

