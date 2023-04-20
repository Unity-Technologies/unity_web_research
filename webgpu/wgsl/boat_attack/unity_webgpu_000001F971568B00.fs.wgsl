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
  /* @offset(76) */
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

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb8 : bool;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_249 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu8 : u32;

var<private> u_xlati8 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlatu26 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati26 : i32;

@group(1) @binding(1) var<uniform> x_731 : AdditionalLights;

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

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb26 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_192 : f32;
  var txVec0 : vec3<f32>;
  var x_565 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_861 : f32;
  var x_871 : f32;
  var txVec1 : vec3<f32>;
  var x_1056 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_80 : f32 = u_xlat1.x;
    x_76 = x_80;
  } else {
    x_76 = 0.0f;
  }
  let x_83 : f32 = x_76;
  u_xlat0.x = x_83;
  let x_88 : f32 = u_xlat0.w;
  let x_90 : f32 = x_57.x_BaseColor.w;
  let x_93 : f32 = x_57.x_Cutoff;
  u_xlat8.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat24;
  let x_107 : f32 = u_xlat16;
  u_xlat16 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat16;
  u_xlat16 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat8.x;
  let x_115 : f32 = u_xlat16;
  u_xlat8.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat8.x;
  u_xlat8.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb16;
  if (x_131) {
    let x_136 : f32 = u_xlat8.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat8.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat8.x;
  u_xlatb8 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb8;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat8;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat8.x = x_177.w;
  let x_189 : f32 = x_186.unity_LODFade.x;
  u_xlatb24 = (x_189 >= 0.0f);
  let x_191 : bool = u_xlatb24;
  if (x_191) {
    let x_196 : f32 = u_xlat8.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat8.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat8.x = x_203;
  let x_206 : f32 = u_xlat8.x;
  let x_209 : f32 = x_186.unity_LODFade.x;
  u_xlat8.x = (-(x_206) + x_209);
  let x_213 : f32 = u_xlat8.x;
  u_xlatb8 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb8;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_229);
  let x_233 : vec3<f32> = u_xlat8;
  let x_235 : vec3<f32> = vs_TEXCOORD2;
  let x_236 : vec3<f32> = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_241 : vec3<f32> = vs_TEXCOORD1;
  let x_251 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres0;
  let x_254 : vec3<f32> = (x_241 + -(vec3<f32>(x_251.x, x_251.y, x_251.z)));
  let x_255 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : vec3<f32> = vs_TEXCOORD1;
  let x_260 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres1;
  let x_263 : vec3<f32> = (x_258 + -(vec3<f32>(x_260.x, x_260.y, x_260.z)));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec3<f32> = vs_TEXCOORD1;
  let x_270 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres2;
  let x_273 : vec3<f32> = (x_267 + -(vec3<f32>(x_270.x, x_270.y, x_270.z)));
  let x_274 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_249.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_277 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat3;
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = u_xlat4;
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_289.x, x_289.y, x_289.z), vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : vec4<f32> = u_xlat5;
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_302 : vec3<f32> = u_xlat6;
  let x_303 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_302, x_303);
  let x_309 : vec4<f32> = u_xlat3;
  let x_312 : vec4<f32> = x_249.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_309 < x_312);
  let x_315 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_315);
  let x_319 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_319);
  let x_323 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_323);
  let x_327 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_327);
  let x_331 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_331);
  let x_337 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_337);
  let x_341 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_341);
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : vec4<f32> = u_xlat4;
  let x_348 : vec3<f32> = (vec3<f32>(x_344.x, x_344.y, x_344.z) + vec3<f32>(x_346.y, x_346.z, x_346.w));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat3;
  let x_354 : vec3<f32> = max(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_355.x, x_354.x, x_354.y, x_354.z);
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat8.x = dot(x_357, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_365 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_365) + 4.0f);
  let x_372 : f32 = u_xlat8.x;
  u_xlatu8 = u32(x_372);
  let x_376 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_376) << bitcast<u32>(2i));
  let x_379 : vec3<f32> = vs_TEXCOORD1;
  let x_381 : i32 = u_xlati8;
  let x_384 : i32 = u_xlati8;
  let x_388 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_381 + 1i) / 4i)][((x_384 + 1i) % 4i)];
  let x_390 : vec3<f32> = (vec3<f32>(x_379.y, x_379.y, x_379.y) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : i32 = u_xlati8;
  let x_395 : i32 = u_xlati8;
  let x_398 : vec4<f32> = x_249.x_MainLightWorldToShadow[(x_393 / 4i)][(x_395 % 4i)];
  let x_400 : vec3<f32> = vs_TEXCOORD1;
  let x_403 : vec4<f32> = u_xlat3;
  let x_405 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_400.x, x_400.x, x_400.x)) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : i32 = u_xlati8;
  let x_411 : i32 = u_xlati8;
  let x_415 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_408 + 2i) / 4i)][((x_411 + 2i) % 4i)];
  let x_417 : vec3<f32> = vs_TEXCOORD1;
  let x_420 : vec4<f32> = u_xlat3;
  let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.z, x_417.z, x_417.z)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat3;
  let x_427 : i32 = u_xlati8;
  let x_430 : i32 = u_xlati8;
  let x_434 : vec4<f32> = x_249.x_MainLightWorldToShadow[((x_427 + 3i) / 4i)][((x_430 + 3i) % 4i)];
  let x_436 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  u_xlat2.w = 1.0f;
  let x_442 : vec4<f32> = x_186.unity_SHAr;
  let x_443 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_442, x_443);
  let x_448 : vec4<f32> = x_186.unity_SHAg;
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_448, x_449);
  let x_454 : vec4<f32> = x_186.unity_SHAb;
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_454, x_455);
  let x_458 : vec4<f32> = u_xlat2;
  let x_460 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_458.y, x_458.z, x_458.z, x_458.x) * vec4<f32>(x_460.x, x_460.y, x_460.z, x_460.z));
  let x_465 : vec4<f32> = x_186.unity_SHBr;
  let x_466 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_465, x_466);
  let x_471 : vec4<f32> = x_186.unity_SHBg;
  let x_472 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_471, x_472);
  let x_477 : vec4<f32> = x_186.unity_SHBb;
  let x_478 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_477, x_478);
  let x_482 : f32 = u_xlat2.y;
  let x_484 : f32 = u_xlat2.y;
  u_xlat8.x = (x_482 * x_484);
  let x_488 : f32 = u_xlat2.x;
  let x_490 : f32 = u_xlat2.x;
  let x_493 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_488 * x_490) + -(x_493));
  let x_499 : vec4<f32> = x_186.unity_SHC;
  let x_501 : vec3<f32> = u_xlat8;
  let x_504 : vec3<f32> = u_xlat6;
  let x_505 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_501.x, x_501.x, x_501.x)) + x_504);
  let x_506 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat4;
  let x_510 : vec4<f32> = u_xlat5;
  let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) + vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat4;
  let x_517 : vec3<f32> = max(vec3<f32>(x_515.x, x_515.y, x_515.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_518 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_522 : vec4<f32> = u_xlat3;
  let x_523 : vec2<f32> = vec2<f32>(x_522.x, x_522.y);
  let x_525 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_523.x, x_523.y, x_525);
  let x_537 : vec3<f32> = txVec0;
  let x_539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_537.xy, x_537.z);
  u_xlat8.x = x_539;
  let x_543 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_543) + 1.0f);
  let x_547 : f32 = u_xlat8.x;
  let x_549 : f32 = x_249.x_MainLightShadowParams.x;
  let x_551 : f32 = u_xlat24;
  u_xlat8.x = ((x_547 * x_549) + x_551);
  let x_555 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_555);
  let x_559 : f32 = u_xlat3.z;
  u_xlatb1 = (x_559 >= 1.0f);
  let x_561 : bool = u_xlatb24;
  let x_562 : bool = u_xlatb1;
  u_xlatb24 = (x_561 | x_562);
  let x_564 : bool = u_xlatb24;
  if (x_564) {
    x_565 = 1.0f;
  } else {
    let x_570 : f32 = u_xlat8.x;
    x_565 = x_570;
  }
  let x_571 : f32 = x_565;
  u_xlat8.x = x_571;
  let x_573 : vec3<f32> = vs_TEXCOORD1;
  let x_576 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_578 : vec3<f32> = (x_573 + -(x_576));
  let x_579 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat3;
  let x_583 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : f32 = u_xlat24;
  let x_588 : f32 = x_249.x_MainLightShadowParams.z;
  let x_591 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_586 * x_588) + x_591);
  let x_595 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_595, 0.0f, 1.0f);
  let x_600 : f32 = u_xlat8.x;
  u_xlat26 = (-(x_600) + 1.0f);
  let x_604 : f32 = u_xlat1.x;
  let x_605 : f32 = u_xlat26;
  let x_608 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_604 * x_605) + x_608);
  let x_612 : f32 = u_xlat8.x;
  let x_614 : f32 = x_186.unity_LightData.z;
  u_xlat8.x = (x_612 * x_614);
  let x_617 : vec3<f32> = u_xlat8;
  let x_620 : vec4<f32> = x_44.x_MainLightColor;
  let x_622 : vec3<f32> = (vec3<f32>(x_617.x, x_617.x, x_617.x) * vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat2;
  let x_628 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat8.x = dot(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_633 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_633, 0.0f, 1.0f);
  let x_636 : vec3<f32> = u_xlat8;
  let x_638 : vec4<f32> = u_xlat3;
  let x_640 : vec3<f32> = (vec3<f32>(x_636.x, x_636.x, x_636.x) * vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat1;
  let x_645 : vec4<f32> = u_xlat3;
  let x_647 : vec3<f32> = (vec3<f32>(x_643.y, x_643.z, x_643.w) * vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat0;
  let x_652 : vec4<f32> = u_xlat3;
  let x_654 : vec3<f32> = (vec3<f32>(x_650.x, x_650.x, x_650.x) * vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_658 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_660 : f32 = x_186.unity_LightData.y;
  u_xlat8.x = min(x_658, x_660);
  let x_664 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_664));
  let x_667 : f32 = u_xlat24;
  let x_670 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_673 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_667 * x_670) + x_673);
  let x_675 : f32 = u_xlat24;
  u_xlat24 = clamp(x_675, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_687 : u32 = u_xlatu_loop_1;
    let x_688 : u32 = u_xlatu8;
    if ((x_687 < x_688)) {
    } else {
      break;
    }
    let x_691 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_691 >> 2u);
    let x_694 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_694 & 3u));
    let x_697 : u32 = u_xlatu26;
    let x_700 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_697)];
    let x_710 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_715 : vec4<u32> = indexable[x_710];
    u_xlat26 = dot(x_700, bitcast<vec4<f32>>(x_715));
    let x_719 : f32 = u_xlat26;
    u_xlati26 = i32(x_719);
    let x_721 : vec3<f32> = vs_TEXCOORD1;
    let x_732 : i32 = u_xlati26;
    let x_734 : vec4<f32> = x_731.x_AdditionalLightsPosition[x_732];
    let x_737 : i32 = u_xlati26;
    let x_739 : vec4<f32> = x_731.x_AdditionalLightsPosition[x_737];
    u_xlat6 = ((-(x_721) * vec3<f32>(x_734.w, x_734.w, x_734.w)) + vec3<f32>(x_739.x, x_739.y, x_739.z));
    let x_743 : vec3<f32> = u_xlat6;
    let x_744 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_743, x_744);
    let x_746 : f32 = u_xlat27;
    u_xlat27 = max(x_746, 0.00006103515625f);
    let x_750 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_750);
    let x_752 : f32 = u_xlat28;
    let x_754 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_752, x_752, x_752) * x_754);
    let x_756 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_756);
    let x_758 : f32 = u_xlat27;
    let x_759 : i32 = u_xlati26;
    let x_761 : f32 = x_731.x_AdditionalLightsAttenuation[x_759].x;
    u_xlat27 = (x_758 * x_761);
    let x_763 : f32 = u_xlat27;
    let x_765 : f32 = u_xlat27;
    u_xlat27 = ((-(x_763) * x_765) + 1.0f);
    let x_768 : f32 = u_xlat27;
    u_xlat27 = max(x_768, 0.0f);
    let x_770 : f32 = u_xlat27;
    let x_771 : f32 = u_xlat27;
    u_xlat27 = (x_770 * x_771);
    let x_773 : f32 = u_xlat27;
    let x_774 : f32 = u_xlat28;
    u_xlat27 = (x_773 * x_774);
    let x_776 : i32 = u_xlati26;
    let x_778 : vec4<f32> = x_731.x_AdditionalLightsSpotDir[x_776];
    let x_780 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_778.x, x_778.y, x_778.z), x_780);
    let x_782 : f32 = u_xlat28;
    let x_783 : i32 = u_xlati26;
    let x_785 : f32 = x_731.x_AdditionalLightsAttenuation[x_783].z;
    let x_787 : i32 = u_xlati26;
    let x_789 : f32 = x_731.x_AdditionalLightsAttenuation[x_787].w;
    u_xlat28 = ((x_782 * x_785) + x_789);
    let x_791 : f32 = u_xlat28;
    u_xlat28 = clamp(x_791, 0.0f, 1.0f);
    let x_793 : f32 = u_xlat28;
    let x_794 : f32 = u_xlat28;
    u_xlat28 = (x_793 * x_794);
    let x_796 : f32 = u_xlat27;
    let x_797 : f32 = u_xlat28;
    u_xlat27 = (x_796 * x_797);
    let x_801 : i32 = u_xlati26;
    let x_803 : f32 = x_249.x_AdditionalShadowParams[x_801].w;
    u_xlati28 = i32(x_803);
    let x_806 : i32 = u_xlati28;
    u_xlatb29 = (x_806 >= 0i);
    let x_808 : bool = u_xlatb29;
    if (x_808) {
      let x_812 : i32 = u_xlati26;
      let x_814 : f32 = x_249.x_AdditionalShadowParams[x_812].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_814, x_814, x_814, x_814))));
      let x_818 : bool = u_xlatb29;
      if (x_818) {
        let x_822 : vec3<f32> = u_xlat6;
        let x_825 : vec3<f32> = u_xlat6;
        let x_828 : vec4<bool> = (abs(vec4<f32>(x_822.z, x_822.z, x_822.y, x_822.z)) >= abs(vec4<f32>(x_825.x, x_825.y, x_825.x, x_825.x)));
        let x_830 : vec3<bool> = vec3<bool>(x_828.x, x_828.y, x_828.z);
        let x_831 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_830.x, x_830.y, x_830.z, x_831.w);
        let x_834 : bool = u_xlatb7.y;
        let x_836 : bool = u_xlatb7.x;
        u_xlatb29 = (x_834 & x_836);
        let x_838 : vec3<f32> = u_xlat6;
        let x_841 : vec4<bool> = (-(vec4<f32>(x_838.z, x_838.y, x_838.z, x_838.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_842 : vec3<bool> = vec3<bool>(x_841.x, x_841.y, x_841.w);
        let x_843 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_842.x, x_842.y, x_843.z, x_842.z);
        let x_847 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_847);
        let x_852 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_852);
        let x_857 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_857);
        let x_860 : bool = u_xlatb7.z;
        if (x_860) {
          let x_865 : f32 = u_xlat7.y;
          x_861 = x_865;
        } else {
          let x_867 : f32 = u_xlat30;
          x_861 = x_867;
        }
        let x_868 : f32 = x_861;
        u_xlat30 = x_868;
        let x_870 : bool = u_xlatb29;
        if (x_870) {
          let x_875 : f32 = u_xlat7.x;
          x_871 = x_875;
        } else {
          let x_877 : f32 = u_xlat30;
          x_871 = x_877;
        }
        let x_878 : f32 = x_871;
        u_xlat29 = x_878;
        let x_879 : i32 = u_xlati26;
        let x_881 : f32 = x_249.x_AdditionalShadowParams[x_879].w;
        u_xlat30 = trunc(x_881);
        let x_883 : f32 = u_xlat29;
        let x_884 : f32 = u_xlat30;
        u_xlat29 = (x_883 + x_884);
        let x_886 : f32 = u_xlat29;
        u_xlati28 = i32(x_886);
      }
      let x_888 : i32 = u_xlati28;
      u_xlati28 = (x_888 << bitcast<u32>(2i));
      let x_890 : vec3<f32> = vs_TEXCOORD1;
      let x_893 : i32 = u_xlati28;
      let x_896 : i32 = u_xlati28;
      let x_900 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_893 + 1i) / 4i)][((x_896 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_890.y, x_890.y, x_890.y, x_890.y) * x_900);
      let x_902 : i32 = u_xlati28;
      let x_904 : i32 = u_xlati28;
      let x_907 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_902 / 4i)][(x_904 % 4i)];
      let x_908 : vec3<f32> = vs_TEXCOORD1;
      let x_911 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_907 * vec4<f32>(x_908.x, x_908.x, x_908.x, x_908.x)) + x_911);
      let x_913 : i32 = u_xlati28;
      let x_916 : i32 = u_xlati28;
      let x_920 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_913 + 2i) / 4i)][((x_916 + 2i) % 4i)];
      let x_921 : vec3<f32> = vs_TEXCOORD1;
      let x_924 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_920 * vec4<f32>(x_921.z, x_921.z, x_921.z, x_921.z)) + x_924);
      let x_926 : vec4<f32> = u_xlat7;
      let x_927 : i32 = u_xlati28;
      let x_930 : i32 = u_xlati28;
      let x_934 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_927 + 3i) / 4i)][((x_930 + 3i) % 4i)];
      u_xlat7 = (x_926 + x_934);
      let x_936 : vec4<f32> = u_xlat7;
      let x_938 : vec4<f32> = u_xlat7;
      let x_940 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) / vec3<f32>(x_938.w, x_938.w, x_938.w));
      let x_941 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
      let x_944 : vec4<f32> = u_xlat7;
      let x_945 : vec2<f32> = vec2<f32>(x_944.x, x_944.y);
      let x_947 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_945.x, x_945.y, x_947);
      let x_955 : vec3<f32> = txVec1;
      let x_957 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_955.xy, x_955.z);
      u_xlat28 = x_957;
      let x_958 : i32 = u_xlati26;
      let x_960 : f32 = x_249.x_AdditionalShadowParams[x_958].x;
      u_xlat29 = (1.0f + -(x_960));
      let x_963 : f32 = u_xlat28;
      let x_964 : i32 = u_xlati26;
      let x_966 : f32 = x_249.x_AdditionalShadowParams[x_964].x;
      let x_968 : f32 = u_xlat29;
      u_xlat28 = ((x_963 * x_966) + x_968);
      let x_971 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_971);
      let x_975 : f32 = u_xlat7.z;
      u_xlatb30 = (x_975 >= 1.0f);
      let x_977 : bool = u_xlatb29;
      let x_978 : bool = u_xlatb30;
      u_xlatb29 = (x_977 | x_978);
      let x_980 : bool = u_xlatb29;
      let x_981 : f32 = u_xlat28;
      u_xlat28 = select(x_981, 1.0f, x_980);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_984 : f32 = u_xlat28;
    u_xlat29 = (-(x_984) + 1.0f);
    let x_987 : f32 = u_xlat24;
    let x_988 : f32 = u_xlat29;
    let x_990 : f32 = u_xlat28;
    u_xlat28 = ((x_987 * x_988) + x_990);
    let x_992 : f32 = u_xlat27;
    let x_993 : f32 = u_xlat28;
    u_xlat27 = (x_992 * x_993);
    let x_995 : f32 = u_xlat27;
    let x_997 : i32 = u_xlati26;
    let x_999 : vec4<f32> = x_731.x_AdditionalLightsColor[x_997];
    let x_1001 : vec3<f32> = (vec3<f32>(x_995, x_995, x_995) * vec3<f32>(x_999.x, x_999.y, x_999.z));
    let x_1002 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
    let x_1004 : vec4<f32> = u_xlat2;
    let x_1006 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_1004.x, x_1004.y, x_1004.z), x_1006);
    let x_1008 : f32 = u_xlat26;
    u_xlat26 = clamp(x_1008, 0.0f, 1.0f);
    let x_1010 : f32 = u_xlat26;
    let x_1012 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1010, x_1010, x_1010) * vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
    let x_1015 : vec4<f32> = u_xlat1;
    let x_1017 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_1015.y, x_1015.z, x_1015.w) * x_1017);
    let x_1019 : vec3<f32> = u_xlat6;
    let x_1020 : vec4<f32> = u_xlat0;
    let x_1023 : vec4<f32> = u_xlat5;
    let x_1025 : vec3<f32> = ((x_1019 * vec3<f32>(x_1020.x, x_1020.x, x_1020.x)) + vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
    let x_1026 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);

    continuing {
      let x_1028 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1028 + bitcast<u32>(1i));
    }
  }
  let x_1030 : vec4<f32> = u_xlat4;
  let x_1032 : vec4<f32> = u_xlat1;
  let x_1035 : vec4<f32> = u_xlat3;
  let x_1037 : vec3<f32> = ((vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(x_1032.y, x_1032.z, x_1032.w)) + vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
  let x_1038 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1042 : vec4<f32> = u_xlat5;
  let x_1044 : vec4<f32> = u_xlat1;
  let x_1046 : vec3<f32> = (vec3<f32>(x_1042.x, x_1042.y, x_1042.z) + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1050 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_1050 == 1.0f);
  let x_1052 : bool = u_xlatb8;
  let x_1053 : bool = u_xlatb16;
  u_xlatb8 = (x_1052 | x_1053);
  let x_1055 : bool = u_xlatb8;
  if (x_1055) {
    let x_1060 : f32 = u_xlat0.x;
    x_1056 = x_1060;
  } else {
    x_1056 = 1.0f;
  }
  let x_1062 : f32 = x_1056;
  SV_Target0.w = x_1062;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


