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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlatb20 : bool;

var<private> u_xlatb10 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_284 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu30 : u32;

var<private> u_xlati30 : i32;

@group(1) @binding(2) var<uniform> x_510 : UnityPerDraw;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

var<private> u_xlatb32 : bool;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlatu33 : u32;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

@group(1) @binding(1) var<uniform> x_854 : AdditionalLights;

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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var x_61 : f32;
  var x_119 : f32;
  var txVec0 : vec3<f32>;
  var x_638 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_987 : f32;
  var x_999 : f32;
  var txVec1 : vec3<f32>;
  var x_1267 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_74 : f32 = u_xlat0.w;
  let x_76 : f32 = x_42.x_BaseColor.w;
  let x_79 : f32 = x_42.x_Cutoff;
  u_xlat10.x = ((x_74 * x_76) + -(x_79));
  let x_85 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_85);
  let x_89 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_89);
  let x_91 : f32 = u_xlat30;
  let x_93 : f32 = u_xlat20;
  u_xlat20 = (abs(x_91) + abs(x_93));
  let x_96 : f32 = u_xlat20;
  u_xlat20 = max(x_96, 0.00009999999747378752f);
  let x_100 : f32 = u_xlat10.x;
  let x_101 : f32 = u_xlat20;
  u_xlat10.x = (x_100 / x_101);
  let x_105 : f32 = u_xlat10.x;
  u_xlat10.x = (x_105 + 0.5f);
  let x_110 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_110, 0.0f, 1.0f);
  let x_116 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb20;
  if (x_118) {
    let x_123 : f32 = u_xlat10.x;
    x_119 = x_123;
  } else {
    let x_126 : f32 = u_xlat0.x;
    x_119 = x_126;
  }
  let x_127 : f32 = x_119;
  u_xlat0.x = x_127;
  let x_130 : f32 = u_xlat0.x;
  u_xlat10.x = (x_130 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat10.x;
  u_xlatb10 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb10;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_152 : vec2<f32> = vs_TEXCOORD0;
  let x_154 : f32 = x_28.x_GlobalMipBias.x;
  let x_155 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_152, x_154);
  let x_156 : vec3<f32> = vec3<f32>(x_155.x, x_155.y, x_155.w);
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : f32 = u_xlat2.x;
  let x_163 : f32 = u_xlat2.z;
  u_xlat2.x = (x_160 * x_163);
  let x_166 : vec4<f32> = u_xlat2;
  let x_173 : vec2<f32> = ((vec2<f32>(x_166.x, x_166.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_174 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_173.x, x_174.y, x_173.y);
  let x_176 : vec3<f32> = u_xlat10;
  let x_178 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_176.x, x_176.z), vec2<f32>(x_178.x, x_178.z));
  let x_183 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_183, 1.0f);
  let x_187 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_187) + 1.0f);
  let x_192 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_192);
  let x_196 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_196, 0.0000000000000001f);
  let x_200 : vec3<f32> = u_xlat10;
  let x_204 : vec4<f32> = vs_TEXCOORD4;
  let x_206 : vec3<f32> = (vec3<f32>(x_200.z, x_200.z, x_200.z) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec3<f32> = u_xlat10;
  let x_212 : vec4<f32> = vs_TEXCOORD3;
  let x_215 : vec4<f32> = u_xlat2;
  let x_217 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.x, x_209.x) * vec3<f32>(x_212.x, x_212.y, x_212.z)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat1;
  let x_223 : vec4<f32> = vs_TEXCOORD2;
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.x, x_220.x) * vec3<f32>(x_223.x, x_223.y, x_223.z)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat2;
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_238 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat10;
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec3<f32> = (vec3<f32>(x_241.x, x_241.x, x_241.x) * vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_251 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_251;
  let x_254 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_254;
  let x_258 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_258;
  let x_260 : vec3<f32> = u_xlat3;
  let x_261 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_260, x_261);
  let x_265 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_265, 0.00006103515625f);
  let x_270 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_270);
  let x_276 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres0;
  let x_289 : vec3<f32> = (x_276 + -(vec3<f32>(x_286.x, x_286.y, x_286.z)));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_293 : vec3<f32> = vs_TEXCOORD1;
  let x_296 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres1;
  let x_299 : vec3<f32> = (x_293 + -(vec3<f32>(x_296.x, x_296.y, x_296.z)));
  let x_300 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres2;
  let x_309 : vec3<f32> = (x_303 + -(vec3<f32>(x_306.x, x_306.y, x_306.z)));
  let x_310 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : vec3<f32> = vs_TEXCOORD1;
  let x_315 : vec4<f32> = x_284.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_313 + -(vec3<f32>(x_315.x, x_315.y, x_315.z)));
  let x_319 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_325 : vec4<f32> = u_xlat5;
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : vec4<f32> = u_xlat6;
  let x_333 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_337 : vec3<f32> = u_xlat7;
  let x_338 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_337, x_338);
  let x_344 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = x_284.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_344 < x_347);
  let x_350 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_362);
  let x_366 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_366);
  let x_371 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_371);
  let x_375 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_375);
  let x_378 : vec4<f32> = u_xlat4;
  let x_380 : vec4<f32> = u_xlat5;
  let x_382 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) + vec3<f32>(x_380.y, x_380.z, x_380.w));
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat4;
  let x_388 : vec3<f32> = max(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_389.x, x_388.x, x_388.y, x_388.z);
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat30 = dot(x_391, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_396 : f32 = u_xlat30;
  u_xlat30 = (-(x_396) + 4.0f);
  let x_401 : f32 = u_xlat30;
  u_xlatu30 = u32(x_401);
  let x_405 : u32 = u_xlatu30;
  u_xlati30 = (bitcast<i32>(x_405) << bitcast<u32>(2i));
  let x_408 : vec3<f32> = vs_TEXCOORD1;
  let x_410 : i32 = u_xlati30;
  let x_413 : i32 = u_xlati30;
  let x_417 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_410 + 1i) / 4i)][((x_413 + 1i) % 4i)];
  let x_419 : vec3<f32> = (vec3<f32>(x_408.y, x_408.y, x_408.y) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : i32 = u_xlati30;
  let x_424 : i32 = u_xlati30;
  let x_427 : vec4<f32> = x_284.x_MainLightWorldToShadow[(x_422 / 4i)][(x_424 % 4i)];
  let x_429 : vec3<f32> = vs_TEXCOORD1;
  let x_432 : vec4<f32> = u_xlat4;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_429.x, x_429.x, x_429.x)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : i32 = u_xlati30;
  let x_440 : i32 = u_xlati30;
  let x_444 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_437 + 2i) / 4i)][((x_440 + 2i) % 4i)];
  let x_446 : vec3<f32> = vs_TEXCOORD1;
  let x_449 : vec4<f32> = u_xlat4;
  let x_451 : vec3<f32> = ((vec3<f32>(x_444.x, x_444.y, x_444.z) * vec3<f32>(x_446.z, x_446.z, x_446.z)) + vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat4;
  let x_456 : i32 = u_xlati30;
  let x_459 : i32 = u_xlati30;
  let x_463 : vec4<f32> = x_284.x_MainLightWorldToShadow[((x_456 + 3i) / 4i)][((x_459 + 3i) % 4i)];
  let x_465 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_469 : f32 = vs_TEXCOORD1.y;
  let x_472 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat30 = (x_469 * x_472);
  let x_475 : f32 = x_28.unity_MatrixV[0i].z;
  let x_477 : f32 = vs_TEXCOORD1.x;
  let x_479 : f32 = u_xlat30;
  u_xlat30 = ((x_475 * x_477) + x_479);
  let x_482 : f32 = x_28.unity_MatrixV[2i].z;
  let x_484 : f32 = vs_TEXCOORD1.z;
  let x_486 : f32 = u_xlat30;
  u_xlat30 = ((x_482 * x_484) + x_486);
  let x_488 : f32 = u_xlat30;
  let x_490 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat30 = (x_488 + x_490);
  let x_492 : f32 = u_xlat30;
  let x_496 : f32 = x_28.x_ProjectionParams.y;
  u_xlat30 = (-(x_492) + -(x_496));
  let x_499 : f32 = u_xlat30;
  u_xlat30 = max(x_499, 0.0f);
  let x_501 : f32 = u_xlat30;
  let x_504 : f32 = x_28.unity_FogParams.x;
  u_xlat30 = (x_501 * x_504);
  u_xlat2.w = 1.0f;
  let x_513 : vec4<f32> = x_510.unity_SHAr;
  let x_514 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_513, x_514);
  let x_519 : vec4<f32> = x_510.unity_SHAg;
  let x_520 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_519, x_520);
  let x_525 : vec4<f32> = x_510.unity_SHAb;
  let x_526 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_525, x_526);
  let x_529 : vec4<f32> = u_xlat2;
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_529.y, x_529.z, x_529.z, x_529.x) * vec4<f32>(x_531.x, x_531.y, x_531.z, x_531.z));
  let x_536 : vec4<f32> = x_510.unity_SHBr;
  let x_537 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_536, x_537);
  let x_542 : vec4<f32> = x_510.unity_SHBg;
  let x_543 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_542, x_543);
  let x_548 : vec4<f32> = x_510.unity_SHBb;
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_548, x_549);
  let x_553 : f32 = u_xlat2.y;
  let x_555 : f32 = u_xlat2.y;
  u_xlat1.x = (x_553 * x_555);
  let x_559 : f32 = u_xlat2.x;
  let x_561 : f32 = u_xlat2.x;
  let x_564 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_559 * x_561) + -(x_564));
  let x_570 : vec4<f32> = x_510.unity_SHC;
  let x_572 : vec4<f32> = u_xlat1;
  let x_575 : vec3<f32> = u_xlat7;
  let x_576 : vec3<f32> = ((vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_572.x, x_572.x, x_572.x)) + x_575);
  let x_577 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat5;
  let x_581 : vec4<f32> = u_xlat6;
  let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat5;
  let x_588 : vec3<f32> = max(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_589 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_593 : vec4<f32> = u_xlat4;
  let x_594 : vec2<f32> = vec2<f32>(x_593.x, x_593.y);
  let x_596 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_594.x, x_594.y, x_596);
  let x_608 : vec3<f32> = txVec0;
  let x_610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_608.xy, x_608.z);
  u_xlat1.x = x_610;
  let x_615 : f32 = x_284.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_615) + 1.0f);
  let x_619 : f32 = u_xlat1.x;
  let x_621 : f32 = x_284.x_MainLightShadowParams.x;
  let x_623 : f32 = u_xlat32;
  u_xlat1.x = ((x_619 * x_621) + x_623);
  let x_628 : f32 = u_xlat4.z;
  u_xlatb32 = (0.0f >= x_628);
  let x_632 : f32 = u_xlat4.z;
  u_xlatb33 = (x_632 >= 1.0f);
  let x_634 : bool = u_xlatb32;
  let x_635 : bool = u_xlatb33;
  u_xlatb32 = (x_634 | x_635);
  let x_637 : bool = u_xlatb32;
  if (x_637) {
    x_638 = 1.0f;
  } else {
    let x_643 : f32 = u_xlat1.x;
    x_638 = x_643;
  }
  let x_644 : f32 = x_638;
  u_xlat1.x = x_644;
  let x_646 : vec3<f32> = vs_TEXCOORD1;
  let x_649 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_651 : vec3<f32> = (x_646 + -(x_649));
  let x_652 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat4;
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat32 = dot(vec3<f32>(x_654.x, x_654.y, x_654.z), vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_660 : f32 = u_xlat32;
  let x_662 : f32 = x_284.x_MainLightShadowParams.z;
  let x_665 : f32 = x_284.x_MainLightShadowParams.w;
  u_xlat33 = ((x_660 * x_662) + x_665);
  let x_667 : f32 = u_xlat33;
  u_xlat33 = clamp(x_667, 0.0f, 1.0f);
  let x_670 : f32 = u_xlat1.x;
  u_xlat4.x = (-(x_670) + 1.0f);
  let x_674 : f32 = u_xlat33;
  let x_676 : f32 = u_xlat4.x;
  let x_679 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_674 * x_676) + x_679);
  let x_683 : f32 = u_xlat1.x;
  let x_685 : f32 = x_510.unity_LightData.z;
  u_xlat1.x = (x_683 * x_685);
  let x_688 : vec4<f32> = u_xlat1;
  let x_691 : vec4<f32> = x_28.x_MainLightColor;
  let x_693 : vec3<f32> = (vec3<f32>(x_688.x, x_688.x, x_688.x) * vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat2;
  let x_699 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_696.x, x_696.y, x_696.z), vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_704 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_704, 0.0f, 1.0f);
  let x_707 : vec4<f32> = u_xlat1;
  let x_709 : vec4<f32> = u_xlat4;
  let x_711 : vec3<f32> = (vec3<f32>(x_707.x, x_707.x, x_707.x) * vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_715 : f32 = x_42.x_SpecColor.w;
  u_xlat1.x = ((x_715 * 10.0f) + 1.0f);
  let x_721 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_721);
  let x_724 : vec3<f32> = u_xlat3;
  let x_725 : vec3<f32> = u_xlat10;
  let x_729 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat7 = ((x_724 * vec3<f32>(x_725.x, x_725.x, x_725.x)) + vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec3<f32> = u_xlat7;
  let x_733 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_732, x_733);
  let x_735 : f32 = u_xlat33;
  u_xlat33 = max(x_735, 1.17549435e-38f);
  let x_738 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_738);
  let x_740 : f32 = u_xlat33;
  let x_742 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_740, x_740, x_740) * x_742);
  let x_744 : vec4<f32> = u_xlat2;
  let x_746 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_744.x, x_744.y, x_744.z), x_746);
  let x_748 : f32 = u_xlat33;
  u_xlat33 = clamp(x_748, 0.0f, 1.0f);
  let x_750 : f32 = u_xlat33;
  u_xlat33 = log2(x_750);
  let x_753 : f32 = u_xlat1.x;
  let x_754 : f32 = u_xlat33;
  u_xlat33 = (x_753 * x_754);
  let x_756 : f32 = u_xlat33;
  u_xlat33 = exp2(x_756);
  let x_758 : f32 = u_xlat33;
  let x_761 : vec4<f32> = x_42.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_758, x_758, x_758) * vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat4;
  let x_766 : vec3<f32> = u_xlat7;
  let x_767 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) * x_766);
  let x_768 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat6;
  let x_772 : vec4<f32> = u_xlat1;
  let x_775 : vec4<f32> = u_xlat4;
  let x_777 : vec3<f32> = ((vec3<f32>(x_770.x, x_770.y, x_770.z) * vec3<f32>(x_772.y, x_772.z, x_772.w)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_781 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_783 : f32 = x_510.unity_LightData.y;
  u_xlat33 = min(x_781, x_783);
  let x_786 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_786));
  let x_789 : f32 = u_xlat32;
  let x_792 : f32 = x_284.x_AdditionalShadowFadeParams.x;
  let x_795 : f32 = x_284.x_AdditionalShadowFadeParams.y;
  u_xlat32 = ((x_789 * x_792) + x_795);
  let x_797 : f32 = u_xlat32;
  u_xlat32 = clamp(x_797, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_809 : u32 = u_xlatu_loop_1;
    let x_810 : u32 = u_xlatu33;
    if ((x_809 < x_810)) {
    } else {
      break;
    }
    let x_813 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_813 >> 2u);
    let x_816 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_816 & 3u));
    let x_820 : u32 = u_xlatu35;
    let x_823 : vec4<f32> = x_510.unity_LightIndices[bitcast<i32>(x_820)];
    let x_833 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_838 : vec4<u32> = indexable[x_833];
    u_xlat35 = dot(x_823, bitcast<vec4<f32>>(x_838));
    let x_842 : f32 = u_xlat35;
    u_xlati35 = i32(x_842);
    let x_844 : vec3<f32> = vs_TEXCOORD1;
    let x_855 : i32 = u_xlati35;
    let x_857 : vec4<f32> = x_854.x_AdditionalLightsPosition[x_855];
    let x_860 : i32 = u_xlati35;
    let x_862 : vec4<f32> = x_854.x_AdditionalLightsPosition[x_860];
    u_xlat7 = ((-(x_844) * vec3<f32>(x_857.w, x_857.w, x_857.w)) + vec3<f32>(x_862.x, x_862.y, x_862.z));
    let x_866 : vec3<f32> = u_xlat7;
    let x_867 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_866, x_867);
    let x_869 : f32 = u_xlat36;
    u_xlat36 = max(x_869, 0.00006103515625f);
    let x_872 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_872);
    let x_874 : f32 = u_xlat37;
    let x_876 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_874, x_874, x_874) * x_876);
    let x_878 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_878);
    let x_880 : f32 = u_xlat36;
    let x_881 : i32 = u_xlati35;
    let x_883 : f32 = x_854.x_AdditionalLightsAttenuation[x_881].x;
    u_xlat36 = (x_880 * x_883);
    let x_885 : f32 = u_xlat36;
    let x_887 : f32 = u_xlat36;
    u_xlat36 = ((-(x_885) * x_887) + 1.0f);
    let x_890 : f32 = u_xlat36;
    u_xlat36 = max(x_890, 0.0f);
    let x_892 : f32 = u_xlat36;
    let x_893 : f32 = u_xlat36;
    u_xlat36 = (x_892 * x_893);
    let x_895 : f32 = u_xlat36;
    let x_896 : f32 = u_xlat37;
    u_xlat36 = (x_895 * x_896);
    let x_898 : i32 = u_xlati35;
    let x_900 : vec4<f32> = x_854.x_AdditionalLightsSpotDir[x_898];
    let x_902 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_900.x, x_900.y, x_900.z), x_902);
    let x_904 : f32 = u_xlat37;
    let x_905 : i32 = u_xlati35;
    let x_907 : f32 = x_854.x_AdditionalLightsAttenuation[x_905].z;
    let x_909 : i32 = u_xlati35;
    let x_911 : f32 = x_854.x_AdditionalLightsAttenuation[x_909].w;
    u_xlat37 = ((x_904 * x_907) + x_911);
    let x_913 : f32 = u_xlat37;
    u_xlat37 = clamp(x_913, 0.0f, 1.0f);
    let x_915 : f32 = u_xlat37;
    let x_916 : f32 = u_xlat37;
    u_xlat37 = (x_915 * x_916);
    let x_918 : f32 = u_xlat36;
    let x_919 : f32 = u_xlat37;
    u_xlat36 = (x_918 * x_919);
    let x_923 : i32 = u_xlati35;
    let x_925 : f32 = x_284.x_AdditionalShadowParams[x_923].w;
    u_xlati37 = i32(x_925);
    let x_930 : i32 = u_xlati37;
    u_xlatb8.x = (x_930 >= 0i);
    let x_934 : bool = u_xlatb8.x;
    if (x_934) {
      let x_938 : i32 = u_xlati35;
      let x_940 : f32 = x_284.x_AdditionalShadowParams[x_938].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_940, x_940, x_940, x_940))));
      let x_946 : bool = u_xlatb8.x;
      if (x_946) {
        let x_949 : vec3<f32> = u_xlat7;
        let x_952 : vec3<f32> = u_xlat7;
        let x_955 : vec4<bool> = (abs(vec4<f32>(x_949.z, x_949.z, x_949.y, x_949.z)) >= abs(vec4<f32>(x_952.x, x_952.y, x_952.x, x_952.x)));
        u_xlatb8 = vec3<bool>(x_955.x, x_955.y, x_955.z);
        let x_958 : bool = u_xlatb8.y;
        let x_960 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_958 & x_960);
        let x_964 : vec3<f32> = u_xlat7;
        let x_967 : vec4<bool> = (-(vec4<f32>(x_964.z, x_964.y, x_964.x, x_964.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_967.x, x_967.y, x_967.z);
        let x_971 : bool = u_xlatb9.x;
        u_xlat18.x = select(4.0f, 5.0f, x_971);
        let x_976 : bool = u_xlatb9.y;
        u_xlat18.z = select(2.0f, 3.0f, x_976);
        let x_981 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_981);
        let x_986 : bool = u_xlatb8.z;
        if (x_986) {
          let x_991 : f32 = u_xlat18.z;
          x_987 = x_991;
        } else {
          let x_994 : f32 = u_xlat9.x;
          x_987 = x_994;
        }
        let x_995 : f32 = x_987;
        u_xlat28 = x_995;
        let x_998 : bool = u_xlatb8.x;
        if (x_998) {
          let x_1003 : f32 = u_xlat18.x;
          x_999 = x_1003;
        } else {
          let x_1005 : f32 = u_xlat28;
          x_999 = x_1005;
        }
        let x_1006 : f32 = x_999;
        u_xlat8.x = x_1006;
        let x_1008 : i32 = u_xlati35;
        let x_1010 : f32 = x_284.x_AdditionalShadowParams[x_1008].w;
        u_xlat18.x = trunc(x_1010);
        let x_1014 : f32 = u_xlat8.x;
        let x_1016 : f32 = u_xlat18.x;
        u_xlat8.x = (x_1014 + x_1016);
        let x_1020 : f32 = u_xlat8.x;
        u_xlati37 = i32(x_1020);
      }
      let x_1022 : i32 = u_xlati37;
      u_xlati37 = (x_1022 << bitcast<u32>(2i));
      let x_1024 : vec3<f32> = vs_TEXCOORD1;
      let x_1027 : i32 = u_xlati37;
      let x_1030 : i32 = u_xlati37;
      let x_1034 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_1027 + 1i) / 4i)][((x_1030 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_1024.y, x_1024.y, x_1024.y, x_1024.y) * x_1034);
      let x_1036 : i32 = u_xlati37;
      let x_1038 : i32 = u_xlati37;
      let x_1041 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[(x_1036 / 4i)][(x_1038 % 4i)];
      let x_1042 : vec3<f32> = vs_TEXCOORD1;
      let x_1045 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1041 * vec4<f32>(x_1042.x, x_1042.x, x_1042.x, x_1042.x)) + x_1045);
      let x_1047 : i32 = u_xlati37;
      let x_1050 : i32 = u_xlati37;
      let x_1054 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_1047 + 2i) / 4i)][((x_1050 + 2i) % 4i)];
      let x_1055 : vec3<f32> = vs_TEXCOORD1;
      let x_1058 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1054 * vec4<f32>(x_1055.z, x_1055.z, x_1055.z, x_1055.z)) + x_1058);
      let x_1060 : vec4<f32> = u_xlat8;
      let x_1061 : i32 = u_xlati37;
      let x_1064 : i32 = u_xlati37;
      let x_1068 : vec4<f32> = x_284.x_AdditionalLightsWorldToShadow[((x_1061 + 3i) / 4i)][((x_1064 + 3i) % 4i)];
      u_xlat8 = (x_1060 + x_1068);
      let x_1070 : vec4<f32> = u_xlat8;
      let x_1072 : vec4<f32> = u_xlat8;
      let x_1074 : vec3<f32> = (vec3<f32>(x_1070.x, x_1070.y, x_1070.z) / vec3<f32>(x_1072.w, x_1072.w, x_1072.w));
      let x_1075 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
      let x_1078 : vec4<f32> = u_xlat8;
      let x_1079 : vec2<f32> = vec2<f32>(x_1078.x, x_1078.y);
      let x_1081 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
      let x_1089 : vec3<f32> = txVec1;
      let x_1091 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1089.xy, x_1089.z);
      u_xlat37 = x_1091;
      let x_1092 : i32 = u_xlati35;
      let x_1094 : f32 = x_284.x_AdditionalShadowParams[x_1092].x;
      u_xlat8.x = (1.0f + -(x_1094));
      let x_1098 : f32 = u_xlat37;
      let x_1099 : i32 = u_xlati35;
      let x_1101 : f32 = x_284.x_AdditionalShadowParams[x_1099].x;
      let x_1104 : f32 = u_xlat8.x;
      u_xlat37 = ((x_1098 * x_1101) + x_1104);
      let x_1107 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_1107);
      let x_1112 : f32 = u_xlat8.z;
      u_xlatb18 = (x_1112 >= 1.0f);
      let x_1114 : bool = u_xlatb18;
      let x_1116 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_1114 | x_1116);
      let x_1120 : bool = u_xlatb8.x;
      let x_1121 : f32 = u_xlat37;
      u_xlat37 = select(x_1121, 1.0f, x_1120);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1124 : f32 = u_xlat37;
    u_xlat8.x = (-(x_1124) + 1.0f);
    let x_1128 : f32 = u_xlat32;
    let x_1130 : f32 = u_xlat8.x;
    let x_1132 : f32 = u_xlat37;
    u_xlat37 = ((x_1128 * x_1130) + x_1132);
    let x_1134 : f32 = u_xlat36;
    let x_1135 : f32 = u_xlat37;
    u_xlat36 = (x_1134 * x_1135);
    let x_1137 : f32 = u_xlat36;
    let x_1139 : i32 = u_xlati35;
    let x_1141 : vec4<f32> = x_854.x_AdditionalLightsColor[x_1139];
    let x_1143 : vec3<f32> = (vec3<f32>(x_1137, x_1137, x_1137) * vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
    let x_1144 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
    let x_1146 : vec4<f32> = u_xlat2;
    let x_1148 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1146.x, x_1146.y, x_1146.z), x_1148);
    let x_1150 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1150, 0.0f, 1.0f);
    let x_1152 : f32 = u_xlat35;
    let x_1154 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1152, x_1152, x_1152) * vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
    let x_1157 : vec3<f32> = u_xlat3;
    let x_1158 : vec3<f32> = u_xlat10;
    let x_1161 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1157 * vec3<f32>(x_1158.x, x_1158.x, x_1158.x)) + x_1161);
    let x_1163 : vec3<f32> = u_xlat7;
    let x_1164 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1163, x_1164);
    let x_1166 : f32 = u_xlat35;
    u_xlat35 = max(x_1166, 1.17549435e-38f);
    let x_1168 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1168);
    let x_1170 : f32 = u_xlat35;
    let x_1172 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1170, x_1170, x_1170) * x_1172);
    let x_1174 : vec4<f32> = u_xlat2;
    let x_1176 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_1174.x, x_1174.y, x_1174.z), x_1176);
    let x_1178 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1178, 0.0f, 1.0f);
    let x_1180 : f32 = u_xlat35;
    u_xlat35 = log2(x_1180);
    let x_1183 : f32 = u_xlat1.x;
    let x_1184 : f32 = u_xlat35;
    u_xlat35 = (x_1183 * x_1184);
    let x_1186 : f32 = u_xlat35;
    u_xlat35 = exp2(x_1186);
    let x_1188 : f32 = u_xlat35;
    let x_1191 : vec4<f32> = x_42.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1188, x_1188, x_1188) * vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
    let x_1194 : vec3<f32> = u_xlat7;
    let x_1195 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1194 * vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
    let x_1198 : vec3<f32> = u_xlat9;
    let x_1199 : vec4<f32> = u_xlat1;
    let x_1202 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1198 * vec3<f32>(x_1199.y, x_1199.z, x_1199.w)) + x_1202);
    let x_1204 : vec4<f32> = u_xlat6;
    let x_1206 : vec3<f32> = u_xlat7;
    let x_1207 : vec3<f32> = (vec3<f32>(x_1204.x, x_1204.y, x_1204.z) + x_1206);
    let x_1208 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);

    continuing {
      let x_1210 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1210 + bitcast<u32>(1i));
    }
  }
  let x_1212 : vec4<f32> = u_xlat5;
  let x_1214 : vec4<f32> = u_xlat1;
  let x_1217 : vec4<f32> = u_xlat4;
  let x_1219 : vec3<f32> = ((vec3<f32>(x_1212.x, x_1212.y, x_1212.z) * vec3<f32>(x_1214.y, x_1214.z, x_1214.w)) + vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
  let x_1220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  let x_1222 : vec4<f32> = u_xlat6;
  let x_1224 : vec4<f32> = u_xlat1;
  let x_1226 : vec3<f32> = (vec3<f32>(x_1222.x, x_1222.y, x_1222.z) + vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
  let x_1229 : f32 = u_xlat30;
  let x_1230 : f32 = u_xlat30;
  u_xlat10.x = (x_1229 * -(x_1230));
  let x_1235 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_1235);
  let x_1238 : vec4<f32> = u_xlat1;
  let x_1241 : vec4<f32> = x_28.unity_FogColor;
  let x_1244 : vec3<f32> = (vec3<f32>(x_1238.x, x_1238.y, x_1238.z) + -(vec3<f32>(x_1241.x, x_1241.y, x_1241.z)));
  let x_1245 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
  let x_1249 : vec3<f32> = u_xlat10;
  let x_1251 : vec4<f32> = u_xlat1;
  let x_1255 : vec4<f32> = x_28.unity_FogColor;
  let x_1257 : vec3<f32> = ((vec3<f32>(x_1249.x, x_1249.x, x_1249.x) * vec3<f32>(x_1251.x, x_1251.y, x_1251.z)) + vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1261 : f32 = x_42.x_Surface;
  u_xlatb10 = (x_1261 == 1.0f);
  let x_1263 : bool = u_xlatb10;
  let x_1264 : bool = u_xlatb20;
  u_xlatb10 = (x_1263 | x_1264);
  let x_1266 : bool = u_xlatb10;
  if (x_1266) {
    let x_1271 : f32 = u_xlat0.x;
    x_1267 = x_1271;
  } else {
    x_1267 = 1.0f;
  }
  let x_1273 : f32 = x_1267;
  SV_Target0.w = x_1273;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


