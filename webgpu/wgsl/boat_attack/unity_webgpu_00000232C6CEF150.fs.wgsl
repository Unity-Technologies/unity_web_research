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

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_153 : LightShadows;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu15 : u32;

var<private> u_xlati15 : i32;

@group(1) @binding(2) var<uniform> x_329 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb29 : bool;

var<private> u_xlatb43 : bool;

var<private> u_xlat43 : f32;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_557 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu47 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati47 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1019 : AdditionalLights;

var<private> u_xlat48 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu44 : u32;

var<private> u_xlatb47 : bool;

fn main_1() {
  var x_92 : f32;
  var x_105 : f32;
  var x_118 : f32;
  var txVec0 : vec3<f32>;
  var x_510 : f32;
  var x_642 : f32;
  var x_653 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1151 : f32;
  var x_1161 : f32;
  var txVec1 : vec3<f32>;
  var x_1591 : f32;
  var x_1604 : f32;
  var x_1662 : f32;
  var x_1673 : vec3<f32>;
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
  u_xlatb15 = (x_58 == 0.0f);
  let x_64 : vec3<f32> = vs_TEXCOORD7;
  let x_69 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_70 : vec3<f32> = (-(x_64) + x_69);
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : vec4<f32> = u_xlat2;
  let x_76 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_74.x, x_74.y, x_74.z), vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_79);
  let x_81 : f32 = u_xlat29;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81, x_81, x_81) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_90 : bool = u_xlatb15;
  if (x_90) {
    let x_96 : f32 = u_xlat2.x;
    x_92 = x_96;
  } else {
    let x_101 : f32 = x_29.unity_MatrixV[0i].z;
    x_92 = x_101;
  }
  let x_102 : f32 = x_92;
  u_xlat3.x = x_102;
  let x_104 : bool = u_xlatb15;
  if (x_104) {
    let x_110 : f32 = u_xlat2.y;
    x_105 = x_110;
  } else {
    let x_114 : f32 = x_29.unity_MatrixV[1i].z;
    x_105 = x_114;
  }
  let x_115 : f32 = x_105;
  u_xlat3.y = x_115;
  let x_117 : bool = u_xlatb15;
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
  u_xlat15.x = dot(x_131, x_132);
  let x_136 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_136);
  let x_139 : vec3<f32> = u_xlat15;
  let x_141 : vec3<f32> = vs_TEXCOORD3;
  let x_142 : vec3<f32> = (vec3<f32>(x_139.x, x_139.x, x_139.x) * x_141);
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec3<f32> = vs_TEXCOORD7;
  let x_156 : vec4<f32> = x_153.x_CascadeShadowSplitSpheres0;
  u_xlat15 = (x_145 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
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
  let x_187 : vec3<f32> = u_xlat15;
  let x_188 : vec3<f32> = u_xlat15;
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
  u_xlat15.x = select(-0.0f, -1.0f, x_232);
  let x_238 : bool = u_xlatb4.y;
  u_xlat15.y = select(-0.0f, -1.0f, x_238);
  let x_242 : bool = u_xlatb4.z;
  u_xlat15.z = select(-0.0f, -1.0f, x_242);
  let x_245 : vec3<f32> = u_xlat15;
  let x_246 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_245 + vec3<f32>(x_246.y, x_246.z, x_246.w));
  let x_249 : vec3<f32> = u_xlat15;
  let x_251 : vec3<f32> = max(x_249, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_252.x, x_251.x, x_251.y, x_251.z);
  let x_254 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(x_254, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_262 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_262) + 4.0f);
  let x_269 : f32 = u_xlat15.x;
  u_xlatu15 = u32(x_269);
  let x_273 : u32 = u_xlatu15;
  u_xlati15 = (bitcast<i32>(x_273) << bitcast<u32>(2i));
  let x_276 : vec3<f32> = vs_TEXCOORD7;
  let x_278 : i32 = u_xlati15;
  let x_281 : i32 = u_xlati15;
  let x_285 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_278 + 1i) / 4i)][((x_281 + 1i) % 4i)];
  u_xlat4 = (vec3<f32>(x_276.y, x_276.y, x_276.y) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : i32 = u_xlati15;
  let x_290 : i32 = u_xlati15;
  let x_293 : vec4<f32> = x_153.x_MainLightWorldToShadow[(x_288 / 4i)][(x_290 % 4i)];
  let x_295 : vec3<f32> = vs_TEXCOORD7;
  let x_298 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.x, x_295.x, x_295.x)) + x_298);
  let x_300 : i32 = u_xlati15;
  let x_303 : i32 = u_xlati15;
  let x_307 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_300 + 2i) / 4i)][((x_303 + 2i) % 4i)];
  let x_309 : vec3<f32> = vs_TEXCOORD7;
  let x_312 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.z, x_309.z, x_309.z)) + x_312);
  let x_314 : vec3<f32> = u_xlat4;
  let x_315 : i32 = u_xlati15;
  let x_318 : i32 = u_xlati15;
  let x_322 : vec4<f32> = x_153.x_MainLightWorldToShadow[((x_315 + 3i) / 4i)][((x_318 + 3i) % 4i)];
  u_xlat15 = (x_314 + vec3<f32>(x_322.x, x_322.y, x_322.z));
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
  u_xlat44 = (x_373 * x_375);
  let x_378 : f32 = u_xlat2.x;
  let x_380 : f32 = u_xlat2.x;
  let x_382 : f32 = u_xlat44;
  u_xlat44 = ((x_378 * x_380) + -(x_382));
  let x_387 : vec4<f32> = x_329.unity_SHC;
  let x_389 : f32 = u_xlat44;
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
  u_xlat44 = ((-(x_404) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_410 : f32 = u_xlat44;
  u_xlat45 = (-(x_410) + 1.0f);
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : f32 = u_xlat44;
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
  u_xlat44 = (x_443 * x_445);
  let x_447 : f32 = u_xlat44;
  u_xlat44 = max(x_447, 0.0078125f);
  let x_451 : f32 = u_xlat44;
  let x_452 : f32 = u_xlat44;
  u_xlat46 = (x_451 * x_452);
  let x_456 : f32 = u_xlat0.w;
  let x_457 : f32 = u_xlat45;
  u_xlat42 = (x_456 + x_457);
  let x_459 : f32 = u_xlat42;
  u_xlat42 = clamp(x_459, 0.0f, 1.0f);
  let x_461 : f32 = u_xlat44;
  u_xlat45 = ((x_461 * 4.0f) + 2.0f);
  let x_466 : vec3<f32> = u_xlat15;
  let x_467 : vec2<f32> = vec2<f32>(x_466.x, x_466.y);
  let x_469 : f32 = u_xlat15.z;
  txVec0 = vec3<f32>(x_467.x, x_467.y, x_469);
  let x_481 : vec3<f32> = txVec0;
  let x_483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_481.xy, x_481.z);
  u_xlat15.x = x_483;
  let x_487 : f32 = x_153.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_487) + 1.0f);
  let x_491 : f32 = u_xlat15.x;
  let x_493 : f32 = x_153.x_MainLightShadowParams.x;
  let x_495 : f32 = u_xlat29;
  u_xlat15.x = ((x_491 * x_493) + x_495);
  let x_500 : f32 = u_xlat15.z;
  u_xlatb29 = (0.0f >= x_500);
  let x_504 : f32 = u_xlat15.z;
  u_xlatb43 = (x_504 >= 1.0f);
  let x_506 : bool = u_xlatb43;
  let x_507 : bool = u_xlatb29;
  u_xlatb29 = (x_506 | x_507);
  let x_509 : bool = u_xlatb29;
  if (x_509) {
    x_510 = 1.0f;
  } else {
    let x_515 : f32 = u_xlat15.x;
    x_510 = x_515;
  }
  let x_516 : f32 = x_510;
  u_xlat15.x = x_516;
  let x_518 : vec3<f32> = vs_TEXCOORD7;
  let x_520 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_522 : vec3<f32> = (x_518 + -(x_520));
  let x_523 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_531 : f32 = u_xlat29;
  let x_533 : f32 = x_153.x_MainLightShadowParams.z;
  let x_536 : f32 = x_153.x_MainLightShadowParams.w;
  u_xlat43 = ((x_531 * x_533) + x_536);
  let x_538 : f32 = u_xlat43;
  u_xlat43 = clamp(x_538, 0.0f, 1.0f);
  let x_542 : f32 = u_xlat15.x;
  u_xlat47 = (-(x_542) + 1.0f);
  let x_545 : f32 = u_xlat43;
  let x_546 : f32 = u_xlat47;
  let x_549 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_545 * x_546) + x_549);
  let x_559 : f32 = x_557.x_MainLightCookieTextureFormat;
  u_xlatb43 = !((x_559 == -1.0f));
  let x_561 : bool = u_xlatb43;
  if (x_561) {
    let x_564 : vec3<f32> = vs_TEXCOORD7;
    let x_567 : vec4<f32> = x_557.x_MainLightWorldToLight[1i];
    let x_569 : vec2<f32> = (vec2<f32>(x_564.y, x_564.y) * vec2<f32>(x_567.x, x_567.y));
    let x_570 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
    let x_573 : vec4<f32> = x_557.x_MainLightWorldToLight[0i];
    let x_575 : vec3<f32> = vs_TEXCOORD7;
    let x_578 : vec4<f32> = u_xlat6;
    let x_580 : vec2<f32> = ((vec2<f32>(x_573.x, x_573.y) * vec2<f32>(x_575.x, x_575.x)) + vec2<f32>(x_578.x, x_578.y));
    let x_581 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
    let x_584 : vec4<f32> = x_557.x_MainLightWorldToLight[2i];
    let x_586 : vec3<f32> = vs_TEXCOORD7;
    let x_589 : vec4<f32> = u_xlat6;
    let x_591 : vec2<f32> = ((vec2<f32>(x_584.x, x_584.y) * vec2<f32>(x_586.z, x_586.z)) + vec2<f32>(x_589.x, x_589.y));
    let x_592 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
    let x_594 : vec4<f32> = u_xlat6;
    let x_597 : vec4<f32> = x_557.x_MainLightWorldToLight[3i];
    let x_599 : vec2<f32> = (vec2<f32>(x_594.x, x_594.y) + vec2<f32>(x_597.x, x_597.y));
    let x_600 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
    let x_602 : vec4<f32> = u_xlat6;
    let x_607 : vec2<f32> = ((vec2<f32>(x_602.x, x_602.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_608 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
    let x_615 : vec4<f32> = u_xlat6;
    let x_618 : f32 = x_29.x_GlobalMipBias.x;
    let x_619 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_615.x, x_615.y), x_618);
    u_xlat6 = x_619;
    let x_624 : f32 = x_557.x_MainLightCookieTextureFormat;
    let x_626 : f32 = x_557.x_MainLightCookieTextureFormat;
    let x_628 : f32 = x_557.x_MainLightCookieTextureFormat;
    let x_630 : f32 = x_557.x_MainLightCookieTextureFormat;
    let x_631 : vec4<f32> = vec4<f32>(x_624, x_626, x_628, x_630);
    let x_638 : vec4<bool> = (vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_638.x, x_638.y);
    let x_641 : bool = u_xlatb7.y;
    if (x_641) {
      let x_646 : f32 = u_xlat6.w;
      x_642 = x_646;
    } else {
      let x_649 : f32 = u_xlat6.x;
      x_642 = x_649;
    }
    let x_650 : f32 = x_642;
    u_xlat43 = x_650;
    let x_652 : bool = u_xlatb7.x;
    if (x_652) {
      let x_656 : vec4<f32> = u_xlat6;
      x_653 = vec3<f32>(x_656.x, x_656.y, x_656.z);
    } else {
      let x_659 : f32 = u_xlat43;
      x_653 = vec3<f32>(x_659, x_659, x_659);
    }
    let x_661 : vec3<f32> = x_653;
    let x_662 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_668 : vec4<f32> = u_xlat6;
  let x_671 : vec4<f32> = x_29.x_MainLightColor;
  let x_673 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec3<f32> = u_xlat3;
  let x_678 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(-(x_676), vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : f32 = u_xlat43;
  let x_682 : f32 = u_xlat43;
  u_xlat43 = (x_681 + x_682);
  let x_684 : vec4<f32> = u_xlat2;
  let x_686 : f32 = u_xlat43;
  let x_690 : vec3<f32> = u_xlat3;
  let x_692 : vec3<f32> = ((vec3<f32>(x_684.x, x_684.y, x_684.z) * -(vec3<f32>(x_686, x_686, x_686))) + -(x_690));
  let x_693 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat2;
  let x_697 : vec3<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_695.x, x_695.y, x_695.z), x_697);
  let x_699 : f32 = u_xlat43;
  u_xlat43 = clamp(x_699, 0.0f, 1.0f);
  let x_701 : f32 = u_xlat43;
  u_xlat43 = (-(x_701) + 1.0f);
  let x_704 : f32 = u_xlat43;
  let x_705 : f32 = u_xlat43;
  u_xlat43 = (x_704 * x_705);
  let x_707 : f32 = u_xlat43;
  let x_708 : f32 = u_xlat43;
  u_xlat43 = (x_707 * x_708);
  let x_711 : f32 = u_xlat1.x;
  u_xlat47 = ((-(x_711) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_718 : f32 = u_xlat1.x;
  let x_719 : f32 = u_xlat47;
  u_xlat1.x = (x_718 * x_719);
  let x_723 : f32 = u_xlat1.x;
  u_xlat1.x = (x_723 * 6.0f);
  let x_735 : vec4<f32> = u_xlat7;
  let x_738 : f32 = u_xlat1.x;
  let x_739 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_735.x, x_735.y, x_735.z), x_738);
  u_xlat7 = x_739;
  let x_741 : f32 = u_xlat7.w;
  u_xlat1.x = (x_741 + -1.0f);
  let x_745 : f32 = x_329.unity_SpecCube0_HDR.w;
  let x_747 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_745 * x_747) + 1.0f);
  let x_752 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_752, 0.0f);
  let x_756 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_756);
  let x_760 : f32 = u_xlat1.x;
  let x_762 : f32 = x_329.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_760 * x_762);
  let x_766 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_766);
  let x_770 : f32 = u_xlat1.x;
  let x_772 : f32 = x_329.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_770 * x_772);
  let x_775 : vec4<f32> = u_xlat7;
  let x_777 : vec4<f32> = u_xlat1;
  let x_779 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_777.x, x_777.x, x_777.x));
  let x_780 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_784 : f32 = u_xlat44;
  let x_786 : f32 = u_xlat44;
  u_xlat8 = ((vec2<f32>(x_784, x_784) * vec2<f32>(x_786, x_786)) + vec2<f32>(-1.0f, 1.0f));
  let x_792 : f32 = u_xlat8.y;
  u_xlat1.x = (1.0f / x_792);
  let x_796 : vec4<f32> = u_xlat0;
  let x_799 : f32 = u_xlat42;
  u_xlat22 = (-(vec3<f32>(x_796.x, x_796.y, x_796.z)) + vec3<f32>(x_799, x_799, x_799));
  let x_802 : f32 = u_xlat43;
  let x_804 : vec3<f32> = u_xlat22;
  let x_806 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_802, x_802, x_802) * x_804) + vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec4<f32> = u_xlat1;
  let x_811 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_809.x, x_809.x, x_809.x) * x_811);
  let x_813 : vec4<f32> = u_xlat7;
  let x_815 : vec3<f32> = u_xlat22;
  let x_816 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) * x_815);
  let x_817 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec3<f32> = u_xlat4;
  let x_820 : vec4<f32> = u_xlat5;
  let x_823 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_819 * vec3<f32>(x_820.x, x_820.y, x_820.z)) + vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_827 : f32 = u_xlat15.x;
  let x_829 : f32 = x_329.unity_LightData.z;
  u_xlat42 = (x_827 * x_829);
  let x_831 : vec4<f32> = u_xlat2;
  let x_834 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_831.x, x_831.y, x_831.z), vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_839 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_839, 0.0f, 1.0f);
  let x_842 : f32 = u_xlat42;
  let x_844 : f32 = u_xlat1.x;
  u_xlat42 = (x_842 * x_844);
  let x_846 : f32 = u_xlat42;
  let x_848 : vec4<f32> = u_xlat6;
  let x_850 : vec3<f32> = (vec3<f32>(x_846, x_846, x_846) * vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_851 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_850.z);
  let x_853 : vec3<f32> = u_xlat3;
  let x_855 : vec4<f32> = x_29.x_MainLightPosition;
  let x_857 : vec3<f32> = (x_853 + vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat6;
  let x_862 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_860.x, x_860.y, x_860.z), vec3<f32>(x_862.x, x_862.y, x_862.z));
  let x_865 : f32 = u_xlat42;
  u_xlat42 = max(x_865, 1.17549435e-38f);
  let x_868 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_868);
  let x_870 : f32 = u_xlat42;
  let x_872 : vec4<f32> = u_xlat6;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat2;
  let x_879 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : f32 = u_xlat42;
  u_xlat42 = clamp(x_882, 0.0f, 1.0f);
  let x_885 : vec4<f32> = x_29.x_MainLightPosition;
  let x_887 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_885.x, x_885.y, x_885.z), vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : f32 = u_xlat44;
  u_xlat44 = clamp(x_890, 0.0f, 1.0f);
  let x_892 : f32 = u_xlat42;
  let x_893 : f32 = u_xlat42;
  u_xlat42 = (x_892 * x_893);
  let x_895 : f32 = u_xlat42;
  let x_897 : f32 = u_xlat8.x;
  u_xlat42 = ((x_895 * x_897) + 1.00001001358032226562f);
  let x_901 : f32 = u_xlat44;
  let x_902 : f32 = u_xlat44;
  u_xlat44 = (x_901 * x_902);
  let x_904 : f32 = u_xlat42;
  let x_905 : f32 = u_xlat42;
  u_xlat42 = (x_904 * x_905);
  let x_907 : f32 = u_xlat44;
  u_xlat44 = max(x_907, 0.10000000149011611938f);
  let x_910 : f32 = u_xlat42;
  let x_911 : f32 = u_xlat44;
  u_xlat42 = (x_910 * x_911);
  let x_913 : f32 = u_xlat45;
  let x_914 : f32 = u_xlat42;
  u_xlat42 = (x_913 * x_914);
  let x_916 : f32 = u_xlat46;
  let x_917 : f32 = u_xlat42;
  u_xlat42 = (x_916 / x_917);
  let x_919 : vec4<f32> = u_xlat0;
  let x_921 : f32 = u_xlat42;
  let x_924 : vec4<f32> = u_xlat5;
  let x_926 : vec3<f32> = ((vec3<f32>(x_919.x, x_919.y, x_919.z) * vec3<f32>(x_921, x_921, x_921)) + vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_930 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_932 : f32 = x_329.unity_LightData.y;
  u_xlat42 = min(x_930, x_932);
  let x_935 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_935));
  let x_938 : f32 = u_xlat29;
  let x_941 : f32 = x_153.x_AdditionalShadowFadeParams.x;
  let x_944 : f32 = x_153.x_AdditionalShadowFadeParams.y;
  u_xlat29 = ((x_938 * x_941) + x_944);
  let x_946 : f32 = u_xlat29;
  u_xlat29 = clamp(x_946, 0.0f, 1.0f);
  let x_949 : f32 = x_557.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_951 : f32 = x_557.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_953 : f32 = x_557.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_955 : f32 = x_557.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_956 : vec4<f32> = vec4<f32>(x_949, x_951, x_953, x_955);
  let x_962 : vec4<bool> = (vec4<f32>(x_956.x, x_956.y, x_956.z, x_956.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_962.x, x_962.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_974 : u32 = u_xlatu_loop_1;
    let x_975 : u32 = u_xlatu42;
    if ((x_974 < x_975)) {
    } else {
      break;
    }
    let x_978 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_978 >> 2u);
    let x_981 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_981 & 3u));
    let x_984 : u32 = u_xlatu47;
    let x_987 : vec4<f32> = x_329.unity_LightIndices[bitcast<i32>(x_984)];
    let x_997 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1002 : vec4<u32> = indexable[x_997];
    u_xlat47 = dot(x_987, bitcast<vec4<f32>>(x_1002));
    let x_1006 : f32 = u_xlat47;
    u_xlati47 = i32(x_1006);
    let x_1009 : vec3<f32> = vs_TEXCOORD7;
    let x_1020 : i32 = u_xlati47;
    let x_1022 : vec4<f32> = x_1019.x_AdditionalLightsPosition[x_1020];
    let x_1025 : i32 = u_xlati47;
    let x_1027 : vec4<f32> = x_1019.x_AdditionalLightsPosition[x_1025];
    u_xlat9 = ((-(x_1009) * vec3<f32>(x_1022.w, x_1022.w, x_1022.w)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
    let x_1031 : vec3<f32> = u_xlat9;
    let x_1032 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1031, x_1032);
    let x_1034 : f32 = u_xlat48;
    u_xlat48 = max(x_1034, 0.00006103515625f);
    let x_1038 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1038);
    let x_1041 : f32 = u_xlat35;
    let x_1043 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1041, x_1041, x_1041) * x_1043);
    let x_1046 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1046);
    let x_1048 : f32 = u_xlat48;
    let x_1049 : i32 = u_xlati47;
    let x_1051 : f32 = x_1019.x_AdditionalLightsAttenuation[x_1049].x;
    u_xlat48 = (x_1048 * x_1051);
    let x_1053 : f32 = u_xlat48;
    let x_1055 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1053) * x_1055) + 1.0f);
    let x_1058 : f32 = u_xlat48;
    u_xlat48 = max(x_1058, 0.0f);
    let x_1060 : f32 = u_xlat48;
    let x_1061 : f32 = u_xlat48;
    u_xlat48 = (x_1060 * x_1061);
    let x_1063 : f32 = u_xlat48;
    let x_1064 : f32 = u_xlat49;
    u_xlat48 = (x_1063 * x_1064);
    let x_1066 : i32 = u_xlati47;
    let x_1068 : vec4<f32> = x_1019.x_AdditionalLightsSpotDir[x_1066];
    let x_1070 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), x_1070);
    let x_1072 : f32 = u_xlat49;
    let x_1073 : i32 = u_xlati47;
    let x_1075 : f32 = x_1019.x_AdditionalLightsAttenuation[x_1073].z;
    let x_1077 : i32 = u_xlati47;
    let x_1079 : f32 = x_1019.x_AdditionalLightsAttenuation[x_1077].w;
    u_xlat49 = ((x_1072 * x_1075) + x_1079);
    let x_1081 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1081, 0.0f, 1.0f);
    let x_1083 : f32 = u_xlat49;
    let x_1084 : f32 = u_xlat49;
    u_xlat49 = (x_1083 * x_1084);
    let x_1086 : f32 = u_xlat48;
    let x_1087 : f32 = u_xlat49;
    u_xlat48 = (x_1086 * x_1087);
    let x_1091 : i32 = u_xlati47;
    let x_1093 : f32 = x_153.x_AdditionalShadowParams[x_1091].w;
    u_xlati49 = i32(x_1093);
    let x_1096 : i32 = u_xlati49;
    u_xlatb51 = (x_1096 >= 0i);
    let x_1098 : bool = u_xlatb51;
    if (x_1098) {
      let x_1102 : i32 = u_xlati47;
      let x_1104 : f32 = x_153.x_AdditionalShadowParams[x_1102].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1104, x_1104, x_1104, x_1104))));
      let x_1108 : bool = u_xlatb51;
      if (x_1108) {
        let x_1112 : vec3<f32> = u_xlat10;
        let x_1115 : vec3<f32> = u_xlat10;
        let x_1118 : vec4<bool> = (abs(vec4<f32>(x_1112.z, x_1112.z, x_1112.y, x_1112.z)) >= abs(vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.x)));
        let x_1120 : vec3<bool> = vec3<bool>(x_1118.x, x_1118.y, x_1118.z);
        let x_1121 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
        let x_1124 : bool = u_xlatb11.y;
        let x_1126 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1124 & x_1126);
        let x_1128 : vec3<f32> = u_xlat10;
        let x_1131 : vec4<bool> = (-(vec4<f32>(x_1128.z, x_1128.y, x_1128.z, x_1128.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1132 : vec3<bool> = vec3<bool>(x_1131.x, x_1131.y, x_1131.w);
        let x_1133 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1132.x, x_1132.y, x_1133.z, x_1132.z);
        let x_1137 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1137);
        let x_1142 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1142);
        let x_1147 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1147);
        let x_1150 : bool = u_xlatb11.z;
        if (x_1150) {
          let x_1155 : f32 = u_xlat11.y;
          x_1151 = x_1155;
        } else {
          let x_1157 : f32 = u_xlat52;
          x_1151 = x_1157;
        }
        let x_1158 : f32 = x_1151;
        u_xlat52 = x_1158;
        let x_1160 : bool = u_xlatb51;
        if (x_1160) {
          let x_1165 : f32 = u_xlat11.x;
          x_1161 = x_1165;
        } else {
          let x_1167 : f32 = u_xlat52;
          x_1161 = x_1167;
        }
        let x_1168 : f32 = x_1161;
        u_xlat51 = x_1168;
        let x_1169 : i32 = u_xlati47;
        let x_1171 : f32 = x_153.x_AdditionalShadowParams[x_1169].w;
        u_xlat52 = trunc(x_1171);
        let x_1173 : f32 = u_xlat51;
        let x_1174 : f32 = u_xlat52;
        u_xlat51 = (x_1173 + x_1174);
        let x_1176 : f32 = u_xlat51;
        u_xlati49 = i32(x_1176);
      }
      let x_1178 : i32 = u_xlati49;
      u_xlati49 = (x_1178 << bitcast<u32>(2i));
      let x_1180 : vec3<f32> = vs_TEXCOORD7;
      let x_1183 : i32 = u_xlati49;
      let x_1186 : i32 = u_xlati49;
      let x_1190 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_1183 + 1i) / 4i)][((x_1186 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1180.y, x_1180.y, x_1180.y, x_1180.y) * x_1190);
      let x_1192 : i32 = u_xlati49;
      let x_1194 : i32 = u_xlati49;
      let x_1197 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[(x_1192 / 4i)][(x_1194 % 4i)];
      let x_1198 : vec3<f32> = vs_TEXCOORD7;
      let x_1201 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1197 * vec4<f32>(x_1198.x, x_1198.x, x_1198.x, x_1198.x)) + x_1201);
      let x_1203 : i32 = u_xlati49;
      let x_1206 : i32 = u_xlati49;
      let x_1210 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_1203 + 2i) / 4i)][((x_1206 + 2i) % 4i)];
      let x_1211 : vec3<f32> = vs_TEXCOORD7;
      let x_1214 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1210 * vec4<f32>(x_1211.z, x_1211.z, x_1211.z, x_1211.z)) + x_1214);
      let x_1216 : vec4<f32> = u_xlat11;
      let x_1217 : i32 = u_xlati49;
      let x_1220 : i32 = u_xlati49;
      let x_1224 : vec4<f32> = x_153.x_AdditionalLightsWorldToShadow[((x_1217 + 3i) / 4i)][((x_1220 + 3i) % 4i)];
      u_xlat11 = (x_1216 + x_1224);
      let x_1226 : vec4<f32> = u_xlat11;
      let x_1228 : vec4<f32> = u_xlat11;
      let x_1230 : vec3<f32> = (vec3<f32>(x_1226.x, x_1226.y, x_1226.z) / vec3<f32>(x_1228.w, x_1228.w, x_1228.w));
      let x_1231 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
      let x_1234 : vec4<f32> = u_xlat11;
      let x_1235 : vec2<f32> = vec2<f32>(x_1234.x, x_1234.y);
      let x_1237 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1235.x, x_1235.y, x_1237);
      let x_1245 : vec3<f32> = txVec1;
      let x_1247 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1245.xy, x_1245.z);
      u_xlat49 = x_1247;
      let x_1248 : i32 = u_xlati47;
      let x_1250 : f32 = x_153.x_AdditionalShadowParams[x_1248].x;
      u_xlat51 = (1.0f + -(x_1250));
      let x_1253 : f32 = u_xlat49;
      let x_1254 : i32 = u_xlati47;
      let x_1256 : f32 = x_153.x_AdditionalShadowParams[x_1254].x;
      let x_1258 : f32 = u_xlat51;
      u_xlat49 = ((x_1253 * x_1256) + x_1258);
      let x_1261 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1261);
      let x_1265 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1265 >= 1.0f);
      let x_1267 : bool = u_xlatb51;
      let x_1268 : bool = u_xlatb52;
      u_xlatb51 = (x_1267 | x_1268);
      let x_1270 : bool = u_xlatb51;
      let x_1271 : f32 = u_xlat49;
      u_xlat49 = select(x_1271, 1.0f, x_1270);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1274 : f32 = u_xlat49;
    u_xlat51 = (-(x_1274) + 1.0f);
    let x_1277 : f32 = u_xlat29;
    let x_1278 : f32 = u_xlat51;
    let x_1280 : f32 = u_xlat49;
    u_xlat49 = ((x_1277 * x_1278) + x_1280);
    let x_1283 : i32 = u_xlati47;
    u_xlati51 = (1i << bitcast<u32>((x_1283 & 31i)));
    let x_1287 : i32 = u_xlati51;
    let x_1290 : f32 = x_557.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1287) & bitcast<u32>(x_1290)));
    let x_1294 : i32 = u_xlati51;
    if ((x_1294 != 0i)) {
      let x_1298 : i32 = u_xlati47;
      let x_1300 : f32 = x_557.x_AdditionalLightsLightTypes[x_1298].el;
      u_xlati51 = i32(x_1300);
      let x_1303 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1303 != 0i));
      let x_1307 : i32 = u_xlati47;
      u_xlati11 = (x_1307 << bitcast<u32>(2i));
      let x_1309 : i32 = u_xlati52;
      if ((x_1309 != 0i)) {
        let x_1314 : vec3<f32> = vs_TEXCOORD7;
        let x_1316 : i32 = u_xlati11;
        let x_1319 : i32 = u_xlati11;
        let x_1323 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[((x_1316 + 1i) / 4i)][((x_1319 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1314.y, x_1314.y, x_1314.y) * vec3<f32>(x_1323.x, x_1323.y, x_1323.w));
        let x_1326 : i32 = u_xlati11;
        let x_1328 : i32 = u_xlati11;
        let x_1331 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[(x_1326 / 4i)][(x_1328 % 4i)];
        let x_1333 : vec3<f32> = vs_TEXCOORD7;
        let x_1336 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1331.x, x_1331.y, x_1331.w) * vec3<f32>(x_1333.x, x_1333.x, x_1333.x)) + x_1336);
        let x_1338 : i32 = u_xlati11;
        let x_1341 : i32 = u_xlati11;
        let x_1345 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[((x_1338 + 2i) / 4i)][((x_1341 + 2i) % 4i)];
        let x_1347 : vec3<f32> = vs_TEXCOORD7;
        let x_1350 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1345.x, x_1345.y, x_1345.w) * vec3<f32>(x_1347.z, x_1347.z, x_1347.z)) + x_1350);
        let x_1352 : vec3<f32> = u_xlat25;
        let x_1353 : i32 = u_xlati11;
        let x_1356 : i32 = u_xlati11;
        let x_1360 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[((x_1353 + 3i) / 4i)][((x_1356 + 3i) % 4i)];
        u_xlat25 = (x_1352 + vec3<f32>(x_1360.x, x_1360.y, x_1360.w));
        let x_1363 : vec3<f32> = u_xlat25;
        let x_1365 : vec3<f32> = u_xlat25;
        let x_1367 : vec2<f32> = (vec2<f32>(x_1363.x, x_1363.y) / vec2<f32>(x_1365.z, x_1365.z));
        let x_1368 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1367.x, x_1367.y, x_1368.z);
        let x_1370 : vec3<f32> = u_xlat25;
        let x_1373 : vec2<f32> = ((vec2<f32>(x_1370.x, x_1370.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1374 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1373.x, x_1373.y, x_1374.z);
        let x_1376 : vec3<f32> = u_xlat25;
        let x_1380 : vec2<f32> = clamp(vec2<f32>(x_1376.x, x_1376.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1381 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1380.x, x_1380.y, x_1381.z);
        let x_1383 : i32 = u_xlati47;
        let x_1385 : vec4<f32> = x_557.x_AdditionalLightsCookieAtlasUVRects[x_1383];
        let x_1387 : vec3<f32> = u_xlat25;
        let x_1390 : i32 = u_xlati47;
        let x_1392 : vec4<f32> = x_557.x_AdditionalLightsCookieAtlasUVRects[x_1390];
        let x_1394 : vec2<f32> = ((vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(x_1387.x, x_1387.y)) + vec2<f32>(x_1392.z, x_1392.w));
        let x_1395 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1394.x, x_1394.y, x_1395.z);
      } else {
        let x_1398 : i32 = u_xlati51;
        u_xlatb51 = (x_1398 == 1i);
        let x_1400 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1400);
        let x_1402 : i32 = u_xlati51;
        if ((x_1402 != 0i)) {
          let x_1407 : vec3<f32> = vs_TEXCOORD7;
          let x_1409 : i32 = u_xlati11;
          let x_1412 : i32 = u_xlati11;
          let x_1416 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[((x_1409 + 1i) / 4i)][((x_1412 + 1i) % 4i)];
          let x_1418 : vec2<f32> = (vec2<f32>(x_1407.y, x_1407.y) * vec2<f32>(x_1416.x, x_1416.y));
          let x_1419 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1418.x, x_1418.y, x_1419.z, x_1419.w);
          let x_1421 : i32 = u_xlati11;
          let x_1423 : i32 = u_xlati11;
          let x_1426 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[(x_1421 / 4i)][(x_1423 % 4i)];
          let x_1428 : vec3<f32> = vs_TEXCOORD7;
          let x_1431 : vec4<f32> = u_xlat12;
          let x_1433 : vec2<f32> = ((vec2<f32>(x_1426.x, x_1426.y) * vec2<f32>(x_1428.x, x_1428.x)) + vec2<f32>(x_1431.x, x_1431.y));
          let x_1434 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1433.x, x_1433.y, x_1434.z, x_1434.w);
          let x_1436 : i32 = u_xlati11;
          let x_1439 : i32 = u_xlati11;
          let x_1443 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[((x_1436 + 2i) / 4i)][((x_1439 + 2i) % 4i)];
          let x_1445 : vec3<f32> = vs_TEXCOORD7;
          let x_1448 : vec4<f32> = u_xlat12;
          let x_1450 : vec2<f32> = ((vec2<f32>(x_1443.x, x_1443.y) * vec2<f32>(x_1445.z, x_1445.z)) + vec2<f32>(x_1448.x, x_1448.y));
          let x_1451 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1450.x, x_1450.y, x_1451.z, x_1451.w);
          let x_1453 : vec4<f32> = u_xlat12;
          let x_1455 : i32 = u_xlati11;
          let x_1458 : i32 = u_xlati11;
          let x_1462 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[((x_1455 + 3i) / 4i)][((x_1458 + 3i) % 4i)];
          let x_1464 : vec2<f32> = (vec2<f32>(x_1453.x, x_1453.y) + vec2<f32>(x_1462.x, x_1462.y));
          let x_1465 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1464.x, x_1464.y, x_1465.z, x_1465.w);
          let x_1467 : vec4<f32> = u_xlat12;
          let x_1470 : vec2<f32> = ((vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1471 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1470.x, x_1470.y, x_1471.z, x_1471.w);
          let x_1473 : vec4<f32> = u_xlat12;
          let x_1475 : vec2<f32> = fract(vec2<f32>(x_1473.x, x_1473.y));
          let x_1476 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1475.x, x_1475.y, x_1476.z, x_1476.w);
          let x_1478 : i32 = u_xlati47;
          let x_1480 : vec4<f32> = x_557.x_AdditionalLightsCookieAtlasUVRects[x_1478];
          let x_1482 : vec4<f32> = u_xlat12;
          let x_1485 : i32 = u_xlati47;
          let x_1487 : vec4<f32> = x_557.x_AdditionalLightsCookieAtlasUVRects[x_1485];
          let x_1489 : vec2<f32> = ((vec2<f32>(x_1480.x, x_1480.y) * vec2<f32>(x_1482.x, x_1482.y)) + vec2<f32>(x_1487.z, x_1487.w));
          let x_1490 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1489.x, x_1489.y, x_1490.z);
        } else {
          let x_1493 : vec3<f32> = vs_TEXCOORD7;
          let x_1495 : i32 = u_xlati11;
          let x_1498 : i32 = u_xlati11;
          let x_1502 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[((x_1495 + 1i) / 4i)][((x_1498 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1493.y, x_1493.y, x_1493.y, x_1493.y) * x_1502);
          let x_1504 : i32 = u_xlati11;
          let x_1506 : i32 = u_xlati11;
          let x_1509 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[(x_1504 / 4i)][(x_1506 % 4i)];
          let x_1510 : vec3<f32> = vs_TEXCOORD7;
          let x_1513 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1509 * vec4<f32>(x_1510.x, x_1510.x, x_1510.x, x_1510.x)) + x_1513);
          let x_1515 : i32 = u_xlati11;
          let x_1518 : i32 = u_xlati11;
          let x_1522 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[((x_1515 + 2i) / 4i)][((x_1518 + 2i) % 4i)];
          let x_1523 : vec3<f32> = vs_TEXCOORD7;
          let x_1526 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1522 * vec4<f32>(x_1523.z, x_1523.z, x_1523.z, x_1523.z)) + x_1526);
          let x_1528 : vec4<f32> = u_xlat12;
          let x_1529 : i32 = u_xlati11;
          let x_1532 : i32 = u_xlati11;
          let x_1536 : vec4<f32> = x_557.x_AdditionalLightsWorldToLights[((x_1529 + 3i) / 4i)][((x_1532 + 3i) % 4i)];
          u_xlat12 = (x_1528 + x_1536);
          let x_1538 : vec4<f32> = u_xlat12;
          let x_1540 : vec4<f32> = u_xlat12;
          let x_1542 : vec3<f32> = (vec3<f32>(x_1538.x, x_1538.y, x_1538.z) / vec3<f32>(x_1540.w, x_1540.w, x_1540.w));
          let x_1543 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
          let x_1545 : vec4<f32> = u_xlat12;
          let x_1547 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1545.x, x_1545.y, x_1545.z), vec3<f32>(x_1547.x, x_1547.y, x_1547.z));
          let x_1550 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1550);
          let x_1552 : f32 = u_xlat51;
          let x_1554 : vec4<f32> = u_xlat12;
          let x_1556 : vec3<f32> = (vec3<f32>(x_1552, x_1552, x_1552) * vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
          let x_1557 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
          let x_1559 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1559.x, x_1559.y, x_1559.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1564 : f32 = u_xlat51;
          u_xlat51 = max(x_1564, 0.00000099999999747524f);
          let x_1567 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1567);
          let x_1570 : f32 = u_xlat51;
          let x_1572 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1570, x_1570, x_1570) * vec3<f32>(x_1572.z, x_1572.x, x_1572.y));
          let x_1576 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1576);
          let x_1580 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1580, 0.0f, 1.0f);
          let x_1583 : vec3<f32> = u_xlat13;
          let x_1585 : vec4<bool> = (vec4<f32>(x_1583.y, x_1583.y, x_1583.y, x_1583.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1586 : vec2<bool> = vec2<bool>(x_1585.x, x_1585.w);
          let x_1587 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1586.x, x_1587.y, x_1587.z, x_1586.y);
          let x_1590 : bool = u_xlatb11.x;
          if (x_1590) {
            let x_1595 : f32 = u_xlat13.x;
            x_1591 = x_1595;
          } else {
            let x_1598 : f32 = u_xlat13.x;
            x_1591 = -(x_1598);
          }
          let x_1600 : f32 = x_1591;
          u_xlat11.x = x_1600;
          let x_1603 : bool = u_xlatb11.w;
          if (x_1603) {
            let x_1608 : f32 = u_xlat13.x;
            x_1604 = x_1608;
          } else {
            let x_1611 : f32 = u_xlat13.x;
            x_1604 = -(x_1611);
          }
          let x_1613 : f32 = x_1604;
          u_xlat11.w = x_1613;
          let x_1615 : vec4<f32> = u_xlat12;
          let x_1617 : f32 = u_xlat51;
          let x_1620 : vec4<f32> = u_xlat11;
          let x_1622 : vec2<f32> = ((vec2<f32>(x_1615.x, x_1615.y) * vec2<f32>(x_1617, x_1617)) + vec2<f32>(x_1620.x, x_1620.w));
          let x_1623 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1622.x, x_1623.y, x_1623.z, x_1622.y);
          let x_1625 : vec4<f32> = u_xlat11;
          let x_1628 : vec2<f32> = ((vec2<f32>(x_1625.x, x_1625.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1629 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1628.x, x_1629.y, x_1629.z, x_1628.y);
          let x_1631 : vec4<f32> = u_xlat11;
          let x_1635 : vec2<f32> = clamp(vec2<f32>(x_1631.x, x_1631.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1636 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1635.x, x_1636.y, x_1636.z, x_1635.y);
          let x_1638 : i32 = u_xlati47;
          let x_1640 : vec4<f32> = x_557.x_AdditionalLightsCookieAtlasUVRects[x_1638];
          let x_1642 : vec4<f32> = u_xlat11;
          let x_1645 : i32 = u_xlati47;
          let x_1647 : vec4<f32> = x_557.x_AdditionalLightsCookieAtlasUVRects[x_1645];
          let x_1649 : vec2<f32> = ((vec2<f32>(x_1640.x, x_1640.y) * vec2<f32>(x_1642.x, x_1642.w)) + vec2<f32>(x_1647.z, x_1647.w));
          let x_1650 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1649.x, x_1649.y, x_1650.z);
        }
      }
      let x_1657 : vec3<f32> = u_xlat25;
      let x_1659 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1657.x, x_1657.y), 0.0f);
      u_xlat11 = x_1659;
      let x_1661 : bool = u_xlatb7.y;
      if (x_1661) {
        let x_1666 : f32 = u_xlat11.w;
        x_1662 = x_1666;
      } else {
        let x_1669 : f32 = u_xlat11.x;
        x_1662 = x_1669;
      }
      let x_1670 : f32 = x_1662;
      u_xlat51 = x_1670;
      let x_1672 : bool = u_xlatb7.x;
      if (x_1672) {
        let x_1676 : vec4<f32> = u_xlat11;
        x_1673 = vec3<f32>(x_1676.x, x_1676.y, x_1676.z);
      } else {
        let x_1679 : f32 = u_xlat51;
        x_1673 = vec3<f32>(x_1679, x_1679, x_1679);
      }
      let x_1681 : vec3<f32> = x_1673;
      let x_1682 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1682.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1688 : vec4<f32> = u_xlat11;
    let x_1690 : i32 = u_xlati47;
    let x_1692 : vec4<f32> = x_1019.x_AdditionalLightsColor[x_1690];
    let x_1694 : vec3<f32> = (vec3<f32>(x_1688.x, x_1688.y, x_1688.z) * vec3<f32>(x_1692.x, x_1692.y, x_1692.z));
    let x_1695 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1695.w);
    let x_1697 : f32 = u_xlat48;
    let x_1698 : f32 = u_xlat49;
    u_xlat47 = (x_1697 * x_1698);
    let x_1700 : vec4<f32> = u_xlat2;
    let x_1702 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1700.x, x_1700.y, x_1700.z), x_1702);
    let x_1704 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1704, 0.0f, 1.0f);
    let x_1706 : f32 = u_xlat47;
    let x_1707 : f32 = u_xlat48;
    u_xlat47 = (x_1706 * x_1707);
    let x_1709 : f32 = u_xlat47;
    let x_1711 : vec4<f32> = u_xlat11;
    let x_1713 : vec3<f32> = (vec3<f32>(x_1709, x_1709, x_1709) * vec3<f32>(x_1711.x, x_1711.y, x_1711.z));
    let x_1714 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
    let x_1716 : vec3<f32> = u_xlat9;
    let x_1717 : f32 = u_xlat35;
    let x_1720 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1716 * vec3<f32>(x_1717, x_1717, x_1717)) + x_1720);
    let x_1722 : vec3<f32> = u_xlat9;
    let x_1723 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1722, x_1723);
    let x_1725 : f32 = u_xlat47;
    u_xlat47 = max(x_1725, 1.17549435e-38f);
    let x_1727 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1727);
    let x_1729 : f32 = u_xlat47;
    let x_1731 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1729, x_1729, x_1729) * x_1731);
    let x_1733 : vec4<f32> = u_xlat2;
    let x_1735 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1733.x, x_1733.y, x_1733.z), x_1735);
    let x_1737 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1737, 0.0f, 1.0f);
    let x_1739 : vec3<f32> = u_xlat10;
    let x_1740 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1739, x_1740);
    let x_1742 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1742, 0.0f, 1.0f);
    let x_1744 : f32 = u_xlat47;
    let x_1745 : f32 = u_xlat47;
    u_xlat47 = (x_1744 * x_1745);
    let x_1747 : f32 = u_xlat47;
    let x_1749 : f32 = u_xlat8.x;
    u_xlat47 = ((x_1747 * x_1749) + 1.00001001358032226562f);
    let x_1752 : f32 = u_xlat48;
    let x_1753 : f32 = u_xlat48;
    u_xlat48 = (x_1752 * x_1753);
    let x_1755 : f32 = u_xlat47;
    let x_1756 : f32 = u_xlat47;
    u_xlat47 = (x_1755 * x_1756);
    let x_1758 : f32 = u_xlat48;
    u_xlat48 = max(x_1758, 0.10000000149011611938f);
    let x_1760 : f32 = u_xlat47;
    let x_1761 : f32 = u_xlat48;
    u_xlat47 = (x_1760 * x_1761);
    let x_1763 : f32 = u_xlat45;
    let x_1764 : f32 = u_xlat47;
    u_xlat47 = (x_1763 * x_1764);
    let x_1766 : f32 = u_xlat46;
    let x_1767 : f32 = u_xlat47;
    u_xlat47 = (x_1766 / x_1767);
    let x_1769 : vec4<f32> = u_xlat0;
    let x_1771 : f32 = u_xlat47;
    let x_1774 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1769.x, x_1769.y, x_1769.z) * vec3<f32>(x_1771, x_1771, x_1771)) + vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
    let x_1777 : vec3<f32> = u_xlat9;
    let x_1778 : vec4<f32> = u_xlat11;
    let x_1781 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1777 * vec3<f32>(x_1778.x, x_1778.y, x_1778.z)) + x_1781);

    continuing {
      let x_1783 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1783 + bitcast<u32>(1i));
    }
  }
  let x_1785 : vec4<f32> = u_xlat6;
  let x_1787 : vec4<f32> = u_xlat1;
  let x_1790 : vec3<f32> = u_xlat4;
  let x_1791 : vec3<f32> = ((vec3<f32>(x_1785.x, x_1785.y, x_1785.z) * vec3<f32>(x_1787.x, x_1787.y, x_1787.w)) + x_1790);
  let x_1792 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1792.w);
  let x_1796 : vec3<f32> = u_xlat22;
  let x_1797 : vec4<f32> = u_xlat0;
  let x_1799 : vec3<f32> = (x_1796 + vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
  let x_1800 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
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


