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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

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

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_269 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu30 : u32;

var<private> u_xlati30 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : f32;

var<private> u_xlatb32 : bool;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

@group(1) @binding(2) var<uniform> x_635 : UnityPerDraw;

var<private> u_xlatu33 : u32;

var<private> u_xlatu35 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

@group(1) @binding(1) var<uniform> x_801 : AdditionalLights;

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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu34 : u32;

var<private> u_xlatb35 : bool;

fn main_1() {
  var x_61 : f32;
  var x_119 : f32;
  var txVec0 : vec3<f32>;
  var x_586 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_934 : f32;
  var x_946 : f32;
  var txVec1 : vec3<f32>;
  var x_1208 : f32;
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
  u_xlat2 = vec3<f32>(x_155.x, x_155.y, x_155.w);
  let x_158 : f32 = u_xlat2.x;
  let x_161 : f32 = u_xlat2.z;
  u_xlat2.x = (x_158 * x_161);
  let x_164 : vec3<f32> = u_xlat2;
  let x_171 : vec2<f32> = ((vec2<f32>(x_164.x, x_164.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_172 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_171.x, x_172.y, x_171.y);
  let x_174 : vec3<f32> = u_xlat10;
  let x_176 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_174.x, x_174.z), vec2<f32>(x_176.x, x_176.z));
  let x_181 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_181, 1.0f);
  let x_185 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_185) + 1.0f);
  let x_190 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_190);
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_194, 0.0000000000000001f);
  let x_198 : vec3<f32> = u_xlat10;
  let x_202 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_198.z, x_198.z, x_198.z) * vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec3<f32> = u_xlat10;
  let x_208 : vec4<f32> = vs_TEXCOORD3;
  let x_211 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_205.x, x_205.x, x_205.x) * vec3<f32>(x_208.x, x_208.y, x_208.z)) + x_211);
  let x_213 : vec4<f32> = u_xlat1;
  let x_216 : vec4<f32> = vs_TEXCOORD2;
  let x_219 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_213.x, x_213.x, x_213.x) * vec3<f32>(x_216.x, x_216.y, x_216.z)) + x_219);
  let x_221 : vec3<f32> = u_xlat2;
  let x_222 : vec3<f32> = u_xlat2;
  u_xlat10.x = dot(x_221, x_222);
  let x_226 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_226);
  let x_229 : vec3<f32> = u_xlat10;
  let x_231 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_229.x, x_229.x, x_229.x) * x_231);
  let x_236 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_236;
  let x_239 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_239;
  let x_243 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_243;
  let x_245 : vec3<f32> = u_xlat3;
  let x_246 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_245, x_246);
  let x_250 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_250, 0.00006103515625f);
  let x_255 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_255);
  let x_261 : vec3<f32> = vs_TEXCOORD1;
  let x_271 : vec4<f32> = x_269.x_CascadeShadowSplitSpheres0;
  let x_274 : vec3<f32> = (x_261 + -(vec3<f32>(x_271.x, x_271.y, x_271.z)));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : vec3<f32> = vs_TEXCOORD1;
  let x_281 : vec4<f32> = x_269.x_CascadeShadowSplitSpheres1;
  let x_284 : vec3<f32> = (x_278 + -(vec3<f32>(x_281.x, x_281.y, x_281.z)));
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : vec3<f32> = vs_TEXCOORD1;
  let x_291 : vec4<f32> = x_269.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_288 + -(vec3<f32>(x_291.x, x_291.y, x_291.z)));
  let x_296 : vec3<f32> = vs_TEXCOORD1;
  let x_298 : vec4<f32> = x_269.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_296 + -(vec3<f32>(x_298.x, x_298.y, x_298.z)));
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_308.x, x_308.y, x_308.z), vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_314 : vec3<f32> = u_xlat6;
  let x_315 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_314, x_315);
  let x_318 : vec3<f32> = u_xlat7;
  let x_319 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_318, x_319);
  let x_325 : vec4<f32> = u_xlat4;
  let x_328 : vec4<f32> = x_269.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_325 < x_328);
  let x_331 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_331);
  let x_335 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_335);
  let x_339 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_339);
  let x_343 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_343);
  let x_347 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_347);
  let x_352 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_352);
  let x_356 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_356);
  let x_359 : vec4<f32> = u_xlat4;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) + vec3<f32>(x_361.y, x_361.z, x_361.w));
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec4<f32> = u_xlat4;
  let x_369 : vec3<f32> = max(vec3<f32>(x_366.x, x_366.y, x_366.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_370.x, x_369.x, x_369.y, x_369.z);
  let x_372 : vec4<f32> = u_xlat5;
  u_xlat30 = dot(x_372, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_377 : f32 = u_xlat30;
  u_xlat30 = (-(x_377) + 4.0f);
  let x_382 : f32 = u_xlat30;
  u_xlatu30 = u32(x_382);
  let x_386 : u32 = u_xlatu30;
  u_xlati30 = (bitcast<i32>(x_386) << bitcast<u32>(2i));
  let x_389 : vec3<f32> = vs_TEXCOORD1;
  let x_391 : i32 = u_xlati30;
  let x_394 : i32 = u_xlati30;
  let x_398 : vec4<f32> = x_269.x_MainLightWorldToShadow[((x_391 + 1i) / 4i)][((x_394 + 1i) % 4i)];
  let x_400 : vec3<f32> = (vec3<f32>(x_389.y, x_389.y, x_389.y) * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : i32 = u_xlati30;
  let x_405 : i32 = u_xlati30;
  let x_408 : vec4<f32> = x_269.x_MainLightWorldToShadow[(x_403 / 4i)][(x_405 % 4i)];
  let x_410 : vec3<f32> = vs_TEXCOORD1;
  let x_413 : vec4<f32> = u_xlat4;
  let x_415 : vec3<f32> = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_410.x, x_410.x, x_410.x)) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : i32 = u_xlati30;
  let x_421 : i32 = u_xlati30;
  let x_425 : vec4<f32> = x_269.x_MainLightWorldToShadow[((x_418 + 2i) / 4i)][((x_421 + 2i) % 4i)];
  let x_427 : vec3<f32> = vs_TEXCOORD1;
  let x_430 : vec4<f32> = u_xlat4;
  let x_432 : vec3<f32> = ((vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427.z, x_427.z, x_427.z)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : vec4<f32> = u_xlat4;
  let x_437 : i32 = u_xlati30;
  let x_440 : i32 = u_xlati30;
  let x_444 : vec4<f32> = x_269.x_MainLightWorldToShadow[((x_437 + 3i) / 4i)][((x_440 + 3i) % 4i)];
  let x_446 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) + vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_450 : f32 = vs_TEXCOORD1.y;
  let x_453 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat30 = (x_450 * x_453);
  let x_456 : f32 = x_28.unity_MatrixV[0i].z;
  let x_458 : f32 = vs_TEXCOORD1.x;
  let x_460 : f32 = u_xlat30;
  u_xlat30 = ((x_456 * x_458) + x_460);
  let x_463 : f32 = x_28.unity_MatrixV[2i].z;
  let x_465 : f32 = vs_TEXCOORD1.z;
  let x_467 : f32 = u_xlat30;
  u_xlat30 = ((x_463 * x_465) + x_467);
  let x_469 : f32 = u_xlat30;
  let x_471 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat30 = (x_469 + x_471);
  let x_473 : f32 = u_xlat30;
  let x_477 : f32 = x_28.x_ProjectionParams.y;
  u_xlat30 = (-(x_473) + -(x_477));
  let x_480 : f32 = u_xlat30;
  u_xlat30 = max(x_480, 0.0f);
  let x_482 : f32 = u_xlat30;
  let x_485 : f32 = x_28.unity_FogParams.x;
  u_xlat30 = (x_482 * x_485);
  let x_493 : vec2<f32> = vs_TEXCOORD7;
  let x_495 : f32 = x_28.x_GlobalMipBias.x;
  let x_496 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_493, x_495);
  u_xlat5 = x_496;
  let x_501 : vec2<f32> = vs_TEXCOORD7;
  let x_503 : f32 = x_28.x_GlobalMipBias.x;
  let x_504 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_501, x_503);
  u_xlat6 = vec3<f32>(x_504.x, x_504.y, x_504.z);
  let x_506 : vec4<f32> = u_xlat5;
  let x_510 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_511 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec3<f32> = u_xlat2;
  let x_514 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(x_513, vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_519 : f32 = u_xlat1.x;
  u_xlat1.x = (x_519 + 0.5f);
  let x_522 : vec4<f32> = u_xlat1;
  let x_524 : vec3<f32> = u_xlat6;
  let x_525 : vec3<f32> = (vec3<f32>(x_522.x, x_522.x, x_522.x) * x_524);
  let x_526 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_529 : f32 = u_xlat5.w;
  u_xlat1.x = max(x_529, 0.00009999999747378752f);
  let x_532 : vec4<f32> = u_xlat5;
  let x_534 : vec4<f32> = u_xlat1;
  let x_536 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) / vec3<f32>(x_534.x, x_534.x, x_534.x));
  let x_537 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_541 : vec4<f32> = u_xlat4;
  let x_542 : vec2<f32> = vec2<f32>(x_541.x, x_541.y);
  let x_544 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_542.x, x_542.y, x_544);
  let x_556 : vec3<f32> = txVec0;
  let x_558 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_556.xy, x_556.z);
  u_xlat1.x = x_558;
  let x_563 : f32 = x_269.x_MainLightShadowParams.x;
  u_xlat32 = (-(x_563) + 1.0f);
  let x_567 : f32 = u_xlat1.x;
  let x_569 : f32 = x_269.x_MainLightShadowParams.x;
  let x_571 : f32 = u_xlat32;
  u_xlat1.x = ((x_567 * x_569) + x_571);
  let x_576 : f32 = u_xlat4.z;
  u_xlatb32 = (0.0f >= x_576);
  let x_580 : f32 = u_xlat4.z;
  u_xlatb33 = (x_580 >= 1.0f);
  let x_582 : bool = u_xlatb32;
  let x_583 : bool = u_xlatb33;
  u_xlatb32 = (x_582 | x_583);
  let x_585 : bool = u_xlatb32;
  if (x_585) {
    x_586 = 1.0f;
  } else {
    let x_591 : f32 = u_xlat1.x;
    x_586 = x_591;
  }
  let x_592 : f32 = x_586;
  u_xlat1.x = x_592;
  let x_594 : vec3<f32> = vs_TEXCOORD1;
  let x_597 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_599 : vec3<f32> = (x_594 + -(x_597));
  let x_600 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : vec4<f32> = u_xlat4;
  u_xlat32 = dot(vec3<f32>(x_602.x, x_602.y, x_602.z), vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_608 : f32 = u_xlat32;
  let x_610 : f32 = x_269.x_MainLightShadowParams.z;
  let x_613 : f32 = x_269.x_MainLightShadowParams.w;
  u_xlat33 = ((x_608 * x_610) + x_613);
  let x_615 : f32 = u_xlat33;
  u_xlat33 = clamp(x_615, 0.0f, 1.0f);
  let x_618 : f32 = u_xlat1.x;
  u_xlat4.x = (-(x_618) + 1.0f);
  let x_622 : f32 = u_xlat33;
  let x_624 : f32 = u_xlat4.x;
  let x_627 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_622 * x_624) + x_627);
  let x_631 : f32 = u_xlat1.x;
  let x_637 : f32 = x_635.unity_LightData.z;
  u_xlat1.x = (x_631 * x_637);
  let x_640 : vec4<f32> = u_xlat1;
  let x_643 : vec4<f32> = x_28.x_MainLightColor;
  let x_645 : vec3<f32> = (vec3<f32>(x_640.x, x_640.x, x_640.x) * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : vec3<f32> = u_xlat2;
  let x_650 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(x_648, vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_655 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_655, 0.0f, 1.0f);
  let x_658 : vec4<f32> = u_xlat1;
  let x_660 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec3<f32>(x_658.x, x_658.x, x_658.x) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_664 : f32 = x_42.x_SpecColor.w;
  u_xlat1.x = ((x_664 * 10.0f) + 1.0f);
  let x_670 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_670);
  let x_673 : vec3<f32> = u_xlat3;
  let x_674 : vec3<f32> = u_xlat10;
  let x_678 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat7 = ((x_673 * vec3<f32>(x_674.x, x_674.x, x_674.x)) + vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec3<f32> = u_xlat7;
  let x_682 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_681, x_682);
  let x_684 : f32 = u_xlat33;
  u_xlat33 = max(x_684, 1.17549435e-38f);
  let x_687 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_687);
  let x_689 : f32 = u_xlat33;
  let x_691 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_689, x_689, x_689) * x_691);
  let x_693 : vec3<f32> = u_xlat2;
  let x_694 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_693, x_694);
  let x_696 : f32 = u_xlat33;
  u_xlat33 = clamp(x_696, 0.0f, 1.0f);
  let x_698 : f32 = u_xlat33;
  u_xlat33 = log2(x_698);
  let x_701 : f32 = u_xlat1.x;
  let x_702 : f32 = u_xlat33;
  u_xlat33 = (x_701 * x_702);
  let x_704 : f32 = u_xlat33;
  u_xlat33 = exp2(x_704);
  let x_706 : f32 = u_xlat33;
  let x_709 : vec4<f32> = x_42.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_706, x_706, x_706) * vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : vec4<f32> = u_xlat4;
  let x_714 : vec3<f32> = u_xlat7;
  let x_715 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) * x_714);
  let x_716 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec3<f32> = u_xlat6;
  let x_719 : vec4<f32> = u_xlat1;
  let x_722 : vec4<f32> = u_xlat4;
  let x_724 : vec3<f32> = ((x_718 * vec3<f32>(x_719.y, x_719.z, x_719.w)) + vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_728 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_730 : f32 = x_635.unity_LightData.y;
  u_xlat33 = min(x_728, x_730);
  let x_733 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_733));
  let x_736 : f32 = u_xlat32;
  let x_739 : f32 = x_269.x_AdditionalShadowFadeParams.x;
  let x_742 : f32 = x_269.x_AdditionalShadowFadeParams.y;
  u_xlat32 = ((x_736 * x_739) + x_742);
  let x_744 : f32 = u_xlat32;
  u_xlat32 = clamp(x_744, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_756 : u32 = u_xlatu_loop_1;
    let x_757 : u32 = u_xlatu33;
    if ((x_756 < x_757)) {
    } else {
      break;
    }
    let x_760 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_760 >> 2u);
    let x_763 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_763 & 3u));
    let x_767 : u32 = u_xlatu35;
    let x_770 : vec4<f32> = x_635.unity_LightIndices[bitcast<i32>(x_767)];
    let x_780 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_785 : vec4<u32> = indexable[x_780];
    u_xlat35 = dot(x_770, bitcast<vec4<f32>>(x_785));
    let x_789 : f32 = u_xlat35;
    u_xlati35 = i32(x_789);
    let x_791 : vec3<f32> = vs_TEXCOORD1;
    let x_802 : i32 = u_xlati35;
    let x_804 : vec4<f32> = x_801.x_AdditionalLightsPosition[x_802];
    let x_807 : i32 = u_xlati35;
    let x_809 : vec4<f32> = x_801.x_AdditionalLightsPosition[x_807];
    u_xlat7 = ((-(x_791) * vec3<f32>(x_804.w, x_804.w, x_804.w)) + vec3<f32>(x_809.x, x_809.y, x_809.z));
    let x_813 : vec3<f32> = u_xlat7;
    let x_814 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_813, x_814);
    let x_816 : f32 = u_xlat36;
    u_xlat36 = max(x_816, 0.00006103515625f);
    let x_819 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_819);
    let x_821 : f32 = u_xlat37;
    let x_823 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_821, x_821, x_821) * x_823);
    let x_825 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_825);
    let x_827 : f32 = u_xlat36;
    let x_828 : i32 = u_xlati35;
    let x_830 : f32 = x_801.x_AdditionalLightsAttenuation[x_828].x;
    u_xlat36 = (x_827 * x_830);
    let x_832 : f32 = u_xlat36;
    let x_834 : f32 = u_xlat36;
    u_xlat36 = ((-(x_832) * x_834) + 1.0f);
    let x_837 : f32 = u_xlat36;
    u_xlat36 = max(x_837, 0.0f);
    let x_839 : f32 = u_xlat36;
    let x_840 : f32 = u_xlat36;
    u_xlat36 = (x_839 * x_840);
    let x_842 : f32 = u_xlat36;
    let x_843 : f32 = u_xlat37;
    u_xlat36 = (x_842 * x_843);
    let x_845 : i32 = u_xlati35;
    let x_847 : vec4<f32> = x_801.x_AdditionalLightsSpotDir[x_845];
    let x_849 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_847.x, x_847.y, x_847.z), x_849);
    let x_851 : f32 = u_xlat37;
    let x_852 : i32 = u_xlati35;
    let x_854 : f32 = x_801.x_AdditionalLightsAttenuation[x_852].z;
    let x_856 : i32 = u_xlati35;
    let x_858 : f32 = x_801.x_AdditionalLightsAttenuation[x_856].w;
    u_xlat37 = ((x_851 * x_854) + x_858);
    let x_860 : f32 = u_xlat37;
    u_xlat37 = clamp(x_860, 0.0f, 1.0f);
    let x_862 : f32 = u_xlat37;
    let x_863 : f32 = u_xlat37;
    u_xlat37 = (x_862 * x_863);
    let x_865 : f32 = u_xlat36;
    let x_866 : f32 = u_xlat37;
    u_xlat36 = (x_865 * x_866);
    let x_870 : i32 = u_xlati35;
    let x_872 : f32 = x_269.x_AdditionalShadowParams[x_870].w;
    u_xlati37 = i32(x_872);
    let x_877 : i32 = u_xlati37;
    u_xlatb8.x = (x_877 >= 0i);
    let x_881 : bool = u_xlatb8.x;
    if (x_881) {
      let x_885 : i32 = u_xlati35;
      let x_887 : f32 = x_269.x_AdditionalShadowParams[x_885].z;
      u_xlatb8.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_887, x_887, x_887, x_887))));
      let x_893 : bool = u_xlatb8.x;
      if (x_893) {
        let x_896 : vec3<f32> = u_xlat7;
        let x_899 : vec3<f32> = u_xlat7;
        let x_902 : vec4<bool> = (abs(vec4<f32>(x_896.z, x_896.z, x_896.y, x_896.z)) >= abs(vec4<f32>(x_899.x, x_899.y, x_899.x, x_899.x)));
        u_xlatb8 = vec3<bool>(x_902.x, x_902.y, x_902.z);
        let x_905 : bool = u_xlatb8.y;
        let x_907 : bool = u_xlatb8.x;
        u_xlatb8.x = (x_905 & x_907);
        let x_911 : vec3<f32> = u_xlat7;
        let x_914 : vec4<bool> = (-(vec4<f32>(x_911.z, x_911.y, x_911.x, x_911.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb9 = vec3<bool>(x_914.x, x_914.y, x_914.z);
        let x_918 : bool = u_xlatb9.x;
        u_xlat18.x = select(4.0f, 5.0f, x_918);
        let x_923 : bool = u_xlatb9.y;
        u_xlat18.z = select(2.0f, 3.0f, x_923);
        let x_928 : bool = u_xlatb9.z;
        u_xlat9.x = select(0.0f, 1.0f, x_928);
        let x_933 : bool = u_xlatb8.z;
        if (x_933) {
          let x_938 : f32 = u_xlat18.z;
          x_934 = x_938;
        } else {
          let x_941 : f32 = u_xlat9.x;
          x_934 = x_941;
        }
        let x_942 : f32 = x_934;
        u_xlat28 = x_942;
        let x_945 : bool = u_xlatb8.x;
        if (x_945) {
          let x_950 : f32 = u_xlat18.x;
          x_946 = x_950;
        } else {
          let x_952 : f32 = u_xlat28;
          x_946 = x_952;
        }
        let x_953 : f32 = x_946;
        u_xlat8.x = x_953;
        let x_955 : i32 = u_xlati35;
        let x_957 : f32 = x_269.x_AdditionalShadowParams[x_955].w;
        u_xlat18.x = trunc(x_957);
        let x_961 : f32 = u_xlat8.x;
        let x_963 : f32 = u_xlat18.x;
        u_xlat8.x = (x_961 + x_963);
        let x_967 : f32 = u_xlat8.x;
        u_xlati37 = i32(x_967);
      }
      let x_969 : i32 = u_xlati37;
      u_xlati37 = (x_969 << bitcast<u32>(2i));
      let x_971 : vec3<f32> = vs_TEXCOORD1;
      let x_974 : i32 = u_xlati37;
      let x_977 : i32 = u_xlati37;
      let x_981 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[((x_974 + 1i) / 4i)][((x_977 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_971.y, x_971.y, x_971.y, x_971.y) * x_981);
      let x_983 : i32 = u_xlati37;
      let x_985 : i32 = u_xlati37;
      let x_988 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[(x_983 / 4i)][(x_985 % 4i)];
      let x_989 : vec3<f32> = vs_TEXCOORD1;
      let x_992 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_988 * vec4<f32>(x_989.x, x_989.x, x_989.x, x_989.x)) + x_992);
      let x_994 : i32 = u_xlati37;
      let x_997 : i32 = u_xlati37;
      let x_1001 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[((x_994 + 2i) / 4i)][((x_997 + 2i) % 4i)];
      let x_1002 : vec3<f32> = vs_TEXCOORD1;
      let x_1005 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_1001 * vec4<f32>(x_1002.z, x_1002.z, x_1002.z, x_1002.z)) + x_1005);
      let x_1007 : vec4<f32> = u_xlat8;
      let x_1008 : i32 = u_xlati37;
      let x_1011 : i32 = u_xlati37;
      let x_1015 : vec4<f32> = x_269.x_AdditionalLightsWorldToShadow[((x_1008 + 3i) / 4i)][((x_1011 + 3i) % 4i)];
      u_xlat8 = (x_1007 + x_1015);
      let x_1017 : vec4<f32> = u_xlat8;
      let x_1019 : vec4<f32> = u_xlat8;
      let x_1021 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.y, x_1017.z) / vec3<f32>(x_1019.w, x_1019.w, x_1019.w));
      let x_1022 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
      let x_1025 : vec4<f32> = u_xlat8;
      let x_1026 : vec2<f32> = vec2<f32>(x_1025.x, x_1025.y);
      let x_1028 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_1026.x, x_1026.y, x_1028);
      let x_1036 : vec3<f32> = txVec1;
      let x_1038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1036.xy, x_1036.z);
      u_xlat37 = x_1038;
      let x_1039 : i32 = u_xlati35;
      let x_1041 : f32 = x_269.x_AdditionalShadowParams[x_1039].x;
      u_xlat8.x = (1.0f + -(x_1041));
      let x_1045 : f32 = u_xlat37;
      let x_1046 : i32 = u_xlati35;
      let x_1048 : f32 = x_269.x_AdditionalShadowParams[x_1046].x;
      let x_1051 : f32 = u_xlat8.x;
      u_xlat37 = ((x_1045 * x_1048) + x_1051);
      let x_1054 : f32 = u_xlat8.z;
      u_xlatb8.x = (0.0f >= x_1054);
      let x_1059 : f32 = u_xlat8.z;
      u_xlatb18 = (x_1059 >= 1.0f);
      let x_1061 : bool = u_xlatb18;
      let x_1063 : bool = u_xlatb8.x;
      u_xlatb8.x = (x_1061 | x_1063);
      let x_1067 : bool = u_xlatb8.x;
      let x_1068 : f32 = u_xlat37;
      u_xlat37 = select(x_1068, 1.0f, x_1067);
    } else {
      u_xlat37 = 1.0f;
    }
    let x_1071 : f32 = u_xlat37;
    u_xlat8.x = (-(x_1071) + 1.0f);
    let x_1075 : f32 = u_xlat32;
    let x_1077 : f32 = u_xlat8.x;
    let x_1079 : f32 = u_xlat37;
    u_xlat37 = ((x_1075 * x_1077) + x_1079);
    let x_1081 : f32 = u_xlat36;
    let x_1082 : f32 = u_xlat37;
    u_xlat36 = (x_1081 * x_1082);
    let x_1084 : f32 = u_xlat36;
    let x_1086 : i32 = u_xlati35;
    let x_1088 : vec4<f32> = x_801.x_AdditionalLightsColor[x_1086];
    let x_1090 : vec3<f32> = (vec3<f32>(x_1084, x_1084, x_1084) * vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
    let x_1091 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
    let x_1093 : vec3<f32> = u_xlat2;
    let x_1094 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1093, x_1094);
    let x_1096 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1096, 0.0f, 1.0f);
    let x_1098 : f32 = u_xlat35;
    let x_1100 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1098, x_1098, x_1098) * vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
    let x_1103 : vec3<f32> = u_xlat3;
    let x_1104 : vec3<f32> = u_xlat10;
    let x_1107 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1103 * vec3<f32>(x_1104.x, x_1104.x, x_1104.x)) + x_1107);
    let x_1109 : vec3<f32> = u_xlat7;
    let x_1110 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1109, x_1110);
    let x_1112 : f32 = u_xlat35;
    u_xlat35 = max(x_1112, 1.17549435e-38f);
    let x_1114 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_1114);
    let x_1116 : f32 = u_xlat35;
    let x_1118 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1116, x_1116, x_1116) * x_1118);
    let x_1120 : vec3<f32> = u_xlat2;
    let x_1121 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1120, x_1121);
    let x_1123 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1123, 0.0f, 1.0f);
    let x_1125 : f32 = u_xlat35;
    u_xlat35 = log2(x_1125);
    let x_1128 : f32 = u_xlat1.x;
    let x_1129 : f32 = u_xlat35;
    u_xlat35 = (x_1128 * x_1129);
    let x_1131 : f32 = u_xlat35;
    u_xlat35 = exp2(x_1131);
    let x_1133 : f32 = u_xlat35;
    let x_1136 : vec4<f32> = x_42.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1133, x_1133, x_1133) * vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
    let x_1139 : vec3<f32> = u_xlat7;
    let x_1140 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1139 * vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
    let x_1143 : vec3<f32> = u_xlat9;
    let x_1144 : vec4<f32> = u_xlat1;
    let x_1147 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1143 * vec3<f32>(x_1144.y, x_1144.z, x_1144.w)) + x_1147);
    let x_1149 : vec3<f32> = u_xlat6;
    let x_1150 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1149 + x_1150);

    continuing {
      let x_1152 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1152 + bitcast<u32>(1i));
    }
  }
  let x_1154 : vec4<f32> = u_xlat5;
  let x_1156 : vec4<f32> = u_xlat1;
  let x_1159 : vec4<f32> = u_xlat4;
  let x_1161 : vec3<f32> = ((vec3<f32>(x_1154.x, x_1154.y, x_1154.z) * vec3<f32>(x_1156.y, x_1156.z, x_1156.w)) + vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
  let x_1162 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec3<f32> = u_xlat6;
  let x_1165 : vec4<f32> = u_xlat1;
  let x_1167 : vec3<f32> = (x_1164 + vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : f32 = u_xlat30;
  let x_1171 : f32 = u_xlat30;
  u_xlat10.x = (x_1170 * -(x_1171));
  let x_1176 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_1176);
  let x_1179 : vec4<f32> = u_xlat1;
  let x_1182 : vec4<f32> = x_28.unity_FogColor;
  let x_1185 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) + -(vec3<f32>(x_1182.x, x_1182.y, x_1182.z)));
  let x_1186 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1190 : vec3<f32> = u_xlat10;
  let x_1192 : vec4<f32> = u_xlat1;
  let x_1196 : vec4<f32> = x_28.unity_FogColor;
  let x_1198 : vec3<f32> = ((vec3<f32>(x_1190.x, x_1190.x, x_1190.x) * vec3<f32>(x_1192.x, x_1192.y, x_1192.z)) + vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
  let x_1202 : f32 = x_42.x_Surface;
  u_xlatb10 = (x_1202 == 1.0f);
  let x_1204 : bool = u_xlatb10;
  let x_1205 : bool = u_xlatb20;
  u_xlatb10 = (x_1204 | x_1205);
  let x_1207 : bool = u_xlatb10;
  if (x_1207) {
    let x_1212 : f32 = u_xlat0.x;
    x_1208 = x_1212;
  } else {
    x_1208 = 1.0f;
  }
  let x_1214 : f32 = x_1208;
  SV_Target0.w = x_1214;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


