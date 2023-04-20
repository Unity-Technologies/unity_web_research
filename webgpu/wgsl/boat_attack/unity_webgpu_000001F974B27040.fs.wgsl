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
  /* @offset(76) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlatb20 : bool;

var<private> u_xlatb10 : bool;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_PointRepeat : sampler;

var<private> u_xlatb12 : bool;

@group(1) @binding(2) var<uniform> x_237 : UnityPerDraw;

var<private> u_xlatb2 : bool;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_410 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb32 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu32 : u32;

var<private> u_xlatu34 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlati34 : i32;

@group(1) @binding(1) var<uniform> x_629 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlatb37 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat37 : f32;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_243 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_763 : f32;
  var x_773 : f32;
  var txVec1 : vec3<f32>;
  var x_995 : f32;
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
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_80 : f32 = u_xlat1.x;
    x_76 = x_80;
  } else {
    x_76 = 0.0f;
  }
  let x_83 : f32 = x_76;
  u_xlat0.x = x_83;
  let x_88 : f32 = u_xlat0.w;
  let x_90 : f32 = x_57.x_BaseColor.w;
  let x_93 : f32 = x_57.x_Cutoff;
  u_xlat10.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat30;
  let x_107 : f32 = u_xlat20;
  u_xlat20 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat20;
  u_xlat20 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat10.x;
  let x_115 : f32 = u_xlat20;
  u_xlat10.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat10.x;
  u_xlat10.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb20;
  if (x_131) {
    let x_136 : f32 = u_xlat10.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat10.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat10.x;
  u_xlatb10 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb10;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_165, x_167);
  u_xlat2 = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_171 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat2.z;
  u_xlat2.x = (x_171 * x_174);
  let x_177 : vec3<f32> = u_xlat2;
  let x_184 : vec2<f32> = ((vec2<f32>(x_177.x, x_177.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_185 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat10;
  let x_189 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 0.0000000000000001f);
  let x_211 : vec4<f32> = hlslcc_FragCoord;
  let x_215 : f32 = x_44.x_DitheringTextureInvSize;
  let x_217 : vec2<f32> = (vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_215, x_215));
  let x_218 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_217.x, x_217.y, x_218.z);
  let x_225 : vec3<f32> = u_xlat2;
  let x_228 : f32 = x_44.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_225.x, x_225.y), x_228);
  u_xlat2.x = x_229.w;
  let x_240 : f32 = x_237.unity_LODFade.x;
  u_xlatb12 = (x_240 >= 0.0f);
  let x_242 : bool = u_xlatb12;
  if (x_242) {
    let x_247 : f32 = u_xlat2.x;
    x_243 = abs(x_247);
  } else {
    let x_251 : f32 = u_xlat2.x;
    x_243 = -(abs(x_251));
  }
  let x_254 : f32 = x_243;
  u_xlat2.x = x_254;
  let x_257 : f32 = u_xlat2.x;
  let x_260 : f32 = x_237.unity_LODFade.x;
  u_xlat2.x = (-(x_257) + x_260);
  let x_265 : f32 = u_xlat2.x;
  u_xlatb2 = (x_265 < 0.0f);
  let x_267 : bool = u_xlatb2;
  if (((select(0i, 1i, x_267) * -1i) != 0i)) {
    discard;
  }
  let x_274 : vec3<f32> = u_xlat10;
  let x_277 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_274.z, x_274.z, x_274.z) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec3<f32> = u_xlat10;
  let x_283 : vec4<f32> = vs_TEXCOORD3;
  let x_286 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_280.x, x_280.x, x_280.x) * vec3<f32>(x_283.x, x_283.y, x_283.z)) + x_286);
  let x_288 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = vs_TEXCOORD2;
  let x_294 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_288.x, x_288.x, x_288.x) * vec3<f32>(x_291.x, x_291.y, x_291.z)) + x_294);
  let x_296 : vec3<f32> = u_xlat2;
  let x_297 : vec3<f32> = u_xlat2;
  u_xlat10.x = dot(x_296, x_297);
  let x_301 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_301);
  let x_304 : vec3<f32> = u_xlat10;
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_304.x, x_304.x, x_304.x) * x_306);
  let x_310 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_310;
  let x_313 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_313;
  let x_317 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_317;
  let x_319 : vec3<f32> = u_xlat3;
  let x_320 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_319, x_320);
  let x_324 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_324, 0.00006103515625f);
  let x_329 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_329);
  let x_339 : vec2<f32> = vs_TEXCOORD7;
  let x_341 : f32 = x_44.x_GlobalMipBias.x;
  let x_342 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_339, x_341);
  u_xlat4 = x_342;
  let x_348 : vec2<f32> = vs_TEXCOORD7;
  let x_350 : f32 = x_44.x_GlobalMipBias.x;
  let x_351 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_348, x_350);
  u_xlat5 = vec3<f32>(x_351.x, x_351.y, x_351.z);
  let x_353 : vec4<f32> = u_xlat4;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec3<f32> = u_xlat2;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_360, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat30;
  u_xlat30 = (x_364 + 0.5f);
  let x_366 : f32 = u_xlat30;
  let x_368 : vec3<f32> = u_xlat5;
  let x_369 : vec3<f32> = (vec3<f32>(x_366, x_366, x_366) * x_368);
  let x_370 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = u_xlat4.w;
  u_xlat30 = max(x_373, 0.00009999999747378752f);
  let x_375 : vec4<f32> = u_xlat4;
  let x_377 : f32 = u_xlat30;
  let x_379 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) / vec3<f32>(x_377, x_377, x_377));
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_385 : vec4<f32> = vs_TEXCOORD6;
  let x_386 : vec2<f32> = vec2<f32>(x_385.x, x_385.y);
  let x_388 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_386.x, x_386.y, x_388);
  let x_400 : vec3<f32> = txVec0;
  let x_402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_400.xy, x_400.z);
  u_xlat30 = x_402;
  let x_413 : f32 = x_410.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_413) + 1.0f);
  let x_417 : f32 = u_xlat30;
  let x_419 : f32 = x_410.x_MainLightShadowParams.x;
  let x_422 : f32 = u_xlat1.x;
  u_xlat30 = ((x_417 * x_419) + x_422);
  let x_426 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_426);
  let x_430 : f32 = vs_TEXCOORD6.z;
  u_xlatb32 = (x_430 >= 1.0f);
  let x_432 : bool = u_xlatb1;
  let x_433 : bool = u_xlatb32;
  u_xlatb1 = (x_432 | x_433);
  let x_435 : bool = u_xlatb1;
  let x_436 : f32 = u_xlat30;
  u_xlat30 = select(x_436, 1.0f, x_435);
  let x_440 : vec3<f32> = vs_TEXCOORD1;
  let x_444 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_440 + -(x_444));
  let x_447 : vec3<f32> = u_xlat5;
  let x_448 : vec3<f32> = u_xlat5;
  u_xlat1.x = dot(x_447, x_448);
  let x_453 : f32 = u_xlat1.x;
  let x_455 : f32 = x_410.x_MainLightShadowParams.z;
  let x_458 : f32 = x_410.x_MainLightShadowParams.w;
  u_xlat32 = ((x_453 * x_455) + x_458);
  let x_460 : f32 = u_xlat32;
  u_xlat32 = clamp(x_460, 0.0f, 1.0f);
  let x_463 : f32 = u_xlat30;
  u_xlat33 = (-(x_463) + 1.0f);
  let x_466 : f32 = u_xlat32;
  let x_467 : f32 = u_xlat33;
  let x_469 : f32 = u_xlat30;
  u_xlat30 = ((x_466 * x_467) + x_469);
  let x_471 : f32 = u_xlat30;
  let x_473 : f32 = x_237.unity_LightData.z;
  u_xlat30 = (x_471 * x_473);
  let x_475 : f32 = u_xlat30;
  let x_479 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_475, x_475, x_475) * vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec3<f32> = u_xlat2;
  let x_484 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat30 = dot(x_482, vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : f32 = u_xlat30;
  u_xlat30 = clamp(x_487, 0.0f, 1.0f);
  let x_490 : f32 = u_xlat30;
  let x_492 : vec3<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_490, x_490, x_490) * x_492);
  let x_495 : f32 = x_57.x_SpecColor.w;
  u_xlat30 = ((x_495 * 10.0f) + 1.0f);
  let x_499 : f32 = u_xlat30;
  u_xlat30 = exp2(x_499);
  let x_502 : vec3<f32> = u_xlat3;
  let x_503 : vec3<f32> = u_xlat10;
  let x_507 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_502 * vec3<f32>(x_503.x, x_503.x, x_503.x)) + vec3<f32>(x_507.x, x_507.y, x_507.z));
  let x_510 : vec3<f32> = u_xlat7;
  let x_511 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_510, x_511);
  let x_513 : f32 = u_xlat32;
  u_xlat32 = max(x_513, 1.17549435e-38f);
  let x_516 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_516);
  let x_518 : f32 = u_xlat32;
  let x_520 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_518, x_518, x_518) * x_520);
  let x_522 : vec3<f32> = u_xlat2;
  let x_523 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_522, x_523);
  let x_525 : f32 = u_xlat32;
  u_xlat32 = clamp(x_525, 0.0f, 1.0f);
  let x_527 : f32 = u_xlat32;
  u_xlat32 = log2(x_527);
  let x_529 : f32 = u_xlat30;
  let x_530 : f32 = u_xlat32;
  u_xlat32 = (x_529 * x_530);
  let x_532 : f32 = u_xlat32;
  u_xlat32 = exp2(x_532);
  let x_534 : f32 = u_xlat32;
  let x_537 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_534, x_534, x_534) * vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec3<f32> = u_xlat5;
  let x_541 : vec3<f32> = u_xlat7;
  u_xlat5 = (x_540 * x_541);
  let x_543 : vec3<f32> = u_xlat6;
  let x_544 : vec4<f32> = u_xlat1;
  let x_547 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_543 * vec3<f32>(x_544.y, x_544.z, x_544.w)) + x_547);
  let x_550 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_552 : f32 = x_237.unity_LightData.y;
  u_xlat32 = min(x_550, x_552);
  let x_556 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_556));
  let x_560 : f32 = u_xlat1.x;
  let x_563 : f32 = x_410.x_AdditionalShadowFadeParams.x;
  let x_566 : f32 = x_410.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_560 * x_563) + x_566);
  let x_570 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_570, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_583 : u32 = u_xlatu_loop_1;
    let x_584 : u32 = u_xlatu32;
    if ((x_583 < x_584)) {
    } else {
      break;
    }
    let x_587 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_587 >> 2u);
    let x_591 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_591 & 3u));
    let x_595 : u32 = u_xlatu34;
    let x_598 : vec4<f32> = x_237.unity_LightIndices[bitcast<i32>(x_595)];
    let x_608 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_613 : vec4<u32> = indexable[x_608];
    u_xlat34 = dot(x_598, bitcast<vec4<f32>>(x_613));
    let x_617 : f32 = u_xlat34;
    u_xlati34 = i32(x_617);
    let x_619 : vec3<f32> = vs_TEXCOORD1;
    let x_630 : i32 = u_xlati34;
    let x_632 : vec4<f32> = x_629.x_AdditionalLightsPosition[x_630];
    let x_635 : i32 = u_xlati34;
    let x_637 : vec4<f32> = x_629.x_AdditionalLightsPosition[x_635];
    u_xlat7 = ((-(x_619) * vec3<f32>(x_632.w, x_632.w, x_632.w)) + vec3<f32>(x_637.x, x_637.y, x_637.z));
    let x_641 : vec3<f32> = u_xlat7;
    let x_642 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_641, x_642);
    let x_644 : f32 = u_xlat35;
    u_xlat35 = max(x_644, 0.00006103515625f);
    let x_647 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_647);
    let x_649 : f32 = u_xlat36;
    let x_651 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_649, x_649, x_649) * x_651);
    let x_653 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_653);
    let x_655 : f32 = u_xlat35;
    let x_656 : i32 = u_xlati34;
    let x_658 : f32 = x_629.x_AdditionalLightsAttenuation[x_656].x;
    u_xlat35 = (x_655 * x_658);
    let x_660 : f32 = u_xlat35;
    let x_662 : f32 = u_xlat35;
    u_xlat35 = ((-(x_660) * x_662) + 1.0f);
    let x_665 : f32 = u_xlat35;
    u_xlat35 = max(x_665, 0.0f);
    let x_667 : f32 = u_xlat35;
    let x_668 : f32 = u_xlat35;
    u_xlat35 = (x_667 * x_668);
    let x_670 : f32 = u_xlat35;
    let x_671 : f32 = u_xlat36;
    u_xlat35 = (x_670 * x_671);
    let x_673 : i32 = u_xlati34;
    let x_675 : vec4<f32> = x_629.x_AdditionalLightsSpotDir[x_673];
    let x_677 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_675.x, x_675.y, x_675.z), x_677);
    let x_679 : f32 = u_xlat36;
    let x_680 : i32 = u_xlati34;
    let x_682 : f32 = x_629.x_AdditionalLightsAttenuation[x_680].z;
    let x_684 : i32 = u_xlati34;
    let x_686 : f32 = x_629.x_AdditionalLightsAttenuation[x_684].w;
    u_xlat36 = ((x_679 * x_682) + x_686);
    let x_688 : f32 = u_xlat36;
    u_xlat36 = clamp(x_688, 0.0f, 1.0f);
    let x_690 : f32 = u_xlat36;
    let x_691 : f32 = u_xlat36;
    u_xlat36 = (x_690 * x_691);
    let x_693 : f32 = u_xlat35;
    let x_694 : f32 = u_xlat36;
    u_xlat35 = (x_693 * x_694);
    let x_698 : i32 = u_xlati34;
    let x_700 : f32 = x_410.x_AdditionalShadowParams[x_698].w;
    u_xlati36 = i32(x_700);
    let x_703 : i32 = u_xlati36;
    u_xlatb37 = (x_703 >= 0i);
    let x_705 : bool = u_xlatb37;
    if (x_705) {
      let x_709 : i32 = u_xlati34;
      let x_711 : f32 = x_410.x_AdditionalShadowParams[x_709].z;
      u_xlatb37 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_711, x_711, x_711, x_711))));
      let x_716 : bool = u_xlatb37;
      if (x_716) {
        let x_721 : vec3<f32> = u_xlat7;
        let x_724 : vec3<f32> = u_xlat7;
        let x_727 : vec4<bool> = (abs(vec4<f32>(x_721.z, x_721.z, x_721.y, x_721.z)) >= abs(vec4<f32>(x_724.x, x_724.y, x_724.x, x_724.x)));
        let x_729 : vec3<bool> = vec3<bool>(x_727.x, x_727.y, x_727.z);
        let x_730 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_729.x, x_729.y, x_729.z, x_730.w);
        let x_733 : bool = u_xlatb8.y;
        let x_735 : bool = u_xlatb8.x;
        u_xlatb37 = (x_733 & x_735);
        let x_737 : vec3<f32> = u_xlat7;
        let x_740 : vec4<bool> = (-(vec4<f32>(x_737.z, x_737.y, x_737.z, x_737.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_741 : vec3<bool> = vec3<bool>(x_740.x, x_740.y, x_740.w);
        let x_742 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_741.x, x_741.y, x_742.z, x_741.z);
        let x_746 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_746);
        let x_752 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_752);
        let x_758 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_758);
        let x_762 : bool = u_xlatb8.z;
        if (x_762) {
          let x_767 : f32 = u_xlat8.y;
          x_763 = x_767;
        } else {
          let x_769 : f32 = u_xlat38;
          x_763 = x_769;
        }
        let x_770 : f32 = x_763;
        u_xlat18 = x_770;
        let x_772 : bool = u_xlatb37;
        if (x_772) {
          let x_777 : f32 = u_xlat8.x;
          x_773 = x_777;
        } else {
          let x_779 : f32 = u_xlat18;
          x_773 = x_779;
        }
        let x_780 : f32 = x_773;
        u_xlat37 = x_780;
        let x_781 : i32 = u_xlati34;
        let x_783 : f32 = x_410.x_AdditionalShadowParams[x_781].w;
        u_xlat8.x = trunc(x_783);
        let x_786 : f32 = u_xlat37;
        let x_788 : f32 = u_xlat8.x;
        u_xlat37 = (x_786 + x_788);
        let x_790 : f32 = u_xlat37;
        u_xlati36 = i32(x_790);
      }
      let x_792 : i32 = u_xlati36;
      u_xlati36 = (x_792 << bitcast<u32>(2i));
      let x_794 : vec3<f32> = vs_TEXCOORD1;
      let x_797 : i32 = u_xlati36;
      let x_800 : i32 = u_xlati36;
      let x_804 : vec4<f32> = x_410.x_AdditionalLightsWorldToShadow[((x_797 + 1i) / 4i)][((x_800 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_794.y, x_794.y, x_794.y, x_794.y) * x_804);
      let x_806 : i32 = u_xlati36;
      let x_808 : i32 = u_xlati36;
      let x_811 : vec4<f32> = x_410.x_AdditionalLightsWorldToShadow[(x_806 / 4i)][(x_808 % 4i)];
      let x_812 : vec3<f32> = vs_TEXCOORD1;
      let x_815 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_811 * vec4<f32>(x_812.x, x_812.x, x_812.x, x_812.x)) + x_815);
      let x_817 : i32 = u_xlati36;
      let x_820 : i32 = u_xlati36;
      let x_824 : vec4<f32> = x_410.x_AdditionalLightsWorldToShadow[((x_817 + 2i) / 4i)][((x_820 + 2i) % 4i)];
      let x_825 : vec3<f32> = vs_TEXCOORD1;
      let x_828 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_824 * vec4<f32>(x_825.z, x_825.z, x_825.z, x_825.z)) + x_828);
      let x_830 : vec4<f32> = u_xlat8;
      let x_831 : i32 = u_xlati36;
      let x_834 : i32 = u_xlati36;
      let x_838 : vec4<f32> = x_410.x_AdditionalLightsWorldToShadow[((x_831 + 3i) / 4i)][((x_834 + 3i) % 4i)];
      u_xlat8 = (x_830 + x_838);
      let x_840 : vec4<f32> = u_xlat8;
      let x_842 : vec4<f32> = u_xlat8;
      let x_844 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) / vec3<f32>(x_842.w, x_842.w, x_842.w));
      let x_845 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
      let x_848 : vec4<f32> = u_xlat8;
      let x_849 : vec2<f32> = vec2<f32>(x_848.x, x_848.y);
      let x_851 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_849.x, x_849.y, x_851);
      let x_859 : vec3<f32> = txVec1;
      let x_861 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_859.xy, x_859.z);
      u_xlat36 = x_861;
      let x_862 : i32 = u_xlati34;
      let x_864 : f32 = x_410.x_AdditionalShadowParams[x_862].x;
      u_xlat37 = (1.0f + -(x_864));
      let x_867 : f32 = u_xlat36;
      let x_868 : i32 = u_xlati34;
      let x_870 : f32 = x_410.x_AdditionalShadowParams[x_868].x;
      let x_872 : f32 = u_xlat37;
      u_xlat36 = ((x_867 * x_870) + x_872);
      let x_875 : f32 = u_xlat8.z;
      u_xlatb37 = (0.0f >= x_875);
      let x_878 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_878 >= 1.0f);
      let x_881 : bool = u_xlatb37;
      let x_883 : bool = u_xlatb8.x;
      u_xlatb37 = (x_881 | x_883);
      let x_885 : bool = u_xlatb37;
      let x_886 : f32 = u_xlat36;
      u_xlat36 = select(x_886, 1.0f, x_885);
    } else {
      u_xlat36 = 1.0f;
    }
    let x_889 : f32 = u_xlat36;
    u_xlat37 = (-(x_889) + 1.0f);
    let x_893 : f32 = u_xlat1.x;
    let x_894 : f32 = u_xlat37;
    let x_896 : f32 = u_xlat36;
    u_xlat36 = ((x_893 * x_894) + x_896);
    let x_898 : f32 = u_xlat35;
    let x_899 : f32 = u_xlat36;
    u_xlat35 = (x_898 * x_899);
    let x_901 : f32 = u_xlat35;
    let x_903 : i32 = u_xlati34;
    let x_905 : vec4<f32> = x_629.x_AdditionalLightsColor[x_903];
    let x_907 : vec3<f32> = (vec3<f32>(x_901, x_901, x_901) * vec3<f32>(x_905.x, x_905.y, x_905.z));
    let x_908 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
    let x_910 : vec3<f32> = u_xlat2;
    let x_911 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_910, x_911);
    let x_913 : f32 = u_xlat34;
    u_xlat34 = clamp(x_913, 0.0f, 1.0f);
    let x_916 : f32 = u_xlat34;
    let x_918 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_916, x_916, x_916) * vec3<f32>(x_918.x, x_918.y, x_918.z));
    let x_921 : vec3<f32> = u_xlat3;
    let x_922 : vec3<f32> = u_xlat10;
    let x_925 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_921 * vec3<f32>(x_922.x, x_922.x, x_922.x)) + x_925);
    let x_927 : vec3<f32> = u_xlat7;
    let x_928 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_927, x_928);
    let x_930 : f32 = u_xlat34;
    u_xlat34 = max(x_930, 1.17549435e-38f);
    let x_932 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_932);
    let x_934 : f32 = u_xlat34;
    let x_936 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_934, x_934, x_934) * x_936);
    let x_938 : vec3<f32> = u_xlat2;
    let x_939 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_938, x_939);
    let x_941 : f32 = u_xlat34;
    u_xlat34 = clamp(x_941, 0.0f, 1.0f);
    let x_943 : f32 = u_xlat34;
    u_xlat34 = log2(x_943);
    let x_945 : f32 = u_xlat30;
    let x_946 : f32 = u_xlat34;
    u_xlat34 = (x_945 * x_946);
    let x_948 : f32 = u_xlat34;
    u_xlat34 = exp2(x_948);
    let x_950 : f32 = u_xlat34;
    let x_953 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_950, x_950, x_950) * vec3<f32>(x_953.x, x_953.y, x_953.z));
    let x_956 : vec3<f32> = u_xlat7;
    let x_957 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_956 * vec3<f32>(x_957.x, x_957.y, x_957.z));
    let x_960 : vec3<f32> = u_xlat9;
    let x_961 : vec4<f32> = u_xlat1;
    let x_964 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_960 * vec3<f32>(x_961.y, x_961.z, x_961.w)) + x_964);
    let x_966 : vec3<f32> = u_xlat6;
    let x_967 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_966 + x_967);

    continuing {
      let x_969 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_969 + bitcast<u32>(1i));
    }
  }
  let x_971 : vec4<f32> = u_xlat4;
  let x_973 : vec4<f32> = u_xlat1;
  let x_976 : vec3<f32> = u_xlat5;
  let x_977 : vec3<f32> = ((vec3<f32>(x_971.x, x_971.y, x_971.z) * vec3<f32>(x_973.y, x_973.z, x_973.w)) + x_976);
  let x_978 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_982 : vec3<f32> = u_xlat6;
  let x_983 : vec4<f32> = u_xlat1;
  let x_985 : vec3<f32> = (x_982 + vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_989 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_989 == 1.0f);
  let x_991 : bool = u_xlatb10;
  let x_992 : bool = u_xlatb20;
  u_xlatb10 = (x_991 | x_992);
  let x_994 : bool = u_xlatb10;
  if (x_994) {
    let x_999 : f32 = u_xlat0.x;
    x_995 = x_999;
  } else {
    x_995 = 1.0f;
  }
  let x_1001 : f32 = x_995;
  SV_Target0.w = x_1001;
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


