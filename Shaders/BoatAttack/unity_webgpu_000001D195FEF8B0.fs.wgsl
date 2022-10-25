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

@group(1) @binding(4) var<uniform> x_322 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1655 : LightCookies;

@group(0) @binding(2) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1905 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2014 : AdditionalLightsCookies;

@group(0) @binding(3) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_130 : f32;
  var u_xlatb18 : bool;
  var u_xlatb54 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat56 : f32;
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
  var u_xlatb1 : bool;
  var x_1606 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_1741 : f32;
  var x_1752 : vec3<f32>;
  var u_xlatu18 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati56 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat57 : f32;
  var u_xlatu57 : u32;
  var u_xlati58 : i32;
  var u_xlati57 : i32;
  var u_xlati41 : i32;
  var u_xlatb57 : bool;
  var u_xlat44 : vec2<f32>;
  var u_xlatb41 : vec2<bool>;
  var u_xlat41 : vec2<f32>;
  var x_2308 : f32;
  var x_2321 : f32;
  var x_2373 : f32;
  var x_2384 : vec3<f32>;
  var x_2477 : f32;
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
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb36;
  if (x_129) {
    let x_134 : f32 = u_xlat18.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat18.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat18.x;
  u_xlatb18 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb18;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_157 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_43.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat18;
  u_xlat18 = vec3<f32>(x_163.x, x_164.y, x_163.y);
  let x_171 : vec3<f32> = u_xlat18;
  let x_174 : f32 = x_43.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.z), x_174);
  u_xlat18.x = x_175.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
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
  let x_207 : f32 = x_184.unity_LODFade.x;
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
  u_xlat18.x = (x_284 * x_286);
  let x_290 : f32 = u_xlat2.x;
  let x_292 : f32 = u_xlat2.x;
  let x_295 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_290 * x_292) + -(x_295));
  let x_301 : vec4<f32> = x_184.unity_SHC;
  let x_303 : vec3<f32> = u_xlat18;
  let x_306 : vec4<f32> = u_xlat5;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = u_xlat3;
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_311 + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_315, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_325 : f32 = x_322.x_MainLightShadowParams.y;
  u_xlatb18 = (0.0f < x_325);
  let x_327 : bool = u_xlatb18;
  if (x_327) {
    let x_331 : f32 = x_322.x_MainLightShadowParams.y;
    u_xlatb18 = (x_331 == 1.0f);
    let x_333 : bool = u_xlatb18;
    if (x_333) {
      let x_337 : vec4<f32> = vs_TEXCOORD6;
      let x_340 : vec4<f32> = x_322.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_337.x, x_337.y, x_337.x, x_337.y) + x_340);
      let x_343 : vec4<f32> = u_xlat4;
      let x_344 : vec2<f32> = vec2<f32>(x_343.x, x_343.y);
      let x_346 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_344.x, x_344.y, x_346);
      let x_358 : vec3<f32> = txVec0;
      let x_360 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_358.xy, x_358.z);
      u_xlat5.x = x_360;
      let x_363 : vec4<f32> = u_xlat4;
      let x_364 : vec2<f32> = vec2<f32>(x_363.z, x_363.w);
      let x_366 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_364.x, x_364.y, x_366);
      let x_373 : vec3<f32> = txVec1;
      let x_375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_373.xy, x_373.z);
      u_xlat5.y = x_375;
      let x_377 : vec4<f32> = vs_TEXCOORD6;
      let x_381 : vec4<f32> = x_322.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_377.x, x_377.y, x_377.x, x_377.y) + x_381);
      let x_384 : vec4<f32> = u_xlat4;
      let x_385 : vec2<f32> = vec2<f32>(x_384.x, x_384.y);
      let x_387 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_385.x, x_385.y, x_387);
      let x_394 : vec3<f32> = txVec2;
      let x_396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_394.xy, x_394.z);
      u_xlat5.z = x_396;
      let x_399 : vec4<f32> = u_xlat4;
      let x_400 : vec2<f32> = vec2<f32>(x_399.z, x_399.w);
      let x_402 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_400.x, x_400.y, x_402);
      let x_409 : vec3<f32> = txVec3;
      let x_411 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_409.xy, x_409.z);
      u_xlat5.w = x_411;
      let x_413 : vec4<f32> = u_xlat5;
      u_xlat18.x = dot(x_413, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_420 : f32 = x_322.x_MainLightShadowParams.y;
      u_xlatb54 = (x_420 == 2.0f);
      let x_423 : bool = u_xlatb54;
      if (x_423) {
        let x_426 : vec4<f32> = vs_TEXCOORD6;
        let x_430 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_434 : vec2<f32> = ((vec2<f32>(x_426.x, x_426.y) * vec2<f32>(x_430.z, x_430.w)) + vec2<f32>(0.5f, 0.5f));
        let x_435 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
        let x_437 : vec4<f32> = u_xlat4;
        let x_439 : vec2<f32> = floor(vec2<f32>(x_437.x, x_437.y));
        let x_440 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_444 : vec4<f32> = vs_TEXCOORD6;
        let x_447 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_450 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_447.z, x_447.w)) + -(vec2<f32>(x_450.x, x_450.y)));
        let x_454 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_454.x, x_454.x, x_454.y, x_454.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_459 : vec4<f32> = u_xlat5;
        let x_461 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_459.x, x_459.x, x_459.z, x_459.z) * vec4<f32>(x_461.x, x_461.x, x_461.z, x_461.z));
        let x_464 : vec4<f32> = u_xlat6;
        let x_468 : vec2<f32> = (vec2<f32>(x_464.y, x_464.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_469 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_468.x, x_469.y, x_468.y, x_469.w);
        let x_471 : vec4<f32> = u_xlat6;
        let x_474 : vec2<f32> = u_xlat40;
        let x_476 : vec2<f32> = ((vec2<f32>(x_471.x, x_471.z) * vec2<f32>(0.5f, 0.5f)) + -(x_474));
        let x_477 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_480 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_480) + vec2<f32>(1.0f, 1.0f));
        let x_485 : vec2<f32> = u_xlat40;
        let x_487 : vec2<f32> = min(x_485, vec2<f32>(0.0f, 0.0f));
        let x_488 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
        let x_490 : vec4<f32> = u_xlat7;
        let x_493 : vec4<f32> = u_xlat7;
        let x_496 : vec2<f32> = u_xlat42;
        let x_497 : vec2<f32> = ((-(vec2<f32>(x_490.x, x_490.y)) * vec2<f32>(x_493.x, x_493.y)) + x_496);
        let x_498 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_500 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_500, vec2<f32>(0.0f, 0.0f));
        let x_502 : vec2<f32> = u_xlat40;
        let x_504 : vec2<f32> = u_xlat40;
        let x_506 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_502) * x_504) + vec2<f32>(x_506.y, x_506.w));
        let x_509 : vec4<f32> = u_xlat7;
        let x_511 : vec2<f32> = (vec2<f32>(x_509.x, x_509.y) + vec2<f32>(1.0f, 1.0f));
        let x_512 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
        let x_514 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_514 + vec2<f32>(1.0f, 1.0f));
        let x_517 : vec4<f32> = u_xlat6;
        let x_521 : vec2<f32> = (vec2<f32>(x_517.x, x_517.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_522 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
        let x_524 : vec2<f32> = u_xlat42;
        let x_525 : vec2<f32> = (x_524 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_526 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_528 : vec4<f32> = u_xlat7;
        let x_530 : vec2<f32> = (vec2<f32>(x_528.x, x_528.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_531 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_534 : vec2<f32> = u_xlat40;
        let x_535 : vec2<f32> = (x_534 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_536 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
        let x_538 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_538.y, x_538.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_542 : f32 = u_xlat7.x;
        u_xlat8.z = x_542;
        let x_545 : f32 = u_xlat40.x;
        u_xlat8.w = x_545;
        let x_548 : f32 = u_xlat9.x;
        u_xlat6.z = x_548;
        let x_551 : f32 = u_xlat5.x;
        u_xlat6.w = x_551;
        let x_554 : vec4<f32> = u_xlat6;
        let x_556 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_554.z, x_554.w, x_554.x, x_554.z) + vec4<f32>(x_556.z, x_556.w, x_556.x, x_556.z));
        let x_560 : f32 = u_xlat8.y;
        u_xlat7.z = x_560;
        let x_563 : f32 = u_xlat40.y;
        u_xlat7.w = x_563;
        let x_566 : f32 = u_xlat6.y;
        u_xlat9.z = x_566;
        let x_569 : f32 = u_xlat5.z;
        u_xlat9.w = x_569;
        let x_571 : vec4<f32> = u_xlat7;
        let x_573 : vec4<f32> = u_xlat9;
        let x_575 : vec3<f32> = (vec3<f32>(x_571.z, x_571.y, x_571.w) + vec3<f32>(x_573.z, x_573.y, x_573.w));
        let x_576 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
        let x_578 : vec4<f32> = u_xlat6;
        let x_580 : vec4<f32> = u_xlat10;
        let x_582 : vec3<f32> = (vec3<f32>(x_578.x, x_578.z, x_578.w) / vec3<f32>(x_580.z, x_580.w, x_580.y));
        let x_583 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat6;
        let x_591 : vec3<f32> = (vec3<f32>(x_585.x, x_585.y, x_585.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
        let x_594 : vec4<f32> = u_xlat9;
        let x_596 : vec4<f32> = u_xlat5;
        let x_598 : vec3<f32> = (vec3<f32>(x_594.z, x_594.y, x_594.w) / vec3<f32>(x_596.x, x_596.y, x_596.z));
        let x_599 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
        let x_601 : vec4<f32> = u_xlat7;
        let x_603 : vec3<f32> = (vec3<f32>(x_601.x, x_601.y, x_601.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat6;
        let x_609 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_611 : vec3<f32> = (vec3<f32>(x_606.y, x_606.x, x_606.z) * vec3<f32>(x_609.x, x_609.x, x_609.x));
        let x_612 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
        let x_614 : vec4<f32> = u_xlat7;
        let x_617 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_619 : vec3<f32> = (vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_617.y, x_617.y, x_617.y));
        let x_620 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
        let x_623 : f32 = u_xlat7.x;
        u_xlat6.w = x_623;
        let x_625 : vec4<f32> = u_xlat4;
        let x_628 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_631 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y) * vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y)) + vec4<f32>(x_631.y, x_631.w, x_631.x, x_631.w));
        let x_634 : vec4<f32> = u_xlat4;
        let x_637 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_640 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_634.x, x_634.y) * vec2<f32>(x_637.x, x_637.y)) + vec2<f32>(x_640.z, x_640.w));
        let x_644 : f32 = u_xlat6.y;
        u_xlat7.w = x_644;
        let x_646 : vec4<f32> = u_xlat7;
        let x_647 : vec2<f32> = vec2<f32>(x_646.y, x_646.z);
        let x_648 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_648.x, x_647.x, x_648.z, x_647.y);
        let x_650 : vec4<f32> = u_xlat4;
        let x_653 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_656 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_650.x, x_650.y, x_650.x, x_650.y) * vec4<f32>(x_653.x, x_653.y, x_653.x, x_653.y)) + vec4<f32>(x_656.x, x_656.y, x_656.z, x_656.y));
        let x_659 : vec4<f32> = u_xlat4;
        let x_662 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_665 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y) * vec4<f32>(x_662.x, x_662.y, x_662.x, x_662.y)) + vec4<f32>(x_665.w, x_665.y, x_665.w, x_665.z));
        let x_668 : vec4<f32> = u_xlat4;
        let x_671 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_674 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y) * vec4<f32>(x_671.x, x_671.y, x_671.x, x_671.y)) + vec4<f32>(x_674.x, x_674.w, x_674.z, x_674.w));
        let x_678 : vec4<f32> = u_xlat5;
        let x_680 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_678.x, x_678.x, x_678.x, x_678.y) * vec4<f32>(x_680.z, x_680.w, x_680.y, x_680.z));
        let x_684 : vec4<f32> = u_xlat5;
        let x_686 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_684.y, x_684.y, x_684.z, x_684.z) * x_686);
        let x_689 : f32 = u_xlat5.z;
        let x_691 : f32 = u_xlat10.y;
        u_xlat54 = (x_689 * x_691);
        let x_694 : vec4<f32> = u_xlat8;
        let x_695 : vec2<f32> = vec2<f32>(x_694.x, x_694.y);
        let x_697 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_695.x, x_695.y, x_697);
        let x_704 : vec3<f32> = txVec4;
        let x_706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_704.xy, x_704.z);
        u_xlat1.x = x_706;
        let x_709 : vec4<f32> = u_xlat8;
        let x_710 : vec2<f32> = vec2<f32>(x_709.z, x_709.w);
        let x_712 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_710.x, x_710.y, x_712);
        let x_720 : vec3<f32> = txVec5;
        let x_722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_720.xy, x_720.z);
        u_xlat56 = x_722;
        let x_723 : f32 = u_xlat56;
        let x_725 : f32 = u_xlat11.y;
        u_xlat56 = (x_723 * x_725);
        let x_728 : f32 = u_xlat11.x;
        let x_730 : f32 = u_xlat1.x;
        let x_732 : f32 = u_xlat56;
        u_xlat1.x = ((x_728 * x_730) + x_732);
        let x_736 : vec2<f32> = u_xlat40;
        let x_738 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec6;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_745.xy, x_745.z);
        u_xlat56 = x_747;
        let x_749 : f32 = u_xlat11.z;
        let x_750 : f32 = u_xlat56;
        let x_753 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_749 * x_750) + x_753);
        let x_757 : vec4<f32> = u_xlat7;
        let x_758 : vec2<f32> = vec2<f32>(x_757.x, x_757.y);
        let x_760 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_758.x, x_758.y, x_760);
        let x_767 : vec3<f32> = txVec7;
        let x_769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_767.xy, x_767.z);
        u_xlat56 = x_769;
        let x_771 : f32 = u_xlat11.w;
        let x_772 : f32 = u_xlat56;
        let x_775 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_771 * x_772) + x_775);
        let x_779 : vec4<f32> = u_xlat9;
        let x_780 : vec2<f32> = vec2<f32>(x_779.x, x_779.y);
        let x_782 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_780.x, x_780.y, x_782);
        let x_789 : vec3<f32> = txVec8;
        let x_791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_789.xy, x_789.z);
        u_xlat56 = x_791;
        let x_793 : f32 = u_xlat12.x;
        let x_794 : f32 = u_xlat56;
        let x_797 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_793 * x_794) + x_797);
        let x_801 : vec4<f32> = u_xlat9;
        let x_802 : vec2<f32> = vec2<f32>(x_801.z, x_801.w);
        let x_804 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_802.x, x_802.y, x_804);
        let x_811 : vec3<f32> = txVec9;
        let x_813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_811.xy, x_811.z);
        u_xlat56 = x_813;
        let x_815 : f32 = u_xlat12.y;
        let x_816 : f32 = u_xlat56;
        let x_819 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_815 * x_816) + x_819);
        let x_823 : vec4<f32> = u_xlat7;
        let x_824 : vec2<f32> = vec2<f32>(x_823.z, x_823.w);
        let x_826 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_824.x, x_824.y, x_826);
        let x_833 : vec3<f32> = txVec10;
        let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_833.xy, x_833.z);
        u_xlat56 = x_835;
        let x_837 : f32 = u_xlat12.z;
        let x_838 : f32 = u_xlat56;
        let x_841 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_837 * x_838) + x_841);
        let x_845 : vec4<f32> = u_xlat6;
        let x_846 : vec2<f32> = vec2<f32>(x_845.x, x_845.y);
        let x_848 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_846.x, x_846.y, x_848);
        let x_855 : vec3<f32> = txVec11;
        let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_855.xy, x_855.z);
        u_xlat56 = x_857;
        let x_859 : f32 = u_xlat12.w;
        let x_860 : f32 = u_xlat56;
        let x_863 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_859 * x_860) + x_863);
        let x_867 : vec4<f32> = u_xlat6;
        let x_868 : vec2<f32> = vec2<f32>(x_867.z, x_867.w);
        let x_870 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_868.x, x_868.y, x_870);
        let x_877 : vec3<f32> = txVec12;
        let x_879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_877.xy, x_877.z);
        u_xlat56 = x_879;
        let x_880 : f32 = u_xlat54;
        let x_881 : f32 = u_xlat56;
        let x_884 : f32 = u_xlat1.x;
        u_xlat18.x = ((x_880 * x_881) + x_884);
      } else {
        let x_888 : vec4<f32> = vs_TEXCOORD6;
        let x_891 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_894 : vec2<f32> = ((vec2<f32>(x_888.x, x_888.y) * vec2<f32>(x_891.z, x_891.w)) + vec2<f32>(0.5f, 0.5f));
        let x_895 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat4;
        let x_899 : vec2<f32> = floor(vec2<f32>(x_897.x, x_897.y));
        let x_900 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_902 : vec4<f32> = vs_TEXCOORD6;
        let x_905 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_908 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_902.x, x_902.y) * vec2<f32>(x_905.z, x_905.w)) + -(vec2<f32>(x_908.x, x_908.y)));
        let x_912 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_912.x, x_912.x, x_912.y, x_912.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_915 : vec4<f32> = u_xlat5;
        let x_917 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_915.x, x_915.x, x_915.z, x_915.z) * vec4<f32>(x_917.x, x_917.x, x_917.z, x_917.z));
        let x_920 : vec4<f32> = u_xlat6;
        let x_924 : vec2<f32> = (vec2<f32>(x_920.y, x_920.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_925 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_925.x, x_924.x, x_925.z, x_924.y);
        let x_927 : vec4<f32> = u_xlat6;
        let x_930 : vec2<f32> = u_xlat40;
        let x_932 : vec2<f32> = ((vec2<f32>(x_927.x, x_927.z) * vec2<f32>(0.5f, 0.5f)) + -(x_930));
        let x_933 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_932.x, x_933.y, x_932.y, x_933.w);
        let x_935 : vec2<f32> = u_xlat40;
        let x_937 : vec2<f32> = (-(x_935) + vec2<f32>(1.0f, 1.0f));
        let x_938 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
        let x_940 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_940, vec2<f32>(0.0f, 0.0f));
        let x_942 : vec2<f32> = u_xlat42;
        let x_944 : vec2<f32> = u_xlat42;
        let x_946 : vec4<f32> = u_xlat6;
        let x_948 : vec2<f32> = ((-(x_942) * x_944) + vec2<f32>(x_946.x, x_946.y));
        let x_949 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_948.x, x_948.y, x_949.z, x_949.w);
        let x_951 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_951, vec2<f32>(0.0f, 0.0f));
        let x_954 : vec2<f32> = u_xlat42;
        let x_956 : vec2<f32> = u_xlat42;
        let x_958 : vec4<f32> = u_xlat5;
        let x_960 : vec2<f32> = ((-(x_954) * x_956) + vec2<f32>(x_958.y, x_958.w));
        let x_961 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_960.x, x_961.y, x_960.y);
        let x_963 : vec4<f32> = u_xlat6;
        let x_966 : vec2<f32> = (vec2<f32>(x_963.x, x_963.y) + vec2<f32>(2.0f, 2.0f));
        let x_967 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_969 : vec3<f32> = u_xlat23;
        let x_971 : vec2<f32> = (vec2<f32>(x_969.x, x_969.z) + vec2<f32>(2.0f, 2.0f));
        let x_972 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_972.x, x_971.x, x_972.z, x_971.y);
        let x_975 : f32 = u_xlat5.y;
        u_xlat8.z = (x_975 * 0.081632003f);
        let x_979 : vec4<f32> = u_xlat5;
        let x_982 : vec3<f32> = (vec3<f32>(x_979.z, x_979.x, x_979.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_983 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat6;
        let x_988 : vec2<f32> = (vec2<f32>(x_985.x, x_985.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_989 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
        let x_992 : f32 = u_xlat9.y;
        u_xlat8.x = x_992;
        let x_994 : vec2<f32> = u_xlat40;
        let x_1001 : vec2<f32> = ((vec2<f32>(x_994.x, x_994.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1002 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1002.x, x_1001.x, x_1002.z, x_1001.y);
        let x_1004 : vec2<f32> = u_xlat40;
        let x_1008 : vec2<f32> = ((vec2<f32>(x_1004.x, x_1004.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1008.x, x_1009.y, x_1008.y, x_1009.w);
        let x_1012 : f32 = u_xlat5.x;
        u_xlat6.y = x_1012;
        let x_1015 : f32 = u_xlat7.y;
        u_xlat6.w = x_1015;
        let x_1017 : vec4<f32> = u_xlat6;
        let x_1018 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1017 + x_1018);
        let x_1020 : vec2<f32> = u_xlat40;
        let x_1023 : vec2<f32> = ((vec2<f32>(x_1020.y, x_1020.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1024.x, x_1023.x, x_1024.z, x_1023.y);
        let x_1026 : vec2<f32> = u_xlat40;
        let x_1029 : vec2<f32> = ((vec2<f32>(x_1026.y, x_1026.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1030 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1029.x, x_1030.y, x_1029.y, x_1030.w);
        let x_1033 : f32 = u_xlat5.y;
        u_xlat7.y = x_1033;
        let x_1035 : vec4<f32> = u_xlat7;
        let x_1036 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1035 + x_1036);
        let x_1038 : vec4<f32> = u_xlat6;
        let x_1039 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1038 / x_1039);
        let x_1041 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1041 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1048 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1047 / x_1048);
        let x_1050 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1050 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1052 : vec4<f32> = u_xlat6;
        let x_1055 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1052.w, x_1052.x, x_1052.y, x_1052.z) * vec4<f32>(x_1055.x, x_1055.x, x_1055.x, x_1055.x));
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1061 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1058.x, x_1058.w, x_1058.y, x_1058.z) * vec4<f32>(x_1061.y, x_1061.y, x_1061.y, x_1061.y));
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1065 : vec3<f32> = vec3<f32>(x_1064.y, x_1064.z, x_1064.w);
        let x_1066 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1065.x, x_1066.y, x_1065.y, x_1065.z);
        let x_1069 : f32 = u_xlat7.x;
        u_xlat9.y = x_1069;
        let x_1071 : vec4<f32> = u_xlat4;
        let x_1074 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1077 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.y) * vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y)) + vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1077.y));
        let x_1080 : vec4<f32> = u_xlat4;
        let x_1083 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(x_1083.x, x_1083.y)) + vec2<f32>(x_1086.w, x_1086.y));
        let x_1090 : f32 = u_xlat9.y;
        u_xlat6.y = x_1090;
        let x_1093 : f32 = u_xlat7.z;
        u_xlat9.y = x_1093;
        let x_1095 : vec4<f32> = u_xlat4;
        let x_1098 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.y) * vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y)) + vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1101.y));
        let x_1104 : vec4<f32> = u_xlat4;
        let x_1107 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat9;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(x_1107.x, x_1107.y)) + vec2<f32>(x_1110.w, x_1110.y));
        let x_1113 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
        let x_1116 : f32 = u_xlat9.y;
        u_xlat6.z = x_1116;
        let x_1119 : vec4<f32> = u_xlat4;
        let x_1122 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y) * vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y)) + vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.z));
        let x_1129 : f32 = u_xlat7.w;
        u_xlat9.y = x_1129;
        let x_1132 : vec4<f32> = u_xlat4;
        let x_1135 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y) * vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y)) + vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1138.y));
        let x_1142 : vec4<f32> = u_xlat4;
        let x_1145 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1148 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1142.x, x_1142.y) * vec2<f32>(x_1145.x, x_1145.y)) + vec2<f32>(x_1148.w, x_1148.y));
        let x_1152 : f32 = u_xlat9.y;
        u_xlat6.w = x_1152;
        let x_1155 : vec4<f32> = u_xlat4;
        let x_1158 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1155.x, x_1155.y) * vec2<f32>(x_1158.x, x_1158.y)) + vec2<f32>(x_1161.x, x_1161.w));
        let x_1164 : vec4<f32> = u_xlat9;
        let x_1165 : vec3<f32> = vec3<f32>(x_1164.x, x_1164.z, x_1164.w);
        let x_1166 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1165.x, x_1166.y, x_1165.y, x_1165.z);
        let x_1168 : vec4<f32> = u_xlat4;
        let x_1171 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1174 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y) * vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y)) + vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1174.y));
        let x_1178 : vec4<f32> = u_xlat4;
        let x_1181 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.w, x_1184.y));
        let x_1188 : f32 = u_xlat6.x;
        u_xlat7.x = x_1188;
        let x_1190 : vec4<f32> = u_xlat4;
        let x_1193 : vec4<f32> = x_322.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat7;
        let x_1198 : vec2<f32> = ((vec2<f32>(x_1190.x, x_1190.y) * vec2<f32>(x_1193.x, x_1193.y)) + vec2<f32>(x_1196.x, x_1196.y));
        let x_1199 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1198.x, x_1198.y, x_1199.z, x_1199.w);
        let x_1202 : vec4<f32> = u_xlat5;
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1202.x, x_1202.x, x_1202.x, x_1202.x) * x_1204);
        let x_1207 : vec4<f32> = u_xlat5;
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1207.y, x_1207.y, x_1207.y, x_1207.y) * x_1209);
        let x_1212 : vec4<f32> = u_xlat5;
        let x_1214 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1212.z, x_1212.z, x_1212.z, x_1212.z) * x_1214);
        let x_1216 : vec4<f32> = u_xlat5;
        let x_1218 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1216.w, x_1216.w, x_1216.w, x_1216.w) * x_1218);
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1222 : vec2<f32> = vec2<f32>(x_1221.x, x_1221.y);
        let x_1224 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1222.x, x_1222.y, x_1224);
        let x_1231 : vec3<f32> = txVec13;
        let x_1233 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1231.xy, x_1231.z);
        u_xlat54 = x_1233;
        let x_1235 : vec4<f32> = u_xlat10;
        let x_1236 : vec2<f32> = vec2<f32>(x_1235.z, x_1235.w);
        let x_1238 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
        let x_1245 : vec3<f32> = txVec14;
        let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1245.xy, x_1245.z);
        u_xlat1.x = x_1247;
        let x_1250 : f32 = u_xlat1.x;
        let x_1252 : f32 = u_xlat15.y;
        u_xlat1.x = (x_1250 * x_1252);
        let x_1256 : f32 = u_xlat15.x;
        let x_1257 : f32 = u_xlat54;
        let x_1260 : f32 = u_xlat1.x;
        u_xlat54 = ((x_1256 * x_1257) + x_1260);
        let x_1263 : vec2<f32> = u_xlat40;
        let x_1265 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec15;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1272.xy, x_1272.z);
        u_xlat1.x = x_1274;
        let x_1277 : f32 = u_xlat15.z;
        let x_1279 : f32 = u_xlat1.x;
        let x_1281 : f32 = u_xlat54;
        u_xlat54 = ((x_1277 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat13;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.x, x_1284.y);
        let x_1287 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec16;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
        u_xlat1.x = x_1296;
        let x_1299 : f32 = u_xlat15.w;
        let x_1301 : f32 = u_xlat1.x;
        let x_1303 : f32 = u_xlat54;
        u_xlat54 = ((x_1299 * x_1301) + x_1303);
        let x_1306 : vec4<f32> = u_xlat11;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.x, x_1306.y);
        let x_1309 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1307.x, x_1307.y, x_1309);
        let x_1316 : vec3<f32> = txVec17;
        let x_1318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1316.xy, x_1316.z);
        u_xlat1.x = x_1318;
        let x_1321 : f32 = u_xlat16.x;
        let x_1323 : f32 = u_xlat1.x;
        let x_1325 : f32 = u_xlat54;
        u_xlat54 = ((x_1321 * x_1323) + x_1325);
        let x_1328 : vec4<f32> = u_xlat11;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.z, x_1328.w);
        let x_1331 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1338 : vec3<f32> = txVec18;
        let x_1340 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1338.xy, x_1338.z);
        u_xlat1.x = x_1340;
        let x_1343 : f32 = u_xlat16.y;
        let x_1345 : f32 = u_xlat1.x;
        let x_1347 : f32 = u_xlat54;
        u_xlat54 = ((x_1343 * x_1345) + x_1347);
        let x_1350 : vec4<f32> = u_xlat12;
        let x_1351 : vec2<f32> = vec2<f32>(x_1350.x, x_1350.y);
        let x_1353 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1351.x, x_1351.y, x_1353);
        let x_1360 : vec3<f32> = txVec19;
        let x_1362 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1360.xy, x_1360.z);
        u_xlat1.x = x_1362;
        let x_1365 : f32 = u_xlat16.z;
        let x_1367 : f32 = u_xlat1.x;
        let x_1369 : f32 = u_xlat54;
        u_xlat54 = ((x_1365 * x_1367) + x_1369);
        let x_1372 : vec4<f32> = u_xlat13;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.z, x_1372.w);
        let x_1375 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec20;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1382.xy, x_1382.z);
        u_xlat1.x = x_1384;
        let x_1387 : f32 = u_xlat16.w;
        let x_1389 : f32 = u_xlat1.x;
        let x_1391 : f32 = u_xlat54;
        u_xlat54 = ((x_1387 * x_1389) + x_1391);
        let x_1394 : vec4<f32> = u_xlat14;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.x, x_1394.y);
        let x_1397 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec21;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1404.xy, x_1404.z);
        u_xlat1.x = x_1406;
        let x_1409 : f32 = u_xlat17.x;
        let x_1411 : f32 = u_xlat1.x;
        let x_1413 : f32 = u_xlat54;
        u_xlat54 = ((x_1409 * x_1411) + x_1413);
        let x_1416 : vec4<f32> = u_xlat14;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.z, x_1416.w);
        let x_1419 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec22;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1426.xy, x_1426.z);
        u_xlat1.x = x_1428;
        let x_1431 : f32 = u_xlat17.y;
        let x_1433 : f32 = u_xlat1.x;
        let x_1435 : f32 = u_xlat54;
        u_xlat54 = ((x_1431 * x_1433) + x_1435);
        let x_1438 : vec2<f32> = u_xlat24;
        let x_1440 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec23;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1447.xy, x_1447.z);
        u_xlat1.x = x_1449;
        let x_1452 : f32 = u_xlat17.z;
        let x_1454 : f32 = u_xlat1.x;
        let x_1456 : f32 = u_xlat54;
        u_xlat54 = ((x_1452 * x_1454) + x_1456);
        let x_1459 : vec2<f32> = u_xlat48;
        let x_1461 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec24;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1468.xy, x_1468.z);
        u_xlat1.x = x_1470;
        let x_1473 : f32 = u_xlat17.w;
        let x_1475 : f32 = u_xlat1.x;
        let x_1477 : f32 = u_xlat54;
        u_xlat54 = ((x_1473 * x_1475) + x_1477);
        let x_1480 : vec4<f32> = u_xlat9;
        let x_1481 : vec2<f32> = vec2<f32>(x_1480.x, x_1480.y);
        let x_1483 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec25;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1490.xy, x_1490.z);
        u_xlat1.x = x_1492;
        let x_1495 : f32 = u_xlat5.x;
        let x_1497 : f32 = u_xlat1.x;
        let x_1499 : f32 = u_xlat54;
        u_xlat54 = ((x_1495 * x_1497) + x_1499);
        let x_1502 : vec4<f32> = u_xlat9;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.z, x_1502.w);
        let x_1505 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec26;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1512.xy, x_1512.z);
        u_xlat1.x = x_1514;
        let x_1517 : f32 = u_xlat5.y;
        let x_1519 : f32 = u_xlat1.x;
        let x_1521 : f32 = u_xlat54;
        u_xlat54 = ((x_1517 * x_1519) + x_1521);
        let x_1524 : vec2<f32> = u_xlat43;
        let x_1526 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec27;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1533.xy, x_1533.z);
        u_xlat1.x = x_1535;
        let x_1538 : f32 = u_xlat5.z;
        let x_1540 : f32 = u_xlat1.x;
        let x_1542 : f32 = u_xlat54;
        u_xlat54 = ((x_1538 * x_1540) + x_1542);
        let x_1545 : vec4<f32> = u_xlat4;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.x, x_1545.y);
        let x_1548 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec28;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1555.xy, x_1555.z);
        u_xlat1.x = x_1557;
        let x_1560 : f32 = u_xlat5.w;
        let x_1562 : f32 = u_xlat1.x;
        let x_1564 : f32 = u_xlat54;
        u_xlat18.x = ((x_1560 * x_1562) + x_1564);
      }
    }
  } else {
    let x_1569 : vec4<f32> = vs_TEXCOORD6;
    let x_1570 : vec2<f32> = vec2<f32>(x_1569.x, x_1569.y);
    let x_1572 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
    let x_1579 : vec3<f32> = txVec29;
    let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1579.xy, x_1579.z);
    u_xlat18.x = x_1581;
  }
  let x_1584 : f32 = x_322.x_MainLightShadowParams.x;
  u_xlat54 = (-(x_1584) + 1.0f);
  let x_1588 : f32 = u_xlat18.x;
  let x_1590 : f32 = x_322.x_MainLightShadowParams.x;
  let x_1592 : f32 = u_xlat54;
  u_xlat18.x = ((x_1588 * x_1590) + x_1592);
  let x_1596 : f32 = vs_TEXCOORD6.z;
  u_xlatb54 = (0.0f >= x_1596);
  let x_1600 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_1600 >= 1.0f);
  let x_1602 : bool = u_xlatb54;
  let x_1603 : bool = u_xlatb1;
  u_xlatb54 = (x_1602 | x_1603);
  let x_1605 : bool = u_xlatb54;
  if (x_1605) {
    x_1606 = 1.0f;
  } else {
    let x_1611 : f32 = u_xlat18.x;
    x_1606 = x_1611;
  }
  let x_1612 : f32 = x_1606;
  u_xlat18.x = x_1612;
  let x_1615 : vec3<f32> = vs_TEXCOORD1;
  let x_1619 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1621 : vec3<f32> = (x_1615 + -(x_1619));
  let x_1622 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
  let x_1624 : vec4<f32> = u_xlat4;
  let x_1626 : vec4<f32> = u_xlat4;
  u_xlat54 = dot(vec3<f32>(x_1624.x, x_1624.y, x_1624.z), vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
  let x_1629 : f32 = u_xlat54;
  let x_1631 : f32 = x_322.x_MainLightShadowParams.z;
  let x_1634 : f32 = x_322.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1629 * x_1631) + x_1634);
  let x_1636 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1636, 0.0f, 1.0f);
  let x_1639 : f32 = u_xlat18.x;
  u_xlat1.x = (-(x_1639) + 1.0f);
  let x_1643 : f32 = u_xlat54;
  let x_1645 : f32 = u_xlat1.x;
  let x_1648 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_1643 * x_1645) + x_1648);
  let x_1657 : f32 = x_1655.x_MainLightCookieTextureFormat;
  u_xlatb54 = !((x_1657 == -1.0f));
  let x_1660 : bool = u_xlatb54;
  if (x_1660) {
    let x_1663 : vec3<f32> = vs_TEXCOORD1;
    let x_1666 : vec4<f32> = x_1655.x_MainLightWorldToLight[1i];
    let x_1668 : vec2<f32> = (vec2<f32>(x_1663.y, x_1663.y) * vec2<f32>(x_1666.x, x_1666.y));
    let x_1669 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1668.x, x_1668.y, x_1669.z, x_1669.w);
    let x_1672 : vec4<f32> = x_1655.x_MainLightWorldToLight[0i];
    let x_1674 : vec3<f32> = vs_TEXCOORD1;
    let x_1677 : vec4<f32> = u_xlat4;
    let x_1679 : vec2<f32> = ((vec2<f32>(x_1672.x, x_1672.y) * vec2<f32>(x_1674.x, x_1674.x)) + vec2<f32>(x_1677.x, x_1677.y));
    let x_1680 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1679.x, x_1679.y, x_1680.z, x_1680.w);
    let x_1683 : vec4<f32> = x_1655.x_MainLightWorldToLight[2i];
    let x_1685 : vec3<f32> = vs_TEXCOORD1;
    let x_1688 : vec4<f32> = u_xlat4;
    let x_1690 : vec2<f32> = ((vec2<f32>(x_1683.x, x_1683.y) * vec2<f32>(x_1685.z, x_1685.z)) + vec2<f32>(x_1688.x, x_1688.y));
    let x_1691 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1690.x, x_1690.y, x_1691.z, x_1691.w);
    let x_1693 : vec4<f32> = u_xlat4;
    let x_1697 : vec4<f32> = x_1655.x_MainLightWorldToLight[3i];
    let x_1699 : vec2<f32> = (vec2<f32>(x_1693.x, x_1693.y) + vec2<f32>(x_1697.x, x_1697.y));
    let x_1700 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1699.x, x_1699.y, x_1700.z, x_1700.w);
    let x_1702 : vec4<f32> = u_xlat4;
    let x_1705 : vec2<f32> = ((vec2<f32>(x_1702.x, x_1702.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1706 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1705.x, x_1705.y, x_1706.z, x_1706.w);
    let x_1713 : vec4<f32> = u_xlat4;
    let x_1716 : f32 = x_43.x_GlobalMipBias.x;
    let x_1717 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1713.x, x_1713.y), x_1716);
    u_xlat4 = x_1717;
    let x_1722 : f32 = x_1655.x_MainLightCookieTextureFormat;
    let x_1724 : f32 = x_1655.x_MainLightCookieTextureFormat;
    let x_1726 : f32 = x_1655.x_MainLightCookieTextureFormat;
    let x_1728 : f32 = x_1655.x_MainLightCookieTextureFormat;
    let x_1729 : vec4<f32> = vec4<f32>(x_1722, x_1724, x_1726, x_1728);
    let x_1737 : vec4<bool> = (vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1729.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1737.x, x_1737.y);
    let x_1740 : bool = u_xlatb5.y;
    if (x_1740) {
      let x_1745 : f32 = u_xlat4.w;
      x_1741 = x_1745;
    } else {
      let x_1748 : f32 = u_xlat4.x;
      x_1741 = x_1748;
    }
    let x_1749 : f32 = x_1741;
    u_xlat54 = x_1749;
    let x_1751 : bool = u_xlatb5.x;
    if (x_1751) {
      let x_1755 : vec4<f32> = u_xlat4;
      x_1752 = vec3<f32>(x_1755.x, x_1755.y, x_1755.z);
    } else {
      let x_1758 : f32 = u_xlat54;
      x_1752 = vec3<f32>(x_1758, x_1758, x_1758);
    }
    let x_1760 : vec3<f32> = x_1752;
    let x_1761 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1761.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1767 : vec4<f32> = u_xlat4;
  let x_1770 : vec4<f32> = x_43.x_MainLightColor;
  let x_1772 : vec3<f32> = (vec3<f32>(x_1767.x, x_1767.y, x_1767.z) * vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
  let x_1773 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1772.x, x_1772.y, x_1772.z, x_1773.w);
  let x_1776 : f32 = u_xlat18.x;
  let x_1778 : f32 = x_184.unity_LightData.z;
  u_xlat18.x = (x_1776 * x_1778);
  let x_1781 : vec3<f32> = u_xlat18;
  let x_1783 : vec4<f32> = u_xlat4;
  let x_1785 : vec3<f32> = (vec3<f32>(x_1781.x, x_1781.x, x_1781.x) * vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
  let x_1786 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
  let x_1788 : vec4<f32> = u_xlat2;
  let x_1791 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat18.x = dot(vec3<f32>(x_1788.x, x_1788.y, x_1788.z), vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
  let x_1796 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_1796, 0.0f, 1.0f);
  let x_1799 : vec3<f32> = u_xlat18;
  let x_1801 : vec4<f32> = u_xlat4;
  let x_1803 : vec3<f32> = (vec3<f32>(x_1799.x, x_1799.x, x_1799.x) * vec3<f32>(x_1801.x, x_1801.y, x_1801.z));
  let x_1804 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1804.w);
  let x_1806 : vec4<f32> = u_xlat1;
  let x_1808 : vec4<f32> = u_xlat4;
  let x_1810 : vec3<f32> = (vec3<f32>(x_1806.y, x_1806.z, x_1806.w) * vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
  let x_1811 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
  let x_1813 : vec4<f32> = u_xlat0;
  let x_1815 : vec4<f32> = u_xlat4;
  let x_1817 : vec3<f32> = (vec3<f32>(x_1813.x, x_1813.x, x_1813.x) * vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
  let x_1818 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
  let x_1821 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1823 : f32 = x_184.unity_LightData.y;
  u_xlat18.x = min(x_1821, x_1823);
  let x_1829 : f32 = u_xlat18.x;
  u_xlatu18 = bitcast<u32>(i32(x_1829));
  let x_1833 : f32 = x_1655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1835 : f32 = x_1655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1837 : f32 = x_1655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1839 : f32 = x_1655.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1840 : vec4<f32> = vec4<f32>(x_1833, x_1835, x_1837, x_1839);
  let x_1846 : vec4<bool> = (vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1840.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1846.x, x_1846.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1857 : u32 = u_xlatu_loop_1;
    let x_1858 : u32 = u_xlatu18;
    if ((x_1857 < x_1858)) {
    } else {
      break;
    }
    let x_1861 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_1861 >> 2u);
    let x_1865 : u32 = u_xlatu_loop_1;
    u_xlati56 = bitcast<i32>((x_1865 & 3u));
    let x_1868 : u32 = u_xlatu1;
    let x_1871 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_1868)];
    let x_1881 : i32 = u_xlati56;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1886 : vec4<u32> = indexable[x_1881];
    u_xlat1.x = dot(x_1871, bitcast<vec4<f32>>(x_1886));
    let x_1891 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_1891));
    let x_1894 : vec3<f32> = vs_TEXCOORD1;
    let x_1906 : u32 = u_xlatu1;
    let x_1909 : vec4<f32> = x_1905.x_AdditionalLightsPosition[bitcast<i32>(x_1906)];
    let x_1912 : u32 = u_xlatu1;
    let x_1915 : vec4<f32> = x_1905.x_AdditionalLightsPosition[bitcast<i32>(x_1912)];
    let x_1917 : vec3<f32> = ((-(x_1894) * vec3<f32>(x_1909.w, x_1909.w, x_1909.w)) + vec3<f32>(x_1915.x, x_1915.y, x_1915.z));
    let x_1918 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1917.x, x_1917.y, x_1917.z, x_1918.w);
    let x_1920 : vec4<f32> = u_xlat7;
    let x_1922 : vec4<f32> = u_xlat7;
    u_xlat56 = dot(vec3<f32>(x_1920.x, x_1920.y, x_1920.z), vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
    let x_1925 : f32 = u_xlat56;
    u_xlat56 = max(x_1925, 6.10351562e-05f);
    let x_1929 : f32 = u_xlat56;
    u_xlat57 = inverseSqrt(x_1929);
    let x_1931 : f32 = u_xlat57;
    let x_1933 : vec4<f32> = u_xlat7;
    let x_1935 : vec3<f32> = (vec3<f32>(x_1931, x_1931, x_1931) * vec3<f32>(x_1933.x, x_1933.y, x_1933.z));
    let x_1936 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
    let x_1938 : f32 = u_xlat56;
    u_xlat57 = (1.0f / x_1938);
    let x_1940 : f32 = u_xlat56;
    let x_1941 : u32 = u_xlatu1;
    let x_1944 : f32 = x_1905.x_AdditionalLightsAttenuation[bitcast<i32>(x_1941)].x;
    u_xlat56 = (x_1940 * x_1944);
    let x_1946 : f32 = u_xlat56;
    let x_1948 : f32 = u_xlat56;
    u_xlat56 = ((-(x_1946) * x_1948) + 1.0f);
    let x_1951 : f32 = u_xlat56;
    u_xlat56 = max(x_1951, 0.0f);
    let x_1953 : f32 = u_xlat56;
    let x_1954 : f32 = u_xlat56;
    u_xlat56 = (x_1953 * x_1954);
    let x_1956 : f32 = u_xlat56;
    let x_1957 : f32 = u_xlat57;
    u_xlat56 = (x_1956 * x_1957);
    let x_1959 : u32 = u_xlatu1;
    let x_1962 : vec4<f32> = x_1905.x_AdditionalLightsSpotDir[bitcast<i32>(x_1959)];
    let x_1964 : vec4<f32> = u_xlat7;
    u_xlat57 = dot(vec3<f32>(x_1962.x, x_1962.y, x_1962.z), vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
    let x_1967 : f32 = u_xlat57;
    let x_1968 : u32 = u_xlatu1;
    let x_1971 : f32 = x_1905.x_AdditionalLightsAttenuation[bitcast<i32>(x_1968)].z;
    let x_1973 : u32 = u_xlatu1;
    let x_1976 : f32 = x_1905.x_AdditionalLightsAttenuation[bitcast<i32>(x_1973)].w;
    u_xlat57 = ((x_1967 * x_1971) + x_1976);
    let x_1978 : f32 = u_xlat57;
    u_xlat57 = clamp(x_1978, 0.0f, 1.0f);
    let x_1980 : f32 = u_xlat57;
    let x_1981 : f32 = u_xlat57;
    u_xlat57 = (x_1980 * x_1981);
    let x_1983 : f32 = u_xlat56;
    let x_1984 : f32 = u_xlat57;
    u_xlat56 = (x_1983 * x_1984);
    let x_1987 : u32 = u_xlatu1;
    u_xlatu57 = (x_1987 >> 5u);
    let x_1990 : u32 = u_xlatu1;
    u_xlati58 = (1i << bitcast<u32>((bitcast<i32>(x_1990) & 31i)));
    let x_1996 : i32 = u_xlati58;
    let x_1998 : u32 = u_xlatu57;
    let x_2001 : f32 = x_1655.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1998)].el;
    u_xlati57 = bitcast<i32>((bitcast<u32>(x_1996) & bitcast<u32>(x_2001)));
    let x_2005 : i32 = u_xlati57;
    if ((x_2005 != 0i)) {
      let x_2015 : u32 = u_xlatu1;
      let x_2018 : f32 = x_2014.x_AdditionalLightsLightTypes[bitcast<i32>(x_2015)].el;
      u_xlati57 = i32(x_2018);
      let x_2020 : i32 = u_xlati57;
      u_xlati58 = select(1i, 0i, (x_2020 != 0i));
      let x_2024 : u32 = u_xlatu1;
      u_xlati41 = (bitcast<i32>(x_2024) << bitcast<u32>(2i));
      let x_2027 : i32 = u_xlati58;
      if ((x_2027 != 0i)) {
        let x_2031 : vec3<f32> = vs_TEXCOORD1;
        let x_2033 : i32 = u_xlati41;
        let x_2036 : i32 = u_xlati41;
        let x_2040 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[((x_2033 + 1i) / 4i)][((x_2036 + 1i) % 4i)];
        let x_2042 : vec3<f32> = (vec3<f32>(x_2031.y, x_2031.y, x_2031.y) * vec3<f32>(x_2040.x, x_2040.y, x_2040.w));
        let x_2043 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
        let x_2045 : i32 = u_xlati41;
        let x_2047 : i32 = u_xlati41;
        let x_2050 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[(x_2045 / 4i)][(x_2047 % 4i)];
        let x_2052 : vec3<f32> = vs_TEXCOORD1;
        let x_2055 : vec4<f32> = u_xlat8;
        let x_2057 : vec3<f32> = ((vec3<f32>(x_2050.x, x_2050.y, x_2050.w) * vec3<f32>(x_2052.x, x_2052.x, x_2052.x)) + vec3<f32>(x_2055.x, x_2055.y, x_2055.z));
        let x_2058 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
        let x_2060 : i32 = u_xlati41;
        let x_2063 : i32 = u_xlati41;
        let x_2067 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[((x_2060 + 2i) / 4i)][((x_2063 + 2i) % 4i)];
        let x_2069 : vec3<f32> = vs_TEXCOORD1;
        let x_2072 : vec4<f32> = u_xlat8;
        let x_2074 : vec3<f32> = ((vec3<f32>(x_2067.x, x_2067.y, x_2067.w) * vec3<f32>(x_2069.z, x_2069.z, x_2069.z)) + vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
        let x_2075 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
        let x_2077 : vec4<f32> = u_xlat8;
        let x_2079 : i32 = u_xlati41;
        let x_2082 : i32 = u_xlati41;
        let x_2086 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[((x_2079 + 3i) / 4i)][((x_2082 + 3i) % 4i)];
        let x_2088 : vec3<f32> = (vec3<f32>(x_2077.x, x_2077.y, x_2077.z) + vec3<f32>(x_2086.x, x_2086.y, x_2086.w));
        let x_2089 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
        let x_2091 : vec4<f32> = u_xlat8;
        let x_2093 : vec4<f32> = u_xlat8;
        let x_2095 : vec2<f32> = (vec2<f32>(x_2091.x, x_2091.y) / vec2<f32>(x_2093.z, x_2093.z));
        let x_2096 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2095.x, x_2095.y, x_2096.z, x_2096.w);
        let x_2098 : vec4<f32> = u_xlat8;
        let x_2101 : vec2<f32> = ((vec2<f32>(x_2098.x, x_2098.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2102 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2101.x, x_2101.y, x_2102.z, x_2102.w);
        let x_2104 : vec4<f32> = u_xlat8;
        let x_2108 : vec2<f32> = clamp(vec2<f32>(x_2104.x, x_2104.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2109 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2108.x, x_2108.y, x_2109.z, x_2109.w);
        let x_2111 : u32 = u_xlatu1;
        let x_2114 : vec4<f32> = x_2014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2111)];
        let x_2116 : vec4<f32> = u_xlat8;
        let x_2119 : u32 = u_xlatu1;
        let x_2122 : vec4<f32> = x_2014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2119)];
        let x_2124 : vec2<f32> = ((vec2<f32>(x_2114.x, x_2114.y) * vec2<f32>(x_2116.x, x_2116.y)) + vec2<f32>(x_2122.z, x_2122.w));
        let x_2125 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2124.x, x_2124.y, x_2125.z, x_2125.w);
      } else {
        let x_2129 : i32 = u_xlati57;
        u_xlatb57 = (x_2129 == 1i);
        let x_2131 : bool = u_xlatb57;
        u_xlati57 = select(0i, 1i, x_2131);
        let x_2133 : i32 = u_xlati57;
        if ((x_2133 != 0i)) {
          let x_2138 : vec3<f32> = vs_TEXCOORD1;
          let x_2140 : i32 = u_xlati41;
          let x_2143 : i32 = u_xlati41;
          let x_2147 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[((x_2140 + 1i) / 4i)][((x_2143 + 1i) % 4i)];
          u_xlat44 = (vec2<f32>(x_2138.y, x_2138.y) * vec2<f32>(x_2147.x, x_2147.y));
          let x_2150 : i32 = u_xlati41;
          let x_2152 : i32 = u_xlati41;
          let x_2155 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[(x_2150 / 4i)][(x_2152 % 4i)];
          let x_2157 : vec3<f32> = vs_TEXCOORD1;
          let x_2160 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2155.x, x_2155.y) * vec2<f32>(x_2157.x, x_2157.x)) + x_2160);
          let x_2162 : i32 = u_xlati41;
          let x_2165 : i32 = u_xlati41;
          let x_2169 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[((x_2162 + 2i) / 4i)][((x_2165 + 2i) % 4i)];
          let x_2171 : vec3<f32> = vs_TEXCOORD1;
          let x_2174 : vec2<f32> = u_xlat44;
          u_xlat44 = ((vec2<f32>(x_2169.x, x_2169.y) * vec2<f32>(x_2171.z, x_2171.z)) + x_2174);
          let x_2176 : vec2<f32> = u_xlat44;
          let x_2177 : i32 = u_xlati41;
          let x_2180 : i32 = u_xlati41;
          let x_2184 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[((x_2177 + 3i) / 4i)][((x_2180 + 3i) % 4i)];
          u_xlat44 = (x_2176 + vec2<f32>(x_2184.x, x_2184.y));
          let x_2187 : vec2<f32> = u_xlat44;
          u_xlat44 = ((x_2187 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2190 : vec2<f32> = u_xlat44;
          u_xlat44 = fract(x_2190);
          let x_2192 : u32 = u_xlatu1;
          let x_2195 : vec4<f32> = x_2014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2192)];
          let x_2197 : vec2<f32> = u_xlat44;
          let x_2199 : u32 = u_xlatu1;
          let x_2202 : vec4<f32> = x_2014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2199)];
          let x_2204 : vec2<f32> = ((vec2<f32>(x_2195.x, x_2195.y) * x_2197) + vec2<f32>(x_2202.z, x_2202.w));
          let x_2205 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2204.x, x_2204.y, x_2205.z, x_2205.w);
        } else {
          let x_2208 : vec3<f32> = vs_TEXCOORD1;
          let x_2210 : i32 = u_xlati41;
          let x_2213 : i32 = u_xlati41;
          let x_2217 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[((x_2210 + 1i) / 4i)][((x_2213 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2208.y, x_2208.y, x_2208.y, x_2208.y) * x_2217);
          let x_2219 : i32 = u_xlati41;
          let x_2221 : i32 = u_xlati41;
          let x_2224 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[(x_2219 / 4i)][(x_2221 % 4i)];
          let x_2225 : vec3<f32> = vs_TEXCOORD1;
          let x_2228 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2224 * vec4<f32>(x_2225.x, x_2225.x, x_2225.x, x_2225.x)) + x_2228);
          let x_2230 : i32 = u_xlati41;
          let x_2233 : i32 = u_xlati41;
          let x_2237 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[((x_2230 + 2i) / 4i)][((x_2233 + 2i) % 4i)];
          let x_2238 : vec3<f32> = vs_TEXCOORD1;
          let x_2241 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2237 * vec4<f32>(x_2238.z, x_2238.z, x_2238.z, x_2238.z)) + x_2241);
          let x_2243 : vec4<f32> = u_xlat9;
          let x_2244 : i32 = u_xlati41;
          let x_2247 : i32 = u_xlati41;
          let x_2251 : vec4<f32> = x_2014.x_AdditionalLightsWorldToLights[((x_2244 + 3i) / 4i)][((x_2247 + 3i) % 4i)];
          u_xlat9 = (x_2243 + x_2251);
          let x_2253 : vec4<f32> = u_xlat9;
          let x_2255 : vec4<f32> = u_xlat9;
          let x_2257 : vec3<f32> = (vec3<f32>(x_2253.x, x_2253.y, x_2253.z) / vec3<f32>(x_2255.w, x_2255.w, x_2255.w));
          let x_2258 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2257.x, x_2257.y, x_2257.z, x_2258.w);
          let x_2260 : vec4<f32> = u_xlat9;
          let x_2262 : vec4<f32> = u_xlat9;
          u_xlat57 = dot(vec3<f32>(x_2260.x, x_2260.y, x_2260.z), vec3<f32>(x_2262.x, x_2262.y, x_2262.z));
          let x_2265 : f32 = u_xlat57;
          u_xlat57 = inverseSqrt(x_2265);
          let x_2267 : f32 = u_xlat57;
          let x_2269 : vec4<f32> = u_xlat9;
          let x_2271 : vec3<f32> = (vec3<f32>(x_2267, x_2267, x_2267) * vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
          let x_2272 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
          let x_2274 : vec4<f32> = u_xlat9;
          u_xlat57 = dot(abs(vec3<f32>(x_2274.x, x_2274.y, x_2274.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2279 : f32 = u_xlat57;
          u_xlat57 = max(x_2279, 0.000001f);
          let x_2282 : f32 = u_xlat57;
          u_xlat57 = (1.0f / x_2282);
          let x_2284 : f32 = u_xlat57;
          let x_2286 : vec4<f32> = u_xlat9;
          let x_2288 : vec3<f32> = (vec3<f32>(x_2284, x_2284, x_2284) * vec3<f32>(x_2286.z, x_2286.x, x_2286.y));
          let x_2289 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2288.x, x_2288.y, x_2288.z, x_2289.w);
          let x_2292 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2292);
          let x_2296 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2296, 0.0f, 1.0f);
          let x_2300 : vec4<f32> = u_xlat10;
          let x_2303 : vec4<bool> = (vec4<f32>(x_2300.y, x_2300.z, x_2300.y, x_2300.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb41 = vec2<bool>(x_2303.x, x_2303.y);
          let x_2307 : bool = u_xlatb41.x;
          if (x_2307) {
            let x_2312 : f32 = u_xlat10.x;
            x_2308 = x_2312;
          } else {
            let x_2315 : f32 = u_xlat10.x;
            x_2308 = -(x_2315);
          }
          let x_2317 : f32 = x_2308;
          u_xlat41.x = x_2317;
          let x_2320 : bool = u_xlatb41.y;
          if (x_2320) {
            let x_2325 : f32 = u_xlat10.x;
            x_2321 = x_2325;
          } else {
            let x_2328 : f32 = u_xlat10.x;
            x_2321 = -(x_2328);
          }
          let x_2330 : f32 = x_2321;
          u_xlat41.y = x_2330;
          let x_2332 : vec4<f32> = u_xlat9;
          let x_2334 : f32 = u_xlat57;
          let x_2337 : vec2<f32> = u_xlat41;
          u_xlat41 = ((vec2<f32>(x_2332.x, x_2332.y) * vec2<f32>(x_2334, x_2334)) + x_2337);
          let x_2339 : vec2<f32> = u_xlat41;
          u_xlat41 = ((x_2339 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2342 : vec2<f32> = u_xlat41;
          u_xlat41 = clamp(x_2342, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2346 : u32 = u_xlatu1;
          let x_2349 : vec4<f32> = x_2014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2346)];
          let x_2351 : vec2<f32> = u_xlat41;
          let x_2353 : u32 = u_xlatu1;
          let x_2356 : vec4<f32> = x_2014.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2353)];
          let x_2358 : vec2<f32> = ((vec2<f32>(x_2349.x, x_2349.y) * x_2351) + vec2<f32>(x_2356.z, x_2356.w));
          let x_2359 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2358.x, x_2358.y, x_2359.z, x_2359.w);
        }
      }
      let x_2366 : vec4<f32> = u_xlat8;
      let x_2369 : f32 = x_43.x_GlobalMipBias.x;
      let x_2370 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2366.x, x_2366.y), x_2369);
      u_xlat8 = x_2370;
      let x_2372 : bool = u_xlatb5.y;
      if (x_2372) {
        let x_2377 : f32 = u_xlat8.w;
        x_2373 = x_2377;
      } else {
        let x_2380 : f32 = u_xlat8.x;
        x_2373 = x_2380;
      }
      let x_2381 : f32 = x_2373;
      u_xlat57 = x_2381;
      let x_2383 : bool = u_xlatb5.x;
      if (x_2383) {
        let x_2387 : vec4<f32> = u_xlat8;
        x_2384 = vec3<f32>(x_2387.x, x_2387.y, x_2387.z);
      } else {
        let x_2390 : f32 = u_xlat57;
        x_2384 = vec3<f32>(x_2390, x_2390, x_2390);
      }
      let x_2392 : vec3<f32> = x_2384;
      let x_2393 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2399 : vec4<f32> = u_xlat8;
    let x_2401 : u32 = u_xlatu1;
    let x_2404 : vec4<f32> = x_1905.x_AdditionalLightsColor[bitcast<i32>(x_2401)];
    let x_2406 : vec3<f32> = (vec3<f32>(x_2399.x, x_2399.y, x_2399.z) * vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
    let x_2407 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2406.x, x_2406.y, x_2406.z, x_2407.w);
    let x_2409 : f32 = u_xlat56;
    let x_2411 : vec4<f32> = u_xlat8;
    let x_2413 : vec3<f32> = (vec3<f32>(x_2409, x_2409, x_2409) * vec3<f32>(x_2411.x, x_2411.y, x_2411.z));
    let x_2414 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2413.x, x_2413.y, x_2413.z, x_2414.w);
    let x_2416 : vec4<f32> = u_xlat2;
    let x_2418 : vec4<f32> = u_xlat7;
    u_xlat1.x = dot(vec3<f32>(x_2416.x, x_2416.y, x_2416.z), vec3<f32>(x_2418.x, x_2418.y, x_2418.z));
    let x_2423 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_2423, 0.0f, 1.0f);
    let x_2426 : vec4<f32> = u_xlat1;
    let x_2428 : vec4<f32> = u_xlat8;
    let x_2430 : vec3<f32> = (vec3<f32>(x_2426.x, x_2426.x, x_2426.x) * vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
    let x_2431 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
    let x_2433 : vec4<f32> = u_xlat1;
    let x_2435 : vec4<f32> = u_xlat7;
    let x_2437 : vec3<f32> = (vec3<f32>(x_2433.y, x_2433.z, x_2433.w) * vec3<f32>(x_2435.x, x_2435.y, x_2435.z));
    let x_2438 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2437.x, x_2437.y, x_2437.z, x_2438.w);
    let x_2440 : vec4<f32> = u_xlat7;
    let x_2442 : vec4<f32> = u_xlat0;
    let x_2445 : vec4<f32> = u_xlat6;
    let x_2447 : vec3<f32> = ((vec3<f32>(x_2440.x, x_2440.y, x_2440.z) * vec3<f32>(x_2442.x, x_2442.x, x_2442.x)) + vec3<f32>(x_2445.x, x_2445.y, x_2445.z));
    let x_2448 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2447.x, x_2447.y, x_2447.z, x_2448.w);

    continuing {
      let x_2450 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2450 + bitcast<u32>(1i));
    }
  }
  let x_2452 : vec3<f32> = u_xlat3;
  let x_2453 : vec4<f32> = u_xlat1;
  let x_2456 : vec4<f32> = u_xlat4;
  let x_2458 : vec3<f32> = ((x_2452 * vec3<f32>(x_2453.y, x_2453.z, x_2453.w)) + vec3<f32>(x_2456.x, x_2456.y, x_2456.z));
  let x_2459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2458.x, x_2458.y, x_2458.z, x_2459.w);
  let x_2463 : vec4<f32> = u_xlat6;
  let x_2465 : vec4<f32> = u_xlat1;
  let x_2467 : vec3<f32> = (vec3<f32>(x_2463.x, x_2463.y, x_2463.z) + vec3<f32>(x_2465.x, x_2465.y, x_2465.z));
  let x_2468 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2467.x, x_2467.y, x_2467.z, x_2468.w);
  let x_2471 : f32 = x_56.x_Surface;
  u_xlatb18 = (x_2471 == 1.0f);
  let x_2473 : bool = u_xlatb18;
  let x_2474 : bool = u_xlatb36;
  u_xlatb18 = (x_2473 | x_2474);
  let x_2476 : bool = u_xlatb18;
  if (x_2476) {
    let x_2481 : f32 = u_xlat0.x;
    x_2477 = x_2481;
  } else {
    x_2477 = 1.0f;
  }
  let x_2483 : f32 = x_2477;
  SV_Target0.w = x_2483;
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

