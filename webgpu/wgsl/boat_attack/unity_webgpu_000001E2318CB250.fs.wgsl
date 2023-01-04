struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_272 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_347 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_600 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_702 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_130 : f32;
  var u_xlatb11 : bool;
  var u_xlatb33 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_297 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlatb5 : vec2<bool>;
  var x_435 : f32;
  var x_446 : vec3<f32>;
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
  var x_998 : f32;
  var x_1011 : f32;
  var x_1063 : f32;
  var x_1074 : vec3<f32>;
  var x_1155 : f32;
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
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_56.x_Cutoff;
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
  let x_88 : f32 = x_56.x_BaseColor.w;
  let x_91 : f32 = x_56.x_Cutoff;
  u_xlat11.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat33;
  let x_105 : f32 = u_xlat22;
  u_xlat22 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat22;
  u_xlat22 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat11.x;
  let x_113 : f32 = u_xlat22;
  u_xlat11.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat11.x;
  u_xlat11.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_122, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb22;
  if (x_129) {
    let x_134 : f32 = u_xlat11.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat11.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat11.x;
  u_xlatb11 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb11;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_157 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_43.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_163.x, x_164.y, x_163.y);
  let x_171 : vec3<f32> = u_xlat11;
  let x_174 : f32 = x_43.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.z), x_174);
  u_xlat11.x = x_175.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb33 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb33;
  if (x_189) {
    let x_194 : f32 = u_xlat11.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat11.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat11.x = x_201;
  let x_204 : f32 = u_xlat11.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat11.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat11.x;
  u_xlatb11 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb11;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat11;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_242 : vec2<f32> = vs_TEXCOORD7;
  let x_244 : f32 = x_43.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_242, x_244);
  u_xlat3 = vec3<f32>(x_245.x, x_245.y, x_245.z);
  let x_249 : vec4<f32> = vs_TEXCOORD6;
  let x_250 : vec2<f32> = vec2<f32>(x_249.x, x_249.y);
  let x_252 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_250.x, x_250.y, x_252);
  let x_264 : vec3<f32> = txVec0;
  let x_266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_264.xy, x_264.z);
  u_xlat11.x = x_266;
  let x_275 : f32 = x_272.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_275) + 1.0f);
  let x_279 : f32 = u_xlat11.x;
  let x_281 : f32 = x_272.x_MainLightShadowParams.x;
  let x_283 : f32 = u_xlat33;
  u_xlat11.x = ((x_279 * x_281) + x_283);
  let x_287 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (0.0f >= x_287);
  let x_291 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_291 >= 1.0f);
  let x_293 : bool = u_xlatb33;
  let x_294 : bool = u_xlatb1;
  u_xlatb33 = (x_293 | x_294);
  let x_296 : bool = u_xlatb33;
  if (x_296) {
    x_297 = 1.0f;
  } else {
    let x_302 : f32 = u_xlat11.x;
    x_297 = x_302;
  }
  let x_303 : f32 = x_297;
  u_xlat11.x = x_303;
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_313 : vec3<f32> = (x_307 + -(x_311));
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_316.x, x_316.y, x_316.z), vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : f32 = u_xlat33;
  let x_323 : f32 = x_272.x_MainLightShadowParams.z;
  let x_326 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat33 = ((x_321 * x_323) + x_326);
  let x_328 : f32 = u_xlat33;
  u_xlat33 = clamp(x_328, 0.0f, 1.0f);
  let x_331 : f32 = u_xlat11.x;
  u_xlat1.x = (-(x_331) + 1.0f);
  let x_335 : f32 = u_xlat33;
  let x_337 : f32 = u_xlat1.x;
  let x_340 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_335 * x_337) + x_340);
  let x_349 : f32 = x_347.x_MainLightCookieTextureFormat;
  u_xlatb33 = !((x_349 == -1.0f));
  let x_352 : bool = u_xlatb33;
  if (x_352) {
    let x_355 : vec3<f32> = vs_TEXCOORD1;
    let x_358 : vec4<f32> = x_347.x_MainLightWorldToLight[1i];
    let x_360 : vec2<f32> = (vec2<f32>(x_355.y, x_355.y) * vec2<f32>(x_358.x, x_358.y));
    let x_361 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_360.x, x_360.y, x_361.z, x_361.w);
    let x_364 : vec4<f32> = x_347.x_MainLightWorldToLight[0i];
    let x_366 : vec3<f32> = vs_TEXCOORD1;
    let x_369 : vec4<f32> = u_xlat4;
    let x_371 : vec2<f32> = ((vec2<f32>(x_364.x, x_364.y) * vec2<f32>(x_366.x, x_366.x)) + vec2<f32>(x_369.x, x_369.y));
    let x_372 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
    let x_375 : vec4<f32> = x_347.x_MainLightWorldToLight[2i];
    let x_377 : vec3<f32> = vs_TEXCOORD1;
    let x_380 : vec4<f32> = u_xlat4;
    let x_382 : vec2<f32> = ((vec2<f32>(x_375.x, x_375.y) * vec2<f32>(x_377.z, x_377.z)) + vec2<f32>(x_380.x, x_380.y));
    let x_383 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
    let x_385 : vec4<f32> = u_xlat4;
    let x_389 : vec4<f32> = x_347.x_MainLightWorldToLight[3i];
    let x_391 : vec2<f32> = (vec2<f32>(x_385.x, x_385.y) + vec2<f32>(x_389.x, x_389.y));
    let x_392 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
    let x_394 : vec4<f32> = u_xlat4;
    let x_398 : vec2<f32> = ((vec2<f32>(x_394.x, x_394.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_399 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
    let x_406 : vec4<f32> = u_xlat4;
    let x_409 : f32 = x_43.x_GlobalMipBias.x;
    let x_410 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_406.x, x_406.y), x_409);
    u_xlat4 = x_410;
    let x_415 : f32 = x_347.x_MainLightCookieTextureFormat;
    let x_417 : f32 = x_347.x_MainLightCookieTextureFormat;
    let x_419 : f32 = x_347.x_MainLightCookieTextureFormat;
    let x_421 : f32 = x_347.x_MainLightCookieTextureFormat;
    let x_422 : vec4<f32> = vec4<f32>(x_415, x_417, x_419, x_421);
    let x_430 : vec4<bool> = (vec4<f32>(x_422.x, x_422.y, x_422.z, x_422.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_430.x, x_430.y);
    let x_434 : bool = u_xlatb5.y;
    if (x_434) {
      let x_439 : f32 = u_xlat4.w;
      x_435 = x_439;
    } else {
      let x_442 : f32 = u_xlat4.x;
      x_435 = x_442;
    }
    let x_443 : f32 = x_435;
    u_xlat33 = x_443;
    let x_445 : bool = u_xlatb5.x;
    if (x_445) {
      let x_449 : vec4<f32> = u_xlat4;
      x_446 = vec3<f32>(x_449.x, x_449.y, x_449.z);
    } else {
      let x_452 : f32 = u_xlat33;
      x_446 = vec3<f32>(x_452, x_452, x_452);
    }
    let x_454 : vec3<f32> = x_446;
    let x_455 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_461 : vec4<f32> = u_xlat4;
  let x_464 : vec4<f32> = x_43.x_MainLightColor;
  let x_466 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_470 : f32 = u_xlat11.x;
  let x_472 : f32 = x_184.unity_LightData.z;
  u_xlat11.x = (x_470 * x_472);
  let x_475 : vec3<f32> = u_xlat11;
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec3<f32> = (vec3<f32>(x_475.x, x_475.x, x_475.x) * vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : vec3<f32> = u_xlat2;
  let x_484 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat11.x = dot(x_482, vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_489 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_489, 0.0f, 1.0f);
  let x_492 : vec3<f32> = u_xlat11;
  let x_494 : vec4<f32> = u_xlat4;
  let x_496 : vec3<f32> = (vec3<f32>(x_492.x, x_492.x, x_492.x) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat1;
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : vec3<f32> = (vec3<f32>(x_499.y, x_499.z, x_499.w) * vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat0;
  let x_508 : vec4<f32> = u_xlat4;
  let x_510 : vec3<f32> = (vec3<f32>(x_506.x, x_506.x, x_506.x) * vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_514 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_516 : f32 = x_184.unity_LightData.y;
  u_xlat11.x = min(x_514, x_516);
  let x_522 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_522));
  let x_526 : f32 = x_347.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_528 : f32 = x_347.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_530 : f32 = x_347.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_532 : f32 = x_347.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_533 : vec4<f32> = vec4<f32>(x_526, x_528, x_530, x_532);
  let x_539 : vec4<bool> = (vec4<f32>(x_533.x, x_533.y, x_533.z, x_533.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_539.x, x_539.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_551 : u32 = u_xlatu_loop_1;
    let x_552 : u32 = u_xlatu11;
    if ((x_551 < x_552)) {
    } else {
      break;
    }
    let x_555 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_555 >> 2u);
    let x_559 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_559 & 3u));
    let x_562 : u32 = u_xlatu1;
    let x_565 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_562)];
    let x_575 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_580 : vec4<u32> = indexable[x_575];
    u_xlat1.x = dot(x_565, bitcast<vec4<f32>>(x_580));
    let x_585 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_585));
    let x_589 : vec3<f32> = vs_TEXCOORD1;
    let x_601 : u32 = u_xlatu1;
    let x_604 : vec4<f32> = x_600.x_AdditionalLightsPosition[bitcast<i32>(x_601)];
    let x_607 : u32 = u_xlatu1;
    let x_610 : vec4<f32> = x_600.x_AdditionalLightsPosition[bitcast<i32>(x_607)];
    u_xlat7 = ((-(x_589) * vec3<f32>(x_604.w, x_604.w, x_604.w)) + vec3<f32>(x_610.x, x_610.y, x_610.z));
    let x_614 : vec3<f32> = u_xlat7;
    let x_615 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_614, x_615);
    let x_617 : f32 = u_xlat35;
    u_xlat35 = max(x_617, 6.10351562e-05f);
    let x_621 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_621);
    let x_623 : f32 = u_xlat36;
    let x_625 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_623, x_623, x_623) * x_625);
    let x_627 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_627);
    let x_629 : f32 = u_xlat35;
    let x_630 : u32 = u_xlatu1;
    let x_633 : f32 = x_600.x_AdditionalLightsAttenuation[bitcast<i32>(x_630)].x;
    u_xlat35 = (x_629 * x_633);
    let x_635 : f32 = u_xlat35;
    let x_637 : f32 = u_xlat35;
    u_xlat35 = ((-(x_635) * x_637) + 1.0f);
    let x_640 : f32 = u_xlat35;
    u_xlat35 = max(x_640, 0.0f);
    let x_642 : f32 = u_xlat35;
    let x_643 : f32 = u_xlat35;
    u_xlat35 = (x_642 * x_643);
    let x_645 : f32 = u_xlat35;
    let x_646 : f32 = u_xlat36;
    u_xlat35 = (x_645 * x_646);
    let x_648 : u32 = u_xlatu1;
    let x_651 : vec4<f32> = x_600.x_AdditionalLightsSpotDir[bitcast<i32>(x_648)];
    let x_653 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), x_653);
    let x_655 : f32 = u_xlat36;
    let x_656 : u32 = u_xlatu1;
    let x_659 : f32 = x_600.x_AdditionalLightsAttenuation[bitcast<i32>(x_656)].z;
    let x_661 : u32 = u_xlatu1;
    let x_664 : f32 = x_600.x_AdditionalLightsAttenuation[bitcast<i32>(x_661)].w;
    u_xlat36 = ((x_655 * x_659) + x_664);
    let x_666 : f32 = u_xlat36;
    u_xlat36 = clamp(x_666, 0.0f, 1.0f);
    let x_668 : f32 = u_xlat36;
    let x_669 : f32 = u_xlat36;
    u_xlat36 = (x_668 * x_669);
    let x_671 : f32 = u_xlat35;
    let x_672 : f32 = u_xlat36;
    u_xlat35 = (x_671 * x_672);
    let x_675 : u32 = u_xlatu1;
    u_xlatu36 = (x_675 >> 5u);
    let x_678 : u32 = u_xlatu1;
    u_xlati37 = (1i << bitcast<u32>((bitcast<i32>(x_678) & 31i)));
    let x_684 : i32 = u_xlati37;
    let x_686 : u32 = u_xlatu36;
    let x_689 : f32 = x_347.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_686)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_684) & bitcast<u32>(x_689)));
    let x_693 : i32 = u_xlati36;
    if ((x_693 != 0i)) {
      let x_703 : u32 = u_xlatu1;
      let x_706 : f32 = x_702.x_AdditionalLightsLightTypes[bitcast<i32>(x_703)].el;
      u_xlati36 = i32(x_706);
      let x_708 : i32 = u_xlati36;
      u_xlati37 = select(1i, 0i, (x_708 != 0i));
      let x_712 : u32 = u_xlatu1;
      u_xlati27 = (bitcast<i32>(x_712) << bitcast<u32>(2i));
      let x_715 : i32 = u_xlati37;
      if ((x_715 != 0i)) {
        let x_720 : vec3<f32> = vs_TEXCOORD1;
        let x_722 : i32 = u_xlati27;
        let x_725 : i32 = u_xlati27;
        let x_729 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_722 + 1i) / 4i)][((x_725 + 1i) % 4i)];
        let x_731 : vec3<f32> = (vec3<f32>(x_720.y, x_720.y, x_720.y) * vec3<f32>(x_729.x, x_729.y, x_729.w));
        let x_732 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
        let x_734 : i32 = u_xlati27;
        let x_736 : i32 = u_xlati27;
        let x_739 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[(x_734 / 4i)][(x_736 % 4i)];
        let x_741 : vec3<f32> = vs_TEXCOORD1;
        let x_744 : vec4<f32> = u_xlat8;
        let x_746 : vec3<f32> = ((vec3<f32>(x_739.x, x_739.y, x_739.w) * vec3<f32>(x_741.x, x_741.x, x_741.x)) + vec3<f32>(x_744.x, x_744.y, x_744.z));
        let x_747 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : i32 = u_xlati27;
        let x_752 : i32 = u_xlati27;
        let x_756 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_749 + 2i) / 4i)][((x_752 + 2i) % 4i)];
        let x_758 : vec3<f32> = vs_TEXCOORD1;
        let x_761 : vec4<f32> = u_xlat8;
        let x_763 : vec3<f32> = ((vec3<f32>(x_756.x, x_756.y, x_756.w) * vec3<f32>(x_758.z, x_758.z, x_758.z)) + vec3<f32>(x_761.x, x_761.y, x_761.z));
        let x_764 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
        let x_766 : vec4<f32> = u_xlat8;
        let x_768 : i32 = u_xlati27;
        let x_771 : i32 = u_xlati27;
        let x_775 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_768 + 3i) / 4i)][((x_771 + 3i) % 4i)];
        let x_777 : vec3<f32> = (vec3<f32>(x_766.x, x_766.y, x_766.z) + vec3<f32>(x_775.x, x_775.y, x_775.w));
        let x_778 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
        let x_780 : vec4<f32> = u_xlat8;
        let x_782 : vec4<f32> = u_xlat8;
        let x_784 : vec2<f32> = (vec2<f32>(x_780.x, x_780.y) / vec2<f32>(x_782.z, x_782.z));
        let x_785 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
        let x_787 : vec4<f32> = u_xlat8;
        let x_790 : vec2<f32> = ((vec2<f32>(x_787.x, x_787.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_791 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_793 : vec4<f32> = u_xlat8;
        let x_797 : vec2<f32> = clamp(vec2<f32>(x_793.x, x_793.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_798 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
        let x_800 : u32 = u_xlatu1;
        let x_803 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_800)];
        let x_805 : vec4<f32> = u_xlat8;
        let x_808 : u32 = u_xlatu1;
        let x_811 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_808)];
        let x_813 : vec2<f32> = ((vec2<f32>(x_803.x, x_803.y) * vec2<f32>(x_805.x, x_805.y)) + vec2<f32>(x_811.z, x_811.w));
        let x_814 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
      } else {
        let x_818 : i32 = u_xlati36;
        u_xlatb36 = (x_818 == 1i);
        let x_820 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_820);
        let x_822 : i32 = u_xlati36;
        if ((x_822 != 0i)) {
          let x_828 : vec3<f32> = vs_TEXCOORD1;
          let x_830 : i32 = u_xlati27;
          let x_833 : i32 = u_xlati27;
          let x_837 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_830 + 1i) / 4i)][((x_833 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_828.y, x_828.y) * vec2<f32>(x_837.x, x_837.y));
          let x_840 : i32 = u_xlati27;
          let x_842 : i32 = u_xlati27;
          let x_845 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[(x_840 / 4i)][(x_842 % 4i)];
          let x_847 : vec3<f32> = vs_TEXCOORD1;
          let x_850 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_845.x, x_845.y) * vec2<f32>(x_847.x, x_847.x)) + x_850);
          let x_852 : i32 = u_xlati27;
          let x_855 : i32 = u_xlati27;
          let x_859 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_852 + 2i) / 4i)][((x_855 + 2i) % 4i)];
          let x_861 : vec3<f32> = vs_TEXCOORD1;
          let x_864 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_859.x, x_859.y) * vec2<f32>(x_861.z, x_861.z)) + x_864);
          let x_866 : vec2<f32> = u_xlat30;
          let x_867 : i32 = u_xlati27;
          let x_870 : i32 = u_xlati27;
          let x_874 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_867 + 3i) / 4i)][((x_870 + 3i) % 4i)];
          u_xlat30 = (x_866 + vec2<f32>(x_874.x, x_874.y));
          let x_877 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_877 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_880 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_880);
          let x_882 : u32 = u_xlatu1;
          let x_885 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_882)];
          let x_887 : vec2<f32> = u_xlat30;
          let x_889 : u32 = u_xlatu1;
          let x_892 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_889)];
          let x_894 : vec2<f32> = ((vec2<f32>(x_885.x, x_885.y) * x_887) + vec2<f32>(x_892.z, x_892.w));
          let x_895 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        } else {
          let x_899 : vec3<f32> = vs_TEXCOORD1;
          let x_901 : i32 = u_xlati27;
          let x_904 : i32 = u_xlati27;
          let x_908 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_901 + 1i) / 4i)][((x_904 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_899.y, x_899.y, x_899.y, x_899.y) * x_908);
          let x_910 : i32 = u_xlati27;
          let x_912 : i32 = u_xlati27;
          let x_915 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[(x_910 / 4i)][(x_912 % 4i)];
          let x_916 : vec3<f32> = vs_TEXCOORD1;
          let x_919 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_915 * vec4<f32>(x_916.x, x_916.x, x_916.x, x_916.x)) + x_919);
          let x_921 : i32 = u_xlati27;
          let x_924 : i32 = u_xlati27;
          let x_928 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_921 + 2i) / 4i)][((x_924 + 2i) % 4i)];
          let x_929 : vec3<f32> = vs_TEXCOORD1;
          let x_932 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_928 * vec4<f32>(x_929.z, x_929.z, x_929.z, x_929.z)) + x_932);
          let x_934 : vec4<f32> = u_xlat9;
          let x_935 : i32 = u_xlati27;
          let x_938 : i32 = u_xlati27;
          let x_942 : vec4<f32> = x_702.x_AdditionalLightsWorldToLights[((x_935 + 3i) / 4i)][((x_938 + 3i) % 4i)];
          u_xlat9 = (x_934 + x_942);
          let x_944 : vec4<f32> = u_xlat9;
          let x_946 : vec4<f32> = u_xlat9;
          let x_948 : vec3<f32> = (vec3<f32>(x_944.x, x_944.y, x_944.z) / vec3<f32>(x_946.w, x_946.w, x_946.w));
          let x_949 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
          let x_951 : vec4<f32> = u_xlat9;
          let x_953 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(vec3<f32>(x_951.x, x_951.y, x_951.z), vec3<f32>(x_953.x, x_953.y, x_953.z));
          let x_956 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_956);
          let x_958 : f32 = u_xlat36;
          let x_960 : vec4<f32> = u_xlat9;
          let x_962 : vec3<f32> = (vec3<f32>(x_958, x_958, x_958) * vec3<f32>(x_960.x, x_960.y, x_960.z));
          let x_963 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
          let x_965 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(abs(vec3<f32>(x_965.x, x_965.y, x_965.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_970 : f32 = u_xlat36;
          u_xlat36 = max(x_970, 0.000001f);
          let x_973 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_973);
          let x_976 : f32 = u_xlat36;
          let x_978 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_976, x_976, x_976) * vec3<f32>(x_978.z, x_978.x, x_978.y));
          let x_982 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_982);
          let x_986 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_986, 0.0f, 1.0f);
          let x_990 : vec3<f32> = u_xlat10;
          let x_993 : vec4<bool> = (vec4<f32>(x_990.y, x_990.z, x_990.y, x_990.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_993.x, x_993.y);
          let x_997 : bool = u_xlatb27.x;
          if (x_997) {
            let x_1002 : f32 = u_xlat10.x;
            x_998 = x_1002;
          } else {
            let x_1005 : f32 = u_xlat10.x;
            x_998 = -(x_1005);
          }
          let x_1007 : f32 = x_998;
          u_xlat27.x = x_1007;
          let x_1010 : bool = u_xlatb27.y;
          if (x_1010) {
            let x_1015 : f32 = u_xlat10.x;
            x_1011 = x_1015;
          } else {
            let x_1018 : f32 = u_xlat10.x;
            x_1011 = -(x_1018);
          }
          let x_1020 : f32 = x_1011;
          u_xlat27.y = x_1020;
          let x_1022 : vec4<f32> = u_xlat9;
          let x_1024 : f32 = u_xlat36;
          let x_1027 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1024, x_1024)) + x_1027);
          let x_1029 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1029 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1032 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1032, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1036 : u32 = u_xlatu1;
          let x_1039 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1036)];
          let x_1041 : vec2<f32> = u_xlat27;
          let x_1043 : u32 = u_xlatu1;
          let x_1046 : vec4<f32> = x_702.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1043)];
          let x_1048 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.y) * x_1041) + vec2<f32>(x_1046.z, x_1046.w));
          let x_1049 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1048.x, x_1048.y, x_1049.z, x_1049.w);
        }
      }
      let x_1056 : vec4<f32> = u_xlat8;
      let x_1059 : f32 = x_43.x_GlobalMipBias.x;
      let x_1060 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1056.x, x_1056.y), x_1059);
      u_xlat8 = x_1060;
      let x_1062 : bool = u_xlatb5.y;
      if (x_1062) {
        let x_1067 : f32 = u_xlat8.w;
        x_1063 = x_1067;
      } else {
        let x_1070 : f32 = u_xlat8.x;
        x_1063 = x_1070;
      }
      let x_1071 : f32 = x_1063;
      u_xlat36 = x_1071;
      let x_1073 : bool = u_xlatb5.x;
      if (x_1073) {
        let x_1077 : vec4<f32> = u_xlat8;
        x_1074 = vec3<f32>(x_1077.x, x_1077.y, x_1077.z);
      } else {
        let x_1080 : f32 = u_xlat36;
        x_1074 = vec3<f32>(x_1080, x_1080, x_1080);
      }
      let x_1082 : vec3<f32> = x_1074;
      let x_1083 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1089 : vec4<f32> = u_xlat8;
    let x_1091 : u32 = u_xlatu1;
    let x_1094 : vec4<f32> = x_600.x_AdditionalLightsColor[bitcast<i32>(x_1091)];
    let x_1096 : vec3<f32> = (vec3<f32>(x_1089.x, x_1089.y, x_1089.z) * vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
    let x_1097 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
    let x_1099 : f32 = u_xlat35;
    let x_1101 : vec4<f32> = u_xlat8;
    let x_1103 : vec3<f32> = (vec3<f32>(x_1099, x_1099, x_1099) * vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
    let x_1104 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
    let x_1106 : vec3<f32> = u_xlat2;
    let x_1107 : vec3<f32> = u_xlat7;
    u_xlat1.x = dot(x_1106, x_1107);
    let x_1111 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_1111, 0.0f, 1.0f);
    let x_1114 : vec4<f32> = u_xlat1;
    let x_1116 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1114.x, x_1114.x, x_1114.x) * vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
    let x_1119 : vec4<f32> = u_xlat1;
    let x_1121 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1119.y, x_1119.z, x_1119.w) * x_1121);
    let x_1123 : vec3<f32> = u_xlat7;
    let x_1124 : vec4<f32> = u_xlat0;
    let x_1127 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1123 * vec3<f32>(x_1124.x, x_1124.x, x_1124.x)) + x_1127);

    continuing {
      let x_1129 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1129 + bitcast<u32>(1i));
    }
  }
  let x_1131 : vec3<f32> = u_xlat3;
  let x_1132 : vec4<f32> = u_xlat1;
  let x_1135 : vec4<f32> = u_xlat4;
  let x_1137 : vec3<f32> = ((x_1131 * vec3<f32>(x_1132.y, x_1132.z, x_1132.w)) + vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1142 : vec3<f32> = u_xlat6;
  let x_1143 : vec4<f32> = u_xlat1;
  let x_1145 : vec3<f32> = (x_1142 + vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
  let x_1146 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1149 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1149 == 1.0f);
  let x_1151 : bool = u_xlatb11;
  let x_1152 : bool = u_xlatb22;
  u_xlatb11 = (x_1151 | x_1152);
  let x_1154 : bool = u_xlatb11;
  if (x_1154) {
    let x_1159 : f32 = u_xlat0.x;
    x_1155 = x_1159;
  } else {
    x_1155 = 1.0f;
  }
  let x_1161 : f32 = x_1155;
  SV_Target0.w = x_1161;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

