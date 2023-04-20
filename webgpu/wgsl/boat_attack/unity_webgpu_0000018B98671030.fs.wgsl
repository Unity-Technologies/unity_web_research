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
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
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

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

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

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_343 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu30 : u32;

var<private> u_xlati30 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

var<private> u_xlatb32 : bool;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlatu33 : u32;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

@group(1) @binding(1) var<uniform> x_870 : AdditionalLights;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_243 : f32;
  var txVec0 : vec3<f32>;
  var x_659 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1003 : f32;
  var x_1015 : f32;
  var txVec1 : vec3<f32>;
  var x_1277 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = x_58.x_Cutoff;
  u_xlatb0 = (x_70 >= x_73);
  let x_75 : bool = u_xlatb0;
  if (x_75) {
    let x_81 : f32 = u_xlat1.x;
    x_77 = x_81;
  } else {
    x_77 = 0.0f;
  }
  let x_84 : f32 = x_77;
  u_xlat0.x = x_84;
  let x_89 : f32 = u_xlat0.w;
  let x_91 : f32 = x_58.x_BaseColor.w;
  let x_94 : f32 = x_58.x_Cutoff;
  u_xlat10.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat30;
  let x_108 : f32 = u_xlat20;
  u_xlat20 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat20;
  u_xlat20 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat10.x;
  let x_116 : f32 = u_xlat20;
  u_xlat10.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat10.x;
  u_xlat10.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb20;
  if (x_132) {
    let x_137 : f32 = u_xlat10.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat10.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat10.x;
  u_xlatb10 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb10;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_166 : vec2<f32> = vs_TEXCOORD0;
  let x_168 : f32 = x_45.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_166, x_168);
  u_xlat2 = vec3<f32>(x_169.x, x_169.y, x_169.w);
  let x_172 : f32 = u_xlat2.x;
  let x_175 : f32 = u_xlat2.z;
  u_xlat2.x = (x_172 * x_175);
  let x_178 : vec3<f32> = u_xlat2;
  let x_185 : vec2<f32> = ((vec2<f32>(x_178.x, x_178.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_186 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_185.x, x_186.y, x_185.y);
  let x_188 : vec3<f32> = u_xlat10;
  let x_190 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_188.x, x_188.z), vec2<f32>(x_190.x, x_190.z));
  let x_195 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_195, 1.0f);
  let x_199 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_199) + 1.0f);
  let x_204 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_204);
  let x_208 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_208, 0.0000000000000001f);
  let x_212 : vec4<f32> = hlslcc_FragCoord;
  let x_216 : f32 = x_45.x_DitheringTextureInvSize;
  let x_218 : vec2<f32> = (vec2<f32>(x_212.x, x_212.y) * vec2<f32>(x_216, x_216));
  let x_219 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_226 : vec3<f32> = u_xlat2;
  let x_229 : f32 = x_45.x_GlobalMipBias.x;
  let x_230 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_226.x, x_226.y), x_229);
  u_xlat2.x = x_230.w;
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
  let x_335 : vec3<f32> = vs_TEXCOORD1;
  let x_345 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres0;
  let x_348 : vec3<f32> = (x_335 + -(vec3<f32>(x_345.x, x_345.y, x_345.z)));
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec3<f32> = vs_TEXCOORD1;
  let x_354 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres1;
  let x_357 : vec3<f32> = (x_352 + -(vec3<f32>(x_354.x, x_354.y, x_354.z)));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_361 + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_369 : vec3<f32> = vs_TEXCOORD1;
  let x_371 : vec4<f32> = x_343.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_369 + -(vec3<f32>(x_371.x, x_371.y, x_371.z)));
  let x_375 : vec4<f32> = u_xlat4;
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_381 : vec4<f32> = u_xlat5;
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_387 : vec3<f32> = u_xlat6;
  let x_388 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_387, x_388);
  let x_391 : vec3<f32> = u_xlat7;
  let x_392 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_391, x_392);
  let x_398 : vec4<f32> = u_xlat4;
  let x_401 : vec4<f32> = x_343.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_398 < x_401);
  let x_404 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_404);
  let x_408 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_408);
  let x_412 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_412);
  let x_416 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_416);
  let x_420 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_420);
  let x_425 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_425);
  let x_429 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_429);
  let x_432 : vec4<f32> = u_xlat4;
  let x_434 : vec4<f32> = u_xlat5;
  let x_436 : vec3<f32> = (vec3<f32>(x_432.x, x_432.y, x_432.z) + vec3<f32>(x_434.y, x_434.z, x_434.w));
  let x_437 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat4;
  let x_442 : vec3<f32> = max(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_443 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_443.x, x_442.x, x_442.y, x_442.z);
  let x_445 : vec4<f32> = u_xlat5;
  u_xlat30 = dot(x_445, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_450 : f32 = u_xlat30;
  u_xlat30 = (-(x_450) + 4.0f);
  let x_455 : f32 = u_xlat30;
  u_xlatu30 = u32(x_455);
  let x_459 : u32 = u_xlatu30;
  u_xlati30 = (bitcast<i32>(x_459) << bitcast<u32>(2i));
  let x_462 : vec3<f32> = vs_TEXCOORD1;
  let x_464 : i32 = u_xlati30;
  let x_467 : i32 = u_xlati30;
  let x_471 : vec4<f32> = x_343.x_MainLightWorldToShadow[((x_464 + 1i) / 4i)][((x_467 + 1i) % 4i)];
  let x_473 : vec3<f32> = (vec3<f32>(x_462.y, x_462.y, x_462.y) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : i32 = u_xlati30;
  let x_478 : i32 = u_xlati30;
  let x_481 : vec4<f32> = x_343.x_MainLightWorldToShadow[(x_476 / 4i)][(x_478 % 4i)];
  let x_483 : vec3<f32> = vs_TEXCOORD1;
  let x_486 : vec4<f32> = u_xlat4;
  let x_488 : vec3<f32> = ((vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_483.x, x_483.x, x_483.x)) + vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : i32 = u_xlati30;
  let x_494 : i32 = u_xlati30;
  let x_498 : vec4<f32> = x_343.x_MainLightWorldToShadow[((x_491 + 2i) / 4i)][((x_494 + 2i) % 4i)];
  let x_500 : vec3<f32> = vs_TEXCOORD1;
  let x_503 : vec4<f32> = u_xlat4;
  let x_505 : vec3<f32> = ((vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_500.z, x_500.z, x_500.z)) + vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_506 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat4;
  let x_510 : i32 = u_xlati30;
  let x_513 : i32 = u_xlati30;
  let x_517 : vec4<f32> = x_343.x_MainLightWorldToShadow[((x_510 + 3i) / 4i)][((x_513 + 3i) % 4i)];
  let x_519 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) + vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = vs_TEXCOORD1.y;
  let x_526 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat30 = (x_523 * x_526);
  let x_529 : f32 = x_45.unity_MatrixV[0i].z;
  let x_531 : f32 = vs_TEXCOORD1.x;
  let x_533 : f32 = u_xlat30;
  u_xlat30 = ((x_529 * x_531) + x_533);
  let x_536 : f32 = x_45.unity_MatrixV[2i].z;
  let x_538 : f32 = vs_TEXCOORD1.z;
  let x_540 : f32 = u_xlat30;
  u_xlat30 = ((x_536 * x_538) + x_540);
  let x_542 : f32 = u_xlat30;
  let x_544 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat30 = (x_542 + x_544);
  let x_546 : f32 = u_xlat30;
  let x_550 : f32 = x_45.x_ProjectionParams.y;
  u_xlat30 = (-(x_546) + -(x_550));
  let x_553 : f32 = u_xlat30;
  u_xlat30 = max(x_553, 0.0f);
  let x_555 : f32 = u_xlat30;
  let x_558 : f32 = x_45.unity_FogParams.x;
  u_xlat30 = (x_555 * x_558);
  let x_566 : vec2<f32> = vs_TEXCOORD7;
  let x_568 : f32 = x_45.x_GlobalMipBias.x;
  let x_569 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_566, x_568);
  u_xlat5 = x_569;
  let x_574 : vec2<f32> = vs_TEXCOORD7;
  let x_576 : f32 = x_45.x_GlobalMipBias.x;
  let x_577 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_574, x_576);
  u_xlat6 = vec3<f32>(x_577.x, x_577.y, x_577.z);
  let x_579 : vec4<f32> = u_xlat5;
  let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_584 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec3<f32> = u_xlat2;
  let x_587 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(x_586, vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_592 : f32 = u_xlat1.x;
  u_xlat1.x = (x_592 + 0.5f);
  let x_595 : vec4<f32> = u_xlat1;
  let x_597 : vec3<f32> = u_xlat6;
  let x_598 : vec3<f32> = (vec3<f32>(x_595.x, x_595.x, x_595.x) * x_597);
  let x_599 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat5.w;
  u_xlat1.x = max(x_602, 0.00009999999747378752f);
  let x_605 : vec4<f32> = u_xlat5;
  let x_607 : vec4<f32> = u_xlat1;
  let x_609 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) / vec3<f32>(x_607.x, x_607.x, x_607.x));
  let x_610 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_614 : vec4<f32> = u_xlat4;
  let x_615 : vec2<f32> = vec2<f32>(x_614.x, x_614.y);
  let x_617 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_615.x, x_615.y, x_617);
  let x_629 : vec3<f32> = txVec0;
  let x_631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_629.xy, x_629.z);
  u_xlat1.x = x_631;
  let x_636 : f32 = x_343.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_636) + 1.0f);
  let x_640 : f32 = u_xlat1.x;
  let x_642 : f32 = x_343.x_MainLightShadowParams.x;
  let x_644 : f32 = u_xlat32;
  u_xlat1.x = ((x_640 * x_642) + x_644);
  let x_649 : f32 = u_xlat4.z;
  u_xlatb32 = (0.0f >= x_649);
  let x_653 : f32 = u_xlat4.z;
  u_xlatb33 = (x_653 >= 1.0f);
  let x_655 : bool = u_xlatb32;
  let x_656 : bool = u_xlatb33;
  u_xlatb32 = (x_655 | x_656);
  let x_658 : bool = u_xlatb32;
  if (x_658) {
    x_659 = 1.0f;
  } else {
    let x_664 : f32 = u_xlat1.x;
    x_659 = x_664;
  }
  let x_665 : f32 = x_659;
  u_xlat1.x = x_665;
  let x_667 : vec3<f32> = vs_TEXCOORD1;
  let x_670 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_672 : vec3<f32> = (x_667 + -(x_670));
  let x_673 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat4;
  let x_677 : vec4<f32> = u_xlat4;
  u_xlat32 = dot(vec3<f32>(x_675.x, x_675.y, x_675.z), vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_681 : f32 = u_xlat32;
  let x_683 : f32 = x_343.x_MainLightShadowParams.z;
  let x_686 : f32 = x_343.x_MainLightShadowParams.w;
  u_xlat33 = ((x_681 * x_683) + x_686);
  let x_688 : f32 = u_xlat33;
  u_xlat33 = clamp(x_688, 0.0f, 1.0f);
  let x_691 : f32 = u_xlat1.x;
  u_xlat4.x = (-(x_691) + 1.0f);
  let x_695 : f32 = u_xlat33;
  let x_697 : f32 = u_xlat4.x;
  let x_700 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_695 * x_697) + x_700);
  let x_704 : f32 = u_xlat1.x;
  let x_706 : f32 = x_237.unity_LightData.z;
  u_xlat1.x = (x_704 * x_706);
  let x_709 : vec4<f32> = u_xlat1;
  let x_712 : vec4<f32> = x_45.x_MainLightColor;
  let x_714 : vec3<f32> = (vec3<f32>(x_709.x, x_709.x, x_709.x) * vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec3<f32> = u_xlat2;
  let x_719 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(x_717, vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_724 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_724, 0.0f, 1.0f);
  let x_727 : vec4<f32> = u_xlat1;
  let x_729 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec3<f32>(x_727.x, x_727.x, x_727.x) * vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_733 : f32 = x_58.x_SpecColor.w;
  u_xlat1.x = ((x_733 * 10.0f) + 1.0f);
  let x_739 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_739);
  let x_742 : vec3<f32> = u_xlat3;
  let x_743 : vec3<f32> = u_xlat10;
  let x_747 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat7 = ((x_742 * vec3<f32>(x_743.x, x_743.x, x_743.x)) + vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec3<f32> = u_xlat7;
  let x_751 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_750, x_751);
  let x_753 : f32 = u_xlat33;
  u_xlat33 = max(x_753, 1.17549435e-38f);
  let x_756 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_756);
  let x_758 : f32 = u_xlat33;
  let x_760 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_758, x_758, x_758) * x_760);
  let x_762 : vec3<f32> = u_xlat2;
  let x_763 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_762, x_763);
  let x_765 : f32 = u_xlat33;
  u_xlat33 = clamp(x_765, 0.0f, 1.0f);
  let x_767 : f32 = u_xlat33;
  u_xlat33 = log2(x_767);
  let x_770 : f32 = u_xlat1.x;
  let x_771 : f32 = u_xlat33;
  u_xlat33 = (x_770 * x_771);
  let x_773 : f32 = u_xlat33;
  u_xlat33 = exp2(x_773);
  let x_775 : f32 = u_xlat33;
  let x_778 : vec4<f32> = x_58.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_775, x_775, x_775) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat4;
  let x_783 : vec3<f32> = u_xlat7;
  let x_784 : vec3<f32> = (vec3<f32>(x_781.x, x_781.y, x_781.z) * x_783);
  let x_785 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : vec3<f32> = u_xlat6;
  let x_788 : vec4<f32> = u_xlat1;
  let x_791 : vec4<f32> = u_xlat4;
  let x_793 : vec3<f32> = ((x_787 * vec3<f32>(x_788.y, x_788.z, x_788.w)) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_797 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_799 : f32 = x_237.unity_LightData.y;
  u_xlat33 = min(x_797, x_799);
  let x_802 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_802));
  let x_805 : f32 = u_xlat32;
  let x_808 : f32 = x_343.x_AdditionalShadowFadeParams.x;
  let x_811 : f32 = x_343.x_AdditionalShadowFadeParams.y;
  u_xlat32 = ((x_805 * x_808) + x_811);
  let x_813 : f32 = u_xlat32;
  u_xlat32 = clamp(x_813, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_825 : u32 = u_xlatu_loop_1;
    let x_826 : u32 = u_xlatu33;
    if ((x_825 < x_826)) {
    } else {
      break;
    }
    let x_829 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_829 >> 2u);
    let x_832 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_832 & 3u));
    let x_836 : u32 = u_xlatu35;
    let x_839 : vec4<f32> = x_237.unity_LightIndices[bitcast<i32>(x_836)];
    let x_849 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_854 : vec4<u32> = indexable[x_849];
    u_xlat35 = dot(x_839, bitcast<vec4<f32>>(x_854));
    let x_858 : f32 = u_xlat35;
    u_xlati35 = i32(x_858);
    let x_860 : vec3<f32> = vs_TEXCOORD1;
    let x_871 : i32 = u_xlati35;
    let x_873 : vec4<f32> = x_870.x_AdditionalLightsPosition[x_871];
    let x_876 : i32 = u_xlati35;
    let x_878 : vec4<f32> = x_870.x_AdditionalLightsPosition[x_876];
    u_xlat7 = ((-(x_860) * vec3<f32>(x_873.w, x_873.w, x_873.w)) + vec3<f32>(x_878.x, x_878.y, x_878.z));
    let x_882 : vec3<f32> = u_xlat7;
    let x_883 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_882, x_883);
    let x_885 : f32 = u_xlat36;
    u_xlat36 = max(x_885, 0.00006103515625f);
    let x_888 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_888);
    let x_890 : f32 = u_xlat37;
    let x_892 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_890, x_890, x_890) * x_892);
    let x_894 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_894);
    let x_896 : f32 = u_xlat36;
    let x_897 : i32 = u_xlati35;
    let x_899 : f32 = x_870.x_AdditionalLightsAttenuation[x_897].x;
    u_xlat36 = (x_896 * x_899);
    let x_901 : f32 = u_xlat36;
    let x_903 : f32 = u_xlat36;
    u_xlat36 = ((-(x_901) * x_903) + 1.0f);
    let x_906 : f32 = u_xlat36;
    u_xlat36 = max(x_906, 0.0f);
    let x_908 : f32 = u_xlat36;
    let x_909 : f32 = u_xlat36;
    u_xlat36 = (x_908 * x_909);
    let x_911 : f32 = u_xlat36;
    let x_912 : f32 = u_xlat37;
    u_xlat36 = (x_911 * x_912);
    let x_914 : i32 = u_xlati35;
    let x_916 : vec4<f32> = x_870.x_AdditionalLightsSpotDir[x_914];
    let x_918 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_916.x, x_916.y, x_916.z), x_918);
    let x_920 : f32 = u_xlat37;
    let x_921 : i32 = u_xlati35;
    let x_923 : f32 = x_870.x_AdditionalLightsAttenuation[x_921].z;
    let x_925 : i32 = u_xlati35;
    let x_927 : f32 = x_870.x_AdditionalLightsAttenuation[x_925].w;
    u_xlat37 = ((x_920 * x_923) + x_927);
    let x_929 : f32 = u_xlat37;
    u_xlat37 = clamp(x_929, 0.0f, 1.0f);
    let x_931 : f32 = u_xlat37;
    let x_932 : f32 = u_xlat37;
    u_xlat37 = (x_931 * x_932);
    let x_934 : f32 = u_xlat36;
    let x_935 : f32 = u_xlat37;
    u_xlat36 = (x_934 * x_935);
    let x_939 : i32 = u_xlati35;
    let x_941 : f32 = x_343.x_AdditionalShadowParams[x_939].w;
    u_xlati37 = i32(x_941);
    let x_946 : i32 = u_xlati37;
    u_xlatb8.x = (x_946 >= 0i);
    let x_950 : bool = u_xlatb8.x;
    if (x_950) {
      let x_954 : i32 = u_xlati35;
      let x_956 : f32 = x_343.x_AdditionalShadowParams[x_954].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_956, x_956, x_956, x_956))));
      let x_962 : bool = u_xlatb8.x;
      if (x_962) {
        let x_965 : vec3<f32> = u_xlat7;
        let x_968 : vec3<f32> = u_xlat7;
        let x_971 : vec4<bool> = (abs(vec4<f32>(x_965.z, x_965.z, x_965.y, x_965.z)) >= abs(vec4<f32>(x_968.x, x_968.y, x_968.x, x_968.x)));
        u_xlatb8 = vec3<bool>(x_971.x, x_971.y, x_971.z);
        let x_974 : bool = u_xlatb8.y;
        let x_976 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_974 & x_976);
        let x_980 : vec3<f32> = u_xlat7;
        let x_983 : vec4<bool> = (-(vec4<f32>(x_980.z, x_980.y, x_980.x, x_980.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_983.x, x_983.y, x_983.z);
        let x_987 : bool = u_xlatb9.x;
        u_xlat18.x = select(4.0f, 5.0f, x_987);
        let x_992 : bool = u_xlatb9.y;
        u_xlat18.z = select(2.0f, 3.0f, x_992);
        let x_997 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_997);
        let x_1002 : bool = u_xlatb8.z;
        if (x_1002) {
          let x_1007 : f32 = u_xlat18.z;
          x_1003 = x_1007;
        } else {
          let x_1010 : f32 = u_xlat9.x;
          x_1003 = x_1010;
        }
        let x_1011 : f32 = x_1003;
        u_xlat28 = x_1011;
        let x_1014 : bool = u_xlatb8.x;
        if (x_1014) {
          let x_1019 : f32 = u_xlat18.x;
          x_1015 = x_1019;
        } else {
          let x_1021 : f32 = u_xlat28;
          x_1015 = x_1021;
        }
        let x_1022 : f32 = x_1015;
        u_xlat8.x = x_1022;
        let x_1024 : i32 = u_xlati35;
        let x_1026 : f32 = x_343.x_AdditionalShadowParams[x_1024].w;
        u_xlat18.x = trunc(x_1026);
        let x_1030 : f32 = u_xlat8.x;
        let x_1032 : f32 = u_xlat18.x;
        u_xlat8.x = (x_1030 + x_1032);
        let x_1036 : f32 = u_xlat8.x;
        u_xlati37 = i32(x_1036);
      }
      let x_1038 : i32 = u_xlati37;
      u_xlati37 = (x_1038 << bitcast<u32>(2i));
      let x_1040 : vec3<f32> = vs_TEXCOORD1;
      let x_1043 : i32 = u_xlati37;
      let x_1046 : i32 = u_xlati37;
      let x_1050 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[((x_1043 + 1i) / 4i)][((x_1046 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1040.y, x_1040.y, x_1040.y, x_1040.y) * x_1050);
      let x_1052 : i32 = u_xlati37;
      let x_1054 : i32 = u_xlati37;
      let x_1057 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[(x_1052 / 4i)][(x_1054 % 4i)];
      let x_1058 : vec3<f32> = vs_TEXCOORD1;
      let x_1061 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1057 * vec4<f32>(x_1058.x, x_1058.x, x_1058.x, x_1058.x)) + x_1061);
      let x_1063 : i32 = u_xlati37;
      let x_1066 : i32 = u_xlati37;
      let x_1070 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[((x_1063 + 2i) / 4i)][((x_1066 + 2i) % 4i)];
      let x_1071 : vec3<f32> = vs_TEXCOORD1;
      let x_1074 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1070 * vec4<f32>(x_1071.z, x_1071.z, x_1071.z, x_1071.z)) + x_1074);
      let x_1076 : vec4<f32> = u_xlat8;
      let x_1077 : i32 = u_xlati37;
      let x_1080 : i32 = u_xlati37;
      let x_1084 : vec4<f32> = x_343.x_AdditionalLightsWorldToShadow[((x_1077 + 3i) / 4i)][((x_1080 + 3i) % 4i)];
      u_xlat8 = (x_1076 + x_1084);
      let x_1086 : vec4<f32> = u_xlat8;
      let x_1088 : vec4<f32> = u_xlat8;
      let x_1090 : vec3<f32> = (vec3<f32>(x_1086.x, x_1086.y, x_1086.z) / vec3<f32>(x_1088.w, x_1088.w, x_1088.w));
      let x_1091 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
      let x_1094 : vec4<f32> = u_xlat8;
      let x_1095 : vec2<f32> = vec2<f32>(x_1094.x, x_1094.y);
      let x_1097 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1095.x, x_1095.y, x_1097);
      let x_1105 : vec3<f32> = txVec1;
      let x_1107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1105.xy, x_1105.z);
      u_xlat37 = x_1107;
      let x_1108 : i32 = u_xlati35;
      let x_1110 : f32 = x_343.x_AdditionalShadowParams[x_1108].x;
      u_xlat8.x = (1.0f + -(x_1110));
      let x_1114 : f32 = u_xlat37;
      let x_1115 : i32 = u_xlati35;
      let x_1117 : f32 = x_343.x_AdditionalShadowParams[x_1115].x;
      let x_1120 : f32 = u_xlat8.x;
      u_xlat37 = ((x_1114 * x_1117) + x_1120);
      let x_1123 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_1123);
      let x_1128 : f32 = u_xlat8.z;
      u_xlatb18 = (x_1128 >= 1.0f);
      let x_1130 : bool = u_xlatb18;
      let x_1132 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_1130 | x_1132);
      let x_1136 : bool = u_xlatb8.x;
      let x_1137 : f32 = u_xlat37;
      u_xlat37 = select(x_1137, 1.0f, x_1136);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1140 : f32 = u_xlat37;
    u_xlat8.x = (-(x_1140) + 1.0f);
    let x_1144 : f32 = u_xlat32;
    let x_1146 : f32 = u_xlat8.x;
    let x_1148 : f32 = u_xlat37;
    u_xlat37 = ((x_1144 * x_1146) + x_1148);
    let x_1150 : f32 = u_xlat36;
    let x_1151 : f32 = u_xlat37;
    u_xlat36 = (x_1150 * x_1151);
    let x_1153 : f32 = u_xlat36;
    let x_1155 : i32 = u_xlati35;
    let x_1157 : vec4<f32> = x_870.x_AdditionalLightsColor[x_1155];
    let x_1159 : vec3<f32> = (vec3<f32>(x_1153, x_1153, x_1153) * vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
    let x_1160 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
    let x_1162 : vec3<f32> = u_xlat2;
    let x_1163 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1162, x_1163);
    let x_1165 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1165, 0.0f, 1.0f);
    let x_1167 : f32 = u_xlat35;
    let x_1169 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1167, x_1167, x_1167) * vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
    let x_1172 : vec3<f32> = u_xlat3;
    let x_1173 : vec3<f32> = u_xlat10;
    let x_1176 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1172 * vec3<f32>(x_1173.x, x_1173.x, x_1173.x)) + x_1176);
    let x_1178 : vec3<f32> = u_xlat7;
    let x_1179 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1178, x_1179);
    let x_1181 : f32 = u_xlat35;
    u_xlat35 = max(x_1181, 1.17549435e-38f);
    let x_1183 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1183);
    let x_1185 : f32 = u_xlat35;
    let x_1187 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1185, x_1185, x_1185) * x_1187);
    let x_1189 : vec3<f32> = u_xlat2;
    let x_1190 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1189, x_1190);
    let x_1192 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1192, 0.0f, 1.0f);
    let x_1194 : f32 = u_xlat35;
    u_xlat35 = log2(x_1194);
    let x_1197 : f32 = u_xlat1.x;
    let x_1198 : f32 = u_xlat35;
    u_xlat35 = (x_1197 * x_1198);
    let x_1200 : f32 = u_xlat35;
    u_xlat35 = exp2(x_1200);
    let x_1202 : f32 = u_xlat35;
    let x_1205 : vec4<f32> = x_58.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1202, x_1202, x_1202) * vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
    let x_1208 : vec3<f32> = u_xlat7;
    let x_1209 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1208 * vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
    let x_1212 : vec3<f32> = u_xlat9;
    let x_1213 : vec4<f32> = u_xlat1;
    let x_1216 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1212 * vec3<f32>(x_1213.y, x_1213.z, x_1213.w)) + x_1216);
    let x_1218 : vec3<f32> = u_xlat6;
    let x_1219 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1218 + x_1219);

    continuing {
      let x_1221 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1221 + bitcast<u32>(1i));
    }
  }
  let x_1223 : vec4<f32> = u_xlat5;
  let x_1225 : vec4<f32> = u_xlat1;
  let x_1228 : vec4<f32> = u_xlat4;
  let x_1230 : vec3<f32> = ((vec3<f32>(x_1223.x, x_1223.y, x_1223.z) * vec3<f32>(x_1225.y, x_1225.z, x_1225.w)) + vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : vec3<f32> = u_xlat6;
  let x_1234 : vec4<f32> = u_xlat1;
  let x_1236 : vec3<f32> = (x_1233 + vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
  let x_1237 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
  let x_1239 : f32 = u_xlat30;
  let x_1240 : f32 = u_xlat30;
  u_xlat10.x = (x_1239 * -(x_1240));
  let x_1245 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_1245);
  let x_1248 : vec4<f32> = u_xlat1;
  let x_1251 : vec4<f32> = x_45.unity_FogColor;
  let x_1254 : vec3<f32> = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) + -(vec3<f32>(x_1251.x, x_1251.y, x_1251.z)));
  let x_1255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
  let x_1259 : vec3<f32> = u_xlat10;
  let x_1261 : vec4<f32> = u_xlat1;
  let x_1265 : vec4<f32> = x_45.unity_FogColor;
  let x_1267 : vec3<f32> = ((vec3<f32>(x_1259.x, x_1259.x, x_1259.x) * vec3<f32>(x_1261.x, x_1261.y, x_1261.z)) + vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
  let x_1268 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
  let x_1271 : f32 = x_58.x_Surface;
  u_xlatb10 = (x_1271 == 1.0f);
  let x_1273 : bool = u_xlatb10;
  let x_1274 : bool = u_xlatb20;
  u_xlatb10 = (x_1273 | x_1274);
  let x_1276 : bool = u_xlatb10;
  if (x_1276) {
    let x_1281 : f32 = u_xlat0.x;
    x_1277 = x_1281;
  } else {
    x_1277 = 1.0f;
  }
  let x_1283 : f32 = x_1277;
  SV_Target0.w = x_1283;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


