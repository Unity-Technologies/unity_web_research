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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_342 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_416 : LightCookies;

@group(0) @binding(2) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_669 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_771 : AdditionalLightsCookies;

@group(0) @binding(3) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_367 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_503 : f32;
  var x_514 : vec3<f32>;
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
  var x_1067 : f32;
  var x_1080 : f32;
  var x_1132 : f32;
  var x_1143 : vec3<f32>;
  var x_1225 : f32;
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
  let x_234 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  u_xlat2.w = 1.0f;
  let x_241 : vec4<f32> = x_184.unity_SHAr;
  let x_242 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_241, x_242);
  let x_247 : vec4<f32> = x_184.unity_SHAg;
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_247, x_248);
  let x_254 : vec4<f32> = x_184.unity_SHAb;
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_254, x_255);
  let x_259 : vec4<f32> = u_xlat2;
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_259.y, x_259.z, x_259.z, x_259.x) * vec4<f32>(x_261.x, x_261.y, x_261.z, x_261.z));
  let x_267 : vec4<f32> = x_184.unity_SHBr;
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_267, x_268);
  let x_273 : vec4<f32> = x_184.unity_SHBg;
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_273, x_274);
  let x_279 : vec4<f32> = x_184.unity_SHBb;
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_279, x_280);
  let x_284 : f32 = u_xlat2.y;
  let x_286 : f32 = u_xlat2.y;
  u_xlat11.x = (x_284 * x_286);
  let x_290 : f32 = u_xlat2.x;
  let x_292 : f32 = u_xlat2.x;
  let x_295 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_290 * x_292) + -(x_295));
  let x_301 : vec4<f32> = x_184.unity_SHC;
  let x_303 : vec3<f32> = u_xlat11;
  let x_306 : vec3<f32> = u_xlat5;
  let x_307 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + x_306);
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec3<f32> = u_xlat3;
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_310 + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_314, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_319 : vec4<f32> = vs_TEXCOORD6;
  let x_320 : vec2<f32> = vec2<f32>(x_319.x, x_319.y);
  let x_322 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_320.x, x_320.y, x_322);
  let x_334 : vec3<f32> = txVec0;
  let x_336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_334.xy, x_334.z);
  u_xlat11.x = x_336;
  let x_345 : f32 = x_342.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_345) + 1.0f);
  let x_349 : f32 = u_xlat11.x;
  let x_351 : f32 = x_342.x_MainLightShadowParams.x;
  let x_353 : f32 = u_xlat33;
  u_xlat11.x = ((x_349 * x_351) + x_353);
  let x_357 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (0.0f >= x_357);
  let x_361 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_361 >= 1.0f);
  let x_363 : bool = u_xlatb33;
  let x_364 : bool = u_xlatb1;
  u_xlatb33 = (x_363 | x_364);
  let x_366 : bool = u_xlatb33;
  if (x_366) {
    x_367 = 1.0f;
  } else {
    let x_372 : f32 = u_xlat11.x;
    x_367 = x_372;
  }
  let x_373 : f32 = x_367;
  u_xlat11.x = x_373;
  let x_376 : vec3<f32> = vs_TEXCOORD1;
  let x_380 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_382 : vec3<f32> = (x_376 + -(x_380));
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat4;
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : f32 = u_xlat33;
  let x_392 : f32 = x_342.x_MainLightShadowParams.z;
  let x_395 : f32 = x_342.x_MainLightShadowParams.w;
  u_xlat33 = ((x_390 * x_392) + x_395);
  let x_397 : f32 = u_xlat33;
  u_xlat33 = clamp(x_397, 0.0f, 1.0f);
  let x_400 : f32 = u_xlat11.x;
  u_xlat1.x = (-(x_400) + 1.0f);
  let x_404 : f32 = u_xlat33;
  let x_406 : f32 = u_xlat1.x;
  let x_409 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_404 * x_406) + x_409);
  let x_418 : f32 = x_416.x_MainLightCookieTextureFormat;
  u_xlatb33 = !((x_418 == -1.0f));
  let x_421 : bool = u_xlatb33;
  if (x_421) {
    let x_424 : vec3<f32> = vs_TEXCOORD1;
    let x_427 : vec4<f32> = x_416.x_MainLightWorldToLight[1i];
    let x_429 : vec2<f32> = (vec2<f32>(x_424.y, x_424.y) * vec2<f32>(x_427.x, x_427.y));
    let x_430 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
    let x_433 : vec4<f32> = x_416.x_MainLightWorldToLight[0i];
    let x_435 : vec3<f32> = vs_TEXCOORD1;
    let x_438 : vec4<f32> = u_xlat4;
    let x_440 : vec2<f32> = ((vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_435.x, x_435.x)) + vec2<f32>(x_438.x, x_438.y));
    let x_441 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
    let x_444 : vec4<f32> = x_416.x_MainLightWorldToLight[2i];
    let x_446 : vec3<f32> = vs_TEXCOORD1;
    let x_449 : vec4<f32> = u_xlat4;
    let x_451 : vec2<f32> = ((vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_446.z, x_446.z)) + vec2<f32>(x_449.x, x_449.y));
    let x_452 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
    let x_454 : vec4<f32> = u_xlat4;
    let x_458 : vec4<f32> = x_416.x_MainLightWorldToLight[3i];
    let x_460 : vec2<f32> = (vec2<f32>(x_454.x, x_454.y) + vec2<f32>(x_458.x, x_458.y));
    let x_461 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
    let x_463 : vec4<f32> = u_xlat4;
    let x_467 : vec2<f32> = ((vec2<f32>(x_463.x, x_463.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_468 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
    let x_475 : vec4<f32> = u_xlat4;
    let x_478 : f32 = x_43.x_GlobalMipBias.x;
    let x_479 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_475.x, x_475.y), x_478);
    u_xlat4 = x_479;
    let x_484 : f32 = x_416.x_MainLightCookieTextureFormat;
    let x_486 : f32 = x_416.x_MainLightCookieTextureFormat;
    let x_488 : f32 = x_416.x_MainLightCookieTextureFormat;
    let x_490 : f32 = x_416.x_MainLightCookieTextureFormat;
    let x_491 : vec4<f32> = vec4<f32>(x_484, x_486, x_488, x_490);
    let x_499 : vec4<bool> = (vec4<f32>(x_491.x, x_491.y, x_491.z, x_491.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_499.x, x_499.y);
    let x_502 : bool = u_xlatb5.y;
    if (x_502) {
      let x_507 : f32 = u_xlat4.w;
      x_503 = x_507;
    } else {
      let x_510 : f32 = u_xlat4.x;
      x_503 = x_510;
    }
    let x_511 : f32 = x_503;
    u_xlat33 = x_511;
    let x_513 : bool = u_xlatb5.x;
    if (x_513) {
      let x_517 : vec4<f32> = u_xlat4;
      x_514 = vec3<f32>(x_517.x, x_517.y, x_517.z);
    } else {
      let x_520 : f32 = u_xlat33;
      x_514 = vec3<f32>(x_520, x_520, x_520);
    }
    let x_522 : vec3<f32> = x_514;
    let x_523 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_529 : vec4<f32> = u_xlat4;
  let x_532 : vec4<f32> = x_43.x_MainLightColor;
  let x_534 : vec3<f32> = (vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_538 : f32 = u_xlat11.x;
  let x_540 : f32 = x_184.unity_LightData.z;
  u_xlat11.x = (x_538 * x_540);
  let x_543 : vec3<f32> = u_xlat11;
  let x_545 : vec4<f32> = u_xlat4;
  let x_547 : vec3<f32> = (vec3<f32>(x_543.x, x_543.x, x_543.x) * vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat2;
  let x_553 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat11.x = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_558 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_558, 0.0f, 1.0f);
  let x_561 : vec3<f32> = u_xlat11;
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = (vec3<f32>(x_561.x, x_561.x, x_561.x) * vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat1;
  let x_570 : vec4<f32> = u_xlat4;
  let x_572 : vec3<f32> = (vec3<f32>(x_568.y, x_568.z, x_568.w) * vec3<f32>(x_570.x, x_570.y, x_570.z));
  let x_573 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat0;
  let x_577 : vec4<f32> = u_xlat4;
  let x_579 : vec3<f32> = (vec3<f32>(x_575.x, x_575.x, x_575.x) * vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_583 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_585 : f32 = x_184.unity_LightData.y;
  u_xlat11.x = min(x_583, x_585);
  let x_591 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_591));
  let x_595 : f32 = x_416.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_597 : f32 = x_416.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_599 : f32 = x_416.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_601 : f32 = x_416.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_602 : vec4<f32> = vec4<f32>(x_595, x_597, x_599, x_601);
  let x_608 : vec4<bool> = (vec4<f32>(x_602.x, x_602.y, x_602.z, x_602.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_608.x, x_608.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_620 : u32 = u_xlatu_loop_1;
    let x_621 : u32 = u_xlatu11;
    if ((x_620 < x_621)) {
    } else {
      break;
    }
    let x_624 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_624 >> 2u);
    let x_628 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_628 & 3u));
    let x_631 : u32 = u_xlatu1;
    let x_634 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_631)];
    let x_644 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_649 : vec4<u32> = indexable[x_644];
    u_xlat1.x = dot(x_634, bitcast<vec4<f32>>(x_649));
    let x_654 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_654));
    let x_658 : vec3<f32> = vs_TEXCOORD1;
    let x_670 : u32 = u_xlatu1;
    let x_673 : vec4<f32> = x_669.x_AdditionalLightsPosition[bitcast<i32>(x_670)];
    let x_676 : u32 = u_xlatu1;
    let x_679 : vec4<f32> = x_669.x_AdditionalLightsPosition[bitcast<i32>(x_676)];
    u_xlat7 = ((-(x_658) * vec3<f32>(x_673.w, x_673.w, x_673.w)) + vec3<f32>(x_679.x, x_679.y, x_679.z));
    let x_683 : vec3<f32> = u_xlat7;
    let x_684 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_683, x_684);
    let x_686 : f32 = u_xlat35;
    u_xlat35 = max(x_686, 6.10351562e-05f);
    let x_690 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_690);
    let x_692 : f32 = u_xlat36;
    let x_694 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_692, x_692, x_692) * x_694);
    let x_696 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_696);
    let x_698 : f32 = u_xlat35;
    let x_699 : u32 = u_xlatu1;
    let x_702 : f32 = x_669.x_AdditionalLightsAttenuation[bitcast<i32>(x_699)].x;
    u_xlat35 = (x_698 * x_702);
    let x_704 : f32 = u_xlat35;
    let x_706 : f32 = u_xlat35;
    u_xlat35 = ((-(x_704) * x_706) + 1.0f);
    let x_709 : f32 = u_xlat35;
    u_xlat35 = max(x_709, 0.0f);
    let x_711 : f32 = u_xlat35;
    let x_712 : f32 = u_xlat35;
    u_xlat35 = (x_711 * x_712);
    let x_714 : f32 = u_xlat35;
    let x_715 : f32 = u_xlat36;
    u_xlat35 = (x_714 * x_715);
    let x_717 : u32 = u_xlatu1;
    let x_720 : vec4<f32> = x_669.x_AdditionalLightsSpotDir[bitcast<i32>(x_717)];
    let x_722 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_720.x, x_720.y, x_720.z), x_722);
    let x_724 : f32 = u_xlat36;
    let x_725 : u32 = u_xlatu1;
    let x_728 : f32 = x_669.x_AdditionalLightsAttenuation[bitcast<i32>(x_725)].z;
    let x_730 : u32 = u_xlatu1;
    let x_733 : f32 = x_669.x_AdditionalLightsAttenuation[bitcast<i32>(x_730)].w;
    u_xlat36 = ((x_724 * x_728) + x_733);
    let x_735 : f32 = u_xlat36;
    u_xlat36 = clamp(x_735, 0.0f, 1.0f);
    let x_737 : f32 = u_xlat36;
    let x_738 : f32 = u_xlat36;
    u_xlat36 = (x_737 * x_738);
    let x_740 : f32 = u_xlat35;
    let x_741 : f32 = u_xlat36;
    u_xlat35 = (x_740 * x_741);
    let x_744 : u32 = u_xlatu1;
    u_xlatu36 = (x_744 >> 5u);
    let x_747 : u32 = u_xlatu1;
    u_xlati37 = (1i << bitcast<u32>((bitcast<i32>(x_747) & 31i)));
    let x_753 : i32 = u_xlati37;
    let x_755 : u32 = u_xlatu36;
    let x_758 : f32 = x_416.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_755)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_753) & bitcast<u32>(x_758)));
    let x_762 : i32 = u_xlati36;
    if ((x_762 != 0i)) {
      let x_772 : u32 = u_xlatu1;
      let x_775 : f32 = x_771.x_AdditionalLightsLightTypes[bitcast<i32>(x_772)].el;
      u_xlati36 = i32(x_775);
      let x_777 : i32 = u_xlati36;
      u_xlati37 = select(1i, 0i, (x_777 != 0i));
      let x_781 : u32 = u_xlatu1;
      u_xlati27 = (bitcast<i32>(x_781) << bitcast<u32>(2i));
      let x_784 : i32 = u_xlati37;
      if ((x_784 != 0i)) {
        let x_789 : vec3<f32> = vs_TEXCOORD1;
        let x_791 : i32 = u_xlati27;
        let x_794 : i32 = u_xlati27;
        let x_798 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[((x_791 + 1i) / 4i)][((x_794 + 1i) % 4i)];
        let x_800 : vec3<f32> = (vec3<f32>(x_789.y, x_789.y, x_789.y) * vec3<f32>(x_798.x, x_798.y, x_798.w));
        let x_801 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
        let x_803 : i32 = u_xlati27;
        let x_805 : i32 = u_xlati27;
        let x_808 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[(x_803 / 4i)][(x_805 % 4i)];
        let x_810 : vec3<f32> = vs_TEXCOORD1;
        let x_813 : vec4<f32> = u_xlat8;
        let x_815 : vec3<f32> = ((vec3<f32>(x_808.x, x_808.y, x_808.w) * vec3<f32>(x_810.x, x_810.x, x_810.x)) + vec3<f32>(x_813.x, x_813.y, x_813.z));
        let x_816 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
        let x_818 : i32 = u_xlati27;
        let x_821 : i32 = u_xlati27;
        let x_825 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[((x_818 + 2i) / 4i)][((x_821 + 2i) % 4i)];
        let x_827 : vec3<f32> = vs_TEXCOORD1;
        let x_830 : vec4<f32> = u_xlat8;
        let x_832 : vec3<f32> = ((vec3<f32>(x_825.x, x_825.y, x_825.w) * vec3<f32>(x_827.z, x_827.z, x_827.z)) + vec3<f32>(x_830.x, x_830.y, x_830.z));
        let x_833 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
        let x_835 : vec4<f32> = u_xlat8;
        let x_837 : i32 = u_xlati27;
        let x_840 : i32 = u_xlati27;
        let x_844 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[((x_837 + 3i) / 4i)][((x_840 + 3i) % 4i)];
        let x_846 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) + vec3<f32>(x_844.x, x_844.y, x_844.w));
        let x_847 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
        let x_849 : vec4<f32> = u_xlat8;
        let x_851 : vec4<f32> = u_xlat8;
        let x_853 : vec2<f32> = (vec2<f32>(x_849.x, x_849.y) / vec2<f32>(x_851.z, x_851.z));
        let x_854 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_853.x, x_853.y, x_854.z, x_854.w);
        let x_856 : vec4<f32> = u_xlat8;
        let x_859 : vec2<f32> = ((vec2<f32>(x_856.x, x_856.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_860 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_862 : vec4<f32> = u_xlat8;
        let x_866 : vec2<f32> = clamp(vec2<f32>(x_862.x, x_862.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_867 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_866.x, x_866.y, x_867.z, x_867.w);
        let x_869 : u32 = u_xlatu1;
        let x_872 : vec4<f32> = x_771.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_869)];
        let x_874 : vec4<f32> = u_xlat8;
        let x_877 : u32 = u_xlatu1;
        let x_880 : vec4<f32> = x_771.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_877)];
        let x_882 : vec2<f32> = ((vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_874.x, x_874.y)) + vec2<f32>(x_880.z, x_880.w));
        let x_883 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_882.x, x_882.y, x_883.z, x_883.w);
      } else {
        let x_887 : i32 = u_xlati36;
        u_xlatb36 = (x_887 == 1i);
        let x_889 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_889);
        let x_891 : i32 = u_xlati36;
        if ((x_891 != 0i)) {
          let x_897 : vec3<f32> = vs_TEXCOORD1;
          let x_899 : i32 = u_xlati27;
          let x_902 : i32 = u_xlati27;
          let x_906 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[((x_899 + 1i) / 4i)][((x_902 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_897.y, x_897.y) * vec2<f32>(x_906.x, x_906.y));
          let x_909 : i32 = u_xlati27;
          let x_911 : i32 = u_xlati27;
          let x_914 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[(x_909 / 4i)][(x_911 % 4i)];
          let x_916 : vec3<f32> = vs_TEXCOORD1;
          let x_919 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_914.x, x_914.y) * vec2<f32>(x_916.x, x_916.x)) + x_919);
          let x_921 : i32 = u_xlati27;
          let x_924 : i32 = u_xlati27;
          let x_928 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[((x_921 + 2i) / 4i)][((x_924 + 2i) % 4i)];
          let x_930 : vec3<f32> = vs_TEXCOORD1;
          let x_933 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_928.x, x_928.y) * vec2<f32>(x_930.z, x_930.z)) + x_933);
          let x_935 : vec2<f32> = u_xlat30;
          let x_936 : i32 = u_xlati27;
          let x_939 : i32 = u_xlati27;
          let x_943 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[((x_936 + 3i) / 4i)][((x_939 + 3i) % 4i)];
          u_xlat30 = (x_935 + vec2<f32>(x_943.x, x_943.y));
          let x_946 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_946 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_949 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_949);
          let x_951 : u32 = u_xlatu1;
          let x_954 : vec4<f32> = x_771.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_951)];
          let x_956 : vec2<f32> = u_xlat30;
          let x_958 : u32 = u_xlatu1;
          let x_961 : vec4<f32> = x_771.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_958)];
          let x_963 : vec2<f32> = ((vec2<f32>(x_954.x, x_954.y) * x_956) + vec2<f32>(x_961.z, x_961.w));
          let x_964 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
        } else {
          let x_968 : vec3<f32> = vs_TEXCOORD1;
          let x_970 : i32 = u_xlati27;
          let x_973 : i32 = u_xlati27;
          let x_977 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[((x_970 + 1i) / 4i)][((x_973 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_968.y, x_968.y, x_968.y, x_968.y) * x_977);
          let x_979 : i32 = u_xlati27;
          let x_981 : i32 = u_xlati27;
          let x_984 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[(x_979 / 4i)][(x_981 % 4i)];
          let x_985 : vec3<f32> = vs_TEXCOORD1;
          let x_988 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_984 * vec4<f32>(x_985.x, x_985.x, x_985.x, x_985.x)) + x_988);
          let x_990 : i32 = u_xlati27;
          let x_993 : i32 = u_xlati27;
          let x_997 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[((x_990 + 2i) / 4i)][((x_993 + 2i) % 4i)];
          let x_998 : vec3<f32> = vs_TEXCOORD1;
          let x_1001 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_997 * vec4<f32>(x_998.z, x_998.z, x_998.z, x_998.z)) + x_1001);
          let x_1003 : vec4<f32> = u_xlat9;
          let x_1004 : i32 = u_xlati27;
          let x_1007 : i32 = u_xlati27;
          let x_1011 : vec4<f32> = x_771.x_AdditionalLightsWorldToLights[((x_1004 + 3i) / 4i)][((x_1007 + 3i) % 4i)];
          u_xlat9 = (x_1003 + x_1011);
          let x_1013 : vec4<f32> = u_xlat9;
          let x_1015 : vec4<f32> = u_xlat9;
          let x_1017 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) / vec3<f32>(x_1015.w, x_1015.w, x_1015.w));
          let x_1018 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
          let x_1020 : vec4<f32> = u_xlat9;
          let x_1022 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
          let x_1025 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_1025);
          let x_1027 : f32 = u_xlat36;
          let x_1029 : vec4<f32> = u_xlat9;
          let x_1031 : vec3<f32> = (vec3<f32>(x_1027, x_1027, x_1027) * vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
          let x_1032 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
          let x_1034 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(abs(vec3<f32>(x_1034.x, x_1034.y, x_1034.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1039 : f32 = u_xlat36;
          u_xlat36 = max(x_1039, 0.000001f);
          let x_1042 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_1042);
          let x_1045 : f32 = u_xlat36;
          let x_1047 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1045, x_1045, x_1045) * vec3<f32>(x_1047.z, x_1047.x, x_1047.y));
          let x_1051 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1051);
          let x_1055 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1055, 0.0f, 1.0f);
          let x_1059 : vec3<f32> = u_xlat10;
          let x_1062 : vec4<bool> = (vec4<f32>(x_1059.y, x_1059.z, x_1059.y, x_1059.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1062.x, x_1062.y);
          let x_1066 : bool = u_xlatb27.x;
          if (x_1066) {
            let x_1071 : f32 = u_xlat10.x;
            x_1067 = x_1071;
          } else {
            let x_1074 : f32 = u_xlat10.x;
            x_1067 = -(x_1074);
          }
          let x_1076 : f32 = x_1067;
          u_xlat27.x = x_1076;
          let x_1079 : bool = u_xlatb27.y;
          if (x_1079) {
            let x_1084 : f32 = u_xlat10.x;
            x_1080 = x_1084;
          } else {
            let x_1087 : f32 = u_xlat10.x;
            x_1080 = -(x_1087);
          }
          let x_1089 : f32 = x_1080;
          u_xlat27.y = x_1089;
          let x_1091 : vec4<f32> = u_xlat9;
          let x_1093 : f32 = u_xlat36;
          let x_1096 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(x_1093, x_1093)) + x_1096);
          let x_1098 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1098 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1101 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1101, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1105 : u32 = u_xlatu1;
          let x_1108 : vec4<f32> = x_771.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1105)];
          let x_1110 : vec2<f32> = u_xlat27;
          let x_1112 : u32 = u_xlatu1;
          let x_1115 : vec4<f32> = x_771.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1112)];
          let x_1117 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.y) * x_1110) + vec2<f32>(x_1115.z, x_1115.w));
          let x_1118 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
        }
      }
      let x_1125 : vec4<f32> = u_xlat8;
      let x_1128 : f32 = x_43.x_GlobalMipBias.x;
      let x_1129 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1125.x, x_1125.y), x_1128);
      u_xlat8 = x_1129;
      let x_1131 : bool = u_xlatb5.y;
      if (x_1131) {
        let x_1136 : f32 = u_xlat8.w;
        x_1132 = x_1136;
      } else {
        let x_1139 : f32 = u_xlat8.x;
        x_1132 = x_1139;
      }
      let x_1140 : f32 = x_1132;
      u_xlat36 = x_1140;
      let x_1142 : bool = u_xlatb5.x;
      if (x_1142) {
        let x_1146 : vec4<f32> = u_xlat8;
        x_1143 = vec3<f32>(x_1146.x, x_1146.y, x_1146.z);
      } else {
        let x_1149 : f32 = u_xlat36;
        x_1143 = vec3<f32>(x_1149, x_1149, x_1149);
      }
      let x_1151 : vec3<f32> = x_1143;
      let x_1152 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1158 : vec4<f32> = u_xlat8;
    let x_1160 : u32 = u_xlatu1;
    let x_1163 : vec4<f32> = x_669.x_AdditionalLightsColor[bitcast<i32>(x_1160)];
    let x_1165 : vec3<f32> = (vec3<f32>(x_1158.x, x_1158.y, x_1158.z) * vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
    let x_1166 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
    let x_1168 : f32 = u_xlat35;
    let x_1170 : vec4<f32> = u_xlat8;
    let x_1172 : vec3<f32> = (vec3<f32>(x_1168, x_1168, x_1168) * vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
    let x_1173 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
    let x_1175 : vec4<f32> = u_xlat2;
    let x_1177 : vec3<f32> = u_xlat7;
    u_xlat1.x = dot(vec3<f32>(x_1175.x, x_1175.y, x_1175.z), x_1177);
    let x_1181 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_1181, 0.0f, 1.0f);
    let x_1184 : vec4<f32> = u_xlat1;
    let x_1186 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1184.x, x_1184.x, x_1184.x) * vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
    let x_1189 : vec4<f32> = u_xlat1;
    let x_1191 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1189.y, x_1189.z, x_1189.w) * x_1191);
    let x_1193 : vec3<f32> = u_xlat7;
    let x_1194 : vec4<f32> = u_xlat0;
    let x_1197 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1193 * vec3<f32>(x_1194.x, x_1194.x, x_1194.x)) + x_1197);

    continuing {
      let x_1199 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1199 + bitcast<u32>(1i));
    }
  }
  let x_1201 : vec3<f32> = u_xlat3;
  let x_1202 : vec4<f32> = u_xlat1;
  let x_1205 : vec4<f32> = u_xlat4;
  let x_1207 : vec3<f32> = ((x_1201 * vec3<f32>(x_1202.y, x_1202.z, x_1202.w)) + vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1208 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1212 : vec3<f32> = u_xlat6;
  let x_1213 : vec4<f32> = u_xlat1;
  let x_1215 : vec3<f32> = (x_1212 + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1219 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1219 == 1.0f);
  let x_1221 : bool = u_xlatb11;
  let x_1222 : bool = u_xlatb22;
  u_xlatb11 = (x_1221 | x_1222);
  let x_1224 : bool = u_xlatb11;
  if (x_1224) {
    let x_1229 : f32 = u_xlat0.x;
    x_1225 = x_1229;
  } else {
    x_1225 = 1.0f;
  }
  let x_1231 : f32 = x_1225;
  SV_Target0.w = x_1231;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

