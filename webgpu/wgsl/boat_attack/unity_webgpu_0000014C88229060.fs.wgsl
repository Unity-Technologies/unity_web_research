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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

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

var<private> u_xlat26 : f32;

@group(1) @binding(2) var<uniform> x_310 : UnityPerDraw;

var<private> u_xlat25 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb10 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlatu25 : u32;

var<private> u_xlatu18 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati18 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_587 : AdditionalLights;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu10 : u32;

var<private> u_xlatb18 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_718 : f32;
  var x_728 : f32;
  var txVec1 : vec3<f32>;
  var x_926 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_51, x_52);
  let x_57 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_57);
  let x_60 : vec4<f32> = u_xlat1;
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  let x_63 : vec3<f32> = (vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62);
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : vec3<f32> = vs_TEXCOORD1;
  let x_78 : vec4<f32> = x_76.x_CascadeShadowSplitSpheres0;
  let x_81 : vec3<f32> = (x_68 + -(vec3<f32>(x_78.x, x_78.y, x_78.z)));
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
  let x_270 : f32 = vs_TEXCOORD1.y;
  let x_273 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat26 = (x_270 * x_273);
  let x_276 : f32 = x_28.unity_MatrixV[0i].z;
  let x_278 : f32 = vs_TEXCOORD1.x;
  let x_280 : f32 = u_xlat26;
  u_xlat26 = ((x_276 * x_278) + x_280);
  let x_283 : f32 = x_28.unity_MatrixV[2i].z;
  let x_285 : f32 = vs_TEXCOORD1.z;
  let x_287 : f32 = u_xlat26;
  u_xlat26 = ((x_283 * x_285) + x_287);
  let x_289 : f32 = u_xlat26;
  let x_291 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat26 = (x_289 + x_291);
  let x_293 : f32 = u_xlat26;
  let x_296 : f32 = x_28.x_ProjectionParams.y;
  u_xlat26 = (-(x_293) + -(x_296));
  let x_299 : f32 = u_xlat26;
  u_xlat26 = max(x_299, 0.0f);
  let x_301 : f32 = u_xlat26;
  let x_304 : f32 = x_28.unity_FogParams.x;
  u_xlat26 = (x_301 * x_304);
  u_xlat1.w = 1.0f;
  let x_313 : vec4<f32> = x_310.unity_SHAr;
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_313, x_314);
  let x_319 : vec4<f32> = x_310.unity_SHAg;
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_319, x_320);
  let x_325 : vec4<f32> = x_310.unity_SHAb;
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_325, x_326);
  let x_329 : vec4<f32> = u_xlat1;
  let x_331 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_329.y, x_329.z, x_329.z, x_329.x) * vec4<f32>(x_331.x, x_331.y, x_331.z, x_331.z));
  let x_336 : vec4<f32> = x_310.unity_SHBr;
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_336, x_337);
  let x_342 : vec4<f32> = x_310.unity_SHBg;
  let x_343 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_342, x_343);
  let x_348 : vec4<f32> = x_310.unity_SHBb;
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_348, x_349);
  let x_354 : f32 = u_xlat1.y;
  let x_356 : f32 = u_xlat1.y;
  u_xlat25 = (x_354 * x_356);
  let x_359 : f32 = u_xlat1.x;
  let x_361 : f32 = u_xlat1.x;
  let x_363 : f32 = u_xlat25;
  u_xlat25 = ((x_359 * x_361) + -(x_363));
  let x_368 : vec4<f32> = x_310.unity_SHC;
  let x_370 : f32 = u_xlat25;
  let x_373 : vec3<f32> = u_xlat5;
  let x_374 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370, x_370, x_370)) + x_373);
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat3;
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat3;
  let x_386 : vec3<f32> = max(vec3<f32>(x_384.x, x_384.y, x_384.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_387 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_391 : vec4<f32> = u_xlat2;
  let x_392 : vec2<f32> = vec2<f32>(x_391.x, x_391.y);
  let x_394 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_392.x, x_392.y, x_394);
  let x_406 : vec3<f32> = txVec0;
  let x_408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_406.xy, x_406.z);
  u_xlat25 = x_408;
  let x_410 : f32 = x_76.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_410) + 1.0f);
  let x_414 : f32 = u_xlat25;
  let x_416 : f32 = x_76.x_MainLightShadowParams.x;
  let x_419 : f32 = u_xlat2.x;
  u_xlat25 = ((x_414 * x_416) + x_419);
  let x_422 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_422);
  let x_427 : f32 = u_xlat2.z;
  u_xlatb10 = (x_427 >= 1.0f);
  let x_429 : bool = u_xlatb10;
  let x_431 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_429 | x_431);
  let x_435 : bool = u_xlatb2.x;
  let x_436 : f32 = u_xlat25;
  u_xlat25 = select(x_436, 1.0f, x_435);
  let x_438 : vec3<f32> = vs_TEXCOORD1;
  let x_441 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_443 : vec3<f32> = (x_438 + -(x_441));
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat2;
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_453 : f32 = u_xlat2.x;
  let x_455 : f32 = x_76.x_MainLightShadowParams.z;
  let x_458 : f32 = x_76.x_MainLightShadowParams.w;
  u_xlat10.x = ((x_453 * x_455) + x_458);
  let x_462 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_462, 0.0f, 1.0f);
  let x_466 : f32 = u_xlat25;
  u_xlat18 = (-(x_466) + 1.0f);
  let x_470 : f32 = u_xlat10.x;
  let x_471 : f32 = u_xlat18;
  let x_473 : f32 = u_xlat25;
  u_xlat25 = ((x_470 * x_471) + x_473);
  let x_475 : f32 = u_xlat25;
  let x_477 : f32 = x_310.unity_LightData.z;
  u_xlat25 = (x_475 * x_477);
  let x_479 : f32 = u_xlat25;
  let x_482 : vec4<f32> = x_28.x_MainLightColor;
  let x_484 : vec3<f32> = (vec3<f32>(x_479, x_479, x_479) * vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat1;
  let x_490 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat25 = dot(vec3<f32>(x_487.x, x_487.y, x_487.z), vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : f32 = u_xlat25;
  u_xlat25 = clamp(x_493, 0.0f, 1.0f);
  let x_495 : f32 = u_xlat25;
  let x_497 : vec4<f32> = u_xlat4;
  let x_499 : vec3<f32> = (vec3<f32>(x_495, x_495, x_495) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat0;
  let x_504 : vec4<f32> = u_xlat4;
  let x_506 : vec3<f32> = (vec3<f32>(x_502.y, x_502.z, x_502.w) * vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_510 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_512 : f32 = x_310.unity_LightData.y;
  u_xlat25 = min(x_510, x_512);
  let x_515 : f32 = u_xlat25;
  u_xlatu25 = bitcast<u32>(i32(x_515));
  let x_519 : f32 = u_xlat2.x;
  let x_522 : f32 = x_76.x_AdditionalShadowFadeParams.x;
  let x_525 : f32 = x_76.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_519 * x_522) + x_525);
  let x_529 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_529, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_542 : u32 = u_xlatu_loop_1;
    let x_543 : u32 = u_xlatu25;
    if ((x_542 < x_543)) {
    } else {
      break;
    }
    let x_546 : u32 = u_xlatu_loop_1;
    u_xlatu18 = (x_546 >> 2u);
    let x_549 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_549 & 3u));
    let x_552 : u32 = u_xlatu18;
    let x_555 : vec4<f32> = x_310.unity_LightIndices[bitcast<i32>(x_552)];
    let x_565 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_570 : vec4<u32> = indexable[x_565];
    u_xlat18 = dot(x_555, bitcast<vec4<f32>>(x_570));
    let x_574 : f32 = u_xlat18;
    u_xlati18 = i32(x_574);
    let x_577 : vec3<f32> = vs_TEXCOORD1;
    let x_588 : i32 = u_xlati18;
    let x_590 : vec4<f32> = x_587.x_AdditionalLightsPosition[x_588];
    let x_593 : i32 = u_xlati18;
    let x_595 : vec4<f32> = x_587.x_AdditionalLightsPosition[x_593];
    u_xlat6 = ((-(x_577) * vec3<f32>(x_590.w, x_590.w, x_590.w)) + vec3<f32>(x_595.x, x_595.y, x_595.z));
    let x_599 : vec3<f32> = u_xlat6;
    let x_600 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_599, x_600);
    let x_602 : f32 = u_xlat27;
    u_xlat27 = max(x_602, 0.00006103515625f);
    let x_606 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_606);
    let x_608 : f32 = u_xlat28;
    let x_610 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_608, x_608, x_608) * x_610);
    let x_612 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_612);
    let x_614 : f32 = u_xlat27;
    let x_615 : i32 = u_xlati18;
    let x_617 : f32 = x_587.x_AdditionalLightsAttenuation[x_615].x;
    u_xlat27 = (x_614 * x_617);
    let x_619 : f32 = u_xlat27;
    let x_621 : f32 = u_xlat27;
    u_xlat27 = ((-(x_619) * x_621) + 1.0f);
    let x_624 : f32 = u_xlat27;
    u_xlat27 = max(x_624, 0.0f);
    let x_626 : f32 = u_xlat27;
    let x_627 : f32 = u_xlat27;
    u_xlat27 = (x_626 * x_627);
    let x_629 : f32 = u_xlat27;
    let x_630 : f32 = u_xlat28;
    u_xlat27 = (x_629 * x_630);
    let x_632 : i32 = u_xlati18;
    let x_634 : vec4<f32> = x_587.x_AdditionalLightsSpotDir[x_632];
    let x_636 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), x_636);
    let x_638 : f32 = u_xlat28;
    let x_639 : i32 = u_xlati18;
    let x_641 : f32 = x_587.x_AdditionalLightsAttenuation[x_639].z;
    let x_643 : i32 = u_xlati18;
    let x_645 : f32 = x_587.x_AdditionalLightsAttenuation[x_643].w;
    u_xlat28 = ((x_638 * x_641) + x_645);
    let x_647 : f32 = u_xlat28;
    u_xlat28 = clamp(x_647, 0.0f, 1.0f);
    let x_649 : f32 = u_xlat28;
    let x_650 : f32 = u_xlat28;
    u_xlat28 = (x_649 * x_650);
    let x_652 : f32 = u_xlat27;
    let x_653 : f32 = u_xlat28;
    u_xlat27 = (x_652 * x_653);
    let x_657 : i32 = u_xlati18;
    let x_659 : f32 = x_76.x_AdditionalShadowParams[x_657].w;
    u_xlati28 = i32(x_659);
    let x_662 : i32 = u_xlati28;
    u_xlatb29 = (x_662 >= 0i);
    let x_664 : bool = u_xlatb29;
    if (x_664) {
      let x_668 : i32 = u_xlati18;
      let x_670 : f32 = x_76.x_AdditionalShadowParams[x_668].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_670, x_670, x_670, x_670))));
      let x_674 : bool = u_xlatb29;
      if (x_674) {
        let x_678 : vec3<f32> = u_xlat6;
        let x_681 : vec3<f32> = u_xlat6;
        let x_684 : vec4<bool> = (abs(vec4<f32>(x_678.z, x_678.z, x_678.y, x_678.z)) >= abs(vec4<f32>(x_681.x, x_681.y, x_681.x, x_681.x)));
        let x_686 : vec3<bool> = vec3<bool>(x_684.x, x_684.y, x_684.z);
        let x_687 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_686.x, x_686.y, x_686.z, x_687.w);
        let x_690 : bool = u_xlatb7.y;
        let x_692 : bool = u_xlatb7.x;
        u_xlatb29 = (x_690 & x_692);
        let x_694 : vec3<f32> = u_xlat6;
        let x_697 : vec4<bool> = (-(vec4<f32>(x_694.z, x_694.y, x_694.z, x_694.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_698 : vec3<bool> = vec3<bool>(x_697.x, x_697.y, x_697.w);
        let x_699 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_698.x, x_698.y, x_699.z, x_698.z);
        let x_703 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_703);
        let x_708 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_708);
        let x_713 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_713);
        let x_716 : bool = u_xlatb7.z;
        if (x_716) {
          let x_722 : f32 = u_xlat7.y;
          x_718 = x_722;
        } else {
          let x_724 : f32 = u_xlat30;
          x_718 = x_724;
        }
        let x_725 : f32 = x_718;
        u_xlat30 = x_725;
        let x_727 : bool = u_xlatb29;
        if (x_727) {
          let x_732 : f32 = u_xlat7.x;
          x_728 = x_732;
        } else {
          let x_734 : f32 = u_xlat30;
          x_728 = x_734;
        }
        let x_735 : f32 = x_728;
        u_xlat29 = x_735;
        let x_736 : i32 = u_xlati18;
        let x_738 : f32 = x_76.x_AdditionalShadowParams[x_736].w;
        u_xlat30 = trunc(x_738);
        let x_740 : f32 = u_xlat29;
        let x_741 : f32 = u_xlat30;
        u_xlat29 = (x_740 + x_741);
        let x_743 : f32 = u_xlat29;
        u_xlati28 = i32(x_743);
      }
      let x_745 : i32 = u_xlati28;
      u_xlati28 = (x_745 << bitcast<u32>(2i));
      let x_747 : vec3<f32> = vs_TEXCOORD1;
      let x_750 : i32 = u_xlati28;
      let x_753 : i32 = u_xlati28;
      let x_757 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_750 + 1i) / 4i)][((x_753 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_747.y, x_747.y, x_747.y, x_747.y) * x_757);
      let x_759 : i32 = u_xlati28;
      let x_761 : i32 = u_xlati28;
      let x_764 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[(x_759 / 4i)][(x_761 % 4i)];
      let x_765 : vec3<f32> = vs_TEXCOORD1;
      let x_768 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_764 * vec4<f32>(x_765.x, x_765.x, x_765.x, x_765.x)) + x_768);
      let x_770 : i32 = u_xlati28;
      let x_773 : i32 = u_xlati28;
      let x_777 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_770 + 2i) / 4i)][((x_773 + 2i) % 4i)];
      let x_778 : vec3<f32> = vs_TEXCOORD1;
      let x_781 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_777 * vec4<f32>(x_778.z, x_778.z, x_778.z, x_778.z)) + x_781);
      let x_783 : vec4<f32> = u_xlat7;
      let x_784 : i32 = u_xlati28;
      let x_787 : i32 = u_xlati28;
      let x_791 : vec4<f32> = x_76.x_AdditionalLightsWorldToShadow[((x_784 + 3i) / 4i)][((x_787 + 3i) % 4i)];
      u_xlat7 = (x_783 + x_791);
      let x_793 : vec4<f32> = u_xlat7;
      let x_795 : vec4<f32> = u_xlat7;
      let x_797 : vec3<f32> = (vec3<f32>(x_793.x, x_793.y, x_793.z) / vec3<f32>(x_795.w, x_795.w, x_795.w));
      let x_798 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
      let x_801 : vec4<f32> = u_xlat7;
      let x_802 : vec2<f32> = vec2<f32>(x_801.x, x_801.y);
      let x_804 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_802.x, x_802.y, x_804);
      let x_812 : vec3<f32> = txVec1;
      let x_814 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_812.xy, x_812.z);
      u_xlat28 = x_814;
      let x_815 : i32 = u_xlati18;
      let x_817 : f32 = x_76.x_AdditionalShadowParams[x_815].x;
      u_xlat29 = (1.0f + -(x_817));
      let x_820 : f32 = u_xlat28;
      let x_821 : i32 = u_xlati18;
      let x_823 : f32 = x_76.x_AdditionalShadowParams[x_821].x;
      let x_825 : f32 = u_xlat29;
      u_xlat28 = ((x_820 * x_823) + x_825);
      let x_828 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_828);
      let x_832 : f32 = u_xlat7.z;
      u_xlatb30 = (x_832 >= 1.0f);
      let x_834 : bool = u_xlatb29;
      let x_835 : bool = u_xlatb30;
      u_xlatb29 = (x_834 | x_835);
      let x_837 : bool = u_xlatb29;
      let x_838 : f32 = u_xlat28;
      u_xlat28 = select(x_838, 1.0f, x_837);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_841 : f32 = u_xlat28;
    u_xlat29 = (-(x_841) + 1.0f);
    let x_845 : f32 = u_xlat2.x;
    let x_846 : f32 = u_xlat29;
    let x_848 : f32 = u_xlat28;
    u_xlat28 = ((x_845 * x_846) + x_848);
    let x_850 : f32 = u_xlat27;
    let x_851 : f32 = u_xlat28;
    u_xlat27 = (x_850 * x_851);
    let x_853 : f32 = u_xlat27;
    let x_855 : i32 = u_xlati18;
    let x_857 : vec4<f32> = x_587.x_AdditionalLightsColor[x_855];
    let x_859 : vec3<f32> = (vec3<f32>(x_853, x_853, x_853) * vec3<f32>(x_857.x, x_857.y, x_857.z));
    let x_860 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
    let x_862 : vec4<f32> = u_xlat1;
    let x_864 : vec3<f32> = u_xlat6;
    u_xlat18 = dot(vec3<f32>(x_862.x, x_862.y, x_862.z), x_864);
    let x_866 : f32 = u_xlat18;
    u_xlat18 = clamp(x_866, 0.0f, 1.0f);
    let x_868 : f32 = u_xlat18;
    let x_870 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_868, x_868, x_868) * vec3<f32>(x_870.x, x_870.y, x_870.z));
    let x_873 : vec3<f32> = u_xlat6;
    let x_874 : vec4<f32> = u_xlat0;
    let x_877 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_873 * vec3<f32>(x_874.y, x_874.z, x_874.w)) + x_877);

    continuing {
      let x_879 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_879 + bitcast<u32>(1i));
    }
  }
  let x_882 : vec4<f32> = u_xlat3;
  let x_884 : vec4<f32> = u_xlat0;
  let x_887 : vec4<f32> = u_xlat4;
  u_xlat8 = ((vec3<f32>(x_882.x, x_882.y, x_882.z) * vec3<f32>(x_884.y, x_884.z, x_884.w)) + vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : vec3<f32> = u_xlat5;
  let x_891 : vec3<f32> = u_xlat8;
  u_xlat8 = (x_890 + x_891);
  let x_893 : f32 = u_xlat26;
  let x_894 : f32 = u_xlat26;
  u_xlat1.x = (x_893 * -(x_894));
  let x_899 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_899);
  let x_902 : vec3<f32> = u_xlat8;
  let x_905 : vec4<f32> = x_28.unity_FogColor;
  u_xlat8 = (x_902 + -(vec3<f32>(x_905.x, x_905.y, x_905.z)));
  let x_911 : vec4<f32> = u_xlat1;
  let x_913 : vec3<f32> = u_xlat8;
  let x_916 : vec4<f32> = x_28.unity_FogColor;
  let x_918 : vec3<f32> = ((vec3<f32>(x_911.x, x_911.x, x_911.x) * x_913) + vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_923 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_923 == 1.0f);
  let x_925 : bool = u_xlatb8;
  if (x_925) {
    let x_930 : f32 = u_xlat0.x;
    x_926 = x_930;
  } else {
    x_926 = 1.0f;
  }
  let x_932 : f32 = x_926;
  SV_Target0.w = x_932;
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


