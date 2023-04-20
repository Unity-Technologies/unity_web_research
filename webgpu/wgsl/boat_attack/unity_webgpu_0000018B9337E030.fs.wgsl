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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_174 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat25 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

@group(1) @binding(2) var<uniform> x_533 : UnityPerDraw;

var<private> u_xlatu24 : u32;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

@group(1) @binding(1) var<uniform> x_641 : AdditionalLights;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlati29 : i32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlatb27 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_72 : f32;
  var x_121 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_772 : f32;
  var x_782 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_53 * x_55);
  let x_62 : f32 = u_xlat1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlatb0 = (x_62 >= x_68);
  let x_70 : bool = u_xlatb0;
  if (x_70) {
    let x_76 : f32 = u_xlat1.w;
    x_72 = x_76;
  } else {
    x_72 = 0.0f;
  }
  let x_79 : f32 = x_72;
  u_xlat0.x = x_79;
  let x_83 : f32 = u_xlat0.w;
  let x_85 : f32 = vs_TEXCOORD7.w;
  let x_88 : f32 = x_65.x_Cutoff;
  u_xlat8 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat24;
  let x_101 : f32 = u_xlat16;
  u_xlat16 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat16;
  u_xlat16 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat8;
  let x_108 : f32 = u_xlat16;
  u_xlat8 = (x_107 / x_108);
  let x_110 : f32 = u_xlat8;
  u_xlat8 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat8;
  u_xlat8 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb16;
  if (x_120) {
    let x_124 : f32 = u_xlat8;
    x_121 = x_124;
  } else {
    let x_127 : f32 = u_xlat0.x;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_153);
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_158.x, x_158.x, x_158.x) * x_160);
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_177 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres0;
  let x_180 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec4<f32> = vs_TEXCOORD2;
  let x_188 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres1;
  let x_191 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + -(vec3<f32>(x_188.x, x_188.y, x_188.z)));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = vs_TEXCOORD2;
  let x_199 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (vec3<f32>(x_195.x, x_195.y, x_195.z) + -(vec3<f32>(x_199.x, x_199.y, x_199.z)));
  let x_204 : vec4<f32> = vs_TEXCOORD2;
  let x_207 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_204.x, x_204.y, x_204.z) + -(vec3<f32>(x_207.x, x_207.y, x_207.z)));
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_217 : vec4<f32> = u_xlat4;
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_224 : vec3<f32> = u_xlat5;
  let x_225 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_224, x_225);
  let x_229 : vec3<f32> = u_xlat6;
  let x_230 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_229, x_230);
  let x_236 : vec4<f32> = u_xlat3;
  let x_239 : vec4<f32> = x_174.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_236 < x_239);
  let x_242 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_246);
  let x_250 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_250);
  let x_254 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_254);
  let x_258 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_258);
  let x_264 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_264);
  let x_268 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_268);
  let x_271 : vec4<f32> = u_xlat3;
  let x_273 : vec4<f32> = u_xlat4;
  let x_275 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + vec3<f32>(x_273.y, x_273.z, x_273.w));
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat3;
  let x_281 : vec3<f32> = max(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_281.x, x_281.y, x_281.z);
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_284, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_292 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_292) + 4.0f);
  let x_299 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_299);
  let x_303 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_303) << bitcast<u32>(2i));
  let x_306 : vec4<f32> = vs_TEXCOORD2;
  let x_308 : i32 = u_xlati0;
  let x_311 : i32 = u_xlati0;
  let x_315 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_308 + 1i) / 4i)][((x_311 + 1i) % 4i)];
  let x_317 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : i32 = u_xlati0;
  let x_322 : i32 = u_xlati0;
  let x_325 : vec4<f32> = x_174.x_MainLightWorldToShadow[(x_320 / 4i)][(x_322 % 4i)];
  let x_327 : vec4<f32> = vs_TEXCOORD2;
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.x, x_327.x)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : i32 = u_xlati0;
  let x_338 : i32 = u_xlati0;
  let x_342 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_335 + 2i) / 4i)][((x_338 + 2i) % 4i)];
  let x_344 : vec4<f32> = vs_TEXCOORD2;
  let x_347 : vec4<f32> = u_xlat3;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.z, x_344.z, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat3;
  let x_354 : i32 = u_xlati0;
  let x_357 : i32 = u_xlati0;
  let x_361 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_354 + 3i) / 4i)][((x_357 + 3i) % 4i)];
  let x_363 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : f32 = hlslcc_FragCoord.w;
  let x_369 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_367 * x_369);
  let x_373 : f32 = u_xlat0.x;
  let x_376 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_373 / x_376);
  let x_380 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_380) + 1.0f);
  let x_385 : f32 = u_xlat0.x;
  let x_387 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_385 * x_387);
  let x_391 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_391, 0.0f);
  let x_395 : f32 = u_xlat0.x;
  let x_398 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_395 * x_398);
  let x_407 : vec2<f32> = vs_TEXCOORD1;
  let x_409 : f32 = x_44.x_GlobalMipBias.x;
  let x_410 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_407, x_409);
  u_xlat4 = x_410;
  let x_415 : vec2<f32> = vs_TEXCOORD1;
  let x_417 : f32 = x_44.x_GlobalMipBias.x;
  let x_418 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_415, x_417);
  u_xlat5 = vec3<f32>(x_418.x, x_418.y, x_418.z);
  let x_420 : vec4<f32> = u_xlat4;
  let x_424 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_425 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec3<f32> = u_xlat2;
  let x_428 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(x_427, vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : f32 = u_xlat24;
  u_xlat24 = (x_431 + 0.5f);
  let x_433 : f32 = u_xlat24;
  let x_435 : vec3<f32> = u_xlat5;
  let x_436 : vec3<f32> = (vec3<f32>(x_433, x_433, x_433) * x_435);
  let x_437 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = u_xlat4.w;
  u_xlat24 = max(x_440, 0.00009999999747378752f);
  let x_442 : vec4<f32> = u_xlat4;
  let x_444 : f32 = u_xlat24;
  let x_446 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) / vec3<f32>(x_444, x_444, x_444));
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_451 : vec4<f32> = u_xlat3;
  let x_452 : vec2<f32> = vec2<f32>(x_451.x, x_451.y);
  let x_454 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_452.x, x_452.y, x_454);
  let x_466 : vec3<f32> = txVec0;
  let x_468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_466.xy, x_466.z);
  u_xlat24 = x_468;
  let x_472 : f32 = x_174.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat24;
  let x_477 : f32 = x_174.x_MainLightShadowParams.x;
  let x_479 : f32 = u_xlat25;
  u_xlat24 = ((x_475 * x_477) + x_479);
  let x_483 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f >= x_483);
  let x_487 : f32 = u_xlat3.z;
  u_xlatb26 = (x_487 >= 1.0f);
  let x_489 : bool = u_xlatb25;
  let x_490 : bool = u_xlatb26;
  u_xlatb25 = (x_489 | x_490);
  let x_492 : bool = u_xlatb25;
  let x_493 : f32 = u_xlat24;
  u_xlat24 = select(x_493, 1.0f, x_492);
  let x_495 : vec4<f32> = vs_TEXCOORD2;
  let x_499 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_501 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) + -(x_499));
  let x_502 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec4<f32> = u_xlat3;
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_504.x, x_504.y, x_504.z), vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_510 : f32 = u_xlat25;
  let x_512 : f32 = x_174.x_MainLightShadowParams.z;
  let x_515 : f32 = x_174.x_MainLightShadowParams.w;
  u_xlat26 = ((x_510 * x_512) + x_515);
  let x_517 : f32 = u_xlat26;
  u_xlat26 = clamp(x_517, 0.0f, 1.0f);
  let x_519 : f32 = u_xlat24;
  u_xlat3.x = (-(x_519) + 1.0f);
  let x_523 : f32 = u_xlat26;
  let x_525 : f32 = u_xlat3.x;
  let x_527 : f32 = u_xlat24;
  u_xlat24 = ((x_523 * x_525) + x_527);
  let x_529 : f32 = u_xlat24;
  let x_535 : f32 = x_533.unity_LightData.z;
  u_xlat24 = (x_529 * x_535);
  let x_537 : f32 = u_xlat24;
  let x_540 : vec4<f32> = x_44.x_MainLightColor;
  let x_542 : vec3<f32> = (vec3<f32>(x_537, x_537, x_537) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec3<f32> = u_xlat2;
  let x_547 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(x_545, vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : f32 = u_xlat24;
  u_xlat24 = clamp(x_550, 0.0f, 1.0f);
  let x_552 : f32 = u_xlat24;
  let x_554 : vec4<f32> = u_xlat3;
  let x_556 : vec3<f32> = (vec3<f32>(x_552, x_552, x_552) * vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec4<f32> = u_xlat1;
  let x_561 : vec4<f32> = u_xlat3;
  let x_563 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) * vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_567 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_569 : f32 = x_533.unity_LightData.y;
  u_xlat24 = min(x_567, x_569);
  let x_572 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_572));
  let x_575 : f32 = u_xlat25;
  let x_578 : f32 = x_174.x_AdditionalShadowFadeParams.x;
  let x_581 : f32 = x_174.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_575 * x_578) + x_581);
  let x_583 : f32 = u_xlat25;
  u_xlat25 = clamp(x_583, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_595 : u32 = u_xlatu_loop_1;
    let x_596 : u32 = u_xlatu24;
    if ((x_595 < x_596)) {
    } else {
      break;
    }
    let x_599 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_599 >> 2u);
    let x_602 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_602 & 3u));
    let x_606 : u32 = u_xlatu27;
    let x_609 : vec4<f32> = x_533.unity_LightIndices[bitcast<i32>(x_606)];
    let x_619 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_624 : vec4<u32> = indexable[x_619];
    u_xlat27 = dot(x_609, bitcast<vec4<f32>>(x_624));
    let x_628 : f32 = u_xlat27;
    u_xlati27 = i32(x_628);
    let x_630 : vec4<f32> = vs_TEXCOORD2;
    let x_642 : i32 = u_xlati27;
    let x_644 : vec4<f32> = x_641.x_AdditionalLightsPosition[x_642];
    let x_647 : i32 = u_xlati27;
    let x_649 : vec4<f32> = x_641.x_AdditionalLightsPosition[x_647];
    u_xlat6 = ((-(vec3<f32>(x_630.x, x_630.y, x_630.z)) * vec3<f32>(x_644.w, x_644.w, x_644.w)) + vec3<f32>(x_649.x, x_649.y, x_649.z));
    let x_653 : vec3<f32> = u_xlat6;
    let x_654 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_653, x_654);
    let x_656 : f32 = u_xlat28;
    u_xlat28 = max(x_656, 0.00006103515625f);
    let x_660 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_660);
    let x_662 : f32 = u_xlat29;
    let x_664 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_662, x_662, x_662) * x_664);
    let x_666 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_666);
    let x_668 : f32 = u_xlat28;
    let x_669 : i32 = u_xlati27;
    let x_671 : f32 = x_641.x_AdditionalLightsAttenuation[x_669].x;
    u_xlat28 = (x_668 * x_671);
    let x_673 : f32 = u_xlat28;
    let x_675 : f32 = u_xlat28;
    u_xlat28 = ((-(x_673) * x_675) + 1.0f);
    let x_678 : f32 = u_xlat28;
    u_xlat28 = max(x_678, 0.0f);
    let x_680 : f32 = u_xlat28;
    let x_681 : f32 = u_xlat28;
    u_xlat28 = (x_680 * x_681);
    let x_683 : f32 = u_xlat28;
    let x_684 : f32 = u_xlat29;
    u_xlat28 = (x_683 * x_684);
    let x_686 : i32 = u_xlati27;
    let x_688 : vec4<f32> = x_641.x_AdditionalLightsSpotDir[x_686];
    let x_690 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_688.x, x_688.y, x_688.z), x_690);
    let x_692 : f32 = u_xlat29;
    let x_693 : i32 = u_xlati27;
    let x_695 : f32 = x_641.x_AdditionalLightsAttenuation[x_693].z;
    let x_697 : i32 = u_xlati27;
    let x_699 : f32 = x_641.x_AdditionalLightsAttenuation[x_697].w;
    u_xlat29 = ((x_692 * x_695) + x_699);
    let x_701 : f32 = u_xlat29;
    u_xlat29 = clamp(x_701, 0.0f, 1.0f);
    let x_703 : f32 = u_xlat29;
    let x_704 : f32 = u_xlat29;
    u_xlat29 = (x_703 * x_704);
    let x_706 : f32 = u_xlat28;
    let x_707 : f32 = u_xlat29;
    u_xlat28 = (x_706 * x_707);
    let x_711 : i32 = u_xlati27;
    let x_713 : f32 = x_174.x_AdditionalShadowParams[x_711].w;
    u_xlati29 = i32(x_713);
    let x_716 : i32 = u_xlati29;
    u_xlatb30 = (x_716 >= 0i);
    let x_718 : bool = u_xlatb30;
    if (x_718) {
      let x_722 : i32 = u_xlati27;
      let x_724 : f32 = x_174.x_AdditionalShadowParams[x_722].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_724, x_724, x_724, x_724))));
      let x_728 : bool = u_xlatb30;
      if (x_728) {
        let x_732 : vec3<f32> = u_xlat6;
        let x_735 : vec3<f32> = u_xlat6;
        let x_738 : vec4<bool> = (abs(vec4<f32>(x_732.z, x_732.z, x_732.y, x_732.z)) >= abs(vec4<f32>(x_735.x, x_735.y, x_735.x, x_735.x)));
        let x_740 : vec3<bool> = vec3<bool>(x_738.x, x_738.y, x_738.z);
        let x_741 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_740.x, x_740.y, x_740.z, x_741.w);
        let x_744 : bool = u_xlatb7.y;
        let x_746 : bool = u_xlatb7.x;
        u_xlatb30 = (x_744 & x_746);
        let x_748 : vec3<f32> = u_xlat6;
        let x_751 : vec4<bool> = (-(vec4<f32>(x_748.z, x_748.y, x_748.z, x_748.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_752 : vec3<bool> = vec3<bool>(x_751.x, x_751.y, x_751.w);
        let x_753 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_752.x, x_752.y, x_753.z, x_752.z);
        let x_757 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_757);
        let x_762 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_762);
        let x_767 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_767);
        let x_771 : bool = u_xlatb7.z;
        if (x_771) {
          let x_776 : f32 = u_xlat7.y;
          x_772 = x_776;
        } else {
          let x_778 : f32 = u_xlat31;
          x_772 = x_778;
        }
        let x_779 : f32 = x_772;
        u_xlat15 = x_779;
        let x_781 : bool = u_xlatb30;
        if (x_781) {
          let x_786 : f32 = u_xlat7.x;
          x_782 = x_786;
        } else {
          let x_788 : f32 = u_xlat15;
          x_782 = x_788;
        }
        let x_789 : f32 = x_782;
        u_xlat30 = x_789;
        let x_790 : i32 = u_xlati27;
        let x_792 : f32 = x_174.x_AdditionalShadowParams[x_790].w;
        u_xlat7.x = trunc(x_792);
        let x_795 : f32 = u_xlat30;
        let x_797 : f32 = u_xlat7.x;
        u_xlat30 = (x_795 + x_797);
        let x_799 : f32 = u_xlat30;
        u_xlati29 = i32(x_799);
      }
      let x_801 : i32 = u_xlati29;
      u_xlati29 = (x_801 << bitcast<u32>(2i));
      let x_803 : vec4<f32> = vs_TEXCOORD2;
      let x_806 : i32 = u_xlati29;
      let x_809 : i32 = u_xlati29;
      let x_813 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_806 + 1i) / 4i)][((x_809 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_803.y, x_803.y, x_803.y, x_803.y) * x_813);
      let x_815 : i32 = u_xlati29;
      let x_817 : i32 = u_xlati29;
      let x_820 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[(x_815 / 4i)][(x_817 % 4i)];
      let x_821 : vec4<f32> = vs_TEXCOORD2;
      let x_824 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_820 * vec4<f32>(x_821.x, x_821.x, x_821.x, x_821.x)) + x_824);
      let x_826 : i32 = u_xlati29;
      let x_829 : i32 = u_xlati29;
      let x_833 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_826 + 2i) / 4i)][((x_829 + 2i) % 4i)];
      let x_834 : vec4<f32> = vs_TEXCOORD2;
      let x_837 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_833 * vec4<f32>(x_834.z, x_834.z, x_834.z, x_834.z)) + x_837);
      let x_839 : vec4<f32> = u_xlat7;
      let x_840 : i32 = u_xlati29;
      let x_843 : i32 = u_xlati29;
      let x_847 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_840 + 3i) / 4i)][((x_843 + 3i) % 4i)];
      u_xlat7 = (x_839 + x_847);
      let x_849 : vec4<f32> = u_xlat7;
      let x_851 : vec4<f32> = u_xlat7;
      let x_853 : vec3<f32> = (vec3<f32>(x_849.x, x_849.y, x_849.z) / vec3<f32>(x_851.w, x_851.w, x_851.w));
      let x_854 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
      let x_857 : vec4<f32> = u_xlat7;
      let x_858 : vec2<f32> = vec2<f32>(x_857.x, x_857.y);
      let x_860 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_858.x, x_858.y, x_860);
      let x_868 : vec3<f32> = txVec1;
      let x_870 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_868.xy, x_868.z);
      u_xlat29 = x_870;
      let x_871 : i32 = u_xlati27;
      let x_873 : f32 = x_174.x_AdditionalShadowParams[x_871].x;
      u_xlat30 = (1.0f + -(x_873));
      let x_876 : f32 = u_xlat29;
      let x_877 : i32 = u_xlati27;
      let x_879 : f32 = x_174.x_AdditionalShadowParams[x_877].x;
      let x_881 : f32 = u_xlat30;
      u_xlat29 = ((x_876 * x_879) + x_881);
      let x_884 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_884);
      let x_887 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_887 >= 1.0f);
      let x_890 : bool = u_xlatb30;
      let x_892 : bool = u_xlatb7.x;
      u_xlatb30 = (x_890 | x_892);
      let x_894 : bool = u_xlatb30;
      let x_895 : f32 = u_xlat29;
      u_xlat29 = select(x_895, 1.0f, x_894);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_898 : f32 = u_xlat29;
    u_xlat30 = (-(x_898) + 1.0f);
    let x_901 : f32 = u_xlat25;
    let x_902 : f32 = u_xlat30;
    let x_904 : f32 = u_xlat29;
    u_xlat29 = ((x_901 * x_902) + x_904);
    let x_906 : f32 = u_xlat28;
    let x_907 : f32 = u_xlat29;
    u_xlat28 = (x_906 * x_907);
    let x_909 : f32 = u_xlat28;
    let x_911 : i32 = u_xlati27;
    let x_913 : vec4<f32> = x_641.x_AdditionalLightsColor[x_911];
    let x_915 : vec3<f32> = (vec3<f32>(x_909, x_909, x_909) * vec3<f32>(x_913.x, x_913.y, x_913.z));
    let x_916 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
    let x_918 : vec3<f32> = u_xlat2;
    let x_919 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_918, x_919);
    let x_921 : f32 = u_xlat27;
    u_xlat27 = clamp(x_921, 0.0f, 1.0f);
    let x_923 : f32 = u_xlat27;
    let x_925 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_923, x_923, x_923) * vec3<f32>(x_925.x, x_925.y, x_925.z));
    let x_928 : vec3<f32> = u_xlat6;
    let x_929 : vec4<f32> = u_xlat1;
    let x_932 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_928 * vec3<f32>(x_929.x, x_929.y, x_929.z)) + x_932);

    continuing {
      let x_934 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_934 + bitcast<u32>(1i));
    }
  }
  let x_936 : vec4<f32> = u_xlat4;
  let x_938 : vec4<f32> = u_xlat1;
  let x_941 : vec4<f32> = u_xlat3;
  let x_943 : vec3<f32> = ((vec3<f32>(x_936.x, x_936.y, x_936.z) * vec3<f32>(x_938.x, x_938.y, x_938.z)) + vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_944 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec3<f32> = u_xlat5;
  let x_947 : vec4<f32> = u_xlat1;
  let x_949 : vec3<f32> = (x_946 + vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_953 : f32 = u_xlat0.x;
  let x_955 : f32 = u_xlat0.x;
  u_xlat0.x = (x_953 * -(x_955));
  let x_960 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_960);
  let x_963 : vec4<f32> = u_xlat1;
  let x_966 : vec4<f32> = x_44.unity_FogColor;
  let x_969 : vec3<f32> = (vec3<f32>(x_963.x, x_963.y, x_963.z) + -(vec3<f32>(x_966.x, x_966.y, x_966.z)));
  let x_970 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_974 : vec4<f32> = u_xlat0;
  let x_976 : vec4<f32> = u_xlat1;
  let x_980 : vec4<f32> = x_44.unity_FogColor;
  let x_982 : vec3<f32> = ((vec3<f32>(x_974.x, x_974.x, x_974.x) * vec3<f32>(x_976.x, x_976.y, x_976.z)) + vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : bool = u_xlatb16;
  let x_986 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_986, x_985);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


