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
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_423 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_486 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_784 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_899 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat36 : f32;
  var u_xlatb24 : bool;
  var x_130 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlatb14 : bool;
  var x_241 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlatb39 : bool;
  var u_xlatb40 : bool;
  var u_xlat40 : f32;
  var u_xlatb6 : vec2<bool>;
  var x_572 : f32;
  var x_583 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatu38 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati41 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat8 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat30 : vec2<f32>;
  var u_xlatu30 : u32;
  var u_xlati42 : i32;
  var u_xlati30 : i32;
  var u_xlati43 : i32;
  var u_xlat9 : vec4<f32>;
  var u_xlatb30 : bool;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb33 : vec2<bool>;
  var u_xlat33 : vec2<f32>;
  var x_1201 : f32;
  var x_1214 : f32;
  var x_1266 : f32;
  var x_1278 : vec3<f32>;
  var x_1404 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat12.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat36;
  let x_104 : f32 = u_xlat24;
  u_xlat24 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat24;
  u_xlat24 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat12.x;
  let x_112 : f32 = u_xlat24;
  u_xlat12.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat12.x;
  u_xlat12.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb24;
  if (x_129) {
    let x_134 : f32 = u_xlat12.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat12.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat12.x;
  u_xlatb12 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb12;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_164 : vec2<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_43.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_164, x_166);
  u_xlat2 = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_170 : f32 = u_xlat2.x;
  let x_173 : f32 = u_xlat2.z;
  u_xlat2.x = (x_170 * x_173);
  let x_176 : vec3<f32> = u_xlat2;
  let x_183 : vec2<f32> = ((vec2<f32>(x_176.x, x_176.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_184 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_183.x, x_184.y, x_183.y);
  let x_186 : vec3<f32> = u_xlat12;
  let x_188 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_186.x, x_186.z), vec2<f32>(x_188.x, x_188.z));
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_193, 1.0f);
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_197) + 1.0f);
  let x_202 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_202);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_206, 1.00000002e-16f);
  let x_210 : vec4<f32> = hlslcc_FragCoord;
  let x_214 : f32 = x_43.x_DitheringTextureInvSize;
  let x_216 : vec2<f32> = (vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_214, x_214));
  let x_217 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_224 : vec3<f32> = u_xlat2;
  let x_227 : f32 = x_43.x_GlobalMipBias.x;
  let x_228 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_224.x, x_224.y), x_227);
  u_xlat2.x = x_228.w;
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
  let x_337 : vec2<f32> = vs_TEXCOORD7;
  let x_339 : f32 = x_43.x_GlobalMipBias.x;
  let x_340 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_337, x_339);
  u_xlat4 = vec3<f32>(x_340.x, x_340.y, x_340.z);
  let x_345 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_346 : vec2<f32> = vec2<f32>(x_345.x, x_345.y);
  let x_350 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_346.x, x_346.y));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_351.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat5;
  let x_355 : vec4<f32> = hlslcc_FragCoord;
  let x_357 : vec2<f32> = (vec2<f32>(x_353.x, x_353.y) * vec2<f32>(x_355.x, x_355.y));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
  let x_361 : f32 = u_xlat5.y;
  let x_364 : f32 = x_43.x_ScaleBiasRt.x;
  let x_367 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat36 = ((x_361 * x_364) + x_367);
  let x_369 : f32 = u_xlat36;
  u_xlat5.z = (-(x_369) + 1.0f);
  let x_378 : vec4<f32> = u_xlat5;
  let x_381 : f32 = x_43.x_GlobalMipBias.x;
  let x_382 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_378.x, x_378.z), x_381);
  u_xlat36 = x_382.x;
  let x_384 : f32 = u_xlat36;
  u_xlat1.x = (x_384 + -1.0f);
  let x_389 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_391 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_389 * x_391) + 1.0f);
  let x_395 : f32 = u_xlat36;
  u_xlat36 = min(x_395, 1.0f);
  let x_399 : vec4<f32> = vs_TEXCOORD6;
  let x_400 : vec2<f32> = vec2<f32>(x_399.x, x_399.y);
  let x_402 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_400.x, x_400.y, x_402);
  let x_415 : vec3<f32> = txVec0;
  let x_417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_415.xy, x_415.z);
  u_xlat38 = x_417;
  let x_425 : f32 = x_423.x_MainLightShadowParams.x;
  u_xlat39 = (-(x_425) + 1.0f);
  let x_428 : f32 = u_xlat38;
  let x_430 : f32 = x_423.x_MainLightShadowParams.x;
  let x_432 : f32 = u_xlat39;
  u_xlat38 = ((x_428 * x_430) + x_432);
  let x_436 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (0.0f >= x_436);
  let x_440 : f32 = vs_TEXCOORD6.z;
  u_xlatb40 = (x_440 >= 1.0f);
  let x_442 : bool = u_xlatb39;
  let x_443 : bool = u_xlatb40;
  u_xlatb39 = (x_442 | x_443);
  let x_445 : bool = u_xlatb39;
  let x_446 : f32 = u_xlat38;
  u_xlat38 = select(x_446, 1.0f, x_445);
  let x_450 : vec3<f32> = vs_TEXCOORD1;
  let x_454 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_456 : vec3<f32> = (x_450 + -(x_454));
  let x_457 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat5;
  let x_461 : vec4<f32> = u_xlat5;
  u_xlat39 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat39;
  let x_466 : f32 = x_423.x_MainLightShadowParams.z;
  let x_469 : f32 = x_423.x_MainLightShadowParams.w;
  u_xlat39 = ((x_464 * x_466) + x_469);
  let x_471 : f32 = u_xlat39;
  u_xlat39 = clamp(x_471, 0.0f, 1.0f);
  let x_474 : f32 = u_xlat38;
  u_xlat40 = (-(x_474) + 1.0f);
  let x_477 : f32 = u_xlat39;
  let x_478 : f32 = u_xlat40;
  let x_480 : f32 = u_xlat38;
  u_xlat38 = ((x_477 * x_478) + x_480);
  let x_488 : f32 = x_486.x_MainLightCookieTextureFormat;
  u_xlatb39 = !((x_488 == -1.0f));
  let x_490 : bool = u_xlatb39;
  if (x_490) {
    let x_493 : vec3<f32> = vs_TEXCOORD1;
    let x_496 : vec4<f32> = x_486.x_MainLightWorldToLight[1i];
    let x_498 : vec2<f32> = (vec2<f32>(x_493.y, x_493.y) * vec2<f32>(x_496.x, x_496.y));
    let x_499 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_498.x, x_498.y, x_499.z, x_499.w);
    let x_502 : vec4<f32> = x_486.x_MainLightWorldToLight[0i];
    let x_504 : vec3<f32> = vs_TEXCOORD1;
    let x_507 : vec4<f32> = u_xlat5;
    let x_509 : vec2<f32> = ((vec2<f32>(x_502.x, x_502.y) * vec2<f32>(x_504.x, x_504.x)) + vec2<f32>(x_507.x, x_507.y));
    let x_510 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
    let x_513 : vec4<f32> = x_486.x_MainLightWorldToLight[2i];
    let x_515 : vec3<f32> = vs_TEXCOORD1;
    let x_518 : vec4<f32> = u_xlat5;
    let x_520 : vec2<f32> = ((vec2<f32>(x_513.x, x_513.y) * vec2<f32>(x_515.z, x_515.z)) + vec2<f32>(x_518.x, x_518.y));
    let x_521 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
    let x_523 : vec4<f32> = u_xlat5;
    let x_527 : vec4<f32> = x_486.x_MainLightWorldToLight[3i];
    let x_529 : vec2<f32> = (vec2<f32>(x_523.x, x_523.y) + vec2<f32>(x_527.x, x_527.y));
    let x_530 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
    let x_532 : vec4<f32> = u_xlat5;
    let x_536 : vec2<f32> = ((vec2<f32>(x_532.x, x_532.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_537 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
    let x_544 : vec4<f32> = u_xlat5;
    let x_547 : f32 = x_43.x_GlobalMipBias.x;
    let x_548 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_544.x, x_544.y), x_547);
    u_xlat5 = x_548;
    let x_553 : f32 = x_486.x_MainLightCookieTextureFormat;
    let x_555 : f32 = x_486.x_MainLightCookieTextureFormat;
    let x_557 : f32 = x_486.x_MainLightCookieTextureFormat;
    let x_559 : f32 = x_486.x_MainLightCookieTextureFormat;
    let x_560 : vec4<f32> = vec4<f32>(x_553, x_555, x_557, x_559);
    let x_568 : vec4<bool> = (vec4<f32>(x_560.x, x_560.y, x_560.z, x_560.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_568.x, x_568.y);
    let x_571 : bool = u_xlatb6.y;
    if (x_571) {
      let x_576 : f32 = u_xlat5.w;
      x_572 = x_576;
    } else {
      let x_579 : f32 = u_xlat5.x;
      x_572 = x_579;
    }
    let x_580 : f32 = x_572;
    u_xlat39 = x_580;
    let x_582 : bool = u_xlatb6.x;
    if (x_582) {
      let x_586 : vec4<f32> = u_xlat5;
      x_583 = vec3<f32>(x_586.x, x_586.y, x_586.z);
    } else {
      let x_589 : f32 = u_xlat39;
      x_583 = vec3<f32>(x_589, x_589, x_589);
    }
    let x_591 : vec3<f32> = x_583;
    let x_592 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_598 : vec4<f32> = u_xlat5;
  let x_601 : vec4<f32> = x_43.x_MainLightColor;
  let x_603 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) * vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat1;
  let x_608 : vec4<f32> = u_xlat5;
  let x_610 : vec3<f32> = (vec3<f32>(x_606.x, x_606.x, x_606.x) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : f32 = u_xlat36;
  let x_615 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_613, x_613, x_613) * x_615);
  let x_617 : f32 = u_xlat38;
  let x_619 : f32 = x_236.unity_LightData.z;
  u_xlat36 = (x_617 * x_619);
  let x_621 : f32 = u_xlat36;
  let x_623 : vec4<f32> = u_xlat5;
  let x_625 : vec3<f32> = (vec3<f32>(x_621, x_621, x_621) * vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec3<f32> = u_xlat2;
  let x_630 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat36 = dot(x_628, vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : f32 = u_xlat36;
  u_xlat36 = clamp(x_633, 0.0f, 1.0f);
  let x_636 : f32 = u_xlat36;
  let x_638 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_636, x_636, x_636) * vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_642 : f32 = x_56.x_SpecColor.w;
  u_xlat36 = ((x_642 * 10.0f) + 1.0f);
  let x_646 : f32 = u_xlat36;
  u_xlat36 = exp2(x_646);
  let x_649 : vec3<f32> = u_xlat3;
  let x_650 : vec3<f32> = u_xlat12;
  let x_654 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat7 = ((x_649 * vec3<f32>(x_650.x, x_650.x, x_650.x)) + vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec3<f32> = u_xlat7;
  let x_658 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_657, x_658);
  let x_660 : f32 = u_xlat38;
  u_xlat38 = max(x_660, 1.17549435e-37f);
  let x_662 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_662);
  let x_664 : f32 = u_xlat38;
  let x_666 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_664, x_664, x_664) * x_666);
  let x_668 : vec3<f32> = u_xlat2;
  let x_669 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_668, x_669);
  let x_671 : f32 = u_xlat38;
  u_xlat38 = clamp(x_671, 0.0f, 1.0f);
  let x_673 : f32 = u_xlat38;
  u_xlat38 = log2(x_673);
  let x_675 : f32 = u_xlat36;
  let x_676 : f32 = u_xlat38;
  u_xlat38 = (x_675 * x_676);
  let x_678 : f32 = u_xlat38;
  u_xlat38 = exp2(x_678);
  let x_680 : f32 = u_xlat38;
  let x_683 : vec4<f32> = x_56.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_680, x_680, x_680) * vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat5;
  let x_688 : vec3<f32> = u_xlat7;
  let x_689 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) * x_688);
  let x_690 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec3<f32> = u_xlat6;
  let x_693 : vec4<f32> = u_xlat1;
  let x_696 : vec4<f32> = u_xlat5;
  let x_698 : vec3<f32> = ((x_692 * vec3<f32>(x_693.y, x_693.z, x_693.w)) + vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_703 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_705 : f32 = x_236.unity_LightData.y;
  u_xlat38 = min(x_703, x_705);
  let x_709 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_709));
  let x_713 : f32 = x_486.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_715 : f32 = x_486.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_717 : f32 = x_486.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_719 : f32 = x_486.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_720 : vec4<f32> = vec4<f32>(x_713, x_715, x_717, x_719);
  let x_726 : vec4<bool> = (vec4<f32>(x_720.x, x_720.y, x_720.z, x_720.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_726.x, x_726.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_737 : u32 = u_xlatu_loop_1;
    let x_738 : u32 = u_xlatu38;
    if ((x_737 < x_738)) {
    } else {
      break;
    }
    let x_741 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_741 >> 2u);
    let x_745 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_745 & 3u));
    let x_748 : u32 = u_xlatu40;
    let x_751 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_748)];
    let x_761 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_766 : vec4<u32> = indexable[x_761];
    u_xlat40 = dot(x_751, bitcast<vec4<f32>>(x_766));
    let x_769 : f32 = u_xlat40;
    u_xlatu40 = bitcast<u32>(i32(x_769));
    let x_773 : vec3<f32> = vs_TEXCOORD1;
    let x_785 : u32 = u_xlatu40;
    let x_788 : vec4<f32> = x_784.x_AdditionalLightsPosition[bitcast<i32>(x_785)];
    let x_791 : u32 = u_xlatu40;
    let x_794 : vec4<f32> = x_784.x_AdditionalLightsPosition[bitcast<i32>(x_791)];
    u_xlat8 = ((-(x_773) * vec3<f32>(x_788.w, x_788.w, x_788.w)) + vec3<f32>(x_794.x, x_794.y, x_794.z));
    let x_798 : vec3<f32> = u_xlat8;
    let x_799 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_798, x_799);
    let x_801 : f32 = u_xlat41;
    u_xlat41 = max(x_801, 6.10351562e-05f);
    let x_806 : f32 = u_xlat41;
    u_xlat30.x = inverseSqrt(x_806);
    let x_809 : vec2<f32> = u_xlat30;
    let x_811 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_809.x, x_809.x, x_809.x) * x_811);
    let x_813 : f32 = u_xlat41;
    u_xlat30.x = (1.0f / x_813);
    let x_816 : f32 = u_xlat41;
    let x_817 : u32 = u_xlatu40;
    let x_820 : f32 = x_784.x_AdditionalLightsAttenuation[bitcast<i32>(x_817)].x;
    u_xlat41 = (x_816 * x_820);
    let x_822 : f32 = u_xlat41;
    let x_824 : f32 = u_xlat41;
    u_xlat41 = ((-(x_822) * x_824) + 1.0f);
    let x_827 : f32 = u_xlat41;
    u_xlat41 = max(x_827, 0.0f);
    let x_829 : f32 = u_xlat41;
    let x_830 : f32 = u_xlat41;
    u_xlat41 = (x_829 * x_830);
    let x_832 : f32 = u_xlat41;
    let x_834 : f32 = u_xlat30.x;
    u_xlat41 = (x_832 * x_834);
    let x_836 : u32 = u_xlatu40;
    let x_839 : vec4<f32> = x_784.x_AdditionalLightsSpotDir[bitcast<i32>(x_836)];
    let x_841 : vec3<f32> = u_xlat8;
    u_xlat30.x = dot(vec3<f32>(x_839.x, x_839.y, x_839.z), x_841);
    let x_845 : f32 = u_xlat30.x;
    let x_846 : u32 = u_xlatu40;
    let x_849 : f32 = x_784.x_AdditionalLightsAttenuation[bitcast<i32>(x_846)].z;
    let x_851 : u32 = u_xlatu40;
    let x_854 : f32 = x_784.x_AdditionalLightsAttenuation[bitcast<i32>(x_851)].w;
    u_xlat30.x = ((x_845 * x_849) + x_854);
    let x_858 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_858, 0.0f, 1.0f);
    let x_862 : f32 = u_xlat30.x;
    let x_864 : f32 = u_xlat30.x;
    u_xlat30.x = (x_862 * x_864);
    let x_867 : f32 = u_xlat41;
    let x_869 : f32 = u_xlat30.x;
    u_xlat41 = (x_867 * x_869);
    let x_872 : u32 = u_xlatu40;
    u_xlatu30 = (x_872 >> 5u);
    let x_875 : u32 = u_xlatu40;
    u_xlati42 = (1i << bitcast<u32>((bitcast<i32>(x_875) & 31i)));
    let x_881 : i32 = u_xlati42;
    let x_883 : u32 = u_xlatu30;
    let x_886 : f32 = x_486.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_883)].el;
    u_xlati30 = bitcast<i32>((bitcast<u32>(x_881) & bitcast<u32>(x_886)));
    let x_890 : i32 = u_xlati30;
    if ((x_890 != 0i)) {
      let x_900 : u32 = u_xlatu40;
      let x_903 : f32 = x_899.x_AdditionalLightsLightTypes[bitcast<i32>(x_900)].el;
      u_xlati30 = i32(x_903);
      let x_905 : i32 = u_xlati30;
      u_xlati42 = select(1i, 0i, (x_905 != 0i));
      let x_909 : u32 = u_xlatu40;
      u_xlati43 = (bitcast<i32>(x_909) << bitcast<u32>(2i));
      let x_912 : i32 = u_xlati42;
      if ((x_912 != 0i)) {
        let x_917 : vec3<f32> = vs_TEXCOORD1;
        let x_919 : i32 = u_xlati43;
        let x_922 : i32 = u_xlati43;
        let x_926 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[((x_919 + 1i) / 4i)][((x_922 + 1i) % 4i)];
        let x_928 : vec3<f32> = (vec3<f32>(x_917.y, x_917.y, x_917.y) * vec3<f32>(x_926.x, x_926.y, x_926.w));
        let x_929 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
        let x_931 : i32 = u_xlati43;
        let x_933 : i32 = u_xlati43;
        let x_936 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[(x_931 / 4i)][(x_933 % 4i)];
        let x_938 : vec3<f32> = vs_TEXCOORD1;
        let x_941 : vec4<f32> = u_xlat9;
        let x_943 : vec3<f32> = ((vec3<f32>(x_936.x, x_936.y, x_936.w) * vec3<f32>(x_938.x, x_938.x, x_938.x)) + vec3<f32>(x_941.x, x_941.y, x_941.z));
        let x_944 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
        let x_946 : i32 = u_xlati43;
        let x_949 : i32 = u_xlati43;
        let x_953 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[((x_946 + 2i) / 4i)][((x_949 + 2i) % 4i)];
        let x_955 : vec3<f32> = vs_TEXCOORD1;
        let x_958 : vec4<f32> = u_xlat9;
        let x_960 : vec3<f32> = ((vec3<f32>(x_953.x, x_953.y, x_953.w) * vec3<f32>(x_955.z, x_955.z, x_955.z)) + vec3<f32>(x_958.x, x_958.y, x_958.z));
        let x_961 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
        let x_963 : vec4<f32> = u_xlat9;
        let x_965 : i32 = u_xlati43;
        let x_968 : i32 = u_xlati43;
        let x_972 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[((x_965 + 3i) / 4i)][((x_968 + 3i) % 4i)];
        let x_974 : vec3<f32> = (vec3<f32>(x_963.x, x_963.y, x_963.z) + vec3<f32>(x_972.x, x_972.y, x_972.w));
        let x_975 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
        let x_977 : vec4<f32> = u_xlat9;
        let x_979 : vec4<f32> = u_xlat9;
        let x_981 : vec2<f32> = (vec2<f32>(x_977.x, x_977.y) / vec2<f32>(x_979.z, x_979.z));
        let x_982 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
        let x_984 : vec4<f32> = u_xlat9;
        let x_987 : vec2<f32> = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_988 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
        let x_990 : vec4<f32> = u_xlat9;
        let x_994 : vec2<f32> = clamp(vec2<f32>(x_990.x, x_990.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_995 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : u32 = u_xlatu40;
        let x_1000 : vec4<f32> = x_899.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_997)];
        let x_1002 : vec4<f32> = u_xlat9;
        let x_1005 : u32 = u_xlatu40;
        let x_1008 : vec4<f32> = x_899.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1005)];
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1002.x, x_1002.y)) + vec2<f32>(x_1008.z, x_1008.w));
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1010.y, x_1011.z, x_1011.w);
      } else {
        let x_1015 : i32 = u_xlati30;
        u_xlatb30 = (x_1015 == 1i);
        let x_1017 : bool = u_xlatb30;
        u_xlati30 = select(0i, 1i, x_1017);
        let x_1019 : i32 = u_xlati30;
        if ((x_1019 != 0i)) {
          let x_1023 : vec3<f32> = vs_TEXCOORD1;
          let x_1025 : i32 = u_xlati43;
          let x_1028 : i32 = u_xlati43;
          let x_1032 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[((x_1025 + 1i) / 4i)][((x_1028 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1023.y, x_1023.y) * vec2<f32>(x_1032.x, x_1032.y));
          let x_1035 : i32 = u_xlati43;
          let x_1037 : i32 = u_xlati43;
          let x_1040 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[(x_1035 / 4i)][(x_1037 % 4i)];
          let x_1042 : vec3<f32> = vs_TEXCOORD1;
          let x_1045 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1040.x, x_1040.y) * vec2<f32>(x_1042.x, x_1042.x)) + x_1045);
          let x_1047 : i32 = u_xlati43;
          let x_1050 : i32 = u_xlati43;
          let x_1054 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[((x_1047 + 2i) / 4i)][((x_1050 + 2i) % 4i)];
          let x_1056 : vec3<f32> = vs_TEXCOORD1;
          let x_1059 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(x_1056.z, x_1056.z)) + x_1059);
          let x_1061 : vec2<f32> = u_xlat30;
          let x_1062 : i32 = u_xlati43;
          let x_1065 : i32 = u_xlati43;
          let x_1069 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[((x_1062 + 3i) / 4i)][((x_1065 + 3i) % 4i)];
          u_xlat30 = (x_1061 + vec2<f32>(x_1069.x, x_1069.y));
          let x_1072 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1072 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1075 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1075);
          let x_1077 : u32 = u_xlatu40;
          let x_1080 : vec4<f32> = x_899.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1077)];
          let x_1082 : vec2<f32> = u_xlat30;
          let x_1084 : u32 = u_xlatu40;
          let x_1087 : vec4<f32> = x_899.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1084)];
          let x_1089 : vec2<f32> = ((vec2<f32>(x_1080.x, x_1080.y) * x_1082) + vec2<f32>(x_1087.z, x_1087.w));
          let x_1090 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        } else {
          let x_1094 : vec3<f32> = vs_TEXCOORD1;
          let x_1096 : i32 = u_xlati43;
          let x_1099 : i32 = u_xlati43;
          let x_1103 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[((x_1096 + 1i) / 4i)][((x_1099 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1094.y, x_1094.y, x_1094.y, x_1094.y) * x_1103);
          let x_1105 : i32 = u_xlati43;
          let x_1107 : i32 = u_xlati43;
          let x_1110 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[(x_1105 / 4i)][(x_1107 % 4i)];
          let x_1111 : vec3<f32> = vs_TEXCOORD1;
          let x_1114 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1110 * vec4<f32>(x_1111.x, x_1111.x, x_1111.x, x_1111.x)) + x_1114);
          let x_1116 : i32 = u_xlati43;
          let x_1119 : i32 = u_xlati43;
          let x_1123 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[((x_1116 + 2i) / 4i)][((x_1119 + 2i) % 4i)];
          let x_1124 : vec3<f32> = vs_TEXCOORD1;
          let x_1127 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1123 * vec4<f32>(x_1124.z, x_1124.z, x_1124.z, x_1124.z)) + x_1127);
          let x_1129 : vec4<f32> = u_xlat10;
          let x_1130 : i32 = u_xlati43;
          let x_1133 : i32 = u_xlati43;
          let x_1137 : vec4<f32> = x_899.x_AdditionalLightsWorldToLights[((x_1130 + 3i) / 4i)][((x_1133 + 3i) % 4i)];
          u_xlat10 = (x_1129 + x_1137);
          let x_1139 : vec4<f32> = u_xlat10;
          let x_1141 : vec4<f32> = u_xlat10;
          let x_1143 : vec3<f32> = (vec3<f32>(x_1139.x, x_1139.y, x_1139.z) / vec3<f32>(x_1141.w, x_1141.w, x_1141.w));
          let x_1144 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
          let x_1146 : vec4<f32> = u_xlat10;
          let x_1148 : vec4<f32> = u_xlat10;
          u_xlat30.x = dot(vec3<f32>(x_1146.x, x_1146.y, x_1146.z), vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
          let x_1153 : f32 = u_xlat30.x;
          u_xlat30.x = inverseSqrt(x_1153);
          let x_1156 : vec2<f32> = u_xlat30;
          let x_1158 : vec4<f32> = u_xlat10;
          let x_1160 : vec3<f32> = (vec3<f32>(x_1156.x, x_1156.x, x_1156.x) * vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
          let x_1161 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
          let x_1163 : vec4<f32> = u_xlat10;
          u_xlat30.x = dot(abs(vec3<f32>(x_1163.x, x_1163.y, x_1163.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1170 : f32 = u_xlat30.x;
          u_xlat30.x = max(x_1170, 0.000001f);
          let x_1175 : f32 = u_xlat30.x;
          u_xlat30.x = (1.0f / x_1175);
          let x_1179 : vec2<f32> = u_xlat30;
          let x_1181 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1179.x, x_1179.x, x_1179.x) * vec3<f32>(x_1181.z, x_1181.x, x_1181.y));
          let x_1185 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1185);
          let x_1189 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1189, 0.0f, 1.0f);
          let x_1193 : vec3<f32> = u_xlat11;
          let x_1196 : vec4<bool> = (vec4<f32>(x_1193.y, x_1193.z, x_1193.y, x_1193.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1196.x, x_1196.y);
          let x_1200 : bool = u_xlatb33.x;
          if (x_1200) {
            let x_1205 : f32 = u_xlat11.x;
            x_1201 = x_1205;
          } else {
            let x_1208 : f32 = u_xlat11.x;
            x_1201 = -(x_1208);
          }
          let x_1210 : f32 = x_1201;
          u_xlat33.x = x_1210;
          let x_1213 : bool = u_xlatb33.y;
          if (x_1213) {
            let x_1218 : f32 = u_xlat11.x;
            x_1214 = x_1218;
          } else {
            let x_1221 : f32 = u_xlat11.x;
            x_1214 = -(x_1221);
          }
          let x_1223 : f32 = x_1214;
          u_xlat33.y = x_1223;
          let x_1225 : vec4<f32> = u_xlat10;
          let x_1227 : vec2<f32> = u_xlat30;
          let x_1230 : vec2<f32> = u_xlat33;
          u_xlat30 = ((vec2<f32>(x_1225.x, x_1225.y) * vec2<f32>(x_1227.x, x_1227.x)) + x_1230);
          let x_1232 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1232 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1235 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1235, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1239 : u32 = u_xlatu40;
          let x_1242 : vec4<f32> = x_899.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1239)];
          let x_1244 : vec2<f32> = u_xlat30;
          let x_1246 : u32 = u_xlatu40;
          let x_1249 : vec4<f32> = x_899.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1246)];
          let x_1251 : vec2<f32> = ((vec2<f32>(x_1242.x, x_1242.y) * x_1244) + vec2<f32>(x_1249.z, x_1249.w));
          let x_1252 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1251.x, x_1251.y, x_1252.z, x_1252.w);
        }
      }
      let x_1259 : vec4<f32> = u_xlat9;
      let x_1262 : f32 = x_43.x_GlobalMipBias.x;
      let x_1263 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1259.x, x_1259.y), x_1262);
      u_xlat9 = x_1263;
      let x_1265 : bool = u_xlatb6.y;
      if (x_1265) {
        let x_1270 : f32 = u_xlat9.w;
        x_1266 = x_1270;
      } else {
        let x_1273 : f32 = u_xlat9.x;
        x_1266 = x_1273;
      }
      let x_1274 : f32 = x_1266;
      u_xlat30.x = x_1274;
      let x_1277 : bool = u_xlatb6.x;
      if (x_1277) {
        let x_1281 : vec4<f32> = u_xlat9;
        x_1278 = vec3<f32>(x_1281.x, x_1281.y, x_1281.z);
      } else {
        let x_1284 : vec2<f32> = u_xlat30;
        x_1278 = vec3<f32>(x_1284.x, x_1284.x, x_1284.x);
      }
      let x_1286 : vec3<f32> = x_1278;
      let x_1287 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1293 : vec4<f32> = u_xlat9;
    let x_1295 : u32 = u_xlatu40;
    let x_1298 : vec4<f32> = x_784.x_AdditionalLightsColor[bitcast<i32>(x_1295)];
    let x_1300 : vec3<f32> = (vec3<f32>(x_1293.x, x_1293.y, x_1293.z) * vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
    let x_1301 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
    let x_1303 : vec4<f32> = u_xlat1;
    let x_1305 : vec4<f32> = u_xlat9;
    let x_1307 : vec3<f32> = (vec3<f32>(x_1303.x, x_1303.x, x_1303.x) * vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
    let x_1308 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
    let x_1310 : f32 = u_xlat41;
    let x_1312 : vec4<f32> = u_xlat9;
    let x_1314 : vec3<f32> = (vec3<f32>(x_1310, x_1310, x_1310) * vec3<f32>(x_1312.x, x_1312.y, x_1312.z));
    let x_1315 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
    let x_1317 : vec3<f32> = u_xlat2;
    let x_1318 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1317, x_1318);
    let x_1320 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1320, 0.0f, 1.0f);
    let x_1322 : f32 = u_xlat40;
    let x_1324 : vec4<f32> = u_xlat9;
    let x_1326 : vec3<f32> = (vec3<f32>(x_1322, x_1322, x_1322) * vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
    let x_1327 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
    let x_1329 : vec3<f32> = u_xlat3;
    let x_1330 : vec3<f32> = u_xlat12;
    let x_1333 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1329 * vec3<f32>(x_1330.x, x_1330.x, x_1330.x)) + x_1333);
    let x_1335 : vec3<f32> = u_xlat8;
    let x_1336 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1335, x_1336);
    let x_1338 : f32 = u_xlat40;
    u_xlat40 = max(x_1338, 1.17549435e-37f);
    let x_1340 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1340);
    let x_1342 : f32 = u_xlat40;
    let x_1344 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1342, x_1342, x_1342) * x_1344);
    let x_1346 : vec3<f32> = u_xlat2;
    let x_1347 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1346, x_1347);
    let x_1349 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1349, 0.0f, 1.0f);
    let x_1351 : f32 = u_xlat40;
    u_xlat40 = log2(x_1351);
    let x_1353 : f32 = u_xlat36;
    let x_1354 : f32 = u_xlat40;
    u_xlat40 = (x_1353 * x_1354);
    let x_1356 : f32 = u_xlat40;
    u_xlat40 = exp2(x_1356);
    let x_1358 : f32 = u_xlat40;
    let x_1361 : vec4<f32> = x_56.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1358, x_1358, x_1358) * vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
    let x_1364 : vec3<f32> = u_xlat8;
    let x_1365 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1364 * vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
    let x_1368 : vec4<f32> = u_xlat10;
    let x_1370 : vec4<f32> = u_xlat1;
    let x_1373 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1368.x, x_1368.y, x_1368.z) * vec3<f32>(x_1370.y, x_1370.z, x_1370.w)) + x_1373);
    let x_1375 : vec3<f32> = u_xlat7;
    let x_1376 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1375 + x_1376);

    continuing {
      let x_1378 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1378 + bitcast<u32>(1i));
    }
  }
  let x_1380 : vec3<f32> = u_xlat4;
  let x_1381 : vec4<f32> = u_xlat1;
  let x_1384 : vec4<f32> = u_xlat5;
  let x_1386 : vec3<f32> = ((x_1380 * vec3<f32>(x_1381.y, x_1381.z, x_1381.w)) + vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
  let x_1391 : vec3<f32> = u_xlat7;
  let x_1392 : vec4<f32> = u_xlat1;
  let x_1394 : vec3<f32> = (x_1391 + vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
  let x_1395 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
  let x_1398 : f32 = x_56.x_Surface;
  u_xlatb12 = (x_1398 == 1.0f);
  let x_1400 : bool = u_xlatb12;
  let x_1401 : bool = u_xlatb24;
  u_xlatb12 = (x_1400 | x_1401);
  let x_1403 : bool = u_xlatb12;
  if (x_1403) {
    let x_1408 : f32 = u_xlat0.x;
    x_1404 = x_1408;
  } else {
    x_1404 = 1.0f;
  }
  let x_1410 : f32 = x_1404;
  SV_Target0.w = x_1410;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

