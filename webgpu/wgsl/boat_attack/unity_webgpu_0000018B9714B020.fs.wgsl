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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

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

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb12 : bool;

@group(1) @binding(2) var<uniform> x_239 : UnityPerDraw;

var<private> u_xlatb2 : bool;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_358 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu30 : u32;

var<private> u_xlati30 : i32;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

var<private> u_xlatb32 : bool;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlatu33 : u32;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

@group(1) @binding(1) var<uniform> x_923 : AdditionalLights;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlati37 : i32;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlatb9 : vec3<bool>;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_245 : f32;
  var txVec0 : vec3<f32>;
  var x_707 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1056 : f32;
  var x_1068 : f32;
  var txVec1 : vec3<f32>;
  var x_1336 : f32;
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
  let x_170 : vec3<f32> = vec3<f32>(x_169.x, x_169.y, x_169.w);
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : f32 = u_xlat2.x;
  let x_177 : f32 = u_xlat2.z;
  u_xlat2.x = (x_174 * x_177);
  let x_180 : vec4<f32> = u_xlat2;
  let x_187 : vec2<f32> = ((vec2<f32>(x_180.x, x_180.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_188 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_187.x, x_188.y, x_187.y);
  let x_190 : vec3<f32> = u_xlat10;
  let x_192 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_190.x, x_190.z), vec2<f32>(x_192.x, x_192.z));
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_197, 1.0f);
  let x_201 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_201) + 1.0f);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_206);
  let x_210 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_210, 0.0000000000000001f);
  let x_214 : vec4<f32> = hlslcc_FragCoord;
  let x_218 : f32 = x_45.x_DitheringTextureInvSize;
  let x_220 : vec2<f32> = (vec2<f32>(x_214.x, x_214.y) * vec2<f32>(x_218, x_218));
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_221.w);
  let x_228 : vec4<f32> = u_xlat2;
  let x_231 : f32 = x_45.x_GlobalMipBias.x;
  let x_232 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_228.x, x_228.y), x_231);
  u_xlat2.x = x_232.w;
  let x_242 : f32 = x_239.unity_LODFade.x;
  u_xlatb12 = (x_242 >= 0.0f);
  let x_244 : bool = u_xlatb12;
  if (x_244) {
    let x_249 : f32 = u_xlat2.x;
    x_245 = abs(x_249);
  } else {
    let x_253 : f32 = u_xlat2.x;
    x_245 = -(abs(x_253));
  }
  let x_256 : f32 = x_245;
  u_xlat2.x = x_256;
  let x_259 : f32 = u_xlat2.x;
  let x_262 : f32 = x_239.unity_LODFade.x;
  u_xlat2.x = (-(x_259) + x_262);
  let x_267 : f32 = u_xlat2.x;
  u_xlatb2 = (x_267 < 0.0f);
  let x_269 : bool = u_xlatb2;
  if (((select(0i, 1i, x_269) * -1i) != 0i)) {
    discard;
  }
  let x_276 : vec3<f32> = u_xlat10;
  let x_279 : vec4<f32> = vs_TEXCOORD4;
  let x_281 : vec3<f32> = (vec3<f32>(x_276.z, x_276.z, x_276.z) * vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec3<f32> = u_xlat10;
  let x_287 : vec4<f32> = vs_TEXCOORD3;
  let x_290 : vec4<f32> = u_xlat2;
  let x_292 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat1;
  let x_298 : vec4<f32> = vs_TEXCOORD2;
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec3<f32> = ((vec3<f32>(x_295.x, x_295.x, x_295.x) * vec3<f32>(x_298.x, x_298.y, x_298.z)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_313 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_313);
  let x_316 : vec3<f32> = u_xlat10;
  let x_318 : vec4<f32> = u_xlat2;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.x, x_316.x) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_325 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_325;
  let x_328 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_328;
  let x_332 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_332;
  let x_334 : vec3<f32> = u_xlat3;
  let x_335 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_334, x_335);
  let x_339 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_339, 0.00006103515625f);
  let x_344 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_344);
  let x_350 : vec3<f32> = vs_TEXCOORD1;
  let x_360 : vec4<f32> = x_358.x_CascadeShadowSplitSpheres0;
  let x_363 : vec3<f32> = (x_350 + -(vec3<f32>(x_360.x, x_360.y, x_360.z)));
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : vec3<f32> = vs_TEXCOORD1;
  let x_369 : vec4<f32> = x_358.x_CascadeShadowSplitSpheres1;
  let x_372 : vec3<f32> = (x_367 + -(vec3<f32>(x_369.x, x_369.y, x_369.z)));
  let x_373 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : vec3<f32> = vs_TEXCOORD1;
  let x_379 : vec4<f32> = x_358.x_CascadeShadowSplitSpheres2;
  let x_382 : vec3<f32> = (x_376 + -(vec3<f32>(x_379.x, x_379.y, x_379.z)));
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : vec3<f32> = vs_TEXCOORD1;
  let x_388 : vec4<f32> = x_358.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_386 + -(vec3<f32>(x_388.x, x_388.y, x_388.z)));
  let x_392 : vec4<f32> = u_xlat4;
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_392.x, x_392.y, x_392.z), vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_398 : vec4<f32> = u_xlat5;
  let x_400 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_398.x, x_398.y, x_398.z), vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_404 : vec4<f32> = u_xlat6;
  let x_406 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_404.x, x_404.y, x_404.z), vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_410 : vec3<f32> = u_xlat7;
  let x_411 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_410, x_411);
  let x_417 : vec4<f32> = u_xlat4;
  let x_420 : vec4<f32> = x_358.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_417 < x_420);
  let x_423 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_423);
  let x_427 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_427);
  let x_431 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_431);
  let x_435 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_435);
  let x_439 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_439);
  let x_444 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_444);
  let x_448 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_448);
  let x_451 : vec4<f32> = u_xlat4;
  let x_453 : vec4<f32> = u_xlat5;
  let x_455 : vec3<f32> = (vec3<f32>(x_451.x, x_451.y, x_451.z) + vec3<f32>(x_453.y, x_453.z, x_453.w));
  let x_456 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat4;
  let x_461 : vec3<f32> = max(vec3<f32>(x_458.x, x_458.y, x_458.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_462 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_462.x, x_461.x, x_461.y, x_461.z);
  let x_464 : vec4<f32> = u_xlat5;
  u_xlat30 = dot(x_464, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_469 : f32 = u_xlat30;
  u_xlat30 = (-(x_469) + 4.0f);
  let x_474 : f32 = u_xlat30;
  u_xlatu30 = u32(x_474);
  let x_478 : u32 = u_xlatu30;
  u_xlati30 = (bitcast<i32>(x_478) << bitcast<u32>(2i));
  let x_481 : vec3<f32> = vs_TEXCOORD1;
  let x_483 : i32 = u_xlati30;
  let x_486 : i32 = u_xlati30;
  let x_490 : vec4<f32> = x_358.x_MainLightWorldToShadow[((x_483 + 1i) / 4i)][((x_486 + 1i) % 4i)];
  let x_492 : vec3<f32> = (vec3<f32>(x_481.y, x_481.y, x_481.y) * vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : i32 = u_xlati30;
  let x_497 : i32 = u_xlati30;
  let x_500 : vec4<f32> = x_358.x_MainLightWorldToShadow[(x_495 / 4i)][(x_497 % 4i)];
  let x_502 : vec3<f32> = vs_TEXCOORD1;
  let x_505 : vec4<f32> = u_xlat4;
  let x_507 : vec3<f32> = ((vec3<f32>(x_500.x, x_500.y, x_500.z) * vec3<f32>(x_502.x, x_502.x, x_502.x)) + vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : i32 = u_xlati30;
  let x_513 : i32 = u_xlati30;
  let x_517 : vec4<f32> = x_358.x_MainLightWorldToShadow[((x_510 + 2i) / 4i)][((x_513 + 2i) % 4i)];
  let x_519 : vec3<f32> = vs_TEXCOORD1;
  let x_522 : vec4<f32> = u_xlat4;
  let x_524 : vec3<f32> = ((vec3<f32>(x_517.x, x_517.y, x_517.z) * vec3<f32>(x_519.z, x_519.z, x_519.z)) + vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat4;
  let x_529 : i32 = u_xlati30;
  let x_532 : i32 = u_xlati30;
  let x_536 : vec4<f32> = x_358.x_MainLightWorldToShadow[((x_529 + 3i) / 4i)][((x_532 + 3i) % 4i)];
  let x_538 : vec3<f32> = (vec3<f32>(x_527.x, x_527.y, x_527.z) + vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_542 : f32 = vs_TEXCOORD1.y;
  let x_545 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat30 = (x_542 * x_545);
  let x_548 : f32 = x_45.unity_MatrixV[0i].z;
  let x_550 : f32 = vs_TEXCOORD1.x;
  let x_552 : f32 = u_xlat30;
  u_xlat30 = ((x_548 * x_550) + x_552);
  let x_555 : f32 = x_45.unity_MatrixV[2i].z;
  let x_557 : f32 = vs_TEXCOORD1.z;
  let x_559 : f32 = u_xlat30;
  u_xlat30 = ((x_555 * x_557) + x_559);
  let x_561 : f32 = u_xlat30;
  let x_563 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat30 = (x_561 + x_563);
  let x_565 : f32 = u_xlat30;
  let x_569 : f32 = x_45.x_ProjectionParams.y;
  u_xlat30 = (-(x_565) + -(x_569));
  let x_572 : f32 = u_xlat30;
  u_xlat30 = max(x_572, 0.0f);
  let x_574 : f32 = u_xlat30;
  let x_577 : f32 = x_45.unity_FogParams.x;
  u_xlat30 = (x_574 * x_577);
  u_xlat2.w = 1.0f;
  let x_582 : vec4<f32> = x_239.unity_SHAr;
  let x_583 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_582, x_583);
  let x_588 : vec4<f32> = x_239.unity_SHAg;
  let x_589 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_588, x_589);
  let x_594 : vec4<f32> = x_239.unity_SHAb;
  let x_595 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_594, x_595);
  let x_598 : vec4<f32> = u_xlat2;
  let x_600 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_598.y, x_598.z, x_598.z, x_598.x) * vec4<f32>(x_600.x, x_600.y, x_600.z, x_600.z));
  let x_605 : vec4<f32> = x_239.unity_SHBr;
  let x_606 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_605, x_606);
  let x_611 : vec4<f32> = x_239.unity_SHBg;
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_611, x_612);
  let x_617 : vec4<f32> = x_239.unity_SHBb;
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_617, x_618);
  let x_622 : f32 = u_xlat2.y;
  let x_624 : f32 = u_xlat2.y;
  u_xlat1.x = (x_622 * x_624);
  let x_628 : f32 = u_xlat2.x;
  let x_630 : f32 = u_xlat2.x;
  let x_633 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_628 * x_630) + -(x_633));
  let x_639 : vec4<f32> = x_239.unity_SHC;
  let x_641 : vec4<f32> = u_xlat1;
  let x_644 : vec3<f32> = u_xlat7;
  let x_645 : vec3<f32> = ((vec3<f32>(x_639.x, x_639.y, x_639.z) * vec3<f32>(x_641.x, x_641.x, x_641.x)) + x_644);
  let x_646 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : vec4<f32> = u_xlat5;
  let x_650 : vec4<f32> = u_xlat6;
  let x_652 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) + vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat5;
  let x_657 : vec3<f32> = max(vec3<f32>(x_655.x, x_655.y, x_655.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_658 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_662 : vec4<f32> = u_xlat4;
  let x_663 : vec2<f32> = vec2<f32>(x_662.x, x_662.y);
  let x_665 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_663.x, x_663.y, x_665);
  let x_677 : vec3<f32> = txVec0;
  let x_679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_677.xy, x_677.z);
  u_xlat1.x = x_679;
  let x_684 : f32 = x_358.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_684) + 1.0f);
  let x_688 : f32 = u_xlat1.x;
  let x_690 : f32 = x_358.x_MainLightShadowParams.x;
  let x_692 : f32 = u_xlat32;
  u_xlat1.x = ((x_688 * x_690) + x_692);
  let x_697 : f32 = u_xlat4.z;
  u_xlatb32 = (0.0f >= x_697);
  let x_701 : f32 = u_xlat4.z;
  u_xlatb33 = (x_701 >= 1.0f);
  let x_703 : bool = u_xlatb32;
  let x_704 : bool = u_xlatb33;
  u_xlatb32 = (x_703 | x_704);
  let x_706 : bool = u_xlatb32;
  if (x_706) {
    x_707 = 1.0f;
  } else {
    let x_712 : f32 = u_xlat1.x;
    x_707 = x_712;
  }
  let x_713 : f32 = x_707;
  u_xlat1.x = x_713;
  let x_715 : vec3<f32> = vs_TEXCOORD1;
  let x_718 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_720 : vec3<f32> = (x_715 + -(x_718));
  let x_721 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat4;
  let x_725 : vec4<f32> = u_xlat4;
  u_xlat32 = dot(vec3<f32>(x_723.x, x_723.y, x_723.z), vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_729 : f32 = u_xlat32;
  let x_731 : f32 = x_358.x_MainLightShadowParams.z;
  let x_734 : f32 = x_358.x_MainLightShadowParams.w;
  u_xlat33 = ((x_729 * x_731) + x_734);
  let x_736 : f32 = u_xlat33;
  u_xlat33 = clamp(x_736, 0.0f, 1.0f);
  let x_739 : f32 = u_xlat1.x;
  u_xlat4.x = (-(x_739) + 1.0f);
  let x_743 : f32 = u_xlat33;
  let x_745 : f32 = u_xlat4.x;
  let x_748 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_743 * x_745) + x_748);
  let x_752 : f32 = u_xlat1.x;
  let x_754 : f32 = x_239.unity_LightData.z;
  u_xlat1.x = (x_752 * x_754);
  let x_757 : vec4<f32> = u_xlat1;
  let x_760 : vec4<f32> = x_45.x_MainLightColor;
  let x_762 : vec3<f32> = (vec3<f32>(x_757.x, x_757.x, x_757.x) * vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat2;
  let x_768 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_765.x, x_765.y, x_765.z), vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_773 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_773, 0.0f, 1.0f);
  let x_776 : vec4<f32> = u_xlat1;
  let x_778 : vec4<f32> = u_xlat4;
  let x_780 : vec3<f32> = (vec3<f32>(x_776.x, x_776.x, x_776.x) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_784 : f32 = x_58.x_SpecColor.w;
  u_xlat1.x = ((x_784 * 10.0f) + 1.0f);
  let x_790 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_790);
  let x_793 : vec3<f32> = u_xlat3;
  let x_794 : vec3<f32> = u_xlat10;
  let x_798 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat7 = ((x_793 * vec3<f32>(x_794.x, x_794.x, x_794.x)) + vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec3<f32> = u_xlat7;
  let x_802 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_801, x_802);
  let x_804 : f32 = u_xlat33;
  u_xlat33 = max(x_804, 1.17549435e-38f);
  let x_807 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_807);
  let x_809 : f32 = u_xlat33;
  let x_811 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_809, x_809, x_809) * x_811);
  let x_813 : vec4<f32> = u_xlat2;
  let x_815 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_813.x, x_813.y, x_813.z), x_815);
  let x_817 : f32 = u_xlat33;
  u_xlat33 = clamp(x_817, 0.0f, 1.0f);
  let x_819 : f32 = u_xlat33;
  u_xlat33 = log2(x_819);
  let x_822 : f32 = u_xlat1.x;
  let x_823 : f32 = u_xlat33;
  u_xlat33 = (x_822 * x_823);
  let x_825 : f32 = u_xlat33;
  u_xlat33 = exp2(x_825);
  let x_827 : f32 = u_xlat33;
  let x_830 : vec4<f32> = x_58.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat4;
  let x_835 : vec3<f32> = u_xlat7;
  let x_836 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) * x_835);
  let x_837 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat6;
  let x_841 : vec4<f32> = u_xlat1;
  let x_844 : vec4<f32> = u_xlat4;
  let x_846 : vec3<f32> = ((vec3<f32>(x_839.x, x_839.y, x_839.z) * vec3<f32>(x_841.y, x_841.z, x_841.w)) + vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_850 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_852 : f32 = x_239.unity_LightData.y;
  u_xlat33 = min(x_850, x_852);
  let x_855 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_855));
  let x_858 : f32 = u_xlat32;
  let x_861 : f32 = x_358.x_AdditionalShadowFadeParams.x;
  let x_864 : f32 = x_358.x_AdditionalShadowFadeParams.y;
  u_xlat32 = ((x_858 * x_861) + x_864);
  let x_866 : f32 = u_xlat32;
  u_xlat32 = clamp(x_866, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_878 : u32 = u_xlatu_loop_1;
    let x_879 : u32 = u_xlatu33;
    if ((x_878 < x_879)) {
    } else {
      break;
    }
    let x_882 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_882 >> 2u);
    let x_885 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_885 & 3u));
    let x_889 : u32 = u_xlatu35;
    let x_892 : vec4<f32> = x_239.unity_LightIndices[bitcast<i32>(x_889)];
    let x_902 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_907 : vec4<u32> = indexable[x_902];
    u_xlat35 = dot(x_892, bitcast<vec4<f32>>(x_907));
    let x_911 : f32 = u_xlat35;
    u_xlati35 = i32(x_911);
    let x_913 : vec3<f32> = vs_TEXCOORD1;
    let x_924 : i32 = u_xlati35;
    let x_926 : vec4<f32> = x_923.x_AdditionalLightsPosition[x_924];
    let x_929 : i32 = u_xlati35;
    let x_931 : vec4<f32> = x_923.x_AdditionalLightsPosition[x_929];
    u_xlat7 = ((-(x_913) * vec3<f32>(x_926.w, x_926.w, x_926.w)) + vec3<f32>(x_931.x, x_931.y, x_931.z));
    let x_935 : vec3<f32> = u_xlat7;
    let x_936 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_935, x_936);
    let x_938 : f32 = u_xlat36;
    u_xlat36 = max(x_938, 0.00006103515625f);
    let x_941 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_941);
    let x_943 : f32 = u_xlat37;
    let x_945 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_943, x_943, x_943) * x_945);
    let x_947 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_947);
    let x_949 : f32 = u_xlat36;
    let x_950 : i32 = u_xlati35;
    let x_952 : f32 = x_923.x_AdditionalLightsAttenuation[x_950].x;
    u_xlat36 = (x_949 * x_952);
    let x_954 : f32 = u_xlat36;
    let x_956 : f32 = u_xlat36;
    u_xlat36 = ((-(x_954) * x_956) + 1.0f);
    let x_959 : f32 = u_xlat36;
    u_xlat36 = max(x_959, 0.0f);
    let x_961 : f32 = u_xlat36;
    let x_962 : f32 = u_xlat36;
    u_xlat36 = (x_961 * x_962);
    let x_964 : f32 = u_xlat36;
    let x_965 : f32 = u_xlat37;
    u_xlat36 = (x_964 * x_965);
    let x_967 : i32 = u_xlati35;
    let x_969 : vec4<f32> = x_923.x_AdditionalLightsSpotDir[x_967];
    let x_971 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_969.x, x_969.y, x_969.z), x_971);
    let x_973 : f32 = u_xlat37;
    let x_974 : i32 = u_xlati35;
    let x_976 : f32 = x_923.x_AdditionalLightsAttenuation[x_974].z;
    let x_978 : i32 = u_xlati35;
    let x_980 : f32 = x_923.x_AdditionalLightsAttenuation[x_978].w;
    u_xlat37 = ((x_973 * x_976) + x_980);
    let x_982 : f32 = u_xlat37;
    u_xlat37 = clamp(x_982, 0.0f, 1.0f);
    let x_984 : f32 = u_xlat37;
    let x_985 : f32 = u_xlat37;
    u_xlat37 = (x_984 * x_985);
    let x_987 : f32 = u_xlat36;
    let x_988 : f32 = u_xlat37;
    u_xlat36 = (x_987 * x_988);
    let x_992 : i32 = u_xlati35;
    let x_994 : f32 = x_358.x_AdditionalShadowParams[x_992].w;
    u_xlati37 = i32(x_994);
    let x_999 : i32 = u_xlati37;
    u_xlatb8.x = (x_999 >= 0i);
    let x_1003 : bool = u_xlatb8.x;
    if (x_1003) {
      let x_1007 : i32 = u_xlati35;
      let x_1009 : f32 = x_358.x_AdditionalShadowParams[x_1007].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1009, x_1009, x_1009, x_1009))));
      let x_1015 : bool = u_xlatb8.x;
      if (x_1015) {
        let x_1018 : vec3<f32> = u_xlat7;
        let x_1021 : vec3<f32> = u_xlat7;
        let x_1024 : vec4<bool> = (abs(vec4<f32>(x_1018.z, x_1018.z, x_1018.y, x_1018.z)) >= abs(vec4<f32>(x_1021.x, x_1021.y, x_1021.x, x_1021.x)));
        u_xlatb8 = vec3<bool>(x_1024.x, x_1024.y, x_1024.z);
        let x_1027 : bool = u_xlatb8.y;
        let x_1029 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_1027 & x_1029);
        let x_1033 : vec3<f32> = u_xlat7;
        let x_1036 : vec4<bool> = (-(vec4<f32>(x_1033.z, x_1033.y, x_1033.x, x_1033.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_1036.x, x_1036.y, x_1036.z);
        let x_1040 : bool = u_xlatb9.x;
        u_xlat18.x = select(4.0f, 5.0f, x_1040);
        let x_1045 : bool = u_xlatb9.y;
        u_xlat18.z = select(2.0f, 3.0f, x_1045);
        let x_1050 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_1050);
        let x_1055 : bool = u_xlatb8.z;
        if (x_1055) {
          let x_1060 : f32 = u_xlat18.z;
          x_1056 = x_1060;
        } else {
          let x_1063 : f32 = u_xlat9.x;
          x_1056 = x_1063;
        }
        let x_1064 : f32 = x_1056;
        u_xlat28 = x_1064;
        let x_1067 : bool = u_xlatb8.x;
        if (x_1067) {
          let x_1072 : f32 = u_xlat18.x;
          x_1068 = x_1072;
        } else {
          let x_1074 : f32 = u_xlat28;
          x_1068 = x_1074;
        }
        let x_1075 : f32 = x_1068;
        u_xlat8.x = x_1075;
        let x_1077 : i32 = u_xlati35;
        let x_1079 : f32 = x_358.x_AdditionalShadowParams[x_1077].w;
        u_xlat18.x = trunc(x_1079);
        let x_1083 : f32 = u_xlat8.x;
        let x_1085 : f32 = u_xlat18.x;
        u_xlat8.x = (x_1083 + x_1085);
        let x_1089 : f32 = u_xlat8.x;
        u_xlati37 = i32(x_1089);
      }
      let x_1091 : i32 = u_xlati37;
      u_xlati37 = (x_1091 << bitcast<u32>(2i));
      let x_1093 : vec3<f32> = vs_TEXCOORD1;
      let x_1096 : i32 = u_xlati37;
      let x_1099 : i32 = u_xlati37;
      let x_1103 : vec4<f32> = x_358.x_AdditionalLightsWorldToShadow[((x_1096 + 1i) / 4i)][((x_1099 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1093.y, x_1093.y, x_1093.y, x_1093.y) * x_1103);
      let x_1105 : i32 = u_xlati37;
      let x_1107 : i32 = u_xlati37;
      let x_1110 : vec4<f32> = x_358.x_AdditionalLightsWorldToShadow[(x_1105 / 4i)][(x_1107 % 4i)];
      let x_1111 : vec3<f32> = vs_TEXCOORD1;
      let x_1114 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1110 * vec4<f32>(x_1111.x, x_1111.x, x_1111.x, x_1111.x)) + x_1114);
      let x_1116 : i32 = u_xlati37;
      let x_1119 : i32 = u_xlati37;
      let x_1123 : vec4<f32> = x_358.x_AdditionalLightsWorldToShadow[((x_1116 + 2i) / 4i)][((x_1119 + 2i) % 4i)];
      let x_1124 : vec3<f32> = vs_TEXCOORD1;
      let x_1127 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1123 * vec4<f32>(x_1124.z, x_1124.z, x_1124.z, x_1124.z)) + x_1127);
      let x_1129 : vec4<f32> = u_xlat8;
      let x_1130 : i32 = u_xlati37;
      let x_1133 : i32 = u_xlati37;
      let x_1137 : vec4<f32> = x_358.x_AdditionalLightsWorldToShadow[((x_1130 + 3i) / 4i)][((x_1133 + 3i) % 4i)];
      u_xlat8 = (x_1129 + x_1137);
      let x_1139 : vec4<f32> = u_xlat8;
      let x_1141 : vec4<f32> = u_xlat8;
      let x_1143 : vec3<f32> = (vec3<f32>(x_1139.x, x_1139.y, x_1139.z) / vec3<f32>(x_1141.w, x_1141.w, x_1141.w));
      let x_1144 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
      let x_1147 : vec4<f32> = u_xlat8;
      let x_1148 : vec2<f32> = vec2<f32>(x_1147.x, x_1147.y);
      let x_1150 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1148.x, x_1148.y, x_1150);
      let x_1158 : vec3<f32> = txVec1;
      let x_1160 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1158.xy, x_1158.z);
      u_xlat37 = x_1160;
      let x_1161 : i32 = u_xlati35;
      let x_1163 : f32 = x_358.x_AdditionalShadowParams[x_1161].x;
      u_xlat8.x = (1.0f + -(x_1163));
      let x_1167 : f32 = u_xlat37;
      let x_1168 : i32 = u_xlati35;
      let x_1170 : f32 = x_358.x_AdditionalShadowParams[x_1168].x;
      let x_1173 : f32 = u_xlat8.x;
      u_xlat37 = ((x_1167 * x_1170) + x_1173);
      let x_1176 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_1176);
      let x_1181 : f32 = u_xlat8.z;
      u_xlatb18 = (x_1181 >= 1.0f);
      let x_1183 : bool = u_xlatb18;
      let x_1185 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_1183 | x_1185);
      let x_1189 : bool = u_xlatb8.x;
      let x_1190 : f32 = u_xlat37;
      u_xlat37 = select(x_1190, 1.0f, x_1189);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1193 : f32 = u_xlat37;
    u_xlat8.x = (-(x_1193) + 1.0f);
    let x_1197 : f32 = u_xlat32;
    let x_1199 : f32 = u_xlat8.x;
    let x_1201 : f32 = u_xlat37;
    u_xlat37 = ((x_1197 * x_1199) + x_1201);
    let x_1203 : f32 = u_xlat36;
    let x_1204 : f32 = u_xlat37;
    u_xlat36 = (x_1203 * x_1204);
    let x_1206 : f32 = u_xlat36;
    let x_1208 : i32 = u_xlati35;
    let x_1210 : vec4<f32> = x_923.x_AdditionalLightsColor[x_1208];
    let x_1212 : vec3<f32> = (vec3<f32>(x_1206, x_1206, x_1206) * vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
    let x_1213 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
    let x_1215 : vec4<f32> = u_xlat2;
    let x_1217 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1215.x, x_1215.y, x_1215.z), x_1217);
    let x_1219 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1219, 0.0f, 1.0f);
    let x_1221 : f32 = u_xlat35;
    let x_1223 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1221, x_1221, x_1221) * vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
    let x_1226 : vec3<f32> = u_xlat3;
    let x_1227 : vec3<f32> = u_xlat10;
    let x_1230 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1226 * vec3<f32>(x_1227.x, x_1227.x, x_1227.x)) + x_1230);
    let x_1232 : vec3<f32> = u_xlat7;
    let x_1233 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1232, x_1233);
    let x_1235 : f32 = u_xlat35;
    u_xlat35 = max(x_1235, 1.17549435e-38f);
    let x_1237 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1237);
    let x_1239 : f32 = u_xlat35;
    let x_1241 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1239, x_1239, x_1239) * x_1241);
    let x_1243 : vec4<f32> = u_xlat2;
    let x_1245 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1243.x, x_1243.y, x_1243.z), x_1245);
    let x_1247 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1247, 0.0f, 1.0f);
    let x_1249 : f32 = u_xlat35;
    u_xlat35 = log2(x_1249);
    let x_1252 : f32 = u_xlat1.x;
    let x_1253 : f32 = u_xlat35;
    u_xlat35 = (x_1252 * x_1253);
    let x_1255 : f32 = u_xlat35;
    u_xlat35 = exp2(x_1255);
    let x_1257 : f32 = u_xlat35;
    let x_1260 : vec4<f32> = x_58.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1257, x_1257, x_1257) * vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
    let x_1263 : vec3<f32> = u_xlat7;
    let x_1264 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1263 * vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
    let x_1267 : vec3<f32> = u_xlat9;
    let x_1268 : vec4<f32> = u_xlat1;
    let x_1271 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1267 * vec3<f32>(x_1268.y, x_1268.z, x_1268.w)) + x_1271);
    let x_1273 : vec4<f32> = u_xlat6;
    let x_1275 : vec3<f32> = u_xlat7;
    let x_1276 : vec3<f32> = (vec3<f32>(x_1273.x, x_1273.y, x_1273.z) + x_1275);
    let x_1277 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);

    continuing {
      let x_1279 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1279 + bitcast<u32>(1i));
    }
  }
  let x_1281 : vec4<f32> = u_xlat5;
  let x_1283 : vec4<f32> = u_xlat1;
  let x_1286 : vec4<f32> = u_xlat4;
  let x_1288 : vec3<f32> = ((vec3<f32>(x_1281.x, x_1281.y, x_1281.z) * vec3<f32>(x_1283.y, x_1283.z, x_1283.w)) + vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
  let x_1289 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
  let x_1291 : vec4<f32> = u_xlat6;
  let x_1293 : vec4<f32> = u_xlat1;
  let x_1295 : vec3<f32> = (vec3<f32>(x_1291.x, x_1291.y, x_1291.z) + vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
  let x_1296 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
  let x_1298 : f32 = u_xlat30;
  let x_1299 : f32 = u_xlat30;
  u_xlat10.x = (x_1298 * -(x_1299));
  let x_1304 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_1304);
  let x_1307 : vec4<f32> = u_xlat1;
  let x_1310 : vec4<f32> = x_45.unity_FogColor;
  let x_1313 : vec3<f32> = (vec3<f32>(x_1307.x, x_1307.y, x_1307.z) + -(vec3<f32>(x_1310.x, x_1310.y, x_1310.z)));
  let x_1314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
  let x_1318 : vec3<f32> = u_xlat10;
  let x_1320 : vec4<f32> = u_xlat1;
  let x_1324 : vec4<f32> = x_45.unity_FogColor;
  let x_1326 : vec3<f32> = ((vec3<f32>(x_1318.x, x_1318.x, x_1318.x) * vec3<f32>(x_1320.x, x_1320.y, x_1320.z)) + vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
  let x_1327 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1330 : f32 = x_58.x_Surface;
  u_xlatb10 = (x_1330 == 1.0f);
  let x_1332 : bool = u_xlatb10;
  let x_1333 : bool = u_xlatb20;
  u_xlatb10 = (x_1332 | x_1333);
  let x_1335 : bool = u_xlatb10;
  if (x_1335) {
    let x_1340 : f32 = u_xlat0.x;
    x_1336 = x_1340;
  } else {
    x_1336 = 1.0f;
  }
  let x_1342 : f32 = x_1336;
  SV_Target0.w = x_1342;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


