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

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_76 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat10 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_271 : UnityPerDraw;

var<private> u_xlat25 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb10 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlatu25 : u32;

var<private> u_xlatu28 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

@group(1) @binding(1) var<uniform> x_542 : AdditionalLights;

var<private> u_xlat29 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb14 : vec3<bool>;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat14 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu27 : u32;

var<private> u_xlatb28 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_687 : f32;
  var x_698 : f32;
  var txVec1 : vec3<f32>;
  var x_815 : f32;
  var x_893 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_36 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_40.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_36.w, x_36.x, x_36.y, x_36.z) * vec4<f32>(x_44.w, x_44.x, x_44.y, x_44.z));
  let x_50 : vec3<f32> = vs_TEXCOORD2;
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_50, x_51);
  let x_56 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_56);
  let x_59 : vec4<f32> = u_xlat1;
  let x_61 : vec3<f32> = vs_TEXCOORD2;
  let x_62 : vec3<f32> = (vec3<f32>(x_59.x, x_59.x, x_59.x) * x_61);
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_67 : vec3<f32> = vs_TEXCOORD1;
  let x_78 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres0;
  let x_81 : vec3<f32> = (x_67 + -(vec3<f32>(x_78.x, x_78.y, x_78.z)));
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec3<f32> = vs_TEXCOORD1;
  let x_88 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres1;
  let x_91 : vec3<f32> = (x_85 + -(vec3<f32>(x_88.x, x_88.y, x_88.z)));
  let x_92 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec3<f32> = vs_TEXCOORD1;
  let x_98 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres2;
  let x_101 : vec3<f32> = (x_95 + -(vec3<f32>(x_98.x, x_98.y, x_98.z)));
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_106 : vec3<f32> = vs_TEXCOORD1;
  let x_109 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_106 + -(vec3<f32>(x_109.x, x_109.y, x_109.z)));
  let x_113 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_119 : vec4<f32> = u_xlat3;
  let x_121 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_119.x, x_119.y, x_119.z), vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_126 : vec4<f32> = u_xlat4;
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_133 : vec3<f32> = u_xlat5;
  let x_134 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_133, x_134);
  let x_142 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = x_76.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_142 < x_145);
  let x_149 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_149);
  let x_155 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_155);
  let x_159 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_159);
  let x_163 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_163);
  let x_167 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_167);
  let x_173 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_173);
  let x_177 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_177);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat3;
  let x_184 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + vec3<f32>(x_182.y, x_182.z, x_182.w));
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat2;
  let x_190 : vec3<f32> = max(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_191.x, x_190.x, x_190.y, x_190.z);
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_193, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_201 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_201) + 4.0f);
  let x_208 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_208);
  let x_212 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_212) << bitcast<u32>(2i));
  let x_216 : vec3<f32> = vs_TEXCOORD1;
  let x_218 : i32 = u_xlati2;
  let x_221 : i32 = u_xlati2;
  let x_225 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_218 + 1i) / 4i)][((x_221 + 1i) % 4i)];
  u_xlat10 = (vec3<f32>(x_216.y, x_216.y, x_216.y) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : i32 = u_xlati2;
  let x_230 : i32 = u_xlati2;
  let x_233 : vec4<f32> = x_76.x_MainLightWorldToShadow[(x_228 / 4i)][(x_230 % 4i)];
  let x_235 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec3<f32> = u_xlat10;
  u_xlat10 = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + x_238);
  let x_240 : i32 = u_xlati2;
  let x_243 : i32 = u_xlati2;
  let x_247 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_240 + 2i) / 4i)][((x_243 + 2i) % 4i)];
  let x_249 : vec3<f32> = vs_TEXCOORD1;
  let x_252 : vec3<f32> = u_xlat10;
  u_xlat10 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.z, x_249.z, x_249.z)) + x_252);
  let x_254 : vec3<f32> = u_xlat10;
  let x_255 : i32 = u_xlati2;
  let x_258 : i32 = u_xlati2;
  let x_262 : vec4<f32> = x_76.x_MainLightWorldToShadow[((x_255 + 3i) / 4i)][((x_258 + 3i) % 4i)];
  let x_264 : vec3<f32> = (x_254 + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  u_xlat1.w = 1.0f;
  let x_274 : vec4<f32> = x_271.unity_SHAr;
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_274, x_275);
  let x_280 : vec4<f32> = x_271.unity_SHAg;
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_280, x_281);
  let x_286 : vec4<f32> = x_271.unity_SHAb;
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_286, x_287);
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_290.y, x_290.z, x_290.z, x_290.x) * vec4<f32>(x_292.x, x_292.y, x_292.z, x_292.z));
  let x_297 : vec4<f32> = x_271.unity_SHBr;
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_297, x_298);
  let x_303 : vec4<f32> = x_271.unity_SHBg;
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_303, x_304);
  let x_309 : vec4<f32> = x_271.unity_SHBb;
  let x_310 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_309, x_310);
  let x_315 : f32 = u_xlat1.y;
  let x_317 : f32 = u_xlat1.y;
  u_xlat25 = (x_315 * x_317);
  let x_320 : f32 = u_xlat1.x;
  let x_322 : f32 = u_xlat1.x;
  let x_324 : f32 = u_xlat25;
  u_xlat25 = ((x_320 * x_322) + -(x_324));
  let x_329 : vec4<f32> = x_271.unity_SHC;
  let x_331 : f32 = u_xlat25;
  let x_334 : vec3<f32> = u_xlat5;
  let x_335 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331, x_331, x_331)) + x_334);
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat3;
  let x_347 : vec3<f32> = max(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_352 : vec4<f32> = u_xlat2;
  let x_353 : vec2<f32> = vec2<f32>(x_352.x, x_352.y);
  let x_355 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_353.x, x_353.y, x_355);
  let x_367 : vec3<f32> = txVec0;
  let x_369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_367.xy, x_367.z);
  u_xlat25 = x_369;
  let x_372 : f32 = x_76.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_372) + 1.0f);
  let x_376 : f32 = u_xlat25;
  let x_378 : f32 = x_76.x_MainLightShadowParams.x;
  let x_381 : f32 = u_xlat2.x;
  u_xlat25 = ((x_376 * x_378) + x_381);
  let x_384 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_384);
  let x_389 : f32 = u_xlat2.z;
  u_xlatb10 = (x_389 >= 1.0f);
  let x_391 : bool = u_xlatb10;
  let x_393 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_391 | x_393);
  let x_397 : bool = u_xlatb2.x;
  let x_398 : f32 = u_xlat25;
  u_xlat25 = select(x_398, 1.0f, x_397);
  let x_400 : vec3<f32> = vs_TEXCOORD1;
  let x_403 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_405 : vec3<f32> = (x_400 + -(x_403));
  let x_406 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat2;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_415 : f32 = u_xlat2.x;
  let x_417 : f32 = x_76.x_MainLightShadowParams.z;
  let x_420 : f32 = x_76.x_MainLightShadowParams.w;
  u_xlat10.x = ((x_415 * x_417) + x_420);
  let x_424 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_424, 0.0f, 1.0f);
  let x_428 : f32 = u_xlat25;
  u_xlat18 = (-(x_428) + 1.0f);
  let x_432 : f32 = u_xlat10.x;
  let x_433 : f32 = u_xlat18;
  let x_435 : f32 = u_xlat25;
  u_xlat25 = ((x_432 * x_433) + x_435);
  let x_437 : f32 = u_xlat25;
  let x_439 : f32 = x_271.unity_LightData.z;
  u_xlat25 = (x_437 * x_439);
  let x_441 : f32 = u_xlat25;
  let x_444 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat10 = (vec3<f32>(x_441, x_441, x_441) * vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : vec4<f32> = u_xlat1;
  let x_450 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat25 = dot(vec3<f32>(x_447.x, x_447.y, x_447.z), vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : f32 = u_xlat25;
  u_xlat25 = clamp(x_453, 0.0f, 1.0f);
  let x_455 : f32 = u_xlat25;
  let x_457 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_455, x_455, x_455) * x_457);
  let x_459 : vec4<f32> = u_xlat0;
  let x_461 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_459.y, x_459.z, x_459.w) * x_461);
  let x_464 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_466 : f32 = x_271.unity_LightData.y;
  u_xlat25 = min(x_464, x_466);
  let x_469 : f32 = u_xlat25;
  u_xlatu25 = bitcast<u32>(i32(x_469));
  let x_473 : f32 = u_xlat2.x;
  let x_476 : f32 = x_76.x_AdditionalShadowFadeParams.x;
  let x_479 : f32 = x_76.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_473 * x_476) + x_479);
  let x_483 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_483, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_496 : u32 = u_xlatu_loop_1;
    let x_497 : u32 = u_xlatu25;
    if ((x_496 < x_497)) {
    } else {
      break;
    }
    let x_500 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_500 >> 2u);
    let x_503 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_503 & 3u));
    let x_508 : u32 = u_xlatu28;
    let x_511 : vec4<f32> = x_271.unity_LightIndices[bitcast<i32>(x_508)];
    let x_521 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_526 : vec4<u32> = indexable[x_521];
    u_xlat28 = dot(x_511, bitcast<vec4<f32>>(x_526));
    let x_530 : f32 = u_xlat28;
    u_xlati28 = i32(x_530);
    let x_532 : vec3<f32> = vs_TEXCOORD1;
    let x_543 : i32 = u_xlati28;
    let x_545 : vec4<f32> = x_542.x_AdditionalLightsPosition[x_543];
    let x_548 : i32 = u_xlati28;
    let x_550 : vec4<f32> = x_542.x_AdditionalLightsPosition[x_548];
    u_xlat5 = ((-(x_532) * vec3<f32>(x_545.w, x_545.w, x_545.w)) + vec3<f32>(x_550.x, x_550.y, x_550.z));
    let x_554 : vec3<f32> = u_xlat5;
    let x_555 : vec3<f32> = u_xlat5;
    u_xlat29 = dot(x_554, x_555);
    let x_557 : f32 = u_xlat29;
    u_xlat29 = max(x_557, 0.00006103515625f);
    let x_561 : f32 = u_xlat29;
    u_xlat6.x = inverseSqrt(x_561);
    let x_564 : vec3<f32> = u_xlat5;
    let x_565 : vec4<f32> = u_xlat6;
    u_xlat5 = (x_564 * vec3<f32>(x_565.x, x_565.x, x_565.x));
    let x_568 : f32 = u_xlat29;
    u_xlat6.x = (1.0f / x_568);
    let x_571 : f32 = u_xlat29;
    let x_572 : i32 = u_xlati28;
    let x_574 : f32 = x_542.x_AdditionalLightsAttenuation[x_572].x;
    u_xlat29 = (x_571 * x_574);
    let x_576 : f32 = u_xlat29;
    let x_578 : f32 = u_xlat29;
    u_xlat29 = ((-(x_576) * x_578) + 1.0f);
    let x_581 : f32 = u_xlat29;
    u_xlat29 = max(x_581, 0.0f);
    let x_583 : f32 = u_xlat29;
    let x_584 : f32 = u_xlat29;
    u_xlat29 = (x_583 * x_584);
    let x_586 : f32 = u_xlat29;
    let x_588 : f32 = u_xlat6.x;
    u_xlat29 = (x_586 * x_588);
    let x_590 : i32 = u_xlati28;
    let x_592 : vec4<f32> = x_542.x_AdditionalLightsSpotDir[x_590];
    let x_594 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_592.x, x_592.y, x_592.z), x_594);
    let x_598 : f32 = u_xlat6.x;
    let x_599 : i32 = u_xlati28;
    let x_601 : f32 = x_542.x_AdditionalLightsAttenuation[x_599].z;
    let x_603 : i32 = u_xlati28;
    let x_605 : f32 = x_542.x_AdditionalLightsAttenuation[x_603].w;
    u_xlat6.x = ((x_598 * x_601) + x_605);
    let x_609 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_609, 0.0f, 1.0f);
    let x_613 : f32 = u_xlat6.x;
    let x_615 : f32 = u_xlat6.x;
    u_xlat6.x = (x_613 * x_615);
    let x_618 : f32 = u_xlat29;
    let x_620 : f32 = u_xlat6.x;
    u_xlat29 = (x_618 * x_620);
    let x_624 : i32 = u_xlati28;
    let x_626 : f32 = x_76.x_AdditionalShadowParams[x_624].w;
    u_xlati6 = i32(x_626);
    let x_631 : i32 = u_xlati6;
    u_xlatb14.x = (x_631 >= 0i);
    let x_635 : bool = u_xlatb14.x;
    if (x_635) {
      let x_639 : i32 = u_xlati28;
      let x_641 : f32 = x_76.x_AdditionalShadowParams[x_639].z;
      u_xlatb14.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_641, x_641, x_641, x_641))));
      let x_647 : bool = u_xlatb14.x;
      if (x_647) {
        let x_650 : vec3<f32> = u_xlat5;
        let x_653 : vec3<f32> = u_xlat5;
        let x_656 : vec4<bool> = (abs(vec4<f32>(x_650.z, x_650.z, x_650.y, x_650.y)) >= abs(vec4<f32>(x_653.x, x_653.y, x_653.x, x_653.x)));
        u_xlatb14 = vec3<bool>(x_656.x, x_656.y, x_656.z);
        let x_659 : bool = u_xlatb14.y;
        let x_661 : bool = u_xlatb14.x;
        u_xlatb14.x = (x_659 & x_661);
        let x_665 : vec3<f32> = u_xlat5;
        let x_668 : vec4<bool> = (-(vec4<f32>(x_665.z, x_665.y, x_665.x, x_665.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_668.x, x_668.y, x_668.z);
        let x_672 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_672);
        let x_677 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_677);
        let x_682 : bool = u_xlatb7.z;
        u_xlat22 = select(0.0f, 1.0f, x_682);
        let x_685 : bool = u_xlatb14.z;
        if (x_685) {
          let x_691 : f32 = u_xlat7.y;
          x_687 = x_691;
        } else {
          let x_693 : f32 = u_xlat22;
          x_687 = x_693;
        }
        let x_694 : f32 = x_687;
        u_xlat22 = x_694;
        let x_697 : bool = u_xlatb14.x;
        if (x_697) {
          let x_702 : f32 = u_xlat7.x;
          x_698 = x_702;
        } else {
          let x_704 : f32 = u_xlat22;
          x_698 = x_704;
        }
        let x_705 : f32 = x_698;
        u_xlat14 = x_705;
        let x_706 : i32 = u_xlati28;
        let x_708 : f32 = x_76.x_AdditionalShadowParams[x_706].w;
        u_xlat22 = trunc(x_708);
        let x_710 : f32 = u_xlat14;
        let x_711 : f32 = u_xlat22;
        u_xlat14 = (x_710 + x_711);
        let x_713 : f32 = u_xlat14;
        u_xlati6 = i32(x_713);
      }
      let x_715 : i32 = u_xlati6;
      u_xlati6 = (x_715 << bitcast<u32>(2i));
      let x_717 : vec3<f32> = vs_TEXCOORD1;
      let x_720 : i32 = u_xlati6;
      let x_723 : i32 = u_xlati6;
      let x_727 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_720 + 1i) / 4i)][((x_723 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_717.y, x_717.y, x_717.y, x_717.y) * x_727);
      let x_729 : i32 = u_xlati6;
      let x_731 : i32 = u_xlati6;
      let x_734 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[(x_729 / 4i)][(x_731 % 4i)];
      let x_735 : vec3<f32> = vs_TEXCOORD1;
      let x_738 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_734 * vec4<f32>(x_735.x, x_735.x, x_735.x, x_735.x)) + x_738);
      let x_740 : i32 = u_xlati6;
      let x_743 : i32 = u_xlati6;
      let x_747 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_740 + 2i) / 4i)][((x_743 + 2i) % 4i)];
      let x_748 : vec3<f32> = vs_TEXCOORD1;
      let x_751 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_747 * vec4<f32>(x_748.z, x_748.z, x_748.z, x_748.z)) + x_751);
      let x_753 : vec4<f32> = u_xlat7;
      let x_754 : i32 = u_xlati6;
      let x_757 : i32 = u_xlati6;
      let x_761 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_754 + 3i) / 4i)][((x_757 + 3i) % 4i)];
      u_xlat6 = (x_753 + x_761);
      let x_763 : vec4<f32> = u_xlat6;
      let x_765 : vec4<f32> = u_xlat6;
      let x_767 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) / vec3<f32>(x_765.w, x_765.w, x_765.w));
      let x_768 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
      let x_771 : vec4<f32> = u_xlat6;
      let x_772 : vec2<f32> = vec2<f32>(x_771.x, x_771.y);
      let x_774 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_772.x, x_772.y, x_774);
      let x_782 : vec3<f32> = txVec1;
      let x_784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_782.xy, x_782.z);
      u_xlat6.x = x_784;
      let x_786 : i32 = u_xlati28;
      let x_788 : f32 = x_76.x_AdditionalShadowParams[x_786].x;
      u_xlat14 = (1.0f + -(x_788));
      let x_792 : f32 = u_xlat6.x;
      let x_793 : i32 = u_xlati28;
      let x_795 : f32 = x_76.x_AdditionalShadowParams[x_793].x;
      let x_797 : f32 = u_xlat14;
      u_xlat6.x = ((x_792 * x_795) + x_797);
      let x_801 : f32 = u_xlat6.z;
      u_xlatb14.x = (0.0f >= x_801);
      let x_806 : f32 = u_xlat6.z;
      u_xlatb22 = (x_806 >= 1.0f);
      let x_808 : bool = u_xlatb22;
      let x_810 : bool = u_xlatb14.x;
      u_xlatb14.x = (x_808 | x_810);
      let x_814 : bool = u_xlatb14.x;
      if (x_814) {
        x_815 = 1.0f;
      } else {
        let x_820 : f32 = u_xlat6.x;
        x_815 = x_820;
      }
      let x_821 : f32 = x_815;
      u_xlat6.x = x_821;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_826 : f32 = u_xlat6.x;
    u_xlat14 = (-(x_826) + 1.0f);
    let x_830 : f32 = u_xlat2.x;
    let x_831 : f32 = u_xlat14;
    let x_834 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_830 * x_831) + x_834);
    let x_837 : f32 = u_xlat29;
    let x_839 : f32 = u_xlat6.x;
    u_xlat29 = (x_837 * x_839);
    let x_841 : f32 = u_xlat29;
    let x_843 : i32 = u_xlati28;
    let x_845 : vec4<f32> = x_542.x_AdditionalLightsColor[x_843];
    let x_847 : vec3<f32> = (vec3<f32>(x_841, x_841, x_841) * vec3<f32>(x_845.x, x_845.y, x_845.z));
    let x_848 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
    let x_850 : vec4<f32> = u_xlat1;
    let x_852 : vec3<f32> = u_xlat5;
    u_xlat28 = dot(vec3<f32>(x_850.x, x_850.y, x_850.z), x_852);
    let x_854 : f32 = u_xlat28;
    u_xlat28 = clamp(x_854, 0.0f, 1.0f);
    let x_856 : f32 = u_xlat28;
    let x_858 : vec4<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_856, x_856, x_856) * vec3<f32>(x_858.x, x_858.y, x_858.z));
    let x_861 : vec3<f32> = u_xlat5;
    let x_862 : vec4<f32> = u_xlat0;
    let x_865 : vec4<f32> = u_xlat4;
    let x_867 : vec3<f32> = ((x_861 * vec3<f32>(x_862.y, x_862.z, x_862.w)) + vec3<f32>(x_865.x, x_865.y, x_865.z));
    let x_868 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);

    continuing {
      let x_870 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_870 + bitcast<u32>(1i));
    }
  }
  let x_873 : vec4<f32> = u_xlat3;
  let x_875 : vec4<f32> = u_xlat0;
  let x_878 : vec3<f32> = u_xlat10;
  u_xlat8 = ((vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_875.y, x_875.z, x_875.w)) + x_878);
  let x_882 : vec4<f32> = u_xlat4;
  let x_884 : vec3<f32> = u_xlat8;
  let x_885 : vec3<f32> = (vec3<f32>(x_882.x, x_882.y, x_882.z) + x_884);
  let x_886 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_890 : f32 = x_40.x_Surface;
  u_xlatb8 = (x_890 == 1.0f);
  let x_892 : bool = u_xlatb8;
  if (x_892) {
    let x_897 : f32 = u_xlat0.x;
    x_893 = x_897;
  } else {
    x_893 = 1.0f;
  }
  let x_899 : f32 = x_893;
  SV_Target0.w = x_899;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


