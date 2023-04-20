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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_163 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(1) @binding(2) var<uniform> x_364 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb24 : bool;

var<private> u_xlatb25 : bool;

var<private> u_xlat25 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatu26 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati26 : i32;

@group(1) @binding(1) var<uniform> x_650 : AdditionalLights;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu25 : u32;

var<private> u_xlatb26 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var x_491 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_780 : f32;
  var x_790 : f32;
  var txVec1 : vec3<f32>;
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
  u_xlat8 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat24;
  let x_88 : f32 = u_xlat16;
  u_xlat16 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat16;
  u_xlat16 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat8;
  let x_95 : f32 = u_xlat16;
  u_xlat8 = (x_94 / x_95);
  let x_97 : f32 = u_xlat8;
  u_xlat8 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat8;
  u_xlat8 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb16;
  if (x_108) {
    let x_112 : f32 = u_xlat8;
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
  let x_153 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres0;
  let x_169 : vec3<f32> = (vec3<f32>(x_153.x, x_153.y, x_153.z) + -(vec3<f32>(x_166.x, x_166.y, x_166.z)));
  let x_170 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec4<f32> = vs_TEXCOORD2;
  let x_177 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres1;
  let x_180 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec4<f32> = vs_TEXCOORD2;
  let x_188 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres2;
  let x_191 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + -(vec3<f32>(x_188.x, x_188.y, x_188.z)));
  let x_192 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_196 : vec4<f32> = vs_TEXCOORD2;
  let x_199 : vec4<f32> = x_163.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_196.x, x_196.y, x_196.z) + -(vec3<f32>(x_199.x, x_199.y, x_199.z)));
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_203.x, x_203.y, x_203.z), vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_209 : vec4<f32> = u_xlat4;
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_223 : vec3<f32> = u_xlat6;
  let x_224 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_223, x_224);
  let x_230 : vec4<f32> = u_xlat3;
  let x_233 : vec4<f32> = x_163.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_230 < x_233);
  let x_236 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_236);
  let x_240 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_240);
  let x_244 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_252);
  let x_258 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_258);
  let x_262 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_262);
  let x_265 : vec4<f32> = u_xlat3;
  let x_267 : vec4<f32> = u_xlat4;
  let x_269 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) + vec3<f32>(x_267.y, x_267.z, x_267.w));
  let x_270 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat3;
  let x_275 : vec3<f32> = max(vec3<f32>(x_272.x, x_272.y, x_272.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_276.x, x_275.x, x_275.y, x_275.z);
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_278, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_286 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_286) + 4.0f);
  let x_293 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_293);
  let x_297 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_297) << bitcast<u32>(2i));
  let x_300 : vec4<f32> = vs_TEXCOORD2;
  let x_302 : i32 = u_xlati0;
  let x_305 : i32 = u_xlati0;
  let x_309 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_302 + 1i) / 4i)][((x_305 + 1i) % 4i)];
  let x_311 : vec3<f32> = (vec3<f32>(x_300.y, x_300.y, x_300.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : i32 = u_xlati0;
  let x_316 : i32 = u_xlati0;
  let x_319 : vec4<f32> = x_163.x_MainLightWorldToShadow[(x_314 / 4i)][(x_316 % 4i)];
  let x_321 : vec4<f32> = vs_TEXCOORD2;
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.x, x_321.x)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : i32 = u_xlati0;
  let x_332 : i32 = u_xlati0;
  let x_336 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_329 + 2i) / 4i)][((x_332 + 2i) % 4i)];
  let x_338 : vec4<f32> = vs_TEXCOORD2;
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.z, x_338.z, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat3;
  let x_348 : i32 = u_xlati0;
  let x_351 : i32 = u_xlati0;
  let x_355 : vec4<f32> = x_163.x_MainLightWorldToShadow[((x_348 + 3i) / 4i)][((x_351 + 3i) % 4i)];
  let x_357 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  u_xlat2.w = 1.0f;
  let x_367 : vec4<f32> = x_364.unity_SHAr;
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_367, x_368);
  let x_373 : vec4<f32> = x_364.unity_SHAg;
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_373, x_374);
  let x_379 : vec4<f32> = x_364.unity_SHAb;
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_379, x_380);
  let x_383 : vec4<f32> = u_xlat2;
  let x_385 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_383.y, x_383.z, x_383.z, x_383.x) * vec4<f32>(x_385.x, x_385.y, x_385.z, x_385.z));
  let x_390 : vec4<f32> = x_364.unity_SHBr;
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_390, x_391);
  let x_396 : vec4<f32> = x_364.unity_SHBg;
  let x_397 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_396, x_397);
  let x_402 : vec4<f32> = x_364.unity_SHBb;
  let x_403 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_402, x_403);
  let x_407 : f32 = u_xlat2.y;
  let x_409 : f32 = u_xlat2.y;
  u_xlat0.x = (x_407 * x_409);
  let x_413 : f32 = u_xlat2.x;
  let x_415 : f32 = u_xlat2.x;
  let x_418 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_413 * x_415) + -(x_418));
  let x_424 : vec4<f32> = x_364.unity_SHC;
  let x_426 : vec4<f32> = u_xlat0;
  let x_429 : vec3<f32> = u_xlat6;
  let x_430 : vec3<f32> = ((vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_426.x, x_426.x, x_426.x)) + x_429);
  let x_431 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat4;
  let x_435 : vec4<f32> = u_xlat5;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) + vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat4;
  let x_442 : vec3<f32> = max(vec3<f32>(x_440.x, x_440.y, x_440.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_447 : vec4<f32> = u_xlat3;
  let x_448 : vec2<f32> = vec2<f32>(x_447.x, x_447.y);
  let x_450 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_448.x, x_448.y, x_450);
  let x_462 : vec3<f32> = txVec0;
  let x_464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_462.xy, x_462.z);
  u_xlat0.x = x_464;
  let x_468 : f32 = x_163.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_468) + 1.0f);
  let x_472 : f32 = u_xlat0.x;
  let x_474 : f32 = x_163.x_MainLightShadowParams.x;
  let x_476 : f32 = u_xlat24;
  u_xlat0.x = ((x_472 * x_474) + x_476);
  let x_481 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_481);
  let x_485 : f32 = u_xlat3.z;
  u_xlatb25 = (x_485 >= 1.0f);
  let x_487 : bool = u_xlatb24;
  let x_488 : bool = u_xlatb25;
  u_xlatb24 = (x_487 | x_488);
  let x_490 : bool = u_xlatb24;
  if (x_490) {
    x_491 = 1.0f;
  } else {
    let x_496 : f32 = u_xlat0.x;
    x_491 = x_496;
  }
  let x_497 : f32 = x_491;
  u_xlat0.x = x_497;
  let x_499 : vec4<f32> = vs_TEXCOORD2;
  let x_503 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_505 : vec3<f32> = (vec3<f32>(x_499.x, x_499.y, x_499.z) + -(x_503));
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat3;
  let x_510 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_508.x, x_508.y, x_508.z), vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_514 : f32 = u_xlat24;
  let x_516 : f32 = x_163.x_MainLightShadowParams.z;
  let x_519 : f32 = x_163.x_MainLightShadowParams.w;
  u_xlat25 = ((x_514 * x_516) + x_519);
  let x_521 : f32 = u_xlat25;
  u_xlat25 = clamp(x_521, 0.0f, 1.0f);
  let x_525 : f32 = u_xlat0.x;
  u_xlat26 = (-(x_525) + 1.0f);
  let x_528 : f32 = u_xlat25;
  let x_529 : f32 = u_xlat26;
  let x_532 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_528 * x_529) + x_532);
  let x_536 : f32 = u_xlat0.x;
  let x_538 : f32 = x_364.unity_LightData.z;
  u_xlat0.x = (x_536 * x_538);
  let x_541 : vec4<f32> = u_xlat0;
  let x_544 : vec4<f32> = x_27.x_MainLightColor;
  let x_546 : vec3<f32> = (vec3<f32>(x_541.x, x_541.x, x_541.x) * vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_549 : vec4<f32> = u_xlat2;
  let x_552 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_549.x, x_549.y, x_549.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_557 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_557, 0.0f, 1.0f);
  let x_560 : vec4<f32> = u_xlat0;
  let x_562 : vec4<f32> = u_xlat3;
  let x_564 : vec3<f32> = (vec3<f32>(x_560.x, x_560.x, x_560.x) * vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat1;
  let x_569 : vec4<f32> = u_xlat3;
  let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_575 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_577 : f32 = x_364.unity_LightData.y;
  u_xlat0.x = min(x_575, x_577);
  let x_581 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_581));
  let x_584 : f32 = u_xlat24;
  let x_587 : f32 = x_163.x_AdditionalShadowFadeParams.x;
  let x_590 : f32 = x_163.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_584 * x_587) + x_590);
  let x_592 : f32 = u_xlat24;
  u_xlat24 = clamp(x_592, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_604 : u32 = u_xlatu_loop_1;
    let x_605 : u32 = u_xlatu0;
    if ((x_604 < x_605)) {
    } else {
      break;
    }
    let x_608 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_608 >> 2u);
    let x_611 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_611 & 3u));
    let x_615 : u32 = u_xlatu26;
    let x_618 : vec4<f32> = x_364.unity_LightIndices[bitcast<i32>(x_615)];
    let x_628 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_633 : vec4<u32> = indexable[x_628];
    u_xlat26 = dot(x_618, bitcast<vec4<f32>>(x_633));
    let x_637 : f32 = u_xlat26;
    u_xlati26 = i32(x_637);
    let x_639 : vec4<f32> = vs_TEXCOORD2;
    let x_651 : i32 = u_xlati26;
    let x_653 : vec4<f32> = x_650.x_AdditionalLightsPosition[x_651];
    let x_656 : i32 = u_xlati26;
    let x_658 : vec4<f32> = x_650.x_AdditionalLightsPosition[x_656];
    u_xlat6 = ((-(vec3<f32>(x_639.x, x_639.y, x_639.z)) * vec3<f32>(x_653.w, x_653.w, x_653.w)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
    let x_662 : vec3<f32> = u_xlat6;
    let x_663 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_662, x_663);
    let x_665 : f32 = u_xlat27;
    u_xlat27 = max(x_665, 0.00006103515625f);
    let x_669 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_669);
    let x_671 : f32 = u_xlat28;
    let x_673 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_671, x_671, x_671) * x_673);
    let x_675 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_675);
    let x_677 : f32 = u_xlat27;
    let x_678 : i32 = u_xlati26;
    let x_680 : f32 = x_650.x_AdditionalLightsAttenuation[x_678].x;
    u_xlat27 = (x_677 * x_680);
    let x_682 : f32 = u_xlat27;
    let x_684 : f32 = u_xlat27;
    u_xlat27 = ((-(x_682) * x_684) + 1.0f);
    let x_687 : f32 = u_xlat27;
    u_xlat27 = max(x_687, 0.0f);
    let x_689 : f32 = u_xlat27;
    let x_690 : f32 = u_xlat27;
    u_xlat27 = (x_689 * x_690);
    let x_692 : f32 = u_xlat27;
    let x_693 : f32 = u_xlat28;
    u_xlat27 = (x_692 * x_693);
    let x_695 : i32 = u_xlati26;
    let x_697 : vec4<f32> = x_650.x_AdditionalLightsSpotDir[x_695];
    let x_699 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_697.x, x_697.y, x_697.z), x_699);
    let x_701 : f32 = u_xlat28;
    let x_702 : i32 = u_xlati26;
    let x_704 : f32 = x_650.x_AdditionalLightsAttenuation[x_702].z;
    let x_706 : i32 = u_xlati26;
    let x_708 : f32 = x_650.x_AdditionalLightsAttenuation[x_706].w;
    u_xlat28 = ((x_701 * x_704) + x_708);
    let x_710 : f32 = u_xlat28;
    u_xlat28 = clamp(x_710, 0.0f, 1.0f);
    let x_712 : f32 = u_xlat28;
    let x_713 : f32 = u_xlat28;
    u_xlat28 = (x_712 * x_713);
    let x_715 : f32 = u_xlat27;
    let x_716 : f32 = u_xlat28;
    u_xlat27 = (x_715 * x_716);
    let x_720 : i32 = u_xlati26;
    let x_722 : f32 = x_163.x_AdditionalShadowParams[x_720].w;
    u_xlati28 = i32(x_722);
    let x_725 : i32 = u_xlati28;
    u_xlatb29 = (x_725 >= 0i);
    let x_727 : bool = u_xlatb29;
    if (x_727) {
      let x_731 : i32 = u_xlati26;
      let x_733 : f32 = x_163.x_AdditionalShadowParams[x_731].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_733, x_733, x_733, x_733))));
      let x_737 : bool = u_xlatb29;
      if (x_737) {
        let x_741 : vec3<f32> = u_xlat6;
        let x_744 : vec3<f32> = u_xlat6;
        let x_747 : vec4<bool> = (abs(vec4<f32>(x_741.z, x_741.z, x_741.y, x_741.z)) >= abs(vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.x)));
        let x_749 : vec3<bool> = vec3<bool>(x_747.x, x_747.y, x_747.z);
        let x_750 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_749.x, x_749.y, x_749.z, x_750.w);
        let x_753 : bool = u_xlatb7.y;
        let x_755 : bool = u_xlatb7.x;
        u_xlatb29 = (x_753 & x_755);
        let x_757 : vec3<f32> = u_xlat6;
        let x_760 : vec4<bool> = (-(vec4<f32>(x_757.z, x_757.y, x_757.z, x_757.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_761 : vec3<bool> = vec3<bool>(x_760.x, x_760.y, x_760.w);
        let x_762 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_761.x, x_761.y, x_762.z, x_761.z);
        let x_766 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_766);
        let x_771 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_771);
        let x_776 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_776);
        let x_779 : bool = u_xlatb7.z;
        if (x_779) {
          let x_784 : f32 = u_xlat7.y;
          x_780 = x_784;
        } else {
          let x_786 : f32 = u_xlat30;
          x_780 = x_786;
        }
        let x_787 : f32 = x_780;
        u_xlat30 = x_787;
        let x_789 : bool = u_xlatb29;
        if (x_789) {
          let x_794 : f32 = u_xlat7.x;
          x_790 = x_794;
        } else {
          let x_796 : f32 = u_xlat30;
          x_790 = x_796;
        }
        let x_797 : f32 = x_790;
        u_xlat29 = x_797;
        let x_798 : i32 = u_xlati26;
        let x_800 : f32 = x_163.x_AdditionalShadowParams[x_798].w;
        u_xlat30 = trunc(x_800);
        let x_802 : f32 = u_xlat29;
        let x_803 : f32 = u_xlat30;
        u_xlat29 = (x_802 + x_803);
        let x_805 : f32 = u_xlat29;
        u_xlati28 = i32(x_805);
      }
      let x_807 : i32 = u_xlati28;
      u_xlati28 = (x_807 << bitcast<u32>(2i));
      let x_809 : vec4<f32> = vs_TEXCOORD2;
      let x_812 : i32 = u_xlati28;
      let x_815 : i32 = u_xlati28;
      let x_819 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_812 + 1i) / 4i)][((x_815 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_809.y, x_809.y, x_809.y, x_809.y) * x_819);
      let x_821 : i32 = u_xlati28;
      let x_823 : i32 = u_xlati28;
      let x_826 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[(x_821 / 4i)][(x_823 % 4i)];
      let x_827 : vec4<f32> = vs_TEXCOORD2;
      let x_830 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_826 * vec4<f32>(x_827.x, x_827.x, x_827.x, x_827.x)) + x_830);
      let x_832 : i32 = u_xlati28;
      let x_835 : i32 = u_xlati28;
      let x_839 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_832 + 2i) / 4i)][((x_835 + 2i) % 4i)];
      let x_840 : vec4<f32> = vs_TEXCOORD2;
      let x_843 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_839 * vec4<f32>(x_840.z, x_840.z, x_840.z, x_840.z)) + x_843);
      let x_845 : vec4<f32> = u_xlat7;
      let x_846 : i32 = u_xlati28;
      let x_849 : i32 = u_xlati28;
      let x_853 : vec4<f32> = x_163.x_AdditionalLightsWorldToShadow[((x_846 + 3i) / 4i)][((x_849 + 3i) % 4i)];
      u_xlat7 = (x_845 + x_853);
      let x_855 : vec4<f32> = u_xlat7;
      let x_857 : vec4<f32> = u_xlat7;
      let x_859 : vec3<f32> = (vec3<f32>(x_855.x, x_855.y, x_855.z) / vec3<f32>(x_857.w, x_857.w, x_857.w));
      let x_860 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
      let x_863 : vec4<f32> = u_xlat7;
      let x_864 : vec2<f32> = vec2<f32>(x_863.x, x_863.y);
      let x_866 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_864.x, x_864.y, x_866);
      let x_874 : vec3<f32> = txVec1;
      let x_876 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
      u_xlat28 = x_876;
      let x_877 : i32 = u_xlati26;
      let x_879 : f32 = x_163.x_AdditionalShadowParams[x_877].x;
      u_xlat29 = (1.0f + -(x_879));
      let x_882 : f32 = u_xlat28;
      let x_883 : i32 = u_xlati26;
      let x_885 : f32 = x_163.x_AdditionalShadowParams[x_883].x;
      let x_887 : f32 = u_xlat29;
      u_xlat28 = ((x_882 * x_885) + x_887);
      let x_890 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_890);
      let x_894 : f32 = u_xlat7.z;
      u_xlatb30 = (x_894 >= 1.0f);
      let x_896 : bool = u_xlatb29;
      let x_897 : bool = u_xlatb30;
      u_xlatb29 = (x_896 | x_897);
      let x_899 : bool = u_xlatb29;
      let x_900 : f32 = u_xlat28;
      u_xlat28 = select(x_900, 1.0f, x_899);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_903 : f32 = u_xlat28;
    u_xlat29 = (-(x_903) + 1.0f);
    let x_906 : f32 = u_xlat24;
    let x_907 : f32 = u_xlat29;
    let x_909 : f32 = u_xlat28;
    u_xlat28 = ((x_906 * x_907) + x_909);
    let x_911 : f32 = u_xlat27;
    let x_912 : f32 = u_xlat28;
    u_xlat27 = (x_911 * x_912);
    let x_914 : f32 = u_xlat27;
    let x_916 : i32 = u_xlati26;
    let x_918 : vec4<f32> = x_650.x_AdditionalLightsColor[x_916];
    let x_920 : vec3<f32> = (vec3<f32>(x_914, x_914, x_914) * vec3<f32>(x_918.x, x_918.y, x_918.z));
    let x_921 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
    let x_923 : vec4<f32> = u_xlat2;
    let x_925 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_923.x, x_923.y, x_923.z), x_925);
    let x_927 : f32 = u_xlat26;
    u_xlat26 = clamp(x_927, 0.0f, 1.0f);
    let x_929 : f32 = u_xlat26;
    let x_931 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_929, x_929, x_929) * vec3<f32>(x_931.x, x_931.y, x_931.z));
    let x_934 : vec3<f32> = u_xlat6;
    let x_935 : vec4<f32> = u_xlat1;
    let x_938 : vec4<f32> = u_xlat5;
    let x_940 : vec3<f32> = ((x_934 * vec3<f32>(x_935.x, x_935.y, x_935.z)) + vec3<f32>(x_938.x, x_938.y, x_938.z));
    let x_941 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);

    continuing {
      let x_943 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_943 + bitcast<u32>(1i));
    }
  }
  let x_945 : vec4<f32> = u_xlat4;
  let x_947 : vec4<f32> = u_xlat1;
  let x_950 : vec4<f32> = u_xlat3;
  let x_952 : vec3<f32> = ((vec3<f32>(x_945.x, x_945.y, x_945.z) * vec3<f32>(x_947.x, x_947.y, x_947.z)) + vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_957 : vec4<f32> = u_xlat5;
  let x_959 : vec4<f32> = u_xlat1;
  let x_961 : vec3<f32> = (vec3<f32>(x_957.x, x_957.y, x_957.z) + vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  let x_964 : bool = u_xlatb16;
  let x_965 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_965, x_964);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


