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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_463 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_526 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_827 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_942 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlatb39 : bool;
  var u_xlatb40 : bool;
  var u_xlat40 : f32;
  var u_xlatb6 : vec2<bool>;
  var x_612 : f32;
  var x_623 : vec3<f32>;
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
  var x_1244 : f32;
  var x_1257 : f32;
  var x_1309 : f32;
  var x_1321 : vec3<f32>;
  var x_1448 : f32;
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
  let x_340 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_337, x_339);
  u_xlat4 = x_340;
  let x_346 : vec2<f32> = vs_TEXCOORD7;
  let x_348 : f32 = x_43.x_GlobalMipBias.x;
  let x_349 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_346, x_348);
  let x_350 : vec3<f32> = vec3<f32>(x_349.x, x_349.y, x_349.z);
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat4;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec3<f32> = u_xlat2;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(x_360, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat36;
  u_xlat36 = (x_364 + 0.5f);
  let x_366 : f32 = u_xlat36;
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = (vec3<f32>(x_366, x_366, x_366) * vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : f32 = u_xlat4.w;
  u_xlat36 = max(x_374, 0.0001f);
  let x_376 : vec4<f32> = u_xlat4;
  let x_378 : f32 = u_xlat36;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) / vec3<f32>(x_378, x_378, x_378));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_385 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_386 : vec2<f32> = vec2<f32>(x_385.x, x_385.y);
  let x_390 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_386.x, x_386.y));
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat5;
  let x_395 : vec4<f32> = hlslcc_FragCoord;
  let x_397 : vec2<f32> = (vec2<f32>(x_393.x, x_393.y) * vec2<f32>(x_395.x, x_395.y));
  let x_398 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
  let x_401 : f32 = u_xlat5.y;
  let x_404 : f32 = x_43.x_ScaleBiasRt.x;
  let x_407 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat36 = ((x_401 * x_404) + x_407);
  let x_409 : f32 = u_xlat36;
  u_xlat5.z = (-(x_409) + 1.0f);
  let x_418 : vec4<f32> = u_xlat5;
  let x_421 : f32 = x_43.x_GlobalMipBias.x;
  let x_422 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_418.x, x_418.z), x_421);
  u_xlat36 = x_422.x;
  let x_424 : f32 = u_xlat36;
  u_xlat1.x = (x_424 + -1.0f);
  let x_429 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_431 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_429 * x_431) + 1.0f);
  let x_435 : f32 = u_xlat36;
  u_xlat36 = min(x_435, 1.0f);
  let x_439 : vec4<f32> = vs_TEXCOORD6;
  let x_440 : vec2<f32> = vec2<f32>(x_439.x, x_439.y);
  let x_442 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_440.x, x_440.y, x_442);
  let x_455 : vec3<f32> = txVec0;
  let x_457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_455.xy, x_455.z);
  u_xlat38 = x_457;
  let x_465 : f32 = x_463.x_MainLightShadowParams.x;
  u_xlat39 = (-(x_465) + 1.0f);
  let x_468 : f32 = u_xlat38;
  let x_470 : f32 = x_463.x_MainLightShadowParams.x;
  let x_472 : f32 = u_xlat39;
  u_xlat38 = ((x_468 * x_470) + x_472);
  let x_476 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (0.0f >= x_476);
  let x_480 : f32 = vs_TEXCOORD6.z;
  u_xlatb40 = (x_480 >= 1.0f);
  let x_482 : bool = u_xlatb39;
  let x_483 : bool = u_xlatb40;
  u_xlatb39 = (x_482 | x_483);
  let x_485 : bool = u_xlatb39;
  let x_486 : f32 = u_xlat38;
  u_xlat38 = select(x_486, 1.0f, x_485);
  let x_490 : vec3<f32> = vs_TEXCOORD1;
  let x_494 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_496 : vec3<f32> = (x_490 + -(x_494));
  let x_497 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat5;
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat39 = dot(vec3<f32>(x_499.x, x_499.y, x_499.z), vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : f32 = u_xlat39;
  let x_506 : f32 = x_463.x_MainLightShadowParams.z;
  let x_509 : f32 = x_463.x_MainLightShadowParams.w;
  u_xlat39 = ((x_504 * x_506) + x_509);
  let x_511 : f32 = u_xlat39;
  u_xlat39 = clamp(x_511, 0.0f, 1.0f);
  let x_514 : f32 = u_xlat38;
  u_xlat40 = (-(x_514) + 1.0f);
  let x_517 : f32 = u_xlat39;
  let x_518 : f32 = u_xlat40;
  let x_520 : f32 = u_xlat38;
  u_xlat38 = ((x_517 * x_518) + x_520);
  let x_528 : f32 = x_526.x_MainLightCookieTextureFormat;
  u_xlatb39 = !((x_528 == -1.0f));
  let x_530 : bool = u_xlatb39;
  if (x_530) {
    let x_533 : vec3<f32> = vs_TEXCOORD1;
    let x_536 : vec4<f32> = x_526.x_MainLightWorldToLight[1i];
    let x_538 : vec2<f32> = (vec2<f32>(x_533.y, x_533.y) * vec2<f32>(x_536.x, x_536.y));
    let x_539 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
    let x_542 : vec4<f32> = x_526.x_MainLightWorldToLight[0i];
    let x_544 : vec3<f32> = vs_TEXCOORD1;
    let x_547 : vec4<f32> = u_xlat5;
    let x_549 : vec2<f32> = ((vec2<f32>(x_542.x, x_542.y) * vec2<f32>(x_544.x, x_544.x)) + vec2<f32>(x_547.x, x_547.y));
    let x_550 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
    let x_553 : vec4<f32> = x_526.x_MainLightWorldToLight[2i];
    let x_555 : vec3<f32> = vs_TEXCOORD1;
    let x_558 : vec4<f32> = u_xlat5;
    let x_560 : vec2<f32> = ((vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_555.z, x_555.z)) + vec2<f32>(x_558.x, x_558.y));
    let x_561 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
    let x_563 : vec4<f32> = u_xlat5;
    let x_567 : vec4<f32> = x_526.x_MainLightWorldToLight[3i];
    let x_569 : vec2<f32> = (vec2<f32>(x_563.x, x_563.y) + vec2<f32>(x_567.x, x_567.y));
    let x_570 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
    let x_572 : vec4<f32> = u_xlat5;
    let x_576 : vec2<f32> = ((vec2<f32>(x_572.x, x_572.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_577 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
    let x_584 : vec4<f32> = u_xlat5;
    let x_587 : f32 = x_43.x_GlobalMipBias.x;
    let x_588 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_584.x, x_584.y), x_587);
    u_xlat5 = x_588;
    let x_593 : f32 = x_526.x_MainLightCookieTextureFormat;
    let x_595 : f32 = x_526.x_MainLightCookieTextureFormat;
    let x_597 : f32 = x_526.x_MainLightCookieTextureFormat;
    let x_599 : f32 = x_526.x_MainLightCookieTextureFormat;
    let x_600 : vec4<f32> = vec4<f32>(x_593, x_595, x_597, x_599);
    let x_608 : vec4<bool> = (vec4<f32>(x_600.x, x_600.y, x_600.z, x_600.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_608.x, x_608.y);
    let x_611 : bool = u_xlatb6.y;
    if (x_611) {
      let x_616 : f32 = u_xlat5.w;
      x_612 = x_616;
    } else {
      let x_619 : f32 = u_xlat5.x;
      x_612 = x_619;
    }
    let x_620 : f32 = x_612;
    u_xlat39 = x_620;
    let x_622 : bool = u_xlatb6.x;
    if (x_622) {
      let x_626 : vec4<f32> = u_xlat5;
      x_623 = vec3<f32>(x_626.x, x_626.y, x_626.z);
    } else {
      let x_629 : f32 = u_xlat39;
      x_623 = vec3<f32>(x_629, x_629, x_629);
    }
    let x_631 : vec3<f32> = x_623;
    let x_632 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_638 : vec4<f32> = u_xlat5;
  let x_641 : vec4<f32> = x_43.x_MainLightColor;
  let x_643 : vec3<f32> = (vec3<f32>(x_638.x, x_638.y, x_638.z) * vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat1;
  let x_648 : vec4<f32> = u_xlat5;
  let x_650 : vec3<f32> = (vec3<f32>(x_646.x, x_646.x, x_646.x) * vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : f32 = u_xlat36;
  let x_655 : vec4<f32> = u_xlat4;
  let x_657 : vec3<f32> = (vec3<f32>(x_653, x_653, x_653) * vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : f32 = u_xlat38;
  let x_662 : f32 = x_236.unity_LightData.z;
  u_xlat36 = (x_660 * x_662);
  let x_664 : f32 = u_xlat36;
  let x_666 : vec4<f32> = u_xlat5;
  let x_668 : vec3<f32> = (vec3<f32>(x_664, x_664, x_664) * vec3<f32>(x_666.x, x_666.y, x_666.z));
  let x_669 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec3<f32> = u_xlat2;
  let x_673 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat36 = dot(x_671, vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : f32 = u_xlat36;
  u_xlat36 = clamp(x_676, 0.0f, 1.0f);
  let x_679 : f32 = u_xlat36;
  let x_681 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_679, x_679, x_679) * vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_685 : f32 = x_56.x_SpecColor.w;
  u_xlat36 = ((x_685 * 10.0f) + 1.0f);
  let x_689 : f32 = u_xlat36;
  u_xlat36 = exp2(x_689);
  let x_692 : vec3<f32> = u_xlat3;
  let x_693 : vec3<f32> = u_xlat12;
  let x_697 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat7 = ((x_692 * vec3<f32>(x_693.x, x_693.x, x_693.x)) + vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec3<f32> = u_xlat7;
  let x_701 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_700, x_701);
  let x_703 : f32 = u_xlat38;
  u_xlat38 = max(x_703, 1.17549435e-37f);
  let x_705 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_705);
  let x_707 : f32 = u_xlat38;
  let x_709 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_707, x_707, x_707) * x_709);
  let x_711 : vec3<f32> = u_xlat2;
  let x_712 : vec3<f32> = u_xlat7;
  u_xlat38 = dot(x_711, x_712);
  let x_714 : f32 = u_xlat38;
  u_xlat38 = clamp(x_714, 0.0f, 1.0f);
  let x_716 : f32 = u_xlat38;
  u_xlat38 = log2(x_716);
  let x_718 : f32 = u_xlat36;
  let x_719 : f32 = u_xlat38;
  u_xlat38 = (x_718 * x_719);
  let x_721 : f32 = u_xlat38;
  u_xlat38 = exp2(x_721);
  let x_723 : f32 = u_xlat38;
  let x_726 : vec4<f32> = x_56.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_723, x_723, x_723) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat5;
  let x_731 : vec3<f32> = u_xlat7;
  let x_732 : vec3<f32> = (vec3<f32>(x_729.x, x_729.y, x_729.z) * x_731);
  let x_733 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec3<f32> = u_xlat6;
  let x_736 : vec4<f32> = u_xlat1;
  let x_739 : vec4<f32> = u_xlat5;
  let x_741 : vec3<f32> = ((x_735 * vec3<f32>(x_736.y, x_736.z, x_736.w)) + vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_746 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_748 : f32 = x_236.unity_LightData.y;
  u_xlat38 = min(x_746, x_748);
  let x_752 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_752));
  let x_756 : f32 = x_526.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_758 : f32 = x_526.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_760 : f32 = x_526.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_762 : f32 = x_526.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_763 : vec4<f32> = vec4<f32>(x_756, x_758, x_760, x_762);
  let x_769 : vec4<bool> = (vec4<f32>(x_763.x, x_763.y, x_763.z, x_763.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_769.x, x_769.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_780 : u32 = u_xlatu_loop_1;
    let x_781 : u32 = u_xlatu38;
    if ((x_780 < x_781)) {
    } else {
      break;
    }
    let x_784 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_784 >> 2u);
    let x_788 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_788 & 3u));
    let x_791 : u32 = u_xlatu40;
    let x_794 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_791)];
    let x_804 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_809 : vec4<u32> = indexable[x_804];
    u_xlat40 = dot(x_794, bitcast<vec4<f32>>(x_809));
    let x_812 : f32 = u_xlat40;
    u_xlatu40 = bitcast<u32>(i32(x_812));
    let x_816 : vec3<f32> = vs_TEXCOORD1;
    let x_828 : u32 = u_xlatu40;
    let x_831 : vec4<f32> = x_827.x_AdditionalLightsPosition[bitcast<i32>(x_828)];
    let x_834 : u32 = u_xlatu40;
    let x_837 : vec4<f32> = x_827.x_AdditionalLightsPosition[bitcast<i32>(x_834)];
    u_xlat8 = ((-(x_816) * vec3<f32>(x_831.w, x_831.w, x_831.w)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
    let x_841 : vec3<f32> = u_xlat8;
    let x_842 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_841, x_842);
    let x_844 : f32 = u_xlat41;
    u_xlat41 = max(x_844, 6.10351562e-05f);
    let x_849 : f32 = u_xlat41;
    u_xlat30.x = inverseSqrt(x_849);
    let x_852 : vec2<f32> = u_xlat30;
    let x_854 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_852.x, x_852.x, x_852.x) * x_854);
    let x_856 : f32 = u_xlat41;
    u_xlat30.x = (1.0f / x_856);
    let x_859 : f32 = u_xlat41;
    let x_860 : u32 = u_xlatu40;
    let x_863 : f32 = x_827.x_AdditionalLightsAttenuation[bitcast<i32>(x_860)].x;
    u_xlat41 = (x_859 * x_863);
    let x_865 : f32 = u_xlat41;
    let x_867 : f32 = u_xlat41;
    u_xlat41 = ((-(x_865) * x_867) + 1.0f);
    let x_870 : f32 = u_xlat41;
    u_xlat41 = max(x_870, 0.0f);
    let x_872 : f32 = u_xlat41;
    let x_873 : f32 = u_xlat41;
    u_xlat41 = (x_872 * x_873);
    let x_875 : f32 = u_xlat41;
    let x_877 : f32 = u_xlat30.x;
    u_xlat41 = (x_875 * x_877);
    let x_879 : u32 = u_xlatu40;
    let x_882 : vec4<f32> = x_827.x_AdditionalLightsSpotDir[bitcast<i32>(x_879)];
    let x_884 : vec3<f32> = u_xlat8;
    u_xlat30.x = dot(vec3<f32>(x_882.x, x_882.y, x_882.z), x_884);
    let x_888 : f32 = u_xlat30.x;
    let x_889 : u32 = u_xlatu40;
    let x_892 : f32 = x_827.x_AdditionalLightsAttenuation[bitcast<i32>(x_889)].z;
    let x_894 : u32 = u_xlatu40;
    let x_897 : f32 = x_827.x_AdditionalLightsAttenuation[bitcast<i32>(x_894)].w;
    u_xlat30.x = ((x_888 * x_892) + x_897);
    let x_901 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_901, 0.0f, 1.0f);
    let x_905 : f32 = u_xlat30.x;
    let x_907 : f32 = u_xlat30.x;
    u_xlat30.x = (x_905 * x_907);
    let x_910 : f32 = u_xlat41;
    let x_912 : f32 = u_xlat30.x;
    u_xlat41 = (x_910 * x_912);
    let x_915 : u32 = u_xlatu40;
    u_xlatu30 = (x_915 >> 5u);
    let x_918 : u32 = u_xlatu40;
    u_xlati42 = (1i << bitcast<u32>((bitcast<i32>(x_918) & 31i)));
    let x_924 : i32 = u_xlati42;
    let x_926 : u32 = u_xlatu30;
    let x_929 : f32 = x_526.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_926)].el;
    u_xlati30 = bitcast<i32>((bitcast<u32>(x_924) & bitcast<u32>(x_929)));
    let x_933 : i32 = u_xlati30;
    if ((x_933 != 0i)) {
      let x_943 : u32 = u_xlatu40;
      let x_946 : f32 = x_942.x_AdditionalLightsLightTypes[bitcast<i32>(x_943)].el;
      u_xlati30 = i32(x_946);
      let x_948 : i32 = u_xlati30;
      u_xlati42 = select(1i, 0i, (x_948 != 0i));
      let x_952 : u32 = u_xlatu40;
      u_xlati43 = (bitcast<i32>(x_952) << bitcast<u32>(2i));
      let x_955 : i32 = u_xlati42;
      if ((x_955 != 0i)) {
        let x_960 : vec3<f32> = vs_TEXCOORD1;
        let x_962 : i32 = u_xlati43;
        let x_965 : i32 = u_xlati43;
        let x_969 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[((x_962 + 1i) / 4i)][((x_965 + 1i) % 4i)];
        let x_971 : vec3<f32> = (vec3<f32>(x_960.y, x_960.y, x_960.y) * vec3<f32>(x_969.x, x_969.y, x_969.w));
        let x_972 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
        let x_974 : i32 = u_xlati43;
        let x_976 : i32 = u_xlati43;
        let x_979 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[(x_974 / 4i)][(x_976 % 4i)];
        let x_981 : vec3<f32> = vs_TEXCOORD1;
        let x_984 : vec4<f32> = u_xlat9;
        let x_986 : vec3<f32> = ((vec3<f32>(x_979.x, x_979.y, x_979.w) * vec3<f32>(x_981.x, x_981.x, x_981.x)) + vec3<f32>(x_984.x, x_984.y, x_984.z));
        let x_987 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
        let x_989 : i32 = u_xlati43;
        let x_992 : i32 = u_xlati43;
        let x_996 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[((x_989 + 2i) / 4i)][((x_992 + 2i) % 4i)];
        let x_998 : vec3<f32> = vs_TEXCOORD1;
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1003 : vec3<f32> = ((vec3<f32>(x_996.x, x_996.y, x_996.w) * vec3<f32>(x_998.z, x_998.z, x_998.z)) + vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
        let x_1004 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
        let x_1006 : vec4<f32> = u_xlat9;
        let x_1008 : i32 = u_xlati43;
        let x_1011 : i32 = u_xlati43;
        let x_1015 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[((x_1008 + 3i) / 4i)][((x_1011 + 3i) % 4i)];
        let x_1017 : vec3<f32> = (vec3<f32>(x_1006.x, x_1006.y, x_1006.z) + vec3<f32>(x_1015.x, x_1015.y, x_1015.w));
        let x_1018 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1022 : vec4<f32> = u_xlat9;
        let x_1024 : vec2<f32> = (vec2<f32>(x_1020.x, x_1020.y) / vec2<f32>(x_1022.z, x_1022.z));
        let x_1025 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat9;
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1031 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
        let x_1033 : vec4<f32> = u_xlat9;
        let x_1037 : vec2<f32> = clamp(vec2<f32>(x_1033.x, x_1033.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1038 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1037.x, x_1037.y, x_1038.z, x_1038.w);
        let x_1040 : u32 = u_xlatu40;
        let x_1043 : vec4<f32> = x_942.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1040)];
        let x_1045 : vec4<f32> = u_xlat9;
        let x_1048 : u32 = u_xlatu40;
        let x_1051 : vec4<f32> = x_942.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1048)];
        let x_1053 : vec2<f32> = ((vec2<f32>(x_1043.x, x_1043.y) * vec2<f32>(x_1045.x, x_1045.y)) + vec2<f32>(x_1051.z, x_1051.w));
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1053.x, x_1053.y, x_1054.z, x_1054.w);
      } else {
        let x_1058 : i32 = u_xlati30;
        u_xlatb30 = (x_1058 == 1i);
        let x_1060 : bool = u_xlatb30;
        u_xlati30 = select(0i, 1i, x_1060);
        let x_1062 : i32 = u_xlati30;
        if ((x_1062 != 0i)) {
          let x_1066 : vec3<f32> = vs_TEXCOORD1;
          let x_1068 : i32 = u_xlati43;
          let x_1071 : i32 = u_xlati43;
          let x_1075 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[((x_1068 + 1i) / 4i)][((x_1071 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1066.y, x_1066.y) * vec2<f32>(x_1075.x, x_1075.y));
          let x_1078 : i32 = u_xlati43;
          let x_1080 : i32 = u_xlati43;
          let x_1083 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[(x_1078 / 4i)][(x_1080 % 4i)];
          let x_1085 : vec3<f32> = vs_TEXCOORD1;
          let x_1088 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(x_1085.x, x_1085.x)) + x_1088);
          let x_1090 : i32 = u_xlati43;
          let x_1093 : i32 = u_xlati43;
          let x_1097 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[((x_1090 + 2i) / 4i)][((x_1093 + 2i) % 4i)];
          let x_1099 : vec3<f32> = vs_TEXCOORD1;
          let x_1102 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1099.z, x_1099.z)) + x_1102);
          let x_1104 : vec2<f32> = u_xlat30;
          let x_1105 : i32 = u_xlati43;
          let x_1108 : i32 = u_xlati43;
          let x_1112 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[((x_1105 + 3i) / 4i)][((x_1108 + 3i) % 4i)];
          u_xlat30 = (x_1104 + vec2<f32>(x_1112.x, x_1112.y));
          let x_1115 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1115 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1118 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1118);
          let x_1120 : u32 = u_xlatu40;
          let x_1123 : vec4<f32> = x_942.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1120)];
          let x_1125 : vec2<f32> = u_xlat30;
          let x_1127 : u32 = u_xlatu40;
          let x_1130 : vec4<f32> = x_942.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1127)];
          let x_1132 : vec2<f32> = ((vec2<f32>(x_1123.x, x_1123.y) * x_1125) + vec2<f32>(x_1130.z, x_1130.w));
          let x_1133 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        } else {
          let x_1137 : vec3<f32> = vs_TEXCOORD1;
          let x_1139 : i32 = u_xlati43;
          let x_1142 : i32 = u_xlati43;
          let x_1146 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[((x_1139 + 1i) / 4i)][((x_1142 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1137.y, x_1137.y, x_1137.y, x_1137.y) * x_1146);
          let x_1148 : i32 = u_xlati43;
          let x_1150 : i32 = u_xlati43;
          let x_1153 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[(x_1148 / 4i)][(x_1150 % 4i)];
          let x_1154 : vec3<f32> = vs_TEXCOORD1;
          let x_1157 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1153 * vec4<f32>(x_1154.x, x_1154.x, x_1154.x, x_1154.x)) + x_1157);
          let x_1159 : i32 = u_xlati43;
          let x_1162 : i32 = u_xlati43;
          let x_1166 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[((x_1159 + 2i) / 4i)][((x_1162 + 2i) % 4i)];
          let x_1167 : vec3<f32> = vs_TEXCOORD1;
          let x_1170 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1166 * vec4<f32>(x_1167.z, x_1167.z, x_1167.z, x_1167.z)) + x_1170);
          let x_1172 : vec4<f32> = u_xlat10;
          let x_1173 : i32 = u_xlati43;
          let x_1176 : i32 = u_xlati43;
          let x_1180 : vec4<f32> = x_942.x_AdditionalLightsWorldToLights[((x_1173 + 3i) / 4i)][((x_1176 + 3i) % 4i)];
          u_xlat10 = (x_1172 + x_1180);
          let x_1182 : vec4<f32> = u_xlat10;
          let x_1184 : vec4<f32> = u_xlat10;
          let x_1186 : vec3<f32> = (vec3<f32>(x_1182.x, x_1182.y, x_1182.z) / vec3<f32>(x_1184.w, x_1184.w, x_1184.w));
          let x_1187 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
          let x_1189 : vec4<f32> = u_xlat10;
          let x_1191 : vec4<f32> = u_xlat10;
          u_xlat30.x = dot(vec3<f32>(x_1189.x, x_1189.y, x_1189.z), vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
          let x_1196 : f32 = u_xlat30.x;
          u_xlat30.x = inverseSqrt(x_1196);
          let x_1199 : vec2<f32> = u_xlat30;
          let x_1201 : vec4<f32> = u_xlat10;
          let x_1203 : vec3<f32> = (vec3<f32>(x_1199.x, x_1199.x, x_1199.x) * vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
          let x_1204 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
          let x_1206 : vec4<f32> = u_xlat10;
          u_xlat30.x = dot(abs(vec3<f32>(x_1206.x, x_1206.y, x_1206.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1213 : f32 = u_xlat30.x;
          u_xlat30.x = max(x_1213, 0.000001f);
          let x_1218 : f32 = u_xlat30.x;
          u_xlat30.x = (1.0f / x_1218);
          let x_1222 : vec2<f32> = u_xlat30;
          let x_1224 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1222.x, x_1222.x, x_1222.x) * vec3<f32>(x_1224.z, x_1224.x, x_1224.y));
          let x_1228 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1228);
          let x_1232 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1232, 0.0f, 1.0f);
          let x_1236 : vec3<f32> = u_xlat11;
          let x_1239 : vec4<bool> = (vec4<f32>(x_1236.y, x_1236.z, x_1236.y, x_1236.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1239.x, x_1239.y);
          let x_1243 : bool = u_xlatb33.x;
          if (x_1243) {
            let x_1248 : f32 = u_xlat11.x;
            x_1244 = x_1248;
          } else {
            let x_1251 : f32 = u_xlat11.x;
            x_1244 = -(x_1251);
          }
          let x_1253 : f32 = x_1244;
          u_xlat33.x = x_1253;
          let x_1256 : bool = u_xlatb33.y;
          if (x_1256) {
            let x_1261 : f32 = u_xlat11.x;
            x_1257 = x_1261;
          } else {
            let x_1264 : f32 = u_xlat11.x;
            x_1257 = -(x_1264);
          }
          let x_1266 : f32 = x_1257;
          u_xlat33.y = x_1266;
          let x_1268 : vec4<f32> = u_xlat10;
          let x_1270 : vec2<f32> = u_xlat30;
          let x_1273 : vec2<f32> = u_xlat33;
          u_xlat30 = ((vec2<f32>(x_1268.x, x_1268.y) * vec2<f32>(x_1270.x, x_1270.x)) + x_1273);
          let x_1275 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1275 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1278 : vec2<f32> = u_xlat30;
          u_xlat30 = clamp(x_1278, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1282 : u32 = u_xlatu40;
          let x_1285 : vec4<f32> = x_942.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1282)];
          let x_1287 : vec2<f32> = u_xlat30;
          let x_1289 : u32 = u_xlatu40;
          let x_1292 : vec4<f32> = x_942.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1289)];
          let x_1294 : vec2<f32> = ((vec2<f32>(x_1285.x, x_1285.y) * x_1287) + vec2<f32>(x_1292.z, x_1292.w));
          let x_1295 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        }
      }
      let x_1302 : vec4<f32> = u_xlat9;
      let x_1305 : f32 = x_43.x_GlobalMipBias.x;
      let x_1306 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1302.x, x_1302.y), x_1305);
      u_xlat9 = x_1306;
      let x_1308 : bool = u_xlatb6.y;
      if (x_1308) {
        let x_1313 : f32 = u_xlat9.w;
        x_1309 = x_1313;
      } else {
        let x_1316 : f32 = u_xlat9.x;
        x_1309 = x_1316;
      }
      let x_1317 : f32 = x_1309;
      u_xlat30.x = x_1317;
      let x_1320 : bool = u_xlatb6.x;
      if (x_1320) {
        let x_1324 : vec4<f32> = u_xlat9;
        x_1321 = vec3<f32>(x_1324.x, x_1324.y, x_1324.z);
      } else {
        let x_1327 : vec2<f32> = u_xlat30;
        x_1321 = vec3<f32>(x_1327.x, x_1327.x, x_1327.x);
      }
      let x_1329 : vec3<f32> = x_1321;
      let x_1330 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1336 : vec4<f32> = u_xlat9;
    let x_1338 : u32 = u_xlatu40;
    let x_1341 : vec4<f32> = x_827.x_AdditionalLightsColor[bitcast<i32>(x_1338)];
    let x_1343 : vec3<f32> = (vec3<f32>(x_1336.x, x_1336.y, x_1336.z) * vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
    let x_1344 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
    let x_1346 : vec4<f32> = u_xlat1;
    let x_1348 : vec4<f32> = u_xlat9;
    let x_1350 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.x, x_1346.x) * vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
    let x_1351 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
    let x_1353 : f32 = u_xlat41;
    let x_1355 : vec4<f32> = u_xlat9;
    let x_1357 : vec3<f32> = (vec3<f32>(x_1353, x_1353, x_1353) * vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
    let x_1358 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
    let x_1360 : vec3<f32> = u_xlat2;
    let x_1361 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1360, x_1361);
    let x_1363 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1363, 0.0f, 1.0f);
    let x_1365 : f32 = u_xlat40;
    let x_1367 : vec4<f32> = u_xlat9;
    let x_1369 : vec3<f32> = (vec3<f32>(x_1365, x_1365, x_1365) * vec3<f32>(x_1367.x, x_1367.y, x_1367.z));
    let x_1370 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
    let x_1372 : vec3<f32> = u_xlat3;
    let x_1373 : vec3<f32> = u_xlat12;
    let x_1376 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1372 * vec3<f32>(x_1373.x, x_1373.x, x_1373.x)) + x_1376);
    let x_1378 : vec3<f32> = u_xlat8;
    let x_1379 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1378, x_1379);
    let x_1381 : f32 = u_xlat40;
    u_xlat40 = max(x_1381, 1.17549435e-37f);
    let x_1383 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1383);
    let x_1385 : f32 = u_xlat40;
    let x_1387 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1385, x_1385, x_1385) * x_1387);
    let x_1389 : vec3<f32> = u_xlat2;
    let x_1390 : vec3<f32> = u_xlat8;
    u_xlat40 = dot(x_1389, x_1390);
    let x_1392 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1392, 0.0f, 1.0f);
    let x_1394 : f32 = u_xlat40;
    u_xlat40 = log2(x_1394);
    let x_1396 : f32 = u_xlat36;
    let x_1397 : f32 = u_xlat40;
    u_xlat40 = (x_1396 * x_1397);
    let x_1399 : f32 = u_xlat40;
    u_xlat40 = exp2(x_1399);
    let x_1401 : f32 = u_xlat40;
    let x_1404 : vec4<f32> = x_56.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1401, x_1401, x_1401) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z));
    let x_1407 : vec3<f32> = u_xlat8;
    let x_1408 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1407 * vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
    let x_1411 : vec4<f32> = u_xlat10;
    let x_1413 : vec4<f32> = u_xlat1;
    let x_1416 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1411.x, x_1411.y, x_1411.z) * vec3<f32>(x_1413.y, x_1413.z, x_1413.w)) + x_1416);
    let x_1418 : vec3<f32> = u_xlat7;
    let x_1419 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1418 + x_1419);

    continuing {
      let x_1421 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1421 + bitcast<u32>(1i));
    }
  }
  let x_1423 : vec4<f32> = u_xlat4;
  let x_1425 : vec4<f32> = u_xlat1;
  let x_1428 : vec4<f32> = u_xlat5;
  let x_1430 : vec3<f32> = ((vec3<f32>(x_1423.x, x_1423.y, x_1423.z) * vec3<f32>(x_1425.y, x_1425.z, x_1425.w)) + vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
  let x_1431 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
  let x_1435 : vec3<f32> = u_xlat7;
  let x_1436 : vec4<f32> = u_xlat1;
  let x_1438 : vec3<f32> = (x_1435 + vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
  let x_1439 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
  let x_1442 : f32 = x_56.x_Surface;
  u_xlatb12 = (x_1442 == 1.0f);
  let x_1444 : bool = u_xlatb12;
  let x_1445 : bool = u_xlatb24;
  u_xlatb12 = (x_1444 | x_1445);
  let x_1447 : bool = u_xlatb12;
  if (x_1447) {
    let x_1452 : f32 = u_xlat0.x;
    x_1448 = x_1452;
  } else {
    x_1448 = 1.0f;
  }
  let x_1454 : f32 = x_1448;
  SV_Target0.w = x_1454;
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

