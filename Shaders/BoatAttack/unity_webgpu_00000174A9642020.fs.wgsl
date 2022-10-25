struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_155 : UnityPerDraw;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_257 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_321 : LightCookies;

@group(0) @binding(2) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_569 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_671 : AdditionalLightsCookies;

@group(0) @binding(3) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_59 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_109 : f32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb33 : bool;
  var u_xlatb1 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_409 : f32;
  var x_420 : vec3<f32>;
  var u_xlatu11 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatu36 : u32;
  var u_xlati37 : i32;
  var u_xlati36 : i32;
  var u_xlati27 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb36 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_967 : f32;
  var x_980 : f32;
  var x_1032 : f32;
  var x_1043 : vec3<f32>;
  var x_1125 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_63 : f32 = u_xlat1.x;
    x_59 = x_63;
  } else {
    x_59 = 0.0f;
  }
  let x_66 : f32 = x_59;
  u_xlat0.x = x_66;
  let x_71 : f32 = u_xlat0.w;
  let x_73 : f32 = x_41.x_BaseColor.w;
  let x_76 : f32 = x_41.x_Cutoff;
  u_xlat11 = ((x_71 * x_73) + -(x_76));
  let x_81 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_81);
  let x_85 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_85);
  let x_87 : f32 = u_xlat33;
  let x_89 : f32 = u_xlat22;
  u_xlat22 = (abs(x_87) + abs(x_89));
  let x_92 : f32 = u_xlat22;
  u_xlat22 = max(x_92, 0.0001f);
  let x_95 : f32 = u_xlat11;
  let x_96 : f32 = u_xlat22;
  u_xlat11 = (x_95 / x_96);
  let x_98 : f32 = u_xlat11;
  u_xlat11 = (x_98 + 0.5f);
  let x_101 : f32 = u_xlat11;
  u_xlat11 = clamp(x_101, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb22;
  if (x_108) {
    let x_112 : f32 = u_xlat11;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat11 = (x_119 + -0.0001f);
  let x_123 : f32 = u_xlat11;
  u_xlatb11 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb11;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_138);
  let x_141 : f32 = u_xlat11;
  let x_143 : vec3<f32> = vs_TEXCOORD2;
  let x_144 : vec3<f32> = (vec3<f32>(x_141, x_141, x_141) * x_143);
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  u_xlat2.w = 1.0f;
  let x_158 : vec4<f32> = x_155.unity_SHAr;
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_158, x_159);
  let x_164 : vec4<f32> = x_155.unity_SHAg;
  let x_165 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_164, x_165);
  let x_171 : vec4<f32> = x_155.unity_SHAb;
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_171, x_172);
  let x_176 : vec4<f32> = u_xlat2;
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_176.y, x_176.z, x_176.z, x_176.x) * vec4<f32>(x_178.x, x_178.y, x_178.z, x_178.z));
  let x_184 : vec4<f32> = x_155.unity_SHBr;
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_184, x_185);
  let x_190 : vec4<f32> = x_155.unity_SHBg;
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_190, x_191);
  let x_196 : vec4<f32> = x_155.unity_SHBb;
  let x_197 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_196, x_197);
  let x_201 : f32 = u_xlat2.y;
  let x_203 : f32 = u_xlat2.y;
  u_xlat11 = (x_201 * x_203);
  let x_206 : f32 = u_xlat2.x;
  let x_208 : f32 = u_xlat2.x;
  let x_210 : f32 = u_xlat11;
  u_xlat11 = ((x_206 * x_208) + -(x_210));
  let x_215 : vec4<f32> = x_155.unity_SHC;
  let x_217 : f32 = u_xlat11;
  let x_220 : vec3<f32> = u_xlat5;
  let x_221 : vec3<f32> = ((vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(x_217, x_217, x_217)) + x_220);
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec3<f32> = u_xlat3;
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_224 + vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_228, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_234 : vec4<f32> = vs_TEXCOORD6;
  let x_235 : vec2<f32> = vec2<f32>(x_234.x, x_234.y);
  let x_238 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_235.x, x_235.y, x_238);
  let x_250 : vec3<f32> = txVec0;
  let x_252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_250.xy, x_250.z);
  u_xlat11 = x_252;
  let x_260 : f32 = x_257.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_260) + 1.0f);
  let x_263 : f32 = u_xlat11;
  let x_265 : f32 = x_257.x_MainLightShadowParams.x;
  let x_267 : f32 = u_xlat33;
  u_xlat11 = ((x_263 * x_265) + x_267);
  let x_271 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (0.0f >= x_271);
  let x_275 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_275 >= 1.0f);
  let x_277 : bool = u_xlatb33;
  let x_278 : bool = u_xlatb1;
  u_xlatb33 = (x_277 | x_278);
  let x_280 : bool = u_xlatb33;
  let x_281 : f32 = u_xlat11;
  u_xlat11 = select(x_281, 1.0f, x_280);
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_290 : vec3<f32> = (x_284 + -(x_288));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : f32 = u_xlat33;
  let x_300 : f32 = x_257.x_MainLightShadowParams.z;
  let x_303 : f32 = x_257.x_MainLightShadowParams.w;
  u_xlat33 = ((x_298 * x_300) + x_303);
  let x_305 : f32 = u_xlat33;
  u_xlat33 = clamp(x_305, 0.0f, 1.0f);
  let x_307 : f32 = u_xlat11;
  u_xlat1.x = (-(x_307) + 1.0f);
  let x_311 : f32 = u_xlat33;
  let x_313 : f32 = u_xlat1.x;
  let x_315 : f32 = u_xlat11;
  u_xlat11 = ((x_311 * x_313) + x_315);
  let x_324 : f32 = x_321.x_MainLightCookieTextureFormat;
  u_xlatb33 = !((x_324 == -1.0f));
  let x_327 : bool = u_xlatb33;
  if (x_327) {
    let x_330 : vec3<f32> = vs_TEXCOORD1;
    let x_333 : vec4<f32> = x_321.x_MainLightWorldToLight[1i];
    let x_335 : vec2<f32> = (vec2<f32>(x_330.y, x_330.y) * vec2<f32>(x_333.x, x_333.y));
    let x_336 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_336.z, x_336.w);
    let x_339 : vec4<f32> = x_321.x_MainLightWorldToLight[0i];
    let x_341 : vec3<f32> = vs_TEXCOORD1;
    let x_344 : vec4<f32> = u_xlat4;
    let x_346 : vec2<f32> = ((vec2<f32>(x_339.x, x_339.y) * vec2<f32>(x_341.x, x_341.x)) + vec2<f32>(x_344.x, x_344.y));
    let x_347 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
    let x_350 : vec4<f32> = x_321.x_MainLightWorldToLight[2i];
    let x_352 : vec3<f32> = vs_TEXCOORD1;
    let x_355 : vec4<f32> = u_xlat4;
    let x_357 : vec2<f32> = ((vec2<f32>(x_350.x, x_350.y) * vec2<f32>(x_352.z, x_352.z)) + vec2<f32>(x_355.x, x_355.y));
    let x_358 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
    let x_360 : vec4<f32> = u_xlat4;
    let x_364 : vec4<f32> = x_321.x_MainLightWorldToLight[3i];
    let x_366 : vec2<f32> = (vec2<f32>(x_360.x, x_360.y) + vec2<f32>(x_364.x, x_364.y));
    let x_367 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
    let x_369 : vec4<f32> = u_xlat4;
    let x_373 : vec2<f32> = ((vec2<f32>(x_369.x, x_369.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_374 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_373.x, x_373.y, x_374.z, x_374.w);
    let x_381 : vec4<f32> = u_xlat4;
    let x_384 : f32 = x_27.x_GlobalMipBias.x;
    let x_385 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_381.x, x_381.y), x_384);
    u_xlat4 = x_385;
    let x_390 : f32 = x_321.x_MainLightCookieTextureFormat;
    let x_392 : f32 = x_321.x_MainLightCookieTextureFormat;
    let x_394 : f32 = x_321.x_MainLightCookieTextureFormat;
    let x_396 : f32 = x_321.x_MainLightCookieTextureFormat;
    let x_397 : vec4<f32> = vec4<f32>(x_390, x_392, x_394, x_396);
    let x_405 : vec4<bool> = (vec4<f32>(x_397.x, x_397.y, x_397.z, x_397.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_405.x, x_405.y);
    let x_408 : bool = u_xlatb5.y;
    if (x_408) {
      let x_413 : f32 = u_xlat4.w;
      x_409 = x_413;
    } else {
      let x_416 : f32 = u_xlat4.x;
      x_409 = x_416;
    }
    let x_417 : f32 = x_409;
    u_xlat33 = x_417;
    let x_419 : bool = u_xlatb5.x;
    if (x_419) {
      let x_423 : vec4<f32> = u_xlat4;
      x_420 = vec3<f32>(x_423.x, x_423.y, x_423.z);
    } else {
      let x_426 : f32 = u_xlat33;
      x_420 = vec3<f32>(x_426, x_426, x_426);
    }
    let x_428 : vec3<f32> = x_420;
    let x_429 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_435 : vec4<f32> = u_xlat4;
  let x_438 : vec4<f32> = x_27.x_MainLightColor;
  let x_440 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : f32 = u_xlat11;
  let x_445 : f32 = x_155.unity_LightData.z;
  u_xlat11 = (x_443 * x_445);
  let x_447 : f32 = u_xlat11;
  let x_449 : vec4<f32> = u_xlat4;
  let x_451 : vec3<f32> = (vec3<f32>(x_447, x_447, x_447) * vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat2;
  let x_457 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat11 = dot(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : f32 = u_xlat11;
  u_xlat11 = clamp(x_460, 0.0f, 1.0f);
  let x_462 : f32 = u_xlat11;
  let x_464 : vec4<f32> = u_xlat4;
  let x_466 : vec3<f32> = (vec3<f32>(x_462, x_462, x_462) * vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat1;
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec3<f32> = (vec3<f32>(x_469.y, x_469.z, x_469.w) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat0;
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec3<f32> = (vec3<f32>(x_476.x, x_476.x, x_476.x) * vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_484 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_486 : f32 = x_155.unity_LightData.y;
  u_xlat11 = min(x_484, x_486);
  let x_490 : f32 = u_xlat11;
  u_xlatu11 = bitcast<u32>(i32(x_490));
  let x_494 : f32 = x_321.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_496 : f32 = x_321.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_498 : f32 = x_321.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_500 : f32 = x_321.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_501 : vec4<f32> = vec4<f32>(x_494, x_496, x_498, x_500);
  let x_507 : vec4<bool> = (vec4<f32>(x_501.x, x_501.y, x_501.z, x_501.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_507.x, x_507.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_519 : u32 = u_xlatu_loop_1;
    let x_520 : u32 = u_xlatu11;
    if ((x_519 < x_520)) {
    } else {
      break;
    }
    let x_523 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_523 >> 2u);
    let x_527 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_527 & 3u));
    let x_531 : u32 = u_xlatu1;
    let x_534 : vec4<f32> = x_155.unity_LightIndices[bitcast<i32>(x_531)];
    let x_544 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_549 : vec4<u32> = indexable[x_544];
    u_xlat1.x = dot(x_534, bitcast<vec4<f32>>(x_549));
    let x_554 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_554));
    let x_558 : vec3<f32> = vs_TEXCOORD1;
    let x_570 : u32 = u_xlatu1;
    let x_573 : vec4<f32> = x_569.x_AdditionalLightsPosition[bitcast<i32>(x_570)];
    let x_576 : u32 = u_xlatu1;
    let x_579 : vec4<f32> = x_569.x_AdditionalLightsPosition[bitcast<i32>(x_576)];
    u_xlat7 = ((-(x_558) * vec3<f32>(x_573.w, x_573.w, x_573.w)) + vec3<f32>(x_579.x, x_579.y, x_579.z));
    let x_583 : vec3<f32> = u_xlat7;
    let x_584 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_583, x_584);
    let x_586 : f32 = u_xlat35;
    u_xlat35 = max(x_586, 6.10351562e-05f);
    let x_590 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_590);
    let x_592 : f32 = u_xlat36;
    let x_594 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_592, x_592, x_592) * x_594);
    let x_596 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_596);
    let x_598 : f32 = u_xlat35;
    let x_599 : u32 = u_xlatu1;
    let x_602 : f32 = x_569.x_AdditionalLightsAttenuation[bitcast<i32>(x_599)].x;
    u_xlat35 = (x_598 * x_602);
    let x_604 : f32 = u_xlat35;
    let x_606 : f32 = u_xlat35;
    u_xlat35 = ((-(x_604) * x_606) + 1.0f);
    let x_609 : f32 = u_xlat35;
    u_xlat35 = max(x_609, 0.0f);
    let x_611 : f32 = u_xlat35;
    let x_612 : f32 = u_xlat35;
    u_xlat35 = (x_611 * x_612);
    let x_614 : f32 = u_xlat35;
    let x_615 : f32 = u_xlat36;
    u_xlat35 = (x_614 * x_615);
    let x_617 : u32 = u_xlatu1;
    let x_620 : vec4<f32> = x_569.x_AdditionalLightsSpotDir[bitcast<i32>(x_617)];
    let x_622 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), x_622);
    let x_624 : f32 = u_xlat36;
    let x_625 : u32 = u_xlatu1;
    let x_628 : f32 = x_569.x_AdditionalLightsAttenuation[bitcast<i32>(x_625)].z;
    let x_630 : u32 = u_xlatu1;
    let x_633 : f32 = x_569.x_AdditionalLightsAttenuation[bitcast<i32>(x_630)].w;
    u_xlat36 = ((x_624 * x_628) + x_633);
    let x_635 : f32 = u_xlat36;
    u_xlat36 = clamp(x_635, 0.0f, 1.0f);
    let x_637 : f32 = u_xlat36;
    let x_638 : f32 = u_xlat36;
    u_xlat36 = (x_637 * x_638);
    let x_640 : f32 = u_xlat35;
    let x_641 : f32 = u_xlat36;
    u_xlat35 = (x_640 * x_641);
    let x_644 : u32 = u_xlatu1;
    u_xlatu36 = (x_644 >> 5u);
    let x_647 : u32 = u_xlatu1;
    u_xlati37 = (1i << bitcast<u32>((bitcast<i32>(x_647) & 31i)));
    let x_653 : i32 = u_xlati37;
    let x_655 : u32 = u_xlatu36;
    let x_658 : f32 = x_321.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_655)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_653) & bitcast<u32>(x_658)));
    let x_662 : i32 = u_xlati36;
    if ((x_662 != 0i)) {
      let x_672 : u32 = u_xlatu1;
      let x_675 : f32 = x_671.x_AdditionalLightsLightTypes[bitcast<i32>(x_672)].el;
      u_xlati36 = i32(x_675);
      let x_677 : i32 = u_xlati36;
      u_xlati37 = select(1i, 0i, (x_677 != 0i));
      let x_681 : u32 = u_xlatu1;
      u_xlati27 = (bitcast<i32>(x_681) << bitcast<u32>(2i));
      let x_684 : i32 = u_xlati37;
      if ((x_684 != 0i)) {
        let x_689 : vec3<f32> = vs_TEXCOORD1;
        let x_691 : i32 = u_xlati27;
        let x_694 : i32 = u_xlati27;
        let x_698 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[((x_691 + 1i) / 4i)][((x_694 + 1i) % 4i)];
        let x_700 : vec3<f32> = (vec3<f32>(x_689.y, x_689.y, x_689.y) * vec3<f32>(x_698.x, x_698.y, x_698.w));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
        let x_703 : i32 = u_xlati27;
        let x_705 : i32 = u_xlati27;
        let x_708 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[(x_703 / 4i)][(x_705 % 4i)];
        let x_710 : vec3<f32> = vs_TEXCOORD1;
        let x_713 : vec4<f32> = u_xlat8;
        let x_715 : vec3<f32> = ((vec3<f32>(x_708.x, x_708.y, x_708.w) * vec3<f32>(x_710.x, x_710.x, x_710.x)) + vec3<f32>(x_713.x, x_713.y, x_713.z));
        let x_716 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
        let x_718 : i32 = u_xlati27;
        let x_721 : i32 = u_xlati27;
        let x_725 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[((x_718 + 2i) / 4i)][((x_721 + 2i) % 4i)];
        let x_727 : vec3<f32> = vs_TEXCOORD1;
        let x_730 : vec4<f32> = u_xlat8;
        let x_732 : vec3<f32> = ((vec3<f32>(x_725.x, x_725.y, x_725.w) * vec3<f32>(x_727.z, x_727.z, x_727.z)) + vec3<f32>(x_730.x, x_730.y, x_730.z));
        let x_733 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_735 : vec4<f32> = u_xlat8;
        let x_737 : i32 = u_xlati27;
        let x_740 : i32 = u_xlati27;
        let x_744 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[((x_737 + 3i) / 4i)][((x_740 + 3i) % 4i)];
        let x_746 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) + vec3<f32>(x_744.x, x_744.y, x_744.w));
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat8;
        let x_751 : vec4<f32> = u_xlat8;
        let x_753 : vec2<f32> = (vec2<f32>(x_749.x, x_749.y) / vec2<f32>(x_751.z, x_751.z));
        let x_754 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
        let x_756 : vec4<f32> = u_xlat8;
        let x_759 : vec2<f32> = ((vec2<f32>(x_756.x, x_756.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_760 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
        let x_762 : vec4<f32> = u_xlat8;
        let x_766 : vec2<f32> = clamp(vec2<f32>(x_762.x, x_762.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_767 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_769 : u32 = u_xlatu1;
        let x_772 : vec4<f32> = x_671.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_769)];
        let x_774 : vec4<f32> = u_xlat8;
        let x_777 : u32 = u_xlatu1;
        let x_780 : vec4<f32> = x_671.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_777)];
        let x_782 : vec2<f32> = ((vec2<f32>(x_772.x, x_772.y) * vec2<f32>(x_774.x, x_774.y)) + vec2<f32>(x_780.z, x_780.w));
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
      } else {
        let x_787 : i32 = u_xlati36;
        u_xlatb36 = (x_787 == 1i);
        let x_789 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_789);
        let x_791 : i32 = u_xlati36;
        if ((x_791 != 0i)) {
          let x_797 : vec3<f32> = vs_TEXCOORD1;
          let x_799 : i32 = u_xlati27;
          let x_802 : i32 = u_xlati27;
          let x_806 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[((x_799 + 1i) / 4i)][((x_802 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_797.y, x_797.y) * vec2<f32>(x_806.x, x_806.y));
          let x_809 : i32 = u_xlati27;
          let x_811 : i32 = u_xlati27;
          let x_814 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[(x_809 / 4i)][(x_811 % 4i)];
          let x_816 : vec3<f32> = vs_TEXCOORD1;
          let x_819 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_814.x, x_814.y) * vec2<f32>(x_816.x, x_816.x)) + x_819);
          let x_821 : i32 = u_xlati27;
          let x_824 : i32 = u_xlati27;
          let x_828 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[((x_821 + 2i) / 4i)][((x_824 + 2i) % 4i)];
          let x_830 : vec3<f32> = vs_TEXCOORD1;
          let x_833 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_828.x, x_828.y) * vec2<f32>(x_830.z, x_830.z)) + x_833);
          let x_835 : vec2<f32> = u_xlat30;
          let x_836 : i32 = u_xlati27;
          let x_839 : i32 = u_xlati27;
          let x_843 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[((x_836 + 3i) / 4i)][((x_839 + 3i) % 4i)];
          u_xlat30 = (x_835 + vec2<f32>(x_843.x, x_843.y));
          let x_846 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_846 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_849 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_849);
          let x_851 : u32 = u_xlatu1;
          let x_854 : vec4<f32> = x_671.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_851)];
          let x_856 : vec2<f32> = u_xlat30;
          let x_858 : u32 = u_xlatu1;
          let x_861 : vec4<f32> = x_671.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_858)];
          let x_863 : vec2<f32> = ((vec2<f32>(x_854.x, x_854.y) * x_856) + vec2<f32>(x_861.z, x_861.w));
          let x_864 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_863.x, x_863.y, x_864.z, x_864.w);
        } else {
          let x_868 : vec3<f32> = vs_TEXCOORD1;
          let x_870 : i32 = u_xlati27;
          let x_873 : i32 = u_xlati27;
          let x_877 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[((x_870 + 1i) / 4i)][((x_873 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_868.y, x_868.y, x_868.y, x_868.y) * x_877);
          let x_879 : i32 = u_xlati27;
          let x_881 : i32 = u_xlati27;
          let x_884 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[(x_879 / 4i)][(x_881 % 4i)];
          let x_885 : vec3<f32> = vs_TEXCOORD1;
          let x_888 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_884 * vec4<f32>(x_885.x, x_885.x, x_885.x, x_885.x)) + x_888);
          let x_890 : i32 = u_xlati27;
          let x_893 : i32 = u_xlati27;
          let x_897 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[((x_890 + 2i) / 4i)][((x_893 + 2i) % 4i)];
          let x_898 : vec3<f32> = vs_TEXCOORD1;
          let x_901 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_897 * vec4<f32>(x_898.z, x_898.z, x_898.z, x_898.z)) + x_901);
          let x_903 : vec4<f32> = u_xlat9;
          let x_904 : i32 = u_xlati27;
          let x_907 : i32 = u_xlati27;
          let x_911 : vec4<f32> = x_671.x_AdditionalLightsWorldToLights[((x_904 + 3i) / 4i)][((x_907 + 3i) % 4i)];
          u_xlat9 = (x_903 + x_911);
          let x_913 : vec4<f32> = u_xlat9;
          let x_915 : vec4<f32> = u_xlat9;
          let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) / vec3<f32>(x_915.w, x_915.w, x_915.w));
          let x_918 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
          let x_920 : vec4<f32> = u_xlat9;
          let x_922 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(vec3<f32>(x_920.x, x_920.y, x_920.z), vec3<f32>(x_922.x, x_922.y, x_922.z));
          let x_925 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_925);
          let x_927 : f32 = u_xlat36;
          let x_929 : vec4<f32> = u_xlat9;
          let x_931 : vec3<f32> = (vec3<f32>(x_927, x_927, x_927) * vec3<f32>(x_929.x, x_929.y, x_929.z));
          let x_932 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
          let x_934 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(abs(vec3<f32>(x_934.x, x_934.y, x_934.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_939 : f32 = u_xlat36;
          u_xlat36 = max(x_939, 0.000001f);
          let x_942 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_942);
          let x_945 : f32 = u_xlat36;
          let x_947 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_945, x_945, x_945) * vec3<f32>(x_947.z, x_947.x, x_947.y));
          let x_951 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_951);
          let x_955 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_955, 0.0f, 1.0f);
          let x_959 : vec3<f32> = u_xlat10;
          let x_962 : vec4<bool> = (vec4<f32>(x_959.y, x_959.z, x_959.y, x_959.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_962.x, x_962.y);
          let x_966 : bool = u_xlatb27.x;
          if (x_966) {
            let x_971 : f32 = u_xlat10.x;
            x_967 = x_971;
          } else {
            let x_974 : f32 = u_xlat10.x;
            x_967 = -(x_974);
          }
          let x_976 : f32 = x_967;
          u_xlat27.x = x_976;
          let x_979 : bool = u_xlatb27.y;
          if (x_979) {
            let x_984 : f32 = u_xlat10.x;
            x_980 = x_984;
          } else {
            let x_987 : f32 = u_xlat10.x;
            x_980 = -(x_987);
          }
          let x_989 : f32 = x_980;
          u_xlat27.y = x_989;
          let x_991 : vec4<f32> = u_xlat9;
          let x_993 : f32 = u_xlat36;
          let x_996 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_991.x, x_991.y) * vec2<f32>(x_993, x_993)) + x_996);
          let x_998 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_998 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1001 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1001, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1005 : u32 = u_xlatu1;
          let x_1008 : vec4<f32> = x_671.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1005)];
          let x_1010 : vec2<f32> = u_xlat27;
          let x_1012 : u32 = u_xlatu1;
          let x_1015 : vec4<f32> = x_671.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1012)];
          let x_1017 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * x_1010) + vec2<f32>(x_1015.z, x_1015.w));
          let x_1018 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        }
      }
      let x_1025 : vec4<f32> = u_xlat8;
      let x_1028 : f32 = x_27.x_GlobalMipBias.x;
      let x_1029 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1025.x, x_1025.y), x_1028);
      u_xlat8 = x_1029;
      let x_1031 : bool = u_xlatb5.y;
      if (x_1031) {
        let x_1036 : f32 = u_xlat8.w;
        x_1032 = x_1036;
      } else {
        let x_1039 : f32 = u_xlat8.x;
        x_1032 = x_1039;
      }
      let x_1040 : f32 = x_1032;
      u_xlat36 = x_1040;
      let x_1042 : bool = u_xlatb5.x;
      if (x_1042) {
        let x_1046 : vec4<f32> = u_xlat8;
        x_1043 = vec3<f32>(x_1046.x, x_1046.y, x_1046.z);
      } else {
        let x_1049 : f32 = u_xlat36;
        x_1043 = vec3<f32>(x_1049, x_1049, x_1049);
      }
      let x_1051 : vec3<f32> = x_1043;
      let x_1052 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1058 : vec4<f32> = u_xlat8;
    let x_1060 : u32 = u_xlatu1;
    let x_1063 : vec4<f32> = x_569.x_AdditionalLightsColor[bitcast<i32>(x_1060)];
    let x_1065 : vec3<f32> = (vec3<f32>(x_1058.x, x_1058.y, x_1058.z) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
    let x_1066 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
    let x_1068 : f32 = u_xlat35;
    let x_1070 : vec4<f32> = u_xlat8;
    let x_1072 : vec3<f32> = (vec3<f32>(x_1068, x_1068, x_1068) * vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
    let x_1073 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
    let x_1075 : vec4<f32> = u_xlat2;
    let x_1077 : vec3<f32> = u_xlat7;
    u_xlat1.x = dot(vec3<f32>(x_1075.x, x_1075.y, x_1075.z), x_1077);
    let x_1081 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_1081, 0.0f, 1.0f);
    let x_1084 : vec4<f32> = u_xlat1;
    let x_1086 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1084.x, x_1084.x, x_1084.x) * vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
    let x_1089 : vec4<f32> = u_xlat1;
    let x_1091 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1089.y, x_1089.z, x_1089.w) * x_1091);
    let x_1093 : vec3<f32> = u_xlat7;
    let x_1094 : vec4<f32> = u_xlat0;
    let x_1097 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1093 * vec3<f32>(x_1094.x, x_1094.x, x_1094.x)) + x_1097);

    continuing {
      let x_1099 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1099 + bitcast<u32>(1i));
    }
  }
  let x_1101 : vec3<f32> = u_xlat3;
  let x_1102 : vec4<f32> = u_xlat1;
  let x_1105 : vec4<f32> = u_xlat4;
  let x_1107 : vec3<f32> = ((x_1101 * vec3<f32>(x_1102.y, x_1102.z, x_1102.w)) + vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1108 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1112 : vec3<f32> = u_xlat6;
  let x_1113 : vec4<f32> = u_xlat1;
  let x_1115 : vec3<f32> = (x_1112 + vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1119 : f32 = x_41.x_Surface;
  u_xlatb11 = (x_1119 == 1.0f);
  let x_1121 : bool = u_xlatb11;
  let x_1122 : bool = u_xlatb22;
  u_xlatb11 = (x_1121 | x_1122);
  let x_1124 : bool = u_xlatb11;
  if (x_1124) {
    let x_1129 : f32 = u_xlat0.x;
    x_1125 = x_1129;
  } else {
    x_1125 = 1.0f;
  }
  let x_1131 : f32 = x_1125;
  SV_Target0.w = x_1131;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

