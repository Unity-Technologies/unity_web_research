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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
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

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_83 : LightShadows;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu13 : u32;

var<private> u_xlati13 : i32;

@group(1) @binding(2) var<uniform> x_320 : UnityPerDraw;

var<private> u_xlat38 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat25 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb37 : bool;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_868 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_502 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1013 : f32;
  var x_1024 : f32;
  var txVec1 : vec3<f32>;
  var x_1141 : f32;
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
  let x_55 : vec4<f32> = vs_TEXCOORD3;
  let x_57 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_55.x, x_55.y, x_55.z), vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_62 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_62);
  let x_66 : vec3<f32> = u_xlat13;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec3<f32> = (vec3<f32>(x_66.x, x_66.x, x_66.x) * vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_75 : vec3<f32> = vs_TEXCOORD7;
  let x_87 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres0;
  u_xlat13 = (x_75 + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
  let x_92 : vec3<f32> = vs_TEXCOORD7;
  let x_95 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_92 + -(vec3<f32>(x_95.x, x_95.y, x_95.z)));
  let x_100 : vec3<f32> = vs_TEXCOORD7;
  let x_103 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres2;
  let x_106 : vec3<f32> = (x_100 + -(vec3<f32>(x_103.x, x_103.y, x_103.z)));
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : vec3<f32> = vs_TEXCOORD7;
  let x_113 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres3;
  let x_116 : vec3<f32> = (x_110 + -(vec3<f32>(x_113.x, x_113.y, x_113.z)));
  let x_117 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec3<f32> = u_xlat13;
  let x_121 : vec3<f32> = u_xlat13;
  u_xlat6.x = dot(x_120, x_121);
  let x_124 : vec3<f32> = u_xlat3;
  let x_125 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_124, x_125);
  let x_129 : vec4<f32> = u_xlat4;
  let x_131 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_129.x, x_129.y, x_129.z), vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_136 : vec4<f32> = u_xlat5;
  let x_138 : vec4<f32> = u_xlat5;
  u_xlat6.w = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_147 : vec4<f32> = u_xlat6;
  let x_150 : vec4<f32> = x_83.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_147 < x_150);
  let x_154 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_154);
  let x_160 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb3.x;
  u_xlat13.x = select(-0.0f, -1.0f, x_172);
  let x_178 : bool = u_xlatb3.y;
  u_xlat13.y = select(-0.0f, -1.0f, x_178);
  let x_182 : bool = u_xlatb3.z;
  u_xlat13.z = select(-0.0f, -1.0f, x_182);
  let x_185 : vec3<f32> = u_xlat13;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat13 = (x_185 + vec3<f32>(x_186.y, x_186.z, x_186.w));
  let x_189 : vec3<f32> = u_xlat13;
  let x_191 : vec3<f32> = max(x_189, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_191.x, x_191.y, x_191.z);
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat13.x = dot(x_194, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_202 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_202) + 4.0f);
  let x_209 : f32 = u_xlat13.x;
  u_xlatu13 = u32(x_209);
  let x_213 : u32 = u_xlatu13;
  u_xlati13 = (bitcast<i32>(x_213) << bitcast<u32>(2i));
  let x_216 : vec3<f32> = vs_TEXCOORD7;
  let x_218 : i32 = u_xlati13;
  let x_221 : i32 = u_xlati13;
  let x_225 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_218 + 1i) / 4i)][((x_221 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_216.y, x_216.y, x_216.y) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : i32 = u_xlati13;
  let x_230 : i32 = u_xlati13;
  let x_233 : vec4<f32> = x_83.x_MainLightWorldToShadow[(x_228 / 4i)][(x_230 % 4i)];
  let x_235 : vec3<f32> = vs_TEXCOORD7;
  let x_238 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + x_238);
  let x_240 : i32 = u_xlati13;
  let x_243 : i32 = u_xlati13;
  let x_247 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_240 + 2i) / 4i)][((x_243 + 2i) % 4i)];
  let x_249 : vec3<f32> = vs_TEXCOORD7;
  let x_252 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.z, x_249.z, x_249.z)) + x_252);
  let x_254 : vec3<f32> = u_xlat3;
  let x_255 : i32 = u_xlati13;
  let x_258 : i32 = u_xlati13;
  let x_262 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_255 + 3i) / 4i)][((x_258 + 3i) % 4i)];
  u_xlat13 = (x_254 + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_267 : f32 = vs_TEXCOORD7.y;
  let x_270 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.x = (x_267 * x_270);
  let x_274 : f32 = x_29.unity_MatrixV[0i].z;
  let x_276 : f32 = vs_TEXCOORD7.x;
  let x_279 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_274 * x_276) + x_279);
  let x_283 : f32 = x_29.unity_MatrixV[2i].z;
  let x_285 : f32 = vs_TEXCOORD7.z;
  let x_288 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_283 * x_285) + x_288);
  let x_292 : f32 = u_xlat3.x;
  let x_294 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat3.x = (x_292 + x_294);
  let x_298 : f32 = u_xlat3.x;
  let x_301 : f32 = x_29.x_ProjectionParams.y;
  u_xlat3.x = (-(x_298) + -(x_301));
  let x_306 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_306, 0.0f);
  let x_310 : f32 = u_xlat3.x;
  let x_313 : f32 = x_29.unity_FogParams.x;
  u_xlat3.x = (x_310 * x_313);
  u_xlat2.w = 1.0f;
  let x_323 : vec4<f32> = x_320.unity_SHAr;
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_323, x_324);
  let x_329 : vec4<f32> = x_320.unity_SHAg;
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_329, x_330);
  let x_335 : vec4<f32> = x_320.unity_SHAb;
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_335, x_336);
  let x_339 : vec4<f32> = u_xlat2;
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_339.y, x_339.z, x_339.z, x_339.x) * vec4<f32>(x_341.x, x_341.y, x_341.z, x_341.z));
  let x_346 : vec4<f32> = x_320.unity_SHBr;
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_346, x_347);
  let x_352 : vec4<f32> = x_320.unity_SHBg;
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_352, x_353);
  let x_358 : vec4<f32> = x_320.unity_SHBb;
  let x_359 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_358, x_359);
  let x_364 : f32 = u_xlat2.y;
  let x_366 : f32 = u_xlat2.y;
  u_xlat38 = (x_364 * x_366);
  let x_369 : f32 = u_xlat2.x;
  let x_371 : f32 = u_xlat2.x;
  let x_373 : f32 = u_xlat38;
  u_xlat38 = ((x_369 * x_371) + -(x_373));
  let x_379 : vec4<f32> = x_320.unity_SHC;
  let x_381 : f32 = u_xlat38;
  let x_384 : vec4<f32> = u_xlat6;
  u_xlat15 = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381, x_381, x_381)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec3<f32> = u_xlat15;
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat15 = (x_387 + vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec3<f32> = u_xlat15;
  u_xlat15 = max(x_391, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_394 : f32 = u_xlat1.x;
  u_xlat38 = ((-(x_394) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_399 : f32 = u_xlat38;
  u_xlat4.x = (-(x_399) + 1.0f);
  let x_404 : vec4<f32> = u_xlat0;
  let x_406 : f32 = u_xlat38;
  u_xlat16 = (vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_406, x_406, x_406));
  let x_409 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat1;
  let x_418 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.x, x_416.x) * vec3<f32>(x_418.x, x_418.y, x_418.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_427 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_427) + 1.0f);
  let x_432 : f32 = u_xlat1.x;
  let x_434 : f32 = u_xlat1.x;
  u_xlat38 = (x_432 * x_434);
  let x_436 : f32 = u_xlat38;
  u_xlat38 = max(x_436, 0.0078125f);
  let x_439 : f32 = u_xlat38;
  let x_440 : f32 = u_xlat38;
  u_xlat5.x = (x_439 * x_440);
  let x_445 : f32 = u_xlat0.w;
  let x_447 : f32 = u_xlat4.x;
  u_xlat36 = (x_445 + x_447);
  let x_449 : f32 = u_xlat36;
  u_xlat36 = clamp(x_449, 0.0f, 1.0f);
  let x_451 : f32 = u_xlat38;
  u_xlat4.x = ((x_451 * 4.0f) + 2.0f);
  let x_457 : vec3<f32> = u_xlat13;
  let x_458 : vec2<f32> = vec2<f32>(x_457.x, x_457.y);
  let x_460 : f32 = u_xlat13.z;
  txVec0 = vec3<f32>(x_458.x, x_458.y, x_460);
  let x_472 : vec3<f32> = txVec0;
  let x_474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_472.xy, x_472.z);
  u_xlat13.x = x_474;
  let x_478 : f32 = x_83.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_478) + 1.0f);
  let x_482 : f32 = u_xlat13.x;
  let x_484 : f32 = x_83.x_MainLightShadowParams.x;
  let x_486 : f32 = u_xlat25;
  u_xlat13.x = ((x_482 * x_484) + x_486);
  let x_491 : f32 = u_xlat13.z;
  u_xlatb25 = (0.0f >= x_491);
  let x_495 : f32 = u_xlat13.z;
  u_xlatb37 = (x_495 >= 1.0f);
  let x_497 : bool = u_xlatb37;
  let x_498 : bool = u_xlatb25;
  u_xlatb25 = (x_497 | x_498);
  let x_500 : bool = u_xlatb25;
  if (x_500) {
    x_502 = 1.0f;
  } else {
    let x_507 : f32 = u_xlat13.x;
    x_502 = x_507;
  }
  let x_508 : f32 = x_502;
  u_xlat13.x = x_508;
  let x_511 : vec3<f32> = vs_TEXCOORD7;
  let x_514 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_511 + -(x_514));
  let x_517 : vec3<f32> = u_xlat17;
  let x_518 : vec3<f32> = u_xlat17;
  u_xlat25 = dot(x_517, x_518);
  let x_521 : f32 = u_xlat25;
  let x_523 : f32 = x_83.x_MainLightShadowParams.z;
  let x_526 : f32 = x_83.x_MainLightShadowParams.w;
  u_xlat37 = ((x_521 * x_523) + x_526);
  let x_528 : f32 = u_xlat37;
  u_xlat37 = clamp(x_528, 0.0f, 1.0f);
  let x_531 : f32 = u_xlat13.x;
  u_xlat17.x = (-(x_531) + 1.0f);
  let x_535 : f32 = u_xlat37;
  let x_537 : f32 = u_xlat17.x;
  let x_540 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_535 * x_537) + x_540);
  let x_544 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_544;
  let x_548 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_548;
  let x_552 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_552;
  let x_554 : vec4<f32> = u_xlat6;
  let x_557 : vec4<f32> = u_xlat2;
  u_xlat37 = dot(-(vec3<f32>(x_554.x, x_554.y, x_554.z)), vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : f32 = u_xlat37;
  let x_561 : f32 = u_xlat37;
  u_xlat37 = (x_560 + x_561);
  let x_563 : vec4<f32> = u_xlat2;
  let x_565 : f32 = u_xlat37;
  let x_569 : vec4<f32> = u_xlat6;
  u_xlat17 = ((vec3<f32>(x_563.x, x_563.y, x_563.z) * -(vec3<f32>(x_565, x_565, x_565))) + -(vec3<f32>(x_569.x, x_569.y, x_569.z)));
  let x_573 : vec4<f32> = u_xlat2;
  let x_575 : vec4<f32> = u_xlat6;
  u_xlat37 = dot(vec3<f32>(x_573.x, x_573.y, x_573.z), vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : f32 = u_xlat37;
  u_xlat37 = clamp(x_578, 0.0f, 1.0f);
  let x_580 : f32 = u_xlat37;
  u_xlat37 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat37;
  let x_584 : f32 = u_xlat37;
  u_xlat37 = (x_583 * x_584);
  let x_586 : f32 = u_xlat37;
  let x_587 : f32 = u_xlat37;
  u_xlat37 = (x_586 * x_587);
  let x_591 : f32 = u_xlat1.x;
  u_xlat42 = ((-(x_591) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_598 : f32 = u_xlat1.x;
  let x_599 : f32 = u_xlat42;
  u_xlat1.x = (x_598 * x_599);
  let x_603 : f32 = u_xlat1.x;
  u_xlat1.x = (x_603 * 6.0f);
  let x_616 : vec3<f32> = u_xlat17;
  let x_618 : f32 = u_xlat1.x;
  let x_619 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_616, x_618);
  u_xlat7 = x_619;
  let x_621 : f32 = u_xlat7.w;
  u_xlat1.x = (x_621 + -1.0f);
  let x_625 : f32 = x_320.unity_SpecCube0_HDR.w;
  let x_627 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_625 * x_627) + 1.0f);
  let x_632 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_632, 0.0f);
  let x_636 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_636);
  let x_640 : f32 = u_xlat1.x;
  let x_642 : f32 = x_320.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_640 * x_642);
  let x_646 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_646);
  let x_650 : f32 = u_xlat1.x;
  let x_652 : f32 = x_320.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_650 * x_652);
  let x_655 : vec4<f32> = u_xlat7;
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat17 = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(x_657.x, x_657.x, x_657.x));
  let x_660 : f32 = u_xlat38;
  let x_662 : f32 = u_xlat38;
  let x_666 : vec2<f32> = ((vec2<f32>(x_660, x_660) * vec2<f32>(x_662, x_662)) + vec2<f32>(-1.0f, 1.0f));
  let x_667 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
  let x_670 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_670);
  let x_674 : vec4<f32> = u_xlat0;
  let x_677 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_674.x, x_674.y, x_674.z)) + vec3<f32>(x_677, x_677, x_677));
  let x_680 : f32 = u_xlat37;
  let x_682 : vec3<f32> = u_xlat19;
  let x_684 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_680, x_680, x_680) * x_682) + vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec4<f32> = u_xlat1;
  let x_689 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_687.x, x_687.x, x_687.x) * x_689);
  let x_691 : vec3<f32> = u_xlat17;
  let x_692 : vec3<f32> = u_xlat19;
  u_xlat17 = (x_691 * x_692);
  let x_694 : vec3<f32> = u_xlat15;
  let x_695 : vec3<f32> = u_xlat16;
  let x_697 : vec3<f32> = u_xlat17;
  u_xlat15 = ((x_694 * x_695) + x_697);
  let x_700 : f32 = u_xlat13.x;
  let x_702 : f32 = x_320.unity_LightData.z;
  u_xlat36 = (x_700 * x_702);
  let x_704 : vec4<f32> = u_xlat2;
  let x_707 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_704.x, x_704.y, x_704.z), vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_712 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_712, 0.0f, 1.0f);
  let x_715 : f32 = u_xlat36;
  let x_717 : f32 = u_xlat1.x;
  u_xlat36 = (x_715 * x_717);
  let x_719 : f32 = u_xlat36;
  let x_722 : vec4<f32> = x_29.x_MainLightColor;
  let x_724 : vec3<f32> = (vec3<f32>(x_719, x_719, x_719) * vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_724.z);
  let x_727 : vec4<f32> = u_xlat6;
  let x_730 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat17 = (vec3<f32>(x_727.x, x_727.y, x_727.z) + vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec3<f32> = u_xlat17;
  let x_734 : vec3<f32> = u_xlat17;
  u_xlat36 = dot(x_733, x_734);
  let x_736 : f32 = u_xlat36;
  u_xlat36 = max(x_736, 1.17549435e-38f);
  let x_739 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_739);
  let x_741 : f32 = u_xlat36;
  let x_743 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_741, x_741, x_741) * x_743);
  let x_745 : vec4<f32> = u_xlat2;
  let x_747 : vec3<f32> = u_xlat17;
  u_xlat36 = dot(vec3<f32>(x_745.x, x_745.y, x_745.z), x_747);
  let x_749 : f32 = u_xlat36;
  u_xlat36 = clamp(x_749, 0.0f, 1.0f);
  let x_752 : vec4<f32> = x_29.x_MainLightPosition;
  let x_754 : vec3<f32> = u_xlat17;
  u_xlat38 = dot(vec3<f32>(x_752.x, x_752.y, x_752.z), x_754);
  let x_756 : f32 = u_xlat38;
  u_xlat38 = clamp(x_756, 0.0f, 1.0f);
  let x_758 : f32 = u_xlat36;
  let x_759 : f32 = u_xlat36;
  u_xlat36 = (x_758 * x_759);
  let x_761 : f32 = u_xlat36;
  let x_763 : f32 = u_xlat7.x;
  u_xlat36 = ((x_761 * x_763) + 1.00001001358032226562f);
  let x_767 : f32 = u_xlat38;
  let x_768 : f32 = u_xlat38;
  u_xlat38 = (x_767 * x_768);
  let x_770 : f32 = u_xlat36;
  let x_771 : f32 = u_xlat36;
  u_xlat36 = (x_770 * x_771);
  let x_773 : f32 = u_xlat38;
  u_xlat38 = max(x_773, 0.10000000149011611938f);
  let x_776 : f32 = u_xlat36;
  let x_777 : f32 = u_xlat38;
  u_xlat36 = (x_776 * x_777);
  let x_780 : f32 = u_xlat4.x;
  let x_781 : f32 = u_xlat36;
  u_xlat36 = (x_780 * x_781);
  let x_784 : f32 = u_xlat5.x;
  let x_785 : f32 = u_xlat36;
  u_xlat36 = (x_784 / x_785);
  let x_787 : vec4<f32> = u_xlat0;
  let x_789 : f32 = u_xlat36;
  let x_792 : vec3<f32> = u_xlat16;
  u_xlat17 = ((vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789, x_789, x_789)) + x_792);
  let x_795 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_797 : f32 = x_320.unity_LightData.y;
  u_xlat36 = min(x_795, x_797);
  let x_800 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_800));
  let x_803 : f32 = u_xlat25;
  let x_806 : f32 = x_83.x_AdditionalShadowFadeParams.x;
  let x_809 : f32 = x_83.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_803 * x_806) + x_809);
  let x_811 : f32 = u_xlat25;
  u_xlat25 = clamp(x_811, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_823 : u32 = u_xlatu_loop_1;
    let x_824 : u32 = u_xlatu36;
    if ((x_823 < x_824)) {
    } else {
      break;
    }
    let x_827 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_827 >> 2u);
    let x_830 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_830 & 3u));
    let x_833 : u32 = u_xlatu42;
    let x_836 : vec4<f32> = x_320.unity_LightIndices[bitcast<i32>(x_833)];
    let x_846 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_851 : vec4<u32> = indexable[x_846];
    u_xlat42 = dot(x_836, bitcast<vec4<f32>>(x_851));
    let x_855 : f32 = u_xlat42;
    u_xlati42 = i32(x_855);
    let x_858 : vec3<f32> = vs_TEXCOORD7;
    let x_869 : i32 = u_xlati42;
    let x_871 : vec4<f32> = x_868.x_AdditionalLightsPosition[x_869];
    let x_874 : i32 = u_xlati42;
    let x_876 : vec4<f32> = x_868.x_AdditionalLightsPosition[x_874];
    u_xlat8 = ((-(x_858) * vec3<f32>(x_871.w, x_871.w, x_871.w)) + vec3<f32>(x_876.x, x_876.y, x_876.z));
    let x_880 : vec3<f32> = u_xlat8;
    let x_881 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_880, x_881);
    let x_883 : f32 = u_xlat44;
    u_xlat44 = max(x_883, 0.00006103515625f);
    let x_887 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_887);
    let x_890 : vec3<f32> = u_xlat8;
    let x_891 : f32 = u_xlat9;
    u_xlat21 = (x_890 * vec3<f32>(x_891, x_891, x_891));
    let x_895 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_895);
    let x_898 : f32 = u_xlat44;
    let x_899 : i32 = u_xlati42;
    let x_901 : f32 = x_868.x_AdditionalLightsAttenuation[x_899].x;
    u_xlat44 = (x_898 * x_901);
    let x_903 : f32 = u_xlat44;
    let x_905 : f32 = u_xlat44;
    u_xlat44 = ((-(x_903) * x_905) + 1.0f);
    let x_908 : f32 = u_xlat44;
    u_xlat44 = max(x_908, 0.0f);
    let x_910 : f32 = u_xlat44;
    let x_911 : f32 = u_xlat44;
    u_xlat44 = (x_910 * x_911);
    let x_913 : f32 = u_xlat44;
    let x_915 : f32 = u_xlat10.x;
    u_xlat44 = (x_913 * x_915);
    let x_917 : i32 = u_xlati42;
    let x_919 : vec4<f32> = x_868.x_AdditionalLightsSpotDir[x_917];
    let x_921 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_919.x, x_919.y, x_919.z), x_921);
    let x_925 : f32 = u_xlat10.x;
    let x_926 : i32 = u_xlati42;
    let x_928 : f32 = x_868.x_AdditionalLightsAttenuation[x_926].z;
    let x_930 : i32 = u_xlati42;
    let x_932 : f32 = x_868.x_AdditionalLightsAttenuation[x_930].w;
    u_xlat10.x = ((x_925 * x_928) + x_932);
    let x_936 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_936, 0.0f, 1.0f);
    let x_940 : f32 = u_xlat10.x;
    let x_942 : f32 = u_xlat10.x;
    u_xlat10.x = (x_940 * x_942);
    let x_945 : f32 = u_xlat44;
    let x_947 : f32 = u_xlat10.x;
    u_xlat44 = (x_945 * x_947);
    let x_951 : i32 = u_xlati42;
    let x_953 : f32 = x_83.x_AdditionalShadowParams[x_951].w;
    u_xlati10 = i32(x_953);
    let x_958 : i32 = u_xlati10;
    u_xlatb22.x = (x_958 >= 0i);
    let x_962 : bool = u_xlatb22.x;
    if (x_962) {
      let x_966 : i32 = u_xlati42;
      let x_968 : f32 = x_83.x_AdditionalShadowParams[x_966].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_968, x_968, x_968, x_968))));
      let x_974 : bool = u_xlatb22.x;
      if (x_974) {
        let x_977 : vec3<f32> = u_xlat21;
        let x_980 : vec3<f32> = u_xlat21;
        let x_983 : vec4<bool> = (abs(vec4<f32>(x_977.z, x_977.z, x_977.y, x_977.y)) >= abs(vec4<f32>(x_980.x, x_980.y, x_980.x, x_980.x)));
        u_xlatb22 = vec3<bool>(x_983.x, x_983.y, x_983.z);
        let x_986 : bool = u_xlatb22.y;
        let x_988 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_986 & x_988);
        let x_992 : vec3<f32> = u_xlat21;
        let x_995 : vec4<bool> = (-(vec4<f32>(x_992.z, x_992.y, x_992.x, x_992.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_995.x, x_995.y, x_995.z);
        let x_999 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_999);
        let x_1004 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1004);
        let x_1009 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1009);
        let x_1012 : bool = u_xlatb22.z;
        if (x_1012) {
          let x_1017 : f32 = u_xlat11.y;
          x_1013 = x_1017;
        } else {
          let x_1019 : f32 = u_xlat34;
          x_1013 = x_1019;
        }
        let x_1020 : f32 = x_1013;
        u_xlat34 = x_1020;
        let x_1023 : bool = u_xlatb22.x;
        if (x_1023) {
          let x_1028 : f32 = u_xlat11.x;
          x_1024 = x_1028;
        } else {
          let x_1030 : f32 = u_xlat34;
          x_1024 = x_1030;
        }
        let x_1031 : f32 = x_1024;
        u_xlat22 = x_1031;
        let x_1032 : i32 = u_xlati42;
        let x_1034 : f32 = x_83.x_AdditionalShadowParams[x_1032].w;
        u_xlat34 = trunc(x_1034);
        let x_1036 : f32 = u_xlat22;
        let x_1037 : f32 = u_xlat34;
        u_xlat22 = (x_1036 + x_1037);
        let x_1039 : f32 = u_xlat22;
        u_xlati10 = i32(x_1039);
      }
      let x_1041 : i32 = u_xlati10;
      u_xlati10 = (x_1041 << bitcast<u32>(2i));
      let x_1043 : vec3<f32> = vs_TEXCOORD7;
      let x_1046 : i32 = u_xlati10;
      let x_1049 : i32 = u_xlati10;
      let x_1053 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_1046 + 1i) / 4i)][((x_1049 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1043.y, x_1043.y, x_1043.y, x_1043.y) * x_1053);
      let x_1055 : i32 = u_xlati10;
      let x_1057 : i32 = u_xlati10;
      let x_1060 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[(x_1055 / 4i)][(x_1057 % 4i)];
      let x_1061 : vec3<f32> = vs_TEXCOORD7;
      let x_1064 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1060 * vec4<f32>(x_1061.x, x_1061.x, x_1061.x, x_1061.x)) + x_1064);
      let x_1066 : i32 = u_xlati10;
      let x_1069 : i32 = u_xlati10;
      let x_1073 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_1066 + 2i) / 4i)][((x_1069 + 2i) % 4i)];
      let x_1074 : vec3<f32> = vs_TEXCOORD7;
      let x_1077 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1073 * vec4<f32>(x_1074.z, x_1074.z, x_1074.z, x_1074.z)) + x_1077);
      let x_1079 : vec4<f32> = u_xlat11;
      let x_1080 : i32 = u_xlati10;
      let x_1083 : i32 = u_xlati10;
      let x_1087 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_1080 + 3i) / 4i)][((x_1083 + 3i) % 4i)];
      u_xlat10 = (x_1079 + x_1087);
      let x_1089 : vec4<f32> = u_xlat10;
      let x_1091 : vec4<f32> = u_xlat10;
      let x_1093 : vec3<f32> = (vec3<f32>(x_1089.x, x_1089.y, x_1089.z) / vec3<f32>(x_1091.w, x_1091.w, x_1091.w));
      let x_1094 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
      let x_1097 : vec4<f32> = u_xlat10;
      let x_1098 : vec2<f32> = vec2<f32>(x_1097.x, x_1097.y);
      let x_1100 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1098.x, x_1098.y, x_1100);
      let x_1108 : vec3<f32> = txVec1;
      let x_1110 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1108.xy, x_1108.z);
      u_xlat10.x = x_1110;
      let x_1112 : i32 = u_xlati42;
      let x_1114 : f32 = x_83.x_AdditionalShadowParams[x_1112].x;
      u_xlat22 = (1.0f + -(x_1114));
      let x_1118 : f32 = u_xlat10.x;
      let x_1119 : i32 = u_xlati42;
      let x_1121 : f32 = x_83.x_AdditionalShadowParams[x_1119].x;
      let x_1123 : f32 = u_xlat22;
      u_xlat10.x = ((x_1118 * x_1121) + x_1123);
      let x_1127 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1127);
      let x_1132 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1132 >= 1.0f);
      let x_1134 : bool = u_xlatb34;
      let x_1136 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1134 | x_1136);
      let x_1140 : bool = u_xlatb22.x;
      if (x_1140) {
        x_1141 = 1.0f;
      } else {
        let x_1146 : f32 = u_xlat10.x;
        x_1141 = x_1146;
      }
      let x_1147 : f32 = x_1141;
      u_xlat10.x = x_1147;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1152 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1152) + 1.0f);
    let x_1155 : f32 = u_xlat25;
    let x_1156 : f32 = u_xlat22;
    let x_1159 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1155 * x_1156) + x_1159);
    let x_1162 : f32 = u_xlat44;
    let x_1164 : f32 = u_xlat10.x;
    u_xlat44 = (x_1162 * x_1164);
    let x_1166 : vec4<f32> = u_xlat2;
    let x_1168 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1166.x, x_1166.y, x_1166.z), x_1168);
    let x_1172 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1172, 0.0f, 1.0f);
    let x_1175 : f32 = u_xlat44;
    let x_1177 : f32 = u_xlat10.x;
    u_xlat44 = (x_1175 * x_1177);
    let x_1179 : f32 = u_xlat44;
    let x_1181 : i32 = u_xlati42;
    let x_1183 : vec4<f32> = x_868.x_AdditionalLightsColor[x_1181];
    let x_1185 : vec3<f32> = (vec3<f32>(x_1179, x_1179, x_1179) * vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
    let x_1186 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
    let x_1188 : vec3<f32> = u_xlat8;
    let x_1189 : f32 = u_xlat9;
    let x_1192 : vec4<f32> = u_xlat6;
    u_xlat8 = ((x_1188 * vec3<f32>(x_1189, x_1189, x_1189)) + vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
    let x_1195 : vec3<f32> = u_xlat8;
    let x_1196 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1195, x_1196);
    let x_1198 : f32 = u_xlat42;
    u_xlat42 = max(x_1198, 1.17549435e-38f);
    let x_1200 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1200);
    let x_1202 : f32 = u_xlat42;
    let x_1204 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1202, x_1202, x_1202) * x_1204);
    let x_1206 : vec4<f32> = u_xlat2;
    let x_1208 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1206.x, x_1206.y, x_1206.z), x_1208);
    let x_1210 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1210, 0.0f, 1.0f);
    let x_1212 : vec3<f32> = u_xlat21;
    let x_1213 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1212, x_1213);
    let x_1217 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1217, 0.0f, 1.0f);
    let x_1220 : f32 = u_xlat42;
    let x_1221 : f32 = u_xlat42;
    u_xlat42 = (x_1220 * x_1221);
    let x_1223 : f32 = u_xlat42;
    let x_1225 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1223 * x_1225) + 1.00001001358032226562f);
    let x_1229 : f32 = u_xlat8.x;
    let x_1231 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1229 * x_1231);
    let x_1234 : f32 = u_xlat42;
    let x_1235 : f32 = u_xlat42;
    u_xlat42 = (x_1234 * x_1235);
    let x_1238 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1238, 0.10000000149011611938f);
    let x_1241 : f32 = u_xlat42;
    let x_1243 : f32 = u_xlat8.x;
    u_xlat42 = (x_1241 * x_1243);
    let x_1246 : f32 = u_xlat4.x;
    let x_1247 : f32 = u_xlat42;
    u_xlat42 = (x_1246 * x_1247);
    let x_1250 : f32 = u_xlat5.x;
    let x_1251 : f32 = u_xlat42;
    u_xlat42 = (x_1250 / x_1251);
    let x_1253 : vec4<f32> = u_xlat0;
    let x_1255 : f32 = u_xlat42;
    let x_1258 : vec3<f32> = u_xlat16;
    u_xlat8 = ((vec3<f32>(x_1253.x, x_1253.y, x_1253.z) * vec3<f32>(x_1255, x_1255, x_1255)) + x_1258);
    let x_1260 : vec3<f32> = u_xlat8;
    let x_1261 : vec4<f32> = u_xlat10;
    let x_1264 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1260 * vec3<f32>(x_1261.x, x_1261.y, x_1261.z)) + x_1264);

    continuing {
      let x_1266 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1266 + bitcast<u32>(1i));
    }
  }
  let x_1268 : vec3<f32> = u_xlat17;
  let x_1269 : vec4<f32> = u_xlat1;
  let x_1272 : vec3<f32> = u_xlat15;
  let x_1273 : vec3<f32> = ((x_1268 * vec3<f32>(x_1269.x, x_1269.y, x_1269.w)) + x_1272);
  let x_1274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1276 : vec3<f32> = u_xlat19;
  let x_1277 : vec4<f32> = u_xlat0;
  let x_1279 : vec3<f32> = (x_1276 + vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
  let x_1280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1283 : f32 = u_xlat3.x;
  let x_1285 : f32 = u_xlat3.x;
  u_xlat36 = (x_1283 * -(x_1285));
  let x_1288 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1288);
  let x_1290 : vec4<f32> = u_xlat0;
  let x_1294 : vec4<f32> = x_29.unity_FogColor;
  let x_1297 : vec3<f32> = (vec3<f32>(x_1290.x, x_1290.y, x_1290.z) + -(vec3<f32>(x_1294.x, x_1294.y, x_1294.z)));
  let x_1298 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
  let x_1302 : f32 = u_xlat36;
  let x_1304 : vec4<f32> = u_xlat0;
  let x_1308 : vec4<f32> = x_29.unity_FogColor;
  let x_1310 : vec3<f32> = ((vec3<f32>(x_1302, x_1302, x_1302) * vec3<f32>(x_1304.x, x_1304.y, x_1304.z)) + vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1311 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


