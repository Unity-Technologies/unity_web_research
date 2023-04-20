diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> u_xlat11 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_159 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_268 : LightShadows;

var<private> u_xlatb33 : bool;

var<private> u_xlatb34 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat35 : f32;

@group(1) @binding(5) var<uniform> x_345 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb5 : vec2<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlati35 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_602 : AdditionalLights;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb27 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat27 : vec2<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb38 : bool;

var<private> u_xlati27 : i32;

var<private> u_xlati38 : i32;

var<private> u_xlati39 : i32;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb30 : vec2<bool>;

var<private> u_xlat30 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var x_294 : f32;
  var x_433 : f32;
  var x_444 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_736 : f32;
  var x_747 : f32;
  var txVec1 : vec3<f32>;
  var x_1185 : f32;
  var x_1198 : f32;
  var x_1246 : f32;
  var x_1258 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_37 * x_40);
  let x_48 : f32 = u_xlat1.w;
  let x_54 : f32 = x_51.x_Cutoff;
  u_xlatb0 = (x_48 >= x_54);
  let x_56 : bool = u_xlatb0;
  if (x_56) {
    let x_62 : f32 = u_xlat1.w;
    x_58 = x_62;
  } else {
    x_58 = 0.0f;
  }
  let x_65 : f32 = x_58;
  u_xlat0.x = x_65;
  let x_69 : f32 = u_xlat0.w;
  let x_72 : f32 = vs_TEXCOORD7.w;
  let x_75 : f32 = x_51.x_Cutoff;
  u_xlat11 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat22 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat33 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat33;
  let x_88 : f32 = u_xlat22;
  u_xlat22 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat22;
  u_xlat22 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat11;
  let x_95 : f32 = u_xlat22;
  u_xlat11 = (x_94 / x_95);
  let x_97 : f32 = u_xlat11;
  u_xlat11 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat11;
  u_xlat11 = clamp(x_100, 0.0f, 1.0f);
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
  u_xlat0.x = (x_119 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat0.x;
  u_xlatb0 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb0;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  u_xlat2.w = 1.0f;
  let x_163 : vec4<f32> = x_159.unity_SHAr;
  let x_164 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_163, x_164);
  let x_169 : vec4<f32> = x_159.unity_SHAg;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_169, x_170);
  let x_176 : vec4<f32> = x_159.unity_SHAb;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_176, x_177);
  let x_181 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_181.y, x_181.z, x_181.z, x_181.x) * vec4<f32>(x_183.x, x_183.y, x_183.z, x_183.z));
  let x_189 : vec4<f32> = x_159.unity_SHBr;
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_189, x_190);
  let x_195 : vec4<f32> = x_159.unity_SHBg;
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_195, x_196);
  let x_201 : vec4<f32> = x_159.unity_SHBb;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_201, x_202);
  let x_206 : f32 = u_xlat2.y;
  let x_208 : f32 = u_xlat2.y;
  u_xlat0.x = (x_206 * x_208);
  let x_212 : f32 = u_xlat2.x;
  let x_214 : f32 = u_xlat2.x;
  let x_217 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_212 * x_214) + -(x_217));
  let x_223 : vec4<f32> = x_159.unity_SHC;
  let x_225 : vec4<f32> = u_xlat0;
  let x_228 : vec3<f32> = u_xlat5;
  let x_229 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.x, x_225.x, x_225.x)) + x_228);
  let x_230 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec3<f32> = u_xlat3;
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_232 + vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_236, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_242 : vec4<f32> = vs_TEXCOORD6;
  let x_243 : vec2<f32> = vec2<f32>(x_242.x, x_242.y);
  let x_245 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_243.x, x_243.y, x_245);
  let x_257 : vec3<f32> = txVec0;
  let x_259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_257.xy, x_257.z);
  u_xlat0.x = x_259;
  let x_271 : f32 = x_268.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_271) + 1.0f);
  let x_275 : f32 = u_xlat0.x;
  let x_277 : f32 = x_268.x_MainLightShadowParams.x;
  let x_279 : f32 = u_xlat33;
  u_xlat0.x = ((x_275 * x_277) + x_279);
  let x_284 : f32 = vs_TEXCOORD6.z;
  u_xlatb33 = (0.0f >= x_284);
  let x_288 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (x_288 >= 1.0f);
  let x_290 : bool = u_xlatb33;
  let x_291 : bool = u_xlatb34;
  u_xlatb33 = (x_290 | x_291);
  let x_293 : bool = u_xlatb33;
  if (x_293) {
    x_294 = 1.0f;
  } else {
    let x_299 : f32 = u_xlat0.x;
    x_294 = x_299;
  }
  let x_300 : f32 = x_294;
  u_xlat0.x = x_300;
  let x_303 : vec4<f32> = vs_TEXCOORD2;
  let x_308 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_310 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + -(x_308));
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat4;
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_319 : f32 = u_xlat33;
  let x_321 : f32 = x_268.x_MainLightShadowParams.z;
  let x_324 : f32 = x_268.x_MainLightShadowParams.w;
  u_xlat34 = ((x_319 * x_321) + x_324);
  let x_326 : f32 = u_xlat34;
  u_xlat34 = clamp(x_326, 0.0f, 1.0f);
  let x_330 : f32 = u_xlat0.x;
  u_xlat35 = (-(x_330) + 1.0f);
  let x_333 : f32 = u_xlat34;
  let x_334 : f32 = u_xlat35;
  let x_337 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_333 * x_334) + x_337);
  let x_348 : f32 = x_345.x_MainLightCookieTextureFormat;
  u_xlatb34 = !((x_348 == -1.0f));
  let x_351 : bool = u_xlatb34;
  if (x_351) {
    let x_354 : vec4<f32> = vs_TEXCOORD2;
    let x_357 : vec4<f32> = x_345.x_MainLightWorldToLight[1i];
    let x_359 : vec2<f32> = (vec2<f32>(x_354.y, x_354.y) * vec2<f32>(x_357.x, x_357.y));
    let x_360 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_360.z, x_360.w);
    let x_363 : vec4<f32> = x_345.x_MainLightWorldToLight[0i];
    let x_365 : vec4<f32> = vs_TEXCOORD2;
    let x_368 : vec4<f32> = u_xlat4;
    let x_370 : vec2<f32> = ((vec2<f32>(x_363.x, x_363.y) * vec2<f32>(x_365.x, x_365.x)) + vec2<f32>(x_368.x, x_368.y));
    let x_371 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_371.w);
    let x_374 : vec4<f32> = x_345.x_MainLightWorldToLight[2i];
    let x_376 : vec4<f32> = vs_TEXCOORD2;
    let x_379 : vec4<f32> = u_xlat4;
    let x_381 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(x_376.z, x_376.z)) + vec2<f32>(x_379.x, x_379.y));
    let x_382 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
    let x_384 : vec4<f32> = u_xlat4;
    let x_388 : vec4<f32> = x_345.x_MainLightWorldToLight[3i];
    let x_390 : vec2<f32> = (vec2<f32>(x_384.x, x_384.y) + vec2<f32>(x_388.x, x_388.y));
    let x_391 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
    let x_393 : vec4<f32> = u_xlat4;
    let x_397 : vec2<f32> = ((vec2<f32>(x_393.x, x_393.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_398 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
    let x_405 : vec4<f32> = u_xlat4;
    let x_408 : f32 = x_27.x_GlobalMipBias.x;
    let x_409 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_405.x, x_405.y), x_408);
    u_xlat4 = x_409;
    let x_414 : f32 = x_345.x_MainLightCookieTextureFormat;
    let x_416 : f32 = x_345.x_MainLightCookieTextureFormat;
    let x_418 : f32 = x_345.x_MainLightCookieTextureFormat;
    let x_420 : f32 = x_345.x_MainLightCookieTextureFormat;
    let x_421 : vec4<f32> = vec4<f32>(x_414, x_416, x_418, x_420);
    let x_429 : vec4<bool> = (vec4<f32>(x_421.x, x_421.y, x_421.z, x_421.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_429.x, x_429.y);
    let x_432 : bool = u_xlatb5.y;
    if (x_432) {
      let x_437 : f32 = u_xlat4.w;
      x_433 = x_437;
    } else {
      let x_440 : f32 = u_xlat4.x;
      x_433 = x_440;
    }
    let x_441 : f32 = x_433;
    u_xlat34 = x_441;
    let x_443 : bool = u_xlatb5.x;
    if (x_443) {
      let x_447 : vec4<f32> = u_xlat4;
      x_444 = vec3<f32>(x_447.x, x_447.y, x_447.z);
    } else {
      let x_450 : f32 = u_xlat34;
      x_444 = vec3<f32>(x_450, x_450, x_450);
    }
    let x_452 : vec3<f32> = x_444;
    let x_453 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_459 : vec4<f32> = u_xlat4;
  let x_462 : vec4<f32> = x_27.x_MainLightColor;
  let x_464 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_468 : f32 = u_xlat0.x;
  let x_470 : f32 = x_159.unity_LightData.z;
  u_xlat0.x = (x_468 * x_470);
  let x_473 : vec4<f32> = u_xlat0;
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.x, x_473.x) * vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat2;
  let x_483 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_480.x, x_480.y, x_480.z), vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_488 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_488, 0.0f, 1.0f);
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec4<f32> = u_xlat4;
  let x_495 : vec3<f32> = (vec3<f32>(x_491.x, x_491.x, x_491.x) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat1;
  let x_500 : vec4<f32> = u_xlat4;
  let x_502 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_508 : f32 = x_159.unity_LightData.y;
  u_xlat0.x = min(x_506, x_508);
  let x_514 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_514));
  let x_517 : f32 = u_xlat33;
  let x_520 : f32 = x_268.x_AdditionalShadowFadeParams.x;
  let x_523 : f32 = x_268.x_AdditionalShadowFadeParams.y;
  u_xlat33 = ((x_517 * x_520) + x_523);
  let x_525 : f32 = u_xlat33;
  u_xlat33 = clamp(x_525, 0.0f, 1.0f);
  let x_528 : f32 = x_345.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_530 : f32 = x_345.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_532 : f32 = x_345.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_534 : f32 = x_345.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_535 : vec4<f32> = vec4<f32>(x_528, x_530, x_532, x_534);
  let x_541 : vec4<bool> = (vec4<f32>(x_535.x, x_535.y, x_535.z, x_535.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_541.x, x_541.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_554 : u32 = u_xlatu_loop_1;
    let x_555 : u32 = u_xlatu0;
    if ((x_554 < x_555)) {
    } else {
      break;
    }
    let x_558 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_558 >> 2u);
    let x_562 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_562 & 3u));
    let x_566 : u32 = u_xlatu35;
    let x_569 : vec4<f32> = x_159.unity_LightIndices[bitcast<i32>(x_566)];
    let x_579 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_584 : vec4<u32> = indexable[x_579];
    u_xlat35 = dot(x_569, bitcast<vec4<f32>>(x_584));
    let x_588 : f32 = u_xlat35;
    u_xlati35 = i32(x_588);
    let x_591 : vec4<f32> = vs_TEXCOORD2;
    let x_603 : i32 = u_xlati35;
    let x_605 : vec4<f32> = x_602.x_AdditionalLightsPosition[x_603];
    let x_608 : i32 = u_xlati35;
    let x_610 : vec4<f32> = x_602.x_AdditionalLightsPosition[x_608];
    u_xlat7 = ((-(vec3<f32>(x_591.x, x_591.y, x_591.z)) * vec3<f32>(x_605.w, x_605.w, x_605.w)) + vec3<f32>(x_610.x, x_610.y, x_610.z));
    let x_614 : vec3<f32> = u_xlat7;
    let x_615 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_614, x_615);
    let x_617 : f32 = u_xlat36;
    u_xlat36 = max(x_617, 0.00006103515625f);
    let x_621 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_621);
    let x_623 : f32 = u_xlat37;
    let x_625 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_623, x_623, x_623) * x_625);
    let x_627 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_627);
    let x_629 : f32 = u_xlat36;
    let x_630 : i32 = u_xlati35;
    let x_632 : f32 = x_602.x_AdditionalLightsAttenuation[x_630].x;
    u_xlat36 = (x_629 * x_632);
    let x_634 : f32 = u_xlat36;
    let x_636 : f32 = u_xlat36;
    u_xlat36 = ((-(x_634) * x_636) + 1.0f);
    let x_639 : f32 = u_xlat36;
    u_xlat36 = max(x_639, 0.0f);
    let x_641 : f32 = u_xlat36;
    let x_642 : f32 = u_xlat36;
    u_xlat36 = (x_641 * x_642);
    let x_644 : f32 = u_xlat36;
    let x_645 : f32 = u_xlat37;
    u_xlat36 = (x_644 * x_645);
    let x_647 : i32 = u_xlati35;
    let x_649 : vec4<f32> = x_602.x_AdditionalLightsSpotDir[x_647];
    let x_651 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), x_651);
    let x_653 : f32 = u_xlat37;
    let x_654 : i32 = u_xlati35;
    let x_656 : f32 = x_602.x_AdditionalLightsAttenuation[x_654].z;
    let x_658 : i32 = u_xlati35;
    let x_660 : f32 = x_602.x_AdditionalLightsAttenuation[x_658].w;
    u_xlat37 = ((x_653 * x_656) + x_660);
    let x_662 : f32 = u_xlat37;
    u_xlat37 = clamp(x_662, 0.0f, 1.0f);
    let x_664 : f32 = u_xlat37;
    let x_665 : f32 = u_xlat37;
    u_xlat37 = (x_664 * x_665);
    let x_667 : f32 = u_xlat36;
    let x_668 : f32 = u_xlat37;
    u_xlat36 = (x_667 * x_668);
    let x_672 : i32 = u_xlati35;
    let x_674 : f32 = x_268.x_AdditionalShadowParams[x_672].w;
    u_xlati37 = i32(x_674);
    let x_677 : i32 = u_xlati37;
    u_xlatb27 = (x_677 >= 0i);
    let x_679 : bool = u_xlatb27;
    if (x_679) {
      let x_683 : i32 = u_xlati35;
      let x_685 : f32 = x_268.x_AdditionalShadowParams[x_683].z;
      u_xlatb27 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_685, x_685, x_685, x_685))));
      let x_689 : bool = u_xlatb27;
      if (x_689) {
        let x_694 : vec3<f32> = u_xlat7;
        let x_697 : vec3<f32> = u_xlat7;
        let x_700 : vec4<bool> = (abs(vec4<f32>(x_694.z, x_694.z, x_694.y, x_694.z)) >= abs(vec4<f32>(x_697.x, x_697.y, x_697.x, x_697.x)));
        let x_702 : vec3<bool> = vec3<bool>(x_700.x, x_700.y, x_700.z);
        let x_703 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_702.x, x_702.y, x_702.z, x_703.w);
        let x_706 : bool = u_xlatb8.y;
        let x_708 : bool = u_xlatb8.x;
        u_xlatb27 = (x_706 & x_708);
        let x_710 : vec3<f32> = u_xlat7;
        let x_713 : vec4<bool> = (-(vec4<f32>(x_710.z, x_710.y, x_710.z, x_710.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_714 : vec3<bool> = vec3<bool>(x_713.x, x_713.y, x_713.w);
        let x_715 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_714.x, x_714.y, x_715.z, x_714.z);
        let x_719 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_719);
        let x_725 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_725);
        let x_732 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_732);
        let x_735 : bool = u_xlatb8.z;
        if (x_735) {
          let x_740 : f32 = u_xlat8.y;
          x_736 = x_740;
        } else {
          let x_742 : f32 = u_xlat38;
          x_736 = x_742;
        }
        let x_743 : f32 = x_736;
        u_xlat38 = x_743;
        let x_746 : bool = u_xlatb27;
        if (x_746) {
          let x_751 : f32 = u_xlat8.x;
          x_747 = x_751;
        } else {
          let x_753 : f32 = u_xlat38;
          x_747 = x_753;
        }
        let x_754 : f32 = x_747;
        u_xlat27.x = x_754;
        let x_756 : i32 = u_xlati35;
        let x_758 : f32 = x_268.x_AdditionalShadowParams[x_756].w;
        u_xlat38 = trunc(x_758);
        let x_761 : f32 = u_xlat27.x;
        let x_762 : f32 = u_xlat38;
        u_xlat27.x = (x_761 + x_762);
        let x_766 : f32 = u_xlat27.x;
        u_xlati37 = i32(x_766);
      }
      let x_768 : i32 = u_xlati37;
      u_xlati37 = (x_768 << bitcast<u32>(2i));
      let x_770 : vec4<f32> = vs_TEXCOORD2;
      let x_773 : i32 = u_xlati37;
      let x_776 : i32 = u_xlati37;
      let x_780 : vec4<f32> = x_268.x_AdditionalLightsWorldToShadow[((x_773 + 1i) / 4i)][((x_776 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_770.y, x_770.y, x_770.y, x_770.y) * x_780);
      let x_782 : i32 = u_xlati37;
      let x_784 : i32 = u_xlati37;
      let x_787 : vec4<f32> = x_268.x_AdditionalLightsWorldToShadow[(x_782 / 4i)][(x_784 % 4i)];
      let x_788 : vec4<f32> = vs_TEXCOORD2;
      let x_791 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_787 * vec4<f32>(x_788.x, x_788.x, x_788.x, x_788.x)) + x_791);
      let x_793 : i32 = u_xlati37;
      let x_796 : i32 = u_xlati37;
      let x_800 : vec4<f32> = x_268.x_AdditionalLightsWorldToShadow[((x_793 + 2i) / 4i)][((x_796 + 2i) % 4i)];
      let x_801 : vec4<f32> = vs_TEXCOORD2;
      let x_804 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_800 * vec4<f32>(x_801.z, x_801.z, x_801.z, x_801.z)) + x_804);
      let x_806 : vec4<f32> = u_xlat8;
      let x_807 : i32 = u_xlati37;
      let x_810 : i32 = u_xlati37;
      let x_814 : vec4<f32> = x_268.x_AdditionalLightsWorldToShadow[((x_807 + 3i) / 4i)][((x_810 + 3i) % 4i)];
      u_xlat8 = (x_806 + x_814);
      let x_816 : vec4<f32> = u_xlat8;
      let x_818 : vec4<f32> = u_xlat8;
      let x_820 : vec3<f32> = (vec3<f32>(x_816.x, x_816.y, x_816.z) / vec3<f32>(x_818.w, x_818.w, x_818.w));
      let x_821 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
      let x_824 : vec4<f32> = u_xlat8;
      let x_825 : vec2<f32> = vec2<f32>(x_824.x, x_824.y);
      let x_827 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_825.x, x_825.y, x_827);
      let x_835 : vec3<f32> = txVec1;
      let x_837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
      u_xlat37 = x_837;
      let x_838 : i32 = u_xlati35;
      let x_840 : f32 = x_268.x_AdditionalShadowParams[x_838].x;
      u_xlat27.x = (1.0f + -(x_840));
      let x_844 : f32 = u_xlat37;
      let x_845 : i32 = u_xlati35;
      let x_847 : f32 = x_268.x_AdditionalShadowParams[x_845].x;
      let x_850 : f32 = u_xlat27.x;
      u_xlat37 = ((x_844 * x_847) + x_850);
      let x_853 : f32 = u_xlat8.z;
      u_xlatb27 = (0.0f >= x_853);
      let x_857 : f32 = u_xlat8.z;
      u_xlatb38 = (x_857 >= 1.0f);
      let x_859 : bool = u_xlatb38;
      let x_860 : bool = u_xlatb27;
      u_xlatb27 = (x_859 | x_860);
      let x_862 : bool = u_xlatb27;
      let x_863 : f32 = u_xlat37;
      u_xlat37 = select(x_863, 1.0f, x_862);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_866 : f32 = u_xlat37;
    u_xlat27.x = (-(x_866) + 1.0f);
    let x_870 : f32 = u_xlat33;
    let x_872 : f32 = u_xlat27.x;
    let x_874 : f32 = u_xlat37;
    u_xlat37 = ((x_870 * x_872) + x_874);
    let x_877 : i32 = u_xlati35;
    u_xlati27 = (1i << bitcast<u32>((x_877 & 31i)));
    let x_881 : i32 = u_xlati27;
    let x_884 : f32 = x_345.x_AdditionalLightsCookieEnableBits;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_881) & bitcast<u32>(x_884)));
    let x_888 : i32 = u_xlati27;
    if ((x_888 != 0i)) {
      let x_892 : i32 = u_xlati35;
      let x_894 : f32 = x_345.x_AdditionalLightsLightTypes[x_892].el;
      u_xlati27 = i32(x_894);
      let x_897 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_897 != 0i));
      let x_901 : i32 = u_xlati35;
      u_xlati39 = (x_901 << bitcast<u32>(2i));
      let x_903 : i32 = u_xlati38;
      if ((x_903 != 0i)) {
        let x_907 : vec4<f32> = vs_TEXCOORD2;
        let x_909 : i32 = u_xlati39;
        let x_912 : i32 = u_xlati39;
        let x_916 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[((x_909 + 1i) / 4i)][((x_912 + 1i) % 4i)];
        let x_918 : vec3<f32> = (vec3<f32>(x_907.y, x_907.y, x_907.y) * vec3<f32>(x_916.x, x_916.y, x_916.w));
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
        let x_921 : i32 = u_xlati39;
        let x_923 : i32 = u_xlati39;
        let x_926 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[(x_921 / 4i)][(x_923 % 4i)];
        let x_928 : vec4<f32> = vs_TEXCOORD2;
        let x_931 : vec4<f32> = u_xlat8;
        let x_933 : vec3<f32> = ((vec3<f32>(x_926.x, x_926.y, x_926.w) * vec3<f32>(x_928.x, x_928.x, x_928.x)) + vec3<f32>(x_931.x, x_931.y, x_931.z));
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
        let x_936 : i32 = u_xlati39;
        let x_939 : i32 = u_xlati39;
        let x_943 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[((x_936 + 2i) / 4i)][((x_939 + 2i) % 4i)];
        let x_945 : vec4<f32> = vs_TEXCOORD2;
        let x_948 : vec4<f32> = u_xlat8;
        let x_950 : vec3<f32> = ((vec3<f32>(x_943.x, x_943.y, x_943.w) * vec3<f32>(x_945.z, x_945.z, x_945.z)) + vec3<f32>(x_948.x, x_948.y, x_948.z));
        let x_951 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
        let x_953 : vec4<f32> = u_xlat8;
        let x_955 : i32 = u_xlati39;
        let x_958 : i32 = u_xlati39;
        let x_962 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[((x_955 + 3i) / 4i)][((x_958 + 3i) % 4i)];
        let x_964 : vec3<f32> = (vec3<f32>(x_953.x, x_953.y, x_953.z) + vec3<f32>(x_962.x, x_962.y, x_962.w));
        let x_965 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
        let x_967 : vec4<f32> = u_xlat8;
        let x_969 : vec4<f32> = u_xlat8;
        let x_971 : vec2<f32> = (vec2<f32>(x_967.x, x_967.y) / vec2<f32>(x_969.z, x_969.z));
        let x_972 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec4<f32> = u_xlat8;
        let x_977 : vec2<f32> = ((vec2<f32>(x_974.x, x_974.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_978 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
        let x_980 : vec4<f32> = u_xlat8;
        let x_984 : vec2<f32> = clamp(vec2<f32>(x_980.x, x_980.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
        let x_987 : i32 = u_xlati35;
        let x_989 : vec4<f32> = x_345.x_AdditionalLightsCookieAtlasUVRects[x_987];
        let x_991 : vec4<f32> = u_xlat8;
        let x_994 : i32 = u_xlati35;
        let x_996 : vec4<f32> = x_345.x_AdditionalLightsCookieAtlasUVRects[x_994];
        let x_998 : vec2<f32> = ((vec2<f32>(x_989.x, x_989.y) * vec2<f32>(x_991.x, x_991.y)) + vec2<f32>(x_996.z, x_996.w));
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_998.y, x_999.z, x_999.w);
      } else {
        let x_1002 : i32 = u_xlati27;
        u_xlatb27 = (x_1002 == 1i);
        let x_1004 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1004);
        let x_1006 : i32 = u_xlati27;
        if ((x_1006 != 0i)) {
          let x_1010 : vec4<f32> = vs_TEXCOORD2;
          let x_1012 : i32 = u_xlati39;
          let x_1015 : i32 = u_xlati39;
          let x_1019 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[((x_1012 + 1i) / 4i)][((x_1015 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1010.y, x_1010.y) * vec2<f32>(x_1019.x, x_1019.y));
          let x_1022 : i32 = u_xlati39;
          let x_1024 : i32 = u_xlati39;
          let x_1027 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[(x_1022 / 4i)][(x_1024 % 4i)];
          let x_1029 : vec4<f32> = vs_TEXCOORD2;
          let x_1032 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1029.x, x_1029.x)) + x_1032);
          let x_1034 : i32 = u_xlati39;
          let x_1037 : i32 = u_xlati39;
          let x_1041 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[((x_1034 + 2i) / 4i)][((x_1037 + 2i) % 4i)];
          let x_1043 : vec4<f32> = vs_TEXCOORD2;
          let x_1046 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(x_1043.z, x_1043.z)) + x_1046);
          let x_1048 : vec2<f32> = u_xlat27;
          let x_1049 : i32 = u_xlati39;
          let x_1052 : i32 = u_xlati39;
          let x_1056 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[((x_1049 + 3i) / 4i)][((x_1052 + 3i) % 4i)];
          u_xlat27 = (x_1048 + vec2<f32>(x_1056.x, x_1056.y));
          let x_1059 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1059 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1062 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1062);
          let x_1064 : i32 = u_xlati35;
          let x_1066 : vec4<f32> = x_345.x_AdditionalLightsCookieAtlasUVRects[x_1064];
          let x_1068 : vec2<f32> = u_xlat27;
          let x_1070 : i32 = u_xlati35;
          let x_1072 : vec4<f32> = x_345.x_AdditionalLightsCookieAtlasUVRects[x_1070];
          let x_1074 : vec2<f32> = ((vec2<f32>(x_1066.x, x_1066.y) * x_1068) + vec2<f32>(x_1072.z, x_1072.w));
          let x_1075 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
        } else {
          let x_1079 : vec4<f32> = vs_TEXCOORD2;
          let x_1081 : i32 = u_xlati39;
          let x_1084 : i32 = u_xlati39;
          let x_1088 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[((x_1081 + 1i) / 4i)][((x_1084 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1079.y, x_1079.y, x_1079.y, x_1079.y) * x_1088);
          let x_1090 : i32 = u_xlati39;
          let x_1092 : i32 = u_xlati39;
          let x_1095 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[(x_1090 / 4i)][(x_1092 % 4i)];
          let x_1096 : vec4<f32> = vs_TEXCOORD2;
          let x_1099 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1095 * vec4<f32>(x_1096.x, x_1096.x, x_1096.x, x_1096.x)) + x_1099);
          let x_1101 : i32 = u_xlati39;
          let x_1104 : i32 = u_xlati39;
          let x_1108 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[((x_1101 + 2i) / 4i)][((x_1104 + 2i) % 4i)];
          let x_1109 : vec4<f32> = vs_TEXCOORD2;
          let x_1112 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1108 * vec4<f32>(x_1109.z, x_1109.z, x_1109.z, x_1109.z)) + x_1112);
          let x_1114 : vec4<f32> = u_xlat9;
          let x_1115 : i32 = u_xlati39;
          let x_1118 : i32 = u_xlati39;
          let x_1122 : vec4<f32> = x_345.x_AdditionalLightsWorldToLights[((x_1115 + 3i) / 4i)][((x_1118 + 3i) % 4i)];
          u_xlat9 = (x_1114 + x_1122);
          let x_1124 : vec4<f32> = u_xlat9;
          let x_1126 : vec4<f32> = u_xlat9;
          let x_1128 : vec3<f32> = (vec3<f32>(x_1124.x, x_1124.y, x_1124.z) / vec3<f32>(x_1126.w, x_1126.w, x_1126.w));
          let x_1129 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
          let x_1131 : vec4<f32> = u_xlat9;
          let x_1133 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1131.x, x_1131.y, x_1131.z), vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
          let x_1138 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1138);
          let x_1141 : vec2<f32> = u_xlat27;
          let x_1143 : vec4<f32> = u_xlat9;
          let x_1145 : vec3<f32> = (vec3<f32>(x_1141.x, x_1141.x, x_1141.x) * vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
          let x_1146 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
          let x_1148 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1148.x, x_1148.y, x_1148.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1155 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1155, 0.00000099999999747524f);
          let x_1160 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1160);
          let x_1164 : vec2<f32> = u_xlat27;
          let x_1166 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1164.x, x_1164.x, x_1164.x) * vec3<f32>(x_1166.z, x_1166.x, x_1166.y));
          let x_1170 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1170);
          let x_1174 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1174, 0.0f, 1.0f);
          let x_1178 : vec3<f32> = u_xlat10;
          let x_1180 : vec4<bool> = (vec4<f32>(x_1178.y, x_1178.z, x_1178.y, x_1178.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1180.x, x_1180.y);
          let x_1184 : bool = u_xlatb30.x;
          if (x_1184) {
            let x_1189 : f32 = u_xlat10.x;
            x_1185 = x_1189;
          } else {
            let x_1192 : f32 = u_xlat10.x;
            x_1185 = -(x_1192);
          }
          let x_1194 : f32 = x_1185;
          u_xlat30.x = x_1194;
          let x_1197 : bool = u_xlatb30.y;
          if (x_1197) {
            let x_1202 : f32 = u_xlat10.x;
            x_1198 = x_1202;
          } else {
            let x_1205 : f32 = u_xlat10.x;
            x_1198 = -(x_1205);
          }
          let x_1207 : f32 = x_1198;
          u_xlat30.y = x_1207;
          let x_1209 : vec4<f32> = u_xlat9;
          let x_1211 : vec2<f32> = u_xlat27;
          let x_1214 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1209.x, x_1209.y) * vec2<f32>(x_1211.x, x_1211.x)) + x_1214);
          let x_1216 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1216 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1219 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1219, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1223 : i32 = u_xlati35;
          let x_1225 : vec4<f32> = x_345.x_AdditionalLightsCookieAtlasUVRects[x_1223];
          let x_1227 : vec2<f32> = u_xlat27;
          let x_1229 : i32 = u_xlati35;
          let x_1231 : vec4<f32> = x_345.x_AdditionalLightsCookieAtlasUVRects[x_1229];
          let x_1233 : vec2<f32> = ((vec2<f32>(x_1225.x, x_1225.y) * x_1227) + vec2<f32>(x_1231.z, x_1231.w));
          let x_1234 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1233.x, x_1233.y, x_1234.z, x_1234.w);
        }
      }
      let x_1241 : vec4<f32> = u_xlat8;
      let x_1243 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1241.x, x_1241.y), 0.0f);
      u_xlat8 = x_1243;
      let x_1245 : bool = u_xlatb5.y;
      if (x_1245) {
        let x_1250 : f32 = u_xlat8.w;
        x_1246 = x_1250;
      } else {
        let x_1253 : f32 = u_xlat8.x;
        x_1246 = x_1253;
      }
      let x_1254 : f32 = x_1246;
      u_xlat27.x = x_1254;
      let x_1257 : bool = u_xlatb5.x;
      if (x_1257) {
        let x_1261 : vec4<f32> = u_xlat8;
        x_1258 = vec3<f32>(x_1261.x, x_1261.y, x_1261.z);
      } else {
        let x_1264 : vec2<f32> = u_xlat27;
        x_1258 = vec3<f32>(x_1264.x, x_1264.x, x_1264.x);
      }
      let x_1266 : vec3<f32> = x_1258;
      let x_1267 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1273 : vec4<f32> = u_xlat8;
    let x_1275 : i32 = u_xlati35;
    let x_1277 : vec4<f32> = x_602.x_AdditionalLightsColor[x_1275];
    let x_1279 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.y, x_1273.z) * vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
    let x_1280 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
    let x_1282 : f32 = u_xlat36;
    let x_1283 : f32 = u_xlat37;
    u_xlat35 = (x_1282 * x_1283);
    let x_1285 : f32 = u_xlat35;
    let x_1287 : vec4<f32> = u_xlat8;
    let x_1289 : vec3<f32> = (vec3<f32>(x_1285, x_1285, x_1285) * vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
    let x_1290 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
    let x_1292 : vec4<f32> = u_xlat2;
    let x_1294 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1292.x, x_1292.y, x_1292.z), x_1294);
    let x_1296 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1296, 0.0f, 1.0f);
    let x_1298 : f32 = u_xlat35;
    let x_1300 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1298, x_1298, x_1298) * vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
    let x_1303 : vec3<f32> = u_xlat7;
    let x_1304 : vec4<f32> = u_xlat1;
    let x_1307 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1303 * vec3<f32>(x_1304.x, x_1304.y, x_1304.z)) + x_1307);

    continuing {
      let x_1309 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1309 + bitcast<u32>(1i));
    }
  }
  let x_1311 : vec3<f32> = u_xlat3;
  let x_1312 : vec4<f32> = u_xlat1;
  let x_1315 : vec4<f32> = u_xlat4;
  let x_1317 : vec3<f32> = ((x_1311 * vec3<f32>(x_1312.x, x_1312.y, x_1312.z)) + vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
  let x_1318 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
  let x_1322 : vec3<f32> = u_xlat6;
  let x_1323 : vec4<f32> = u_xlat1;
  let x_1325 : vec3<f32> = (x_1322 + vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : bool = u_xlatb22;
  let x_1329 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1329, x_1328);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


