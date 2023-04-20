diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_153 : LightShadows;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu13 : u32;

var<private> u_xlati13 : i32;

@group(1) @binding(2) var<uniform> x_329 : UnityPerDraw;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat36 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb25 : bool;

var<private> u_xlatb37 : bool;

var<private> u_xlat37 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_880 : AdditionalLights;

var<private> u_xlat42 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatb41 : bool;

fn main_1() {
  var x_92 : f32;
  var x_105 : f32;
  var x_118 : f32;
  var txVec0 : vec3<f32>;
  var x_510 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1015 : f32;
  var x_1026 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_29.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1.x = x_48.x;
  let x_58 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb13 = (x_58 == 0.0f);
  let x_64 : vec3<f32> = vs_TEXCOORD7;
  let x_69 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_70 : vec3<f32> = (-(x_64) + x_69);
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : vec4<f32> = u_xlat2;
  let x_76 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_74.x, x_74.y, x_74.z), vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_79);
  let x_81 : f32 = u_xlat25;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81, x_81, x_81) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_90 : bool = u_xlatb13;
  if (x_90) {
    let x_96 : f32 = u_xlat2.x;
    x_92 = x_96;
  } else {
    let x_101 : f32 = x_29.unity_MatrixV[0i].z;
    x_92 = x_101;
  }
  let x_102 : f32 = x_92;
  u_xlat3.x = x_102;
  let x_104 : bool = u_xlatb13;
  if (x_104) {
    let x_110 : f32 = u_xlat2.y;
    x_105 = x_110;
  } else {
    let x_114 : f32 = x_29.unity_MatrixV[1i].z;
    x_105 = x_114;
  }
  let x_115 : f32 = x_105;
  u_xlat3.y = x_115;
  let x_117 : bool = u_xlatb13;
  if (x_117) {
    let x_122 : f32 = u_xlat2.z;
    x_118 = x_122;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[2i].z;
    x_118 = x_126;
  }
  let x_127 : f32 = x_118;
  u_xlat3.z = x_127;
  let x_131 : vec3<f32> = vs_TEXCOORD3;
  let x_132 : vec3<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(x_131, x_132);
  let x_136 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_136);
  let x_139 : vec3<f32> = u_xlat13;
  let x_141 : vec3<f32> = vs_TEXCOORD3;
  let x_142 : vec3<f32> = (vec3<f32>(x_139.x, x_139.x, x_139.x) * x_141);
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec3<f32> = vs_TEXCOORD7;
  let x_156 : vec4<f32> = x_153.x_CascadeShadowSplitSpheres0;
  u_xlat13 = (x_145 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_161 : vec3<f32> = vs_TEXCOORD7;
  let x_163 : vec4<f32> = x_153.x_CascadeShadowSplitSpheres1;
  u_xlat4 = (x_161 + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_168 : vec3<f32> = vs_TEXCOORD7;
  let x_171 : vec4<f32> = x_153.x_CascadeShadowSplitSpheres2;
  let x_174 : vec3<f32> = (x_168 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD7;
  let x_180 : vec4<f32> = x_153.x_CascadeShadowSplitSpheres3;
  let x_183 : vec3<f32> = (x_178 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = u_xlat13;
  let x_188 : vec3<f32> = u_xlat13;
  u_xlat7.x = dot(x_187, x_188);
  let x_191 : vec3<f32> = u_xlat4;
  let x_192 : vec3<f32> = u_xlat4;
  u_xlat7.y = dot(x_191, x_192);
  let x_195 : vec4<f32> = u_xlat5;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat6;
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat7.w = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_210 : vec4<f32> = u_xlat7;
  let x_212 : vec4<f32> = x_153.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_210 < x_212);
  let x_215 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_215);
  let x_220 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_220);
  let x_224 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_224);
  let x_228 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_228);
  let x_232 : bool = u_xlatb4.x;
  u_xlat13.x = select(-0.0f, -1.0f, x_232);
  let x_238 : bool = u_xlatb4.y;
  u_xlat13.y = select(-0.0f, -1.0f, x_238);
  let x_242 : bool = u_xlatb4.z;
  u_xlat13.z = select(-0.0f, -1.0f, x_242);
  let x_245 : vec3<f32> = u_xlat13;
  let x_246 : vec4<f32> = u_xlat5;
  u_xlat13 = (x_245 + vec3<f32>(x_246.y, x_246.z, x_246.w));
  let x_249 : vec3<f32> = u_xlat13;
  let x_251 : vec3<f32> = max(x_249, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_252.x, x_251.x, x_251.y, x_251.z);
  let x_254 : vec4<f32> = u_xlat5;
  u_xlat13.x = dot(x_254, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_262 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_262) + 4.0f);
  let x_269 : f32 = u_xlat13.x;
  u_xlatu13 = u32(x_269);
  let x_273 : u32 = u_xlatu13;
  u_xlati13 = (bitcast<i32>(x_273) << bitcast<u32>(2i));
  let x_276 : vec3<f32> = vs_TEXCOORD7;
  let x_278 : i32 = u_xlati13;
  let x_281 : i32 = u_xlati13;
  let x_285 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_278 + 1i) / 4i)][((x_281 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_276.y, x_276.y, x_276.y) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : i32 = u_xlati13;
  let x_290 : i32 = u_xlati13;
  let x_293 : vec4<f32> = x_153.x_MainLightWorldToShadow[(x_288 / 4i)][(x_290 % 4i)];
  let x_295 : vec3<f32> = vs_TEXCOORD7;
  let x_298 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.x, x_295.x, x_295.x)) + x_298);
  let x_300 : i32 = u_xlati13;
  let x_303 : i32 = u_xlati13;
  let x_307 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_300 + 2i) / 4i)][((x_303 + 2i) % 4i)];
  let x_309 : vec3<f32> = vs_TEXCOORD7;
  let x_312 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.z, x_309.z, x_309.z)) + x_312);
  let x_314 : vec3<f32> = u_xlat4;
  let x_315 : i32 = u_xlati13;
  let x_318 : i32 = u_xlati13;
  let x_322 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_315 + 3i) / 4i)][((x_318 + 3i) % 4i)];
  u_xlat13 = (x_314 + vec3<f32>(x_322.x, x_322.y, x_322.z));
  u_xlat2.w = 1.0f;
  let x_332 : vec4<f32> = x_329.unity_SHAr;
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_332, x_333);
  let x_338 : vec4<f32> = x_329.unity_SHAg;
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_338, x_339);
  let x_344 : vec4<f32> = x_329.unity_SHAb;
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_344, x_345);
  let x_348 : vec4<f32> = u_xlat2;
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_348.y, x_348.z, x_348.z, x_348.x) * vec4<f32>(x_350.x, x_350.y, x_350.z, x_350.z));
  let x_355 : vec4<f32> = x_329.unity_SHBr;
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_355, x_356);
  let x_361 : vec4<f32> = x_329.unity_SHBg;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_361, x_362);
  let x_367 : vec4<f32> = x_329.unity_SHBb;
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_367, x_368);
  let x_373 : f32 = u_xlat2.y;
  let x_375 : f32 = u_xlat2.y;
  u_xlat38 = (x_373 * x_375);
  let x_378 : f32 = u_xlat2.x;
  let x_380 : f32 = u_xlat2.x;
  let x_382 : f32 = u_xlat38;
  u_xlat38 = ((x_378 * x_380) + -(x_382));
  let x_387 : vec4<f32> = x_329.unity_SHC;
  let x_389 : f32 = u_xlat38;
  let x_392 : vec4<f32> = u_xlat6;
  let x_394 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389, x_389, x_389)) + vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec3<f32> = u_xlat4;
  let x_398 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_397 + vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_401, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_404 : f32 = u_xlat1.x;
  u_xlat38 = ((-(x_404) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_410 : f32 = u_xlat38;
  u_xlat39 = (-(x_410) + 1.0f);
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : f32 = u_xlat38;
  let x_417 : vec3<f32> = (vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_415, x_415, x_415));
  let x_418 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat0;
  let x_424 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_425 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat1;
  let x_429 : vec4<f32> = u_xlat0;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.x, x_427.x) * vec3<f32>(x_429.x, x_429.y, x_429.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_435 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_438 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_438) + 1.0f);
  let x_443 : f32 = u_xlat1.x;
  let x_445 : f32 = u_xlat1.x;
  u_xlat38 = (x_443 * x_445);
  let x_447 : f32 = u_xlat38;
  u_xlat38 = max(x_447, 0.0078125f);
  let x_451 : f32 = u_xlat38;
  let x_452 : f32 = u_xlat38;
  u_xlat40 = (x_451 * x_452);
  let x_456 : f32 = u_xlat0.w;
  let x_457 : f32 = u_xlat39;
  u_xlat36 = (x_456 + x_457);
  let x_459 : f32 = u_xlat36;
  u_xlat36 = clamp(x_459, 0.0f, 1.0f);
  let x_461 : f32 = u_xlat38;
  u_xlat39 = ((x_461 * 4.0f) + 2.0f);
  let x_466 : vec3<f32> = u_xlat13;
  let x_467 : vec2<f32> = vec2<f32>(x_466.x, x_466.y);
  let x_469 : f32 = u_xlat13.z;
  txVec0 = vec3<f32>(x_467.x, x_467.y, x_469);
  let x_481 : vec3<f32> = txVec0;
  let x_483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_481.xy, x_481.z);
  u_xlat13.x = x_483;
  let x_487 : f32 = x_153.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_487) + 1.0f);
  let x_491 : f32 = u_xlat13.x;
  let x_493 : f32 = x_153.x_MainLightShadowParams.x;
  let x_495 : f32 = u_xlat25;
  u_xlat13.x = ((x_491 * x_493) + x_495);
  let x_500 : f32 = u_xlat13.z;
  u_xlatb25 = (0.0f >= x_500);
  let x_504 : f32 = u_xlat13.z;
  u_xlatb37 = (x_504 >= 1.0f);
  let x_506 : bool = u_xlatb37;
  let x_507 : bool = u_xlatb25;
  u_xlatb25 = (x_506 | x_507);
  let x_509 : bool = u_xlatb25;
  if (x_509) {
    x_510 = 1.0f;
  } else {
    let x_515 : f32 = u_xlat13.x;
    x_510 = x_515;
  }
  let x_516 : f32 = x_510;
  u_xlat13.x = x_516;
  let x_518 : vec3<f32> = vs_TEXCOORD7;
  let x_520 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_522 : vec3<f32> = (x_518 + -(x_520));
  let x_523 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat6;
  u_xlat25 = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_531 : f32 = u_xlat25;
  let x_533 : f32 = x_153.x_MainLightShadowParams.z;
  let x_536 : f32 = x_153.x_MainLightShadowParams.w;
  u_xlat37 = ((x_531 * x_533) + x_536);
  let x_538 : f32 = u_xlat37;
  u_xlat37 = clamp(x_538, 0.0f, 1.0f);
  let x_542 : f32 = u_xlat13.x;
  u_xlat41 = (-(x_542) + 1.0f);
  let x_545 : f32 = u_xlat37;
  let x_546 : f32 = u_xlat41;
  let x_549 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_545 * x_546) + x_549);
  let x_552 : vec3<f32> = u_xlat3;
  let x_554 : vec4<f32> = u_xlat2;
  u_xlat37 = dot(-(x_552), vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : f32 = u_xlat37;
  let x_558 : f32 = u_xlat37;
  u_xlat37 = (x_557 + x_558);
  let x_560 : vec4<f32> = u_xlat2;
  let x_562 : f32 = u_xlat37;
  let x_566 : vec3<f32> = u_xlat3;
  let x_568 : vec3<f32> = ((vec3<f32>(x_560.x, x_560.y, x_560.z) * -(vec3<f32>(x_562, x_562, x_562))) + -(x_566));
  let x_569 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat2;
  let x_573 : vec3<f32> = u_xlat3;
  u_xlat37 = dot(vec3<f32>(x_571.x, x_571.y, x_571.z), x_573);
  let x_575 : f32 = u_xlat37;
  u_xlat37 = clamp(x_575, 0.0f, 1.0f);
  let x_577 : f32 = u_xlat37;
  u_xlat37 = (-(x_577) + 1.0f);
  let x_580 : f32 = u_xlat37;
  let x_581 : f32 = u_xlat37;
  u_xlat37 = (x_580 * x_581);
  let x_583 : f32 = u_xlat37;
  let x_584 : f32 = u_xlat37;
  u_xlat37 = (x_583 * x_584);
  let x_587 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_587) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_594 : f32 = u_xlat1.x;
  let x_595 : f32 = u_xlat41;
  u_xlat1.x = (x_594 * x_595);
  let x_599 : f32 = u_xlat1.x;
  u_xlat1.x = (x_599 * 6.0f);
  let x_611 : vec4<f32> = u_xlat6;
  let x_614 : f32 = u_xlat1.x;
  let x_615 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_611.x, x_611.y, x_611.z), x_614);
  u_xlat6 = x_615;
  let x_617 : f32 = u_xlat6.w;
  u_xlat1.x = (x_617 + -1.0f);
  let x_621 : f32 = x_329.unity_SpecCube0_HDR.w;
  let x_623 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_621 * x_623) + 1.0f);
  let x_628 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_628, 0.0f);
  let x_632 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_632);
  let x_636 : f32 = u_xlat1.x;
  let x_638 : f32 = x_329.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_636 * x_638);
  let x_642 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_642);
  let x_646 : f32 = u_xlat1.x;
  let x_648 : f32 = x_329.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_646 * x_648);
  let x_651 : vec4<f32> = u_xlat6;
  let x_653 : vec4<f32> = u_xlat1;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) * vec3<f32>(x_653.x, x_653.x, x_653.x));
  let x_656 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : f32 = u_xlat38;
  let x_660 : f32 = u_xlat38;
  let x_664 : vec2<f32> = ((vec2<f32>(x_658, x_658) * vec2<f32>(x_660, x_660)) + vec2<f32>(-1.0f, 1.0f));
  let x_665 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
  let x_668 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_668);
  let x_672 : vec4<f32> = u_xlat0;
  let x_675 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_672.x, x_672.y, x_672.z)) + vec3<f32>(x_675, x_675, x_675));
  let x_678 : f32 = u_xlat37;
  let x_680 : vec3<f32> = u_xlat19;
  let x_682 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_678, x_678, x_678) * x_680) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat1;
  let x_687 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_685.x, x_685.x, x_685.x) * x_687);
  let x_689 : vec4<f32> = u_xlat6;
  let x_691 : vec3<f32> = u_xlat19;
  let x_692 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) * x_691);
  let x_693 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = u_xlat4;
  let x_696 : vec4<f32> = u_xlat5;
  let x_699 : vec4<f32> = u_xlat6;
  u_xlat4 = ((x_695 * vec3<f32>(x_696.x, x_696.y, x_696.z)) + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_703 : f32 = u_xlat13.x;
  let x_705 : f32 = x_329.unity_LightData.z;
  u_xlat36 = (x_703 * x_705);
  let x_707 : vec4<f32> = u_xlat2;
  let x_710 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_707.x, x_707.y, x_707.z), vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_715 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_715, 0.0f, 1.0f);
  let x_718 : f32 = u_xlat36;
  let x_720 : f32 = u_xlat1.x;
  u_xlat36 = (x_718 * x_720);
  let x_722 : f32 = u_xlat36;
  let x_725 : vec4<f32> = x_29.x_MainLightColor;
  let x_727 : vec3<f32> = (vec3<f32>(x_722, x_722, x_722) * vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_727.x, x_727.y, x_728.z, x_727.z);
  let x_730 : vec3<f32> = u_xlat3;
  let x_732 : vec4<f32> = x_29.x_MainLightPosition;
  let x_734 : vec3<f32> = (x_730 + vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec4<f32> = u_xlat6;
  let x_739 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_737.x, x_737.y, x_737.z), vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : f32 = u_xlat36;
  u_xlat36 = max(x_742, 1.17549435e-38f);
  let x_745 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_745);
  let x_747 : f32 = u_xlat36;
  let x_749 : vec4<f32> = u_xlat6;
  let x_751 : vec3<f32> = (vec3<f32>(x_747, x_747, x_747) * vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat2;
  let x_756 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_754.x, x_754.y, x_754.z), vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : f32 = u_xlat36;
  u_xlat36 = clamp(x_759, 0.0f, 1.0f);
  let x_762 : vec4<f32> = x_29.x_MainLightPosition;
  let x_764 : vec4<f32> = u_xlat6;
  u_xlat38 = dot(vec3<f32>(x_762.x, x_762.y, x_762.z), vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : f32 = u_xlat38;
  u_xlat38 = clamp(x_767, 0.0f, 1.0f);
  let x_769 : f32 = u_xlat36;
  let x_770 : f32 = u_xlat36;
  u_xlat36 = (x_769 * x_770);
  let x_772 : f32 = u_xlat36;
  let x_774 : f32 = u_xlat7.x;
  u_xlat36 = ((x_772 * x_774) + 1.00001001358032226562f);
  let x_778 : f32 = u_xlat38;
  let x_779 : f32 = u_xlat38;
  u_xlat38 = (x_778 * x_779);
  let x_781 : f32 = u_xlat36;
  let x_782 : f32 = u_xlat36;
  u_xlat36 = (x_781 * x_782);
  let x_784 : f32 = u_xlat38;
  u_xlat38 = max(x_784, 0.10000000149011611938f);
  let x_787 : f32 = u_xlat36;
  let x_788 : f32 = u_xlat38;
  u_xlat36 = (x_787 * x_788);
  let x_790 : f32 = u_xlat39;
  let x_791 : f32 = u_xlat36;
  u_xlat36 = (x_790 * x_791);
  let x_793 : f32 = u_xlat40;
  let x_794 : f32 = u_xlat36;
  u_xlat36 = (x_793 / x_794);
  let x_796 : vec4<f32> = u_xlat0;
  let x_798 : f32 = u_xlat36;
  let x_801 : vec4<f32> = u_xlat5;
  let x_803 : vec3<f32> = ((vec3<f32>(x_796.x, x_796.y, x_796.z) * vec3<f32>(x_798, x_798, x_798)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_807 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_809 : f32 = x_329.unity_LightData.y;
  u_xlat36 = min(x_807, x_809);
  let x_812 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_812));
  let x_815 : f32 = u_xlat25;
  let x_818 : f32 = x_153.x_AdditionalShadowFadeParams.x;
  let x_821 : f32 = x_153.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_815 * x_818) + x_821);
  let x_823 : f32 = u_xlat25;
  u_xlat25 = clamp(x_823, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_835 : u32 = u_xlatu_loop_1;
    let x_836 : u32 = u_xlatu36;
    if ((x_835 < x_836)) {
    } else {
      break;
    }
    let x_839 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_839 >> 2u);
    let x_842 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_842 & 3u));
    let x_845 : u32 = u_xlatu41;
    let x_848 : vec4<f32> = x_329.unity_LightIndices[bitcast<i32>(x_845)];
    let x_858 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_863 : vec4<u32> = indexable[x_858];
    u_xlat41 = dot(x_848, bitcast<vec4<f32>>(x_863));
    let x_867 : f32 = u_xlat41;
    u_xlati41 = i32(x_867);
    let x_870 : vec3<f32> = vs_TEXCOORD7;
    let x_881 : i32 = u_xlati41;
    let x_883 : vec4<f32> = x_880.x_AdditionalLightsPosition[x_881];
    let x_886 : i32 = u_xlati41;
    let x_888 : vec4<f32> = x_880.x_AdditionalLightsPosition[x_886];
    u_xlat8 = ((-(x_870) * vec3<f32>(x_883.w, x_883.w, x_883.w)) + vec3<f32>(x_888.x, x_888.y, x_888.z));
    let x_892 : vec3<f32> = u_xlat8;
    let x_893 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_892, x_893);
    let x_895 : f32 = u_xlat42;
    u_xlat42 = max(x_895, 0.00006103515625f);
    let x_899 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_899);
    let x_902 : f32 = u_xlat44;
    let x_904 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_902, x_902, x_902) * x_904);
    let x_907 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_907);
    let x_909 : f32 = u_xlat42;
    let x_910 : i32 = u_xlati41;
    let x_912 : f32 = x_880.x_AdditionalLightsAttenuation[x_910].x;
    u_xlat42 = (x_909 * x_912);
    let x_914 : f32 = u_xlat42;
    let x_916 : f32 = u_xlat42;
    u_xlat42 = ((-(x_914) * x_916) + 1.0f);
    let x_919 : f32 = u_xlat42;
    u_xlat42 = max(x_919, 0.0f);
    let x_921 : f32 = u_xlat42;
    let x_922 : f32 = u_xlat42;
    u_xlat42 = (x_921 * x_922);
    let x_924 : f32 = u_xlat42;
    let x_925 : f32 = u_xlat45;
    u_xlat42 = (x_924 * x_925);
    let x_927 : i32 = u_xlati41;
    let x_929 : vec4<f32> = x_880.x_AdditionalLightsSpotDir[x_927];
    let x_931 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_929.x, x_929.y, x_929.z), x_931);
    let x_933 : f32 = u_xlat45;
    let x_934 : i32 = u_xlati41;
    let x_936 : f32 = x_880.x_AdditionalLightsAttenuation[x_934].z;
    let x_938 : i32 = u_xlati41;
    let x_940 : f32 = x_880.x_AdditionalLightsAttenuation[x_938].w;
    u_xlat45 = ((x_933 * x_936) + x_940);
    let x_942 : f32 = u_xlat45;
    u_xlat45 = clamp(x_942, 0.0f, 1.0f);
    let x_944 : f32 = u_xlat45;
    let x_945 : f32 = u_xlat45;
    u_xlat45 = (x_944 * x_945);
    let x_947 : f32 = u_xlat42;
    let x_948 : f32 = u_xlat45;
    u_xlat42 = (x_947 * x_948);
    let x_952 : i32 = u_xlati41;
    let x_954 : f32 = x_153.x_AdditionalShadowParams[x_952].w;
    u_xlati45 = i32(x_954);
    let x_959 : i32 = u_xlati45;
    u_xlatb10.x = (x_959 >= 0i);
    let x_963 : bool = u_xlatb10.x;
    if (x_963) {
      let x_967 : i32 = u_xlati41;
      let x_969 : f32 = x_153.x_AdditionalShadowParams[x_967].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_969, x_969, x_969, x_969))));
      let x_975 : bool = u_xlatb10.x;
      if (x_975) {
        let x_978 : vec3<f32> = u_xlat9;
        let x_981 : vec3<f32> = u_xlat9;
        let x_984 : vec4<bool> = (abs(vec4<f32>(x_978.z, x_978.z, x_978.y, x_978.z)) >= abs(vec4<f32>(x_981.x, x_981.y, x_981.x, x_981.x)));
        u_xlatb10 = vec3<bool>(x_984.x, x_984.y, x_984.z);
        let x_987 : bool = u_xlatb10.y;
        let x_989 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_987 & x_989);
        let x_993 : vec3<f32> = u_xlat9;
        let x_996 : vec4<bool> = (-(vec4<f32>(x_993.z, x_993.y, x_993.x, x_993.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_996.x, x_996.y, x_996.z);
        let x_1000 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1000);
        let x_1005 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1005);
        let x_1010 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1010);
        let x_1014 : bool = u_xlatb10.z;
        if (x_1014) {
          let x_1019 : f32 = u_xlat22.z;
          x_1015 = x_1019;
        } else {
          let x_1021 : f32 = u_xlat11;
          x_1015 = x_1021;
        }
        let x_1022 : f32 = x_1015;
        u_xlat34 = x_1022;
        let x_1025 : bool = u_xlatb10.x;
        if (x_1025) {
          let x_1030 : f32 = u_xlat22.x;
          x_1026 = x_1030;
        } else {
          let x_1032 : f32 = u_xlat34;
          x_1026 = x_1032;
        }
        let x_1033 : f32 = x_1026;
        u_xlat10.x = x_1033;
        let x_1035 : i32 = u_xlati41;
        let x_1037 : f32 = x_153.x_AdditionalShadowParams[x_1035].w;
        u_xlat22.x = trunc(x_1037);
        let x_1041 : f32 = u_xlat10.x;
        let x_1043 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1041 + x_1043);
        let x_1047 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1047);
      }
      let x_1049 : i32 = u_xlati45;
      u_xlati45 = (x_1049 << bitcast<u32>(2i));
      let x_1051 : vec3<f32> = vs_TEXCOORD7;
      let x_1054 : i32 = u_xlati45;
      let x_1057 : i32 = u_xlati45;
      let x_1061 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_1054 + 1i) / 4i)][((x_1057 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1051.y, x_1051.y, x_1051.y, x_1051.y) * x_1061);
      let x_1063 : i32 = u_xlati45;
      let x_1065 : i32 = u_xlati45;
      let x_1068 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[(x_1063 / 4i)][(x_1065 % 4i)];
      let x_1069 : vec3<f32> = vs_TEXCOORD7;
      let x_1072 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1068 * vec4<f32>(x_1069.x, x_1069.x, x_1069.x, x_1069.x)) + x_1072);
      let x_1074 : i32 = u_xlati45;
      let x_1077 : i32 = u_xlati45;
      let x_1081 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_1074 + 2i) / 4i)][((x_1077 + 2i) % 4i)];
      let x_1082 : vec3<f32> = vs_TEXCOORD7;
      let x_1085 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1081 * vec4<f32>(x_1082.z, x_1082.z, x_1082.z, x_1082.z)) + x_1085);
      let x_1087 : vec4<f32> = u_xlat10;
      let x_1088 : i32 = u_xlati45;
      let x_1091 : i32 = u_xlati45;
      let x_1095 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_1088 + 3i) / 4i)][((x_1091 + 3i) % 4i)];
      u_xlat10 = (x_1087 + x_1095);
      let x_1097 : vec4<f32> = u_xlat10;
      let x_1099 : vec4<f32> = u_xlat10;
      let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) / vec3<f32>(x_1099.w, x_1099.w, x_1099.w));
      let x_1102 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
      let x_1105 : vec4<f32> = u_xlat10;
      let x_1106 : vec2<f32> = vec2<f32>(x_1105.x, x_1105.y);
      let x_1108 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
      let x_1116 : vec3<f32> = txVec1;
      let x_1118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1116.xy, x_1116.z);
      u_xlat45 = x_1118;
      let x_1119 : i32 = u_xlati41;
      let x_1121 : f32 = x_153.x_AdditionalShadowParams[x_1119].x;
      u_xlat10.x = (1.0f + -(x_1121));
      let x_1125 : f32 = u_xlat45;
      let x_1126 : i32 = u_xlati41;
      let x_1128 : f32 = x_153.x_AdditionalShadowParams[x_1126].x;
      let x_1131 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1125 * x_1128) + x_1131);
      let x_1134 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1134);
      let x_1139 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1139 >= 1.0f);
      let x_1141 : bool = u_xlatb22;
      let x_1143 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1141 | x_1143);
      let x_1147 : bool = u_xlatb10.x;
      let x_1148 : f32 = u_xlat45;
      u_xlat45 = select(x_1148, 1.0f, x_1147);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1151 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1151) + 1.0f);
    let x_1155 : f32 = u_xlat25;
    let x_1157 : f32 = u_xlat10.x;
    let x_1159 : f32 = u_xlat45;
    u_xlat45 = ((x_1155 * x_1157) + x_1159);
    let x_1161 : f32 = u_xlat42;
    let x_1162 : f32 = u_xlat45;
    u_xlat42 = (x_1161 * x_1162);
    let x_1164 : vec4<f32> = u_xlat2;
    let x_1166 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1164.x, x_1164.y, x_1164.z), x_1166);
    let x_1168 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1168, 0.0f, 1.0f);
    let x_1170 : f32 = u_xlat42;
    let x_1171 : f32 = u_xlat45;
    u_xlat42 = (x_1170 * x_1171);
    let x_1173 : f32 = u_xlat42;
    let x_1175 : i32 = u_xlati41;
    let x_1177 : vec4<f32> = x_880.x_AdditionalLightsColor[x_1175];
    let x_1179 : vec3<f32> = (vec3<f32>(x_1173, x_1173, x_1173) * vec3<f32>(x_1177.x, x_1177.y, x_1177.z));
    let x_1180 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
    let x_1182 : vec3<f32> = u_xlat8;
    let x_1183 : f32 = u_xlat44;
    let x_1186 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1182 * vec3<f32>(x_1183, x_1183, x_1183)) + x_1186);
    let x_1188 : vec3<f32> = u_xlat8;
    let x_1189 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1188, x_1189);
    let x_1191 : f32 = u_xlat41;
    u_xlat41 = max(x_1191, 1.17549435e-38f);
    let x_1193 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1193);
    let x_1195 : f32 = u_xlat41;
    let x_1197 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1195, x_1195, x_1195) * x_1197);
    let x_1199 : vec4<f32> = u_xlat2;
    let x_1201 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1199.x, x_1199.y, x_1199.z), x_1201);
    let x_1203 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1203, 0.0f, 1.0f);
    let x_1205 : vec3<f32> = u_xlat9;
    let x_1206 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1205, x_1206);
    let x_1208 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1208, 0.0f, 1.0f);
    let x_1210 : f32 = u_xlat41;
    let x_1211 : f32 = u_xlat41;
    u_xlat41 = (x_1210 * x_1211);
    let x_1213 : f32 = u_xlat41;
    let x_1215 : f32 = u_xlat7.x;
    u_xlat41 = ((x_1213 * x_1215) + 1.00001001358032226562f);
    let x_1218 : f32 = u_xlat42;
    let x_1219 : f32 = u_xlat42;
    u_xlat42 = (x_1218 * x_1219);
    let x_1221 : f32 = u_xlat41;
    let x_1222 : f32 = u_xlat41;
    u_xlat41 = (x_1221 * x_1222);
    let x_1224 : f32 = u_xlat42;
    u_xlat42 = max(x_1224, 0.10000000149011611938f);
    let x_1226 : f32 = u_xlat41;
    let x_1227 : f32 = u_xlat42;
    u_xlat41 = (x_1226 * x_1227);
    let x_1229 : f32 = u_xlat39;
    let x_1230 : f32 = u_xlat41;
    u_xlat41 = (x_1229 * x_1230);
    let x_1232 : f32 = u_xlat40;
    let x_1233 : f32 = u_xlat41;
    u_xlat41 = (x_1232 / x_1233);
    let x_1235 : vec4<f32> = u_xlat0;
    let x_1237 : f32 = u_xlat41;
    let x_1240 : vec4<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * vec3<f32>(x_1237, x_1237, x_1237)) + vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
    let x_1243 : vec3<f32> = u_xlat8;
    let x_1244 : vec4<f32> = u_xlat10;
    let x_1247 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1243 * vec3<f32>(x_1244.x, x_1244.y, x_1244.z)) + x_1247);

    continuing {
      let x_1249 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1249 + bitcast<u32>(1i));
    }
  }
  let x_1251 : vec4<f32> = u_xlat6;
  let x_1253 : vec4<f32> = u_xlat1;
  let x_1256 : vec3<f32> = u_xlat4;
  let x_1257 : vec3<f32> = ((vec3<f32>(x_1251.x, x_1251.y, x_1251.z) * vec3<f32>(x_1253.x, x_1253.y, x_1253.w)) + x_1256);
  let x_1258 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1262 : vec3<f32> = u_xlat19;
  let x_1263 : vec4<f32> = u_xlat0;
  let x_1265 : vec3<f32> = (x_1262 + vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
  let x_1266 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


