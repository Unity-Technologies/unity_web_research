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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

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

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu13 : u32;

var<private> u_xlati13 : i32;

@group(1) @binding(2) var<uniform> x_265 : UnityPerDraw;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat36 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat25 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb37 : bool;

var<private> u_xlat37 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_829 : AdditionalLights;

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
  var txVec0 : vec3<f32>;
  var x_447 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_964 : f32;
  var x_975 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0 = x_36;
  let x_43 : vec4<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_28.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_43.x, x_43.y), x_46);
  u_xlat1.x = x_47.x;
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_61);
  let x_65 : vec3<f32> = u_xlat13;
  let x_67 : vec4<f32> = vs_TEXCOORD3;
  let x_69 : vec3<f32> = (vec3<f32>(x_65.x, x_65.x, x_65.x) * vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_74 : vec3<f32> = vs_TEXCOORD7;
  let x_87 : vec4<f32> = x_83.x_CascadeShadowSplitSpheres0;
  u_xlat13 = (x_74 + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
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
  u_xlat5 = (x_110 + -(vec3<f32>(x_113.x, x_113.y, x_113.z)));
  let x_118 : vec3<f32> = u_xlat13;
  let x_119 : vec3<f32> = u_xlat13;
  u_xlat6.x = dot(x_118, x_119);
  let x_122 : vec3<f32> = u_xlat3;
  let x_123 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_122, x_123);
  let x_127 : vec4<f32> = u_xlat4;
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_134 : vec3<f32> = u_xlat5;
  let x_135 : vec3<f32> = u_xlat5;
  u_xlat6.w = dot(x_134, x_135);
  let x_143 : vec4<f32> = u_xlat6;
  let x_146 : vec4<f32> = x_83.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_143 < x_146);
  let x_150 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_150);
  let x_156 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_156);
  let x_160 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_160);
  let x_164 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb3.x;
  u_xlat13.x = select(-0.0f, -1.0f, x_168);
  let x_174 : bool = u_xlatb3.y;
  u_xlat13.y = select(-0.0f, -1.0f, x_174);
  let x_178 : bool = u_xlatb3.z;
  u_xlat13.z = select(-0.0f, -1.0f, x_178);
  let x_181 : vec3<f32> = u_xlat13;
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat13 = (x_181 + vec3<f32>(x_182.y, x_182.z, x_182.w));
  let x_185 : vec3<f32> = u_xlat13;
  let x_187 : vec3<f32> = max(x_185, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_188.x, x_187.x, x_187.y, x_187.z);
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat13.x = dot(x_190, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_198 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_198) + 4.0f);
  let x_205 : f32 = u_xlat13.x;
  u_xlatu13 = u32(x_205);
  let x_209 : u32 = u_xlatu13;
  u_xlati13 = (bitcast<i32>(x_209) << bitcast<u32>(2i));
  let x_212 : vec3<f32> = vs_TEXCOORD7;
  let x_214 : i32 = u_xlati13;
  let x_217 : i32 = u_xlati13;
  let x_221 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_214 + 1i) / 4i)][((x_217 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_212.y, x_212.y, x_212.y) * vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : i32 = u_xlati13;
  let x_226 : i32 = u_xlati13;
  let x_229 : vec4<f32> = x_83.x_MainLightWorldToShadow[(x_224 / 4i)][(x_226 % 4i)];
  let x_231 : vec3<f32> = vs_TEXCOORD7;
  let x_234 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.x, x_231.x, x_231.x)) + x_234);
  let x_236 : i32 = u_xlati13;
  let x_239 : i32 = u_xlati13;
  let x_243 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_236 + 2i) / 4i)][((x_239 + 2i) % 4i)];
  let x_245 : vec3<f32> = vs_TEXCOORD7;
  let x_248 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.z, x_245.z, x_245.z)) + x_248);
  let x_250 : vec3<f32> = u_xlat3;
  let x_251 : i32 = u_xlati13;
  let x_254 : i32 = u_xlati13;
  let x_258 : vec4<f32> = x_83.x_MainLightWorldToShadow[((x_251 + 3i) / 4i)][((x_254 + 3i) % 4i)];
  u_xlat13 = (x_250 + vec3<f32>(x_258.x, x_258.y, x_258.z));
  u_xlat2.w = 1.0f;
  let x_268 : vec4<f32> = x_265.unity_SHAr;
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_268, x_269);
  let x_274 : vec4<f32> = x_265.unity_SHAg;
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_274, x_275);
  let x_280 : vec4<f32> = x_265.unity_SHAb;
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_280, x_281);
  let x_284 : vec4<f32> = u_xlat2;
  let x_286 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_284.y, x_284.z, x_284.z, x_284.x) * vec4<f32>(x_286.x, x_286.y, x_286.z, x_286.z));
  let x_291 : vec4<f32> = x_265.unity_SHBr;
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_291, x_292);
  let x_297 : vec4<f32> = x_265.unity_SHBg;
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_297, x_298);
  let x_303 : vec4<f32> = x_265.unity_SHBb;
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_303, x_304);
  let x_309 : f32 = u_xlat2.y;
  let x_311 : f32 = u_xlat2.y;
  u_xlat38 = (x_309 * x_311);
  let x_314 : f32 = u_xlat2.x;
  let x_316 : f32 = u_xlat2.x;
  let x_318 : f32 = u_xlat38;
  u_xlat38 = ((x_314 * x_316) + -(x_318));
  let x_323 : vec4<f32> = x_265.unity_SHC;
  let x_325 : f32 = u_xlat38;
  let x_328 : vec3<f32> = u_xlat5;
  let x_329 : vec3<f32> = ((vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_325, x_325, x_325)) + x_328);
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec3<f32> = u_xlat3;
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_332 + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_336, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_339 : f32 = u_xlat1.x;
  u_xlat38 = ((-(x_339) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_345 : f32 = u_xlat38;
  u_xlat39 = (-(x_345) + 1.0f);
  let x_348 : vec4<f32> = u_xlat0;
  let x_350 : f32 = u_xlat38;
  let x_352 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350, x_350, x_350));
  let x_353 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat0;
  let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat0;
  let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.x, x_362.x) * vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_373) + 1.0f);
  let x_378 : f32 = u_xlat1.x;
  let x_380 : f32 = u_xlat1.x;
  u_xlat38 = (x_378 * x_380);
  let x_382 : f32 = u_xlat38;
  u_xlat38 = max(x_382, 0.0078125f);
  let x_386 : f32 = u_xlat38;
  let x_387 : f32 = u_xlat38;
  u_xlat40 = (x_386 * x_387);
  let x_391 : f32 = u_xlat0.w;
  let x_392 : f32 = u_xlat39;
  u_xlat36 = (x_391 + x_392);
  let x_394 : f32 = u_xlat36;
  u_xlat36 = clamp(x_394, 0.0f, 1.0f);
  let x_396 : f32 = u_xlat38;
  u_xlat39 = ((x_396 * 4.0f) + 2.0f);
  let x_401 : vec3<f32> = u_xlat13;
  let x_402 : vec2<f32> = vec2<f32>(x_401.x, x_401.y);
  let x_404 : f32 = u_xlat13.z;
  txVec0 = vec3<f32>(x_402.x, x_402.y, x_404);
  let x_416 : vec3<f32> = txVec0;
  let x_418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_416.xy, x_416.z);
  u_xlat13.x = x_418;
  let x_423 : f32 = x_83.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_423) + 1.0f);
  let x_427 : f32 = u_xlat13.x;
  let x_429 : f32 = x_83.x_MainLightShadowParams.x;
  let x_431 : f32 = u_xlat25;
  u_xlat13.x = ((x_427 * x_429) + x_431);
  let x_436 : f32 = u_xlat13.z;
  u_xlatb25 = (0.0f >= x_436);
  let x_440 : f32 = u_xlat13.z;
  u_xlatb37 = (x_440 >= 1.0f);
  let x_442 : bool = u_xlatb37;
  let x_443 : bool = u_xlatb25;
  u_xlatb25 = (x_442 | x_443);
  let x_445 : bool = u_xlatb25;
  if (x_445) {
    x_447 = 1.0f;
  } else {
    let x_452 : f32 = u_xlat13.x;
    x_447 = x_452;
  }
  let x_453 : f32 = x_447;
  u_xlat13.x = x_453;
  let x_455 : vec3<f32> = vs_TEXCOORD7;
  let x_458 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat5 = (x_455 + -(x_458));
  let x_461 : vec3<f32> = u_xlat5;
  let x_462 : vec3<f32> = u_xlat5;
  u_xlat25 = dot(x_461, x_462);
  let x_465 : f32 = u_xlat25;
  let x_467 : f32 = x_83.x_MainLightShadowParams.z;
  let x_470 : f32 = x_83.x_MainLightShadowParams.w;
  u_xlat37 = ((x_465 * x_467) + x_470);
  let x_472 : f32 = u_xlat37;
  u_xlat37 = clamp(x_472, 0.0f, 1.0f);
  let x_475 : f32 = u_xlat13.x;
  u_xlat5.x = (-(x_475) + 1.0f);
  let x_479 : f32 = u_xlat37;
  let x_481 : f32 = u_xlat5.x;
  let x_484 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_479 * x_481) + x_484);
  let x_489 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_489;
  let x_493 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_493;
  let x_497 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_497;
  let x_499 : vec3<f32> = u_xlat5;
  let x_501 : vec4<f32> = u_xlat2;
  u_xlat37 = dot(-(x_499), vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : f32 = u_xlat37;
  let x_505 : f32 = u_xlat37;
  u_xlat37 = (x_504 + x_505);
  let x_507 : vec4<f32> = u_xlat2;
  let x_509 : f32 = u_xlat37;
  let x_513 : vec3<f32> = u_xlat5;
  let x_515 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.y, x_507.z) * -(vec3<f32>(x_509, x_509, x_509))) + -(x_513));
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat2;
  let x_520 : vec3<f32> = u_xlat5;
  u_xlat37 = dot(vec3<f32>(x_518.x, x_518.y, x_518.z), x_520);
  let x_522 : f32 = u_xlat37;
  u_xlat37 = clamp(x_522, 0.0f, 1.0f);
  let x_524 : f32 = u_xlat37;
  u_xlat37 = (-(x_524) + 1.0f);
  let x_527 : f32 = u_xlat37;
  let x_528 : f32 = u_xlat37;
  u_xlat37 = (x_527 * x_528);
  let x_530 : f32 = u_xlat37;
  let x_531 : f32 = u_xlat37;
  u_xlat37 = (x_530 * x_531);
  let x_535 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_535) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_542 : f32 = u_xlat1.x;
  let x_543 : f32 = u_xlat41;
  u_xlat1.x = (x_542 * x_543);
  let x_547 : f32 = u_xlat1.x;
  u_xlat1.x = (x_547 * 6.0f);
  let x_559 : vec4<f32> = u_xlat6;
  let x_562 : f32 = u_xlat1.x;
  let x_563 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_559.x, x_559.y, x_559.z), x_562);
  u_xlat6 = x_563;
  let x_565 : f32 = u_xlat6.w;
  u_xlat1.x = (x_565 + -1.0f);
  let x_569 : f32 = x_265.unity_SpecCube0_HDR.w;
  let x_571 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_569 * x_571) + 1.0f);
  let x_576 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_576, 0.0f);
  let x_580 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_580);
  let x_584 : f32 = u_xlat1.x;
  let x_586 : f32 = x_265.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_584 * x_586);
  let x_590 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_590);
  let x_594 : f32 = u_xlat1.x;
  let x_596 : f32 = x_265.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_594 * x_596);
  let x_599 : vec4<f32> = u_xlat6;
  let x_601 : vec4<f32> = u_xlat1;
  let x_603 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(x_601.x, x_601.x, x_601.x));
  let x_604 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_608 : f32 = u_xlat38;
  let x_610 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_608, x_608) * vec2<f32>(x_610, x_610)) + vec2<f32>(-1.0f, 1.0f));
  let x_616 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_616);
  let x_620 : vec4<f32> = u_xlat0;
  let x_623 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_620.x, x_620.y, x_620.z)) + vec3<f32>(x_623, x_623, x_623));
  let x_626 : f32 = u_xlat37;
  let x_628 : vec3<f32> = u_xlat19;
  let x_630 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_626, x_626, x_626) * x_628) + vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat1;
  let x_635 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_633.x, x_633.x, x_633.x) * x_635);
  let x_637 : vec4<f32> = u_xlat6;
  let x_639 : vec3<f32> = u_xlat19;
  let x_640 : vec3<f32> = (vec3<f32>(x_637.x, x_637.y, x_637.z) * x_639);
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec3<f32> = u_xlat3;
  let x_644 : vec4<f32> = u_xlat4;
  let x_647 : vec4<f32> = u_xlat6;
  u_xlat3 = ((x_643 * vec3<f32>(x_644.x, x_644.y, x_644.z)) + vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_651 : f32 = u_xlat13.x;
  let x_653 : f32 = x_265.unity_LightData.z;
  u_xlat36 = (x_651 * x_653);
  let x_655 : vec4<f32> = u_xlat2;
  let x_658 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_663 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_663, 0.0f, 1.0f);
  let x_666 : f32 = u_xlat36;
  let x_668 : f32 = u_xlat1.x;
  u_xlat36 = (x_666 * x_668);
  let x_670 : f32 = u_xlat36;
  let x_673 : vec4<f32> = x_28.x_MainLightColor;
  let x_675 : vec3<f32> = (vec3<f32>(x_670, x_670, x_670) * vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_675.z);
  let x_678 : vec3<f32> = u_xlat5;
  let x_680 : vec4<f32> = x_28.x_MainLightPosition;
  let x_682 : vec3<f32> = (x_678 + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat6;
  let x_687 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_685.x, x_685.y, x_685.z), vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : f32 = u_xlat36;
  u_xlat36 = max(x_690, 1.17549435e-38f);
  let x_693 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_693);
  let x_695 : f32 = u_xlat36;
  let x_697 : vec4<f32> = u_xlat6;
  let x_699 : vec3<f32> = (vec3<f32>(x_695, x_695, x_695) * vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat2;
  let x_704 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : f32 = u_xlat36;
  u_xlat36 = clamp(x_707, 0.0f, 1.0f);
  let x_710 : vec4<f32> = x_28.x_MainLightPosition;
  let x_712 : vec4<f32> = u_xlat6;
  u_xlat38 = dot(vec3<f32>(x_710.x, x_710.y, x_710.z), vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : f32 = u_xlat38;
  u_xlat38 = clamp(x_715, 0.0f, 1.0f);
  let x_717 : f32 = u_xlat36;
  let x_718 : f32 = u_xlat36;
  u_xlat36 = (x_717 * x_718);
  let x_720 : f32 = u_xlat36;
  let x_722 : f32 = u_xlat7.x;
  u_xlat36 = ((x_720 * x_722) + 1.00001001358032226562f);
  let x_726 : f32 = u_xlat38;
  let x_727 : f32 = u_xlat38;
  u_xlat38 = (x_726 * x_727);
  let x_729 : f32 = u_xlat36;
  let x_730 : f32 = u_xlat36;
  u_xlat36 = (x_729 * x_730);
  let x_732 : f32 = u_xlat38;
  u_xlat38 = max(x_732, 0.10000000149011611938f);
  let x_735 : f32 = u_xlat36;
  let x_736 : f32 = u_xlat38;
  u_xlat36 = (x_735 * x_736);
  let x_738 : f32 = u_xlat39;
  let x_739 : f32 = u_xlat36;
  u_xlat36 = (x_738 * x_739);
  let x_741 : f32 = u_xlat40;
  let x_742 : f32 = u_xlat36;
  u_xlat36 = (x_741 / x_742);
  let x_744 : vec4<f32> = u_xlat0;
  let x_746 : f32 = u_xlat36;
  let x_749 : vec4<f32> = u_xlat4;
  let x_751 : vec3<f32> = ((vec3<f32>(x_744.x, x_744.y, x_744.z) * vec3<f32>(x_746, x_746, x_746)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_755 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_757 : f32 = x_265.unity_LightData.y;
  u_xlat36 = min(x_755, x_757);
  let x_760 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_760));
  let x_763 : f32 = u_xlat25;
  let x_766 : f32 = x_83.x_AdditionalShadowFadeParams.x;
  let x_769 : f32 = x_83.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_763 * x_766) + x_769);
  let x_771 : f32 = u_xlat25;
  u_xlat25 = clamp(x_771, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_783 : u32 = u_xlatu_loop_1;
    let x_784 : u32 = u_xlatu36;
    if ((x_783 < x_784)) {
    } else {
      break;
    }
    let x_787 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_787 >> 2u);
    let x_790 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_790 & 3u));
    let x_794 : u32 = u_xlatu41;
    let x_797 : vec4<f32> = x_265.unity_LightIndices[bitcast<i32>(x_794)];
    let x_807 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_812 : vec4<u32> = indexable[x_807];
    u_xlat41 = dot(x_797, bitcast<vec4<f32>>(x_812));
    let x_816 : f32 = u_xlat41;
    u_xlati41 = i32(x_816);
    let x_819 : vec3<f32> = vs_TEXCOORD7;
    let x_830 : i32 = u_xlati41;
    let x_832 : vec4<f32> = x_829.x_AdditionalLightsPosition[x_830];
    let x_835 : i32 = u_xlati41;
    let x_837 : vec4<f32> = x_829.x_AdditionalLightsPosition[x_835];
    u_xlat8 = ((-(x_819) * vec3<f32>(x_832.w, x_832.w, x_832.w)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
    let x_841 : vec3<f32> = u_xlat8;
    let x_842 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_841, x_842);
    let x_844 : f32 = u_xlat42;
    u_xlat42 = max(x_844, 0.00006103515625f);
    let x_848 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_848);
    let x_851 : f32 = u_xlat44;
    let x_853 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_851, x_851, x_851) * x_853);
    let x_856 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_856);
    let x_858 : f32 = u_xlat42;
    let x_859 : i32 = u_xlati41;
    let x_861 : f32 = x_829.x_AdditionalLightsAttenuation[x_859].x;
    u_xlat42 = (x_858 * x_861);
    let x_863 : f32 = u_xlat42;
    let x_865 : f32 = u_xlat42;
    u_xlat42 = ((-(x_863) * x_865) + 1.0f);
    let x_868 : f32 = u_xlat42;
    u_xlat42 = max(x_868, 0.0f);
    let x_870 : f32 = u_xlat42;
    let x_871 : f32 = u_xlat42;
    u_xlat42 = (x_870 * x_871);
    let x_873 : f32 = u_xlat42;
    let x_874 : f32 = u_xlat45;
    u_xlat42 = (x_873 * x_874);
    let x_876 : i32 = u_xlati41;
    let x_878 : vec4<f32> = x_829.x_AdditionalLightsSpotDir[x_876];
    let x_880 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_878.x, x_878.y, x_878.z), x_880);
    let x_882 : f32 = u_xlat45;
    let x_883 : i32 = u_xlati41;
    let x_885 : f32 = x_829.x_AdditionalLightsAttenuation[x_883].z;
    let x_887 : i32 = u_xlati41;
    let x_889 : f32 = x_829.x_AdditionalLightsAttenuation[x_887].w;
    u_xlat45 = ((x_882 * x_885) + x_889);
    let x_891 : f32 = u_xlat45;
    u_xlat45 = clamp(x_891, 0.0f, 1.0f);
    let x_893 : f32 = u_xlat45;
    let x_894 : f32 = u_xlat45;
    u_xlat45 = (x_893 * x_894);
    let x_896 : f32 = u_xlat42;
    let x_897 : f32 = u_xlat45;
    u_xlat42 = (x_896 * x_897);
    let x_901 : i32 = u_xlati41;
    let x_903 : f32 = x_83.x_AdditionalShadowParams[x_901].w;
    u_xlati45 = i32(x_903);
    let x_908 : i32 = u_xlati45;
    u_xlatb10.x = (x_908 >= 0i);
    let x_912 : bool = u_xlatb10.x;
    if (x_912) {
      let x_916 : i32 = u_xlati41;
      let x_918 : f32 = x_83.x_AdditionalShadowParams[x_916].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_918, x_918, x_918, x_918))));
      let x_924 : bool = u_xlatb10.x;
      if (x_924) {
        let x_927 : vec3<f32> = u_xlat9;
        let x_930 : vec3<f32> = u_xlat9;
        let x_933 : vec4<bool> = (abs(vec4<f32>(x_927.z, x_927.z, x_927.y, x_927.z)) >= abs(vec4<f32>(x_930.x, x_930.y, x_930.x, x_930.x)));
        u_xlatb10 = vec3<bool>(x_933.x, x_933.y, x_933.z);
        let x_936 : bool = u_xlatb10.y;
        let x_938 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_936 & x_938);
        let x_942 : vec3<f32> = u_xlat9;
        let x_945 : vec4<bool> = (-(vec4<f32>(x_942.z, x_942.y, x_942.x, x_942.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_945.x, x_945.y, x_945.z);
        let x_949 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_949);
        let x_954 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_954);
        let x_959 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_959);
        let x_963 : bool = u_xlatb10.z;
        if (x_963) {
          let x_968 : f32 = u_xlat22.z;
          x_964 = x_968;
        } else {
          let x_970 : f32 = u_xlat11;
          x_964 = x_970;
        }
        let x_971 : f32 = x_964;
        u_xlat34 = x_971;
        let x_974 : bool = u_xlatb10.x;
        if (x_974) {
          let x_979 : f32 = u_xlat22.x;
          x_975 = x_979;
        } else {
          let x_981 : f32 = u_xlat34;
          x_975 = x_981;
        }
        let x_982 : f32 = x_975;
        u_xlat10.x = x_982;
        let x_984 : i32 = u_xlati41;
        let x_986 : f32 = x_83.x_AdditionalShadowParams[x_984].w;
        u_xlat22.x = trunc(x_986);
        let x_990 : f32 = u_xlat10.x;
        let x_992 : f32 = u_xlat22.x;
        u_xlat10.x = (x_990 + x_992);
        let x_996 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_996);
      }
      let x_998 : i32 = u_xlati45;
      u_xlati45 = (x_998 << bitcast<u32>(2i));
      let x_1000 : vec3<f32> = vs_TEXCOORD7;
      let x_1003 : i32 = u_xlati45;
      let x_1006 : i32 = u_xlati45;
      let x_1010 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_1003 + 1i) / 4i)][((x_1006 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1000.y, x_1000.y, x_1000.y, x_1000.y) * x_1010);
      let x_1012 : i32 = u_xlati45;
      let x_1014 : i32 = u_xlati45;
      let x_1017 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[(x_1012 / 4i)][(x_1014 % 4i)];
      let x_1018 : vec3<f32> = vs_TEXCOORD7;
      let x_1021 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1017 * vec4<f32>(x_1018.x, x_1018.x, x_1018.x, x_1018.x)) + x_1021);
      let x_1023 : i32 = u_xlati45;
      let x_1026 : i32 = u_xlati45;
      let x_1030 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_1023 + 2i) / 4i)][((x_1026 + 2i) % 4i)];
      let x_1031 : vec3<f32> = vs_TEXCOORD7;
      let x_1034 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1030 * vec4<f32>(x_1031.z, x_1031.z, x_1031.z, x_1031.z)) + x_1034);
      let x_1036 : vec4<f32> = u_xlat10;
      let x_1037 : i32 = u_xlati45;
      let x_1040 : i32 = u_xlati45;
      let x_1044 : vec4<f32> = x_83.x_AdditionalLightsWorldToShadow[((x_1037 + 3i) / 4i)][((x_1040 + 3i) % 4i)];
      u_xlat10 = (x_1036 + x_1044);
      let x_1046 : vec4<f32> = u_xlat10;
      let x_1048 : vec4<f32> = u_xlat10;
      let x_1050 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) / vec3<f32>(x_1048.w, x_1048.w, x_1048.w));
      let x_1051 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
      let x_1054 : vec4<f32> = u_xlat10;
      let x_1055 : vec2<f32> = vec2<f32>(x_1054.x, x_1054.y);
      let x_1057 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1055.x, x_1055.y, x_1057);
      let x_1065 : vec3<f32> = txVec1;
      let x_1067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1065.xy, x_1065.z);
      u_xlat45 = x_1067;
      let x_1068 : i32 = u_xlati41;
      let x_1070 : f32 = x_83.x_AdditionalShadowParams[x_1068].x;
      u_xlat10.x = (1.0f + -(x_1070));
      let x_1074 : f32 = u_xlat45;
      let x_1075 : i32 = u_xlati41;
      let x_1077 : f32 = x_83.x_AdditionalShadowParams[x_1075].x;
      let x_1080 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1074 * x_1077) + x_1080);
      let x_1083 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1083);
      let x_1088 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1088 >= 1.0f);
      let x_1090 : bool = u_xlatb22;
      let x_1092 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1090 | x_1092);
      let x_1096 : bool = u_xlatb10.x;
      let x_1097 : f32 = u_xlat45;
      u_xlat45 = select(x_1097, 1.0f, x_1096);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1100 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1100) + 1.0f);
    let x_1104 : f32 = u_xlat25;
    let x_1106 : f32 = u_xlat10.x;
    let x_1108 : f32 = u_xlat45;
    u_xlat45 = ((x_1104 * x_1106) + x_1108);
    let x_1110 : f32 = u_xlat42;
    let x_1111 : f32 = u_xlat45;
    u_xlat42 = (x_1110 * x_1111);
    let x_1113 : vec4<f32> = u_xlat2;
    let x_1115 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1113.x, x_1113.y, x_1113.z), x_1115);
    let x_1117 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1117, 0.0f, 1.0f);
    let x_1119 : f32 = u_xlat42;
    let x_1120 : f32 = u_xlat45;
    u_xlat42 = (x_1119 * x_1120);
    let x_1122 : f32 = u_xlat42;
    let x_1124 : i32 = u_xlati41;
    let x_1126 : vec4<f32> = x_829.x_AdditionalLightsColor[x_1124];
    let x_1128 : vec3<f32> = (vec3<f32>(x_1122, x_1122, x_1122) * vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
    let x_1129 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
    let x_1131 : vec3<f32> = u_xlat8;
    let x_1132 : f32 = u_xlat44;
    let x_1135 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_1131 * vec3<f32>(x_1132, x_1132, x_1132)) + x_1135);
    let x_1137 : vec3<f32> = u_xlat8;
    let x_1138 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1137, x_1138);
    let x_1140 : f32 = u_xlat41;
    u_xlat41 = max(x_1140, 1.17549435e-38f);
    let x_1142 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1142);
    let x_1144 : f32 = u_xlat41;
    let x_1146 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1144, x_1144, x_1144) * x_1146);
    let x_1148 : vec4<f32> = u_xlat2;
    let x_1150 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1148.x, x_1148.y, x_1148.z), x_1150);
    let x_1152 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1152, 0.0f, 1.0f);
    let x_1154 : vec3<f32> = u_xlat9;
    let x_1155 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1154, x_1155);
    let x_1157 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1157, 0.0f, 1.0f);
    let x_1159 : f32 = u_xlat41;
    let x_1160 : f32 = u_xlat41;
    u_xlat41 = (x_1159 * x_1160);
    let x_1162 : f32 = u_xlat41;
    let x_1164 : f32 = u_xlat7.x;
    u_xlat41 = ((x_1162 * x_1164) + 1.00001001358032226562f);
    let x_1167 : f32 = u_xlat42;
    let x_1168 : f32 = u_xlat42;
    u_xlat42 = (x_1167 * x_1168);
    let x_1170 : f32 = u_xlat41;
    let x_1171 : f32 = u_xlat41;
    u_xlat41 = (x_1170 * x_1171);
    let x_1173 : f32 = u_xlat42;
    u_xlat42 = max(x_1173, 0.10000000149011611938f);
    let x_1175 : f32 = u_xlat41;
    let x_1176 : f32 = u_xlat42;
    u_xlat41 = (x_1175 * x_1176);
    let x_1178 : f32 = u_xlat39;
    let x_1179 : f32 = u_xlat41;
    u_xlat41 = (x_1178 * x_1179);
    let x_1181 : f32 = u_xlat40;
    let x_1182 : f32 = u_xlat41;
    u_xlat41 = (x_1181 / x_1182);
    let x_1184 : vec4<f32> = u_xlat0;
    let x_1186 : f32 = u_xlat41;
    let x_1189 : vec4<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_1184.x, x_1184.y, x_1184.z) * vec3<f32>(x_1186, x_1186, x_1186)) + vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
    let x_1192 : vec3<f32> = u_xlat8;
    let x_1193 : vec4<f32> = u_xlat10;
    let x_1196 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1192 * vec3<f32>(x_1193.x, x_1193.y, x_1193.z)) + x_1196);

    continuing {
      let x_1198 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1198 + bitcast<u32>(1i));
    }
  }
  let x_1200 : vec4<f32> = u_xlat6;
  let x_1202 : vec4<f32> = u_xlat1;
  let x_1205 : vec3<f32> = u_xlat3;
  let x_1206 : vec3<f32> = ((vec3<f32>(x_1200.x, x_1200.y, x_1200.z) * vec3<f32>(x_1202.x, x_1202.y, x_1202.w)) + x_1205);
  let x_1207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
  let x_1211 : vec3<f32> = u_xlat19;
  let x_1212 : vec4<f32> = u_xlat0;
  let x_1214 : vec3<f32> = (x_1211 + vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1215 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
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


