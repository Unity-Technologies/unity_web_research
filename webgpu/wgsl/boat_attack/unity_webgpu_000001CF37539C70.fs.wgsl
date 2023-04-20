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

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

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

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlatu24 : u32;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

@group(1) @binding(1) var<uniform> x_769 : AdditionalLights;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlati29 : i32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlatb27 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_192 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_900 : f32;
  var x_910 : f32;
  var txVec1 : vec3<f32>;
  var x_1130 : f32;
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
  u_xlat8.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat24;
  let x_108 : f32 = u_xlat16;
  u_xlat16 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat16;
  u_xlat16 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat8.x;
  let x_116 : f32 = u_xlat16;
  u_xlat8.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat8.x;
  u_xlat8.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb16;
  if (x_132) {
    let x_137 : f32 = u_xlat8.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat8.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat8.x;
  u_xlatb8 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb8;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_45.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_166.x, x_167.y, x_166.y);
  let x_174 : vec3<f32> = u_xlat8;
  let x_177 : f32 = x_45.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_174.x, x_174.z), x_177);
  u_xlat8.x = x_178.w;
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
  let x_440 : f32 = vs_TEXCOORD1.y;
  let x_443 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat8.x = (x_440 * x_443);
  let x_447 : f32 = x_45.unity_MatrixV[0i].z;
  let x_449 : f32 = vs_TEXCOORD1.x;
  let x_452 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_447 * x_449) + x_452);
  let x_456 : f32 = x_45.unity_MatrixV[2i].z;
  let x_458 : f32 = vs_TEXCOORD1.z;
  let x_461 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_456 * x_458) + x_461);
  let x_465 : f32 = u_xlat8.x;
  let x_467 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat8.x = (x_465 + x_467);
  let x_471 : f32 = u_xlat8.x;
  let x_475 : f32 = x_45.x_ProjectionParams.y;
  u_xlat8.x = (-(x_471) + -(x_475));
  let x_480 : f32 = u_xlat8.x;
  u_xlat8.x = max(x_480, 0.0f);
  let x_484 : f32 = u_xlat8.x;
  let x_487 : f32 = x_45.unity_FogParams.x;
  u_xlat8.x = (x_484 * x_487);
  u_xlat2.w = 1.0f;
  let x_493 : vec4<f32> = x_186.unity_SHAr;
  let x_494 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_493, x_494);
  let x_499 : vec4<f32> = x_186.unity_SHAg;
  let x_500 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_499, x_500);
  let x_505 : vec4<f32> = x_186.unity_SHAb;
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_505, x_506);
  let x_509 : vec4<f32> = u_xlat2;
  let x_511 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_509.y, x_509.z, x_509.z, x_509.x) * vec4<f32>(x_511.x, x_511.y, x_511.z, x_511.z));
  let x_516 : vec4<f32> = x_186.unity_SHBr;
  let x_517 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_516, x_517);
  let x_522 : vec4<f32> = x_186.unity_SHBg;
  let x_523 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_522, x_523);
  let x_528 : vec4<f32> = x_186.unity_SHBb;
  let x_529 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_528, x_529);
  let x_533 : f32 = u_xlat2.y;
  let x_535 : f32 = u_xlat2.y;
  u_xlat24 = (x_533 * x_535);
  let x_538 : f32 = u_xlat2.x;
  let x_540 : f32 = u_xlat2.x;
  let x_542 : f32 = u_xlat24;
  u_xlat24 = ((x_538 * x_540) + -(x_542));
  let x_547 : vec4<f32> = x_186.unity_SHC;
  let x_549 : f32 = u_xlat24;
  let x_552 : vec3<f32> = u_xlat6;
  let x_553 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(x_549, x_549, x_549)) + x_552);
  let x_554 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : vec4<f32> = u_xlat5;
  let x_560 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = max(vec3<f32>(x_563.x, x_563.y, x_563.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : vec4<f32> = u_xlat3;
  let x_571 : vec2<f32> = vec2<f32>(x_570.x, x_570.y);
  let x_573 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_571.x, x_571.y, x_573);
  let x_585 : vec3<f32> = txVec0;
  let x_587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_585.xy, x_585.z);
  u_xlat24 = x_587;
  let x_590 : f32 = x_249.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_590) + 1.0f);
  let x_594 : f32 = u_xlat24;
  let x_596 : f32 = x_249.x_MainLightShadowParams.x;
  let x_599 : f32 = u_xlat1.x;
  u_xlat24 = ((x_594 * x_596) + x_599);
  let x_603 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_603);
  let x_607 : f32 = u_xlat3.z;
  u_xlatb26 = (x_607 >= 1.0f);
  let x_609 : bool = u_xlatb1;
  let x_610 : bool = u_xlatb26;
  u_xlatb1 = (x_609 | x_610);
  let x_612 : bool = u_xlatb1;
  let x_613 : f32 = u_xlat24;
  u_xlat24 = select(x_613, 1.0f, x_612);
  let x_615 : vec3<f32> = vs_TEXCOORD1;
  let x_618 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_620 : vec3<f32> = (x_615 + -(x_618));
  let x_621 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat3;
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_631 : f32 = u_xlat1.x;
  let x_633 : f32 = x_249.x_MainLightShadowParams.z;
  let x_636 : f32 = x_249.x_MainLightShadowParams.w;
  u_xlat26 = ((x_631 * x_633) + x_636);
  let x_638 : f32 = u_xlat26;
  u_xlat26 = clamp(x_638, 0.0f, 1.0f);
  let x_640 : f32 = u_xlat24;
  u_xlat3.x = (-(x_640) + 1.0f);
  let x_644 : f32 = u_xlat26;
  let x_646 : f32 = u_xlat3.x;
  let x_648 : f32 = u_xlat24;
  u_xlat24 = ((x_644 * x_646) + x_648);
  let x_650 : f32 = u_xlat24;
  let x_652 : f32 = x_186.unity_LightData.z;
  u_xlat24 = (x_650 * x_652);
  let x_654 : f32 = u_xlat24;
  let x_657 : vec4<f32> = x_45.x_MainLightColor;
  let x_659 : vec3<f32> = (vec3<f32>(x_654, x_654, x_654) * vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat2;
  let x_665 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : f32 = u_xlat24;
  u_xlat24 = clamp(x_668, 0.0f, 1.0f);
  let x_670 : f32 = u_xlat24;
  let x_672 : vec4<f32> = u_xlat3;
  let x_674 : vec3<f32> = (vec3<f32>(x_670, x_670, x_670) * vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec4<f32> = u_xlat1;
  let x_679 : vec4<f32> = u_xlat3;
  let x_681 : vec3<f32> = (vec3<f32>(x_677.y, x_677.z, x_677.w) * vec3<f32>(x_679.x, x_679.y, x_679.z));
  let x_682 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : vec4<f32> = u_xlat3;
  let x_688 : vec3<f32> = (vec3<f32>(x_684.x, x_684.x, x_684.x) * vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_692 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_694 : f32 = x_186.unity_LightData.y;
  u_xlat24 = min(x_692, x_694);
  let x_697 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_697));
  let x_701 : f32 = u_xlat1.x;
  let x_704 : f32 = x_249.x_AdditionalShadowFadeParams.x;
  let x_707 : f32 = x_249.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_701 * x_704) + x_707);
  let x_711 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_711, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_724 : u32 = u_xlatu_loop_1;
    let x_725 : u32 = u_xlatu24;
    if ((x_724 < x_725)) {
    } else {
      break;
    }
    let x_728 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_728 >> 2u);
    let x_731 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_731 & 3u));
    let x_735 : u32 = u_xlatu27;
    let x_738 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_735)];
    let x_748 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_753 : vec4<u32> = indexable[x_748];
    u_xlat27 = dot(x_738, bitcast<vec4<f32>>(x_753));
    let x_757 : f32 = u_xlat27;
    u_xlati27 = i32(x_757);
    let x_759 : vec3<f32> = vs_TEXCOORD1;
    let x_770 : i32 = u_xlati27;
    let x_772 : vec4<f32> = x_769.x_AdditionalLightsPosition[x_770];
    let x_775 : i32 = u_xlati27;
    let x_777 : vec4<f32> = x_769.x_AdditionalLightsPosition[x_775];
    u_xlat6 = ((-(x_759) * vec3<f32>(x_772.w, x_772.w, x_772.w)) + vec3<f32>(x_777.x, x_777.y, x_777.z));
    let x_781 : vec3<f32> = u_xlat6;
    let x_782 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_781, x_782);
    let x_784 : f32 = u_xlat28;
    u_xlat28 = max(x_784, 0.00006103515625f);
    let x_788 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_788);
    let x_790 : f32 = u_xlat29;
    let x_792 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_790, x_790, x_790) * x_792);
    let x_794 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_794);
    let x_796 : f32 = u_xlat28;
    let x_797 : i32 = u_xlati27;
    let x_799 : f32 = x_769.x_AdditionalLightsAttenuation[x_797].x;
    u_xlat28 = (x_796 * x_799);
    let x_801 : f32 = u_xlat28;
    let x_803 : f32 = u_xlat28;
    u_xlat28 = ((-(x_801) * x_803) + 1.0f);
    let x_806 : f32 = u_xlat28;
    u_xlat28 = max(x_806, 0.0f);
    let x_808 : f32 = u_xlat28;
    let x_809 : f32 = u_xlat28;
    u_xlat28 = (x_808 * x_809);
    let x_811 : f32 = u_xlat28;
    let x_812 : f32 = u_xlat29;
    u_xlat28 = (x_811 * x_812);
    let x_814 : i32 = u_xlati27;
    let x_816 : vec4<f32> = x_769.x_AdditionalLightsSpotDir[x_814];
    let x_818 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_816.x, x_816.y, x_816.z), x_818);
    let x_820 : f32 = u_xlat29;
    let x_821 : i32 = u_xlati27;
    let x_823 : f32 = x_769.x_AdditionalLightsAttenuation[x_821].z;
    let x_825 : i32 = u_xlati27;
    let x_827 : f32 = x_769.x_AdditionalLightsAttenuation[x_825].w;
    u_xlat29 = ((x_820 * x_823) + x_827);
    let x_829 : f32 = u_xlat29;
    u_xlat29 = clamp(x_829, 0.0f, 1.0f);
    let x_831 : f32 = u_xlat29;
    let x_832 : f32 = u_xlat29;
    u_xlat29 = (x_831 * x_832);
    let x_834 : f32 = u_xlat28;
    let x_835 : f32 = u_xlat29;
    u_xlat28 = (x_834 * x_835);
    let x_839 : i32 = u_xlati27;
    let x_841 : f32 = x_249.x_AdditionalShadowParams[x_839].w;
    u_xlati29 = i32(x_841);
    let x_844 : i32 = u_xlati29;
    u_xlatb30 = (x_844 >= 0i);
    let x_846 : bool = u_xlatb30;
    if (x_846) {
      let x_850 : i32 = u_xlati27;
      let x_852 : f32 = x_249.x_AdditionalShadowParams[x_850].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_852, x_852, x_852, x_852))));
      let x_856 : bool = u_xlatb30;
      if (x_856) {
        let x_860 : vec3<f32> = u_xlat6;
        let x_863 : vec3<f32> = u_xlat6;
        let x_866 : vec4<bool> = (abs(vec4<f32>(x_860.z, x_860.z, x_860.y, x_860.z)) >= abs(vec4<f32>(x_863.x, x_863.y, x_863.x, x_863.x)));
        let x_868 : vec3<bool> = vec3<bool>(x_866.x, x_866.y, x_866.z);
        let x_869 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_868.x, x_868.y, x_868.z, x_869.w);
        let x_872 : bool = u_xlatb7.y;
        let x_874 : bool = u_xlatb7.x;
        u_xlatb30 = (x_872 & x_874);
        let x_876 : vec3<f32> = u_xlat6;
        let x_879 : vec4<bool> = (-(vec4<f32>(x_876.z, x_876.y, x_876.z, x_876.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_880 : vec3<bool> = vec3<bool>(x_879.x, x_879.y, x_879.w);
        let x_881 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_880.x, x_880.y, x_881.z, x_880.z);
        let x_885 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_885);
        let x_890 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_890);
        let x_895 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_895);
        let x_899 : bool = u_xlatb7.z;
        if (x_899) {
          let x_904 : f32 = u_xlat7.y;
          x_900 = x_904;
        } else {
          let x_906 : f32 = u_xlat31;
          x_900 = x_906;
        }
        let x_907 : f32 = x_900;
        u_xlat15 = x_907;
        let x_909 : bool = u_xlatb30;
        if (x_909) {
          let x_914 : f32 = u_xlat7.x;
          x_910 = x_914;
        } else {
          let x_916 : f32 = u_xlat15;
          x_910 = x_916;
        }
        let x_917 : f32 = x_910;
        u_xlat30 = x_917;
        let x_918 : i32 = u_xlati27;
        let x_920 : f32 = x_249.x_AdditionalShadowParams[x_918].w;
        u_xlat7.x = trunc(x_920);
        let x_923 : f32 = u_xlat30;
        let x_925 : f32 = u_xlat7.x;
        u_xlat30 = (x_923 + x_925);
        let x_927 : f32 = u_xlat30;
        u_xlati29 = i32(x_927);
      }
      let x_929 : i32 = u_xlati29;
      u_xlati29 = (x_929 << bitcast<u32>(2i));
      let x_931 : vec3<f32> = vs_TEXCOORD1;
      let x_934 : i32 = u_xlati29;
      let x_937 : i32 = u_xlati29;
      let x_941 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_934 + 1i) / 4i)][((x_937 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_931.y, x_931.y, x_931.y, x_931.y) * x_941);
      let x_943 : i32 = u_xlati29;
      let x_945 : i32 = u_xlati29;
      let x_948 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[(x_943 / 4i)][(x_945 % 4i)];
      let x_949 : vec3<f32> = vs_TEXCOORD1;
      let x_952 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_948 * vec4<f32>(x_949.x, x_949.x, x_949.x, x_949.x)) + x_952);
      let x_954 : i32 = u_xlati29;
      let x_957 : i32 = u_xlati29;
      let x_961 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_954 + 2i) / 4i)][((x_957 + 2i) % 4i)];
      let x_962 : vec3<f32> = vs_TEXCOORD1;
      let x_965 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_961 * vec4<f32>(x_962.z, x_962.z, x_962.z, x_962.z)) + x_965);
      let x_967 : vec4<f32> = u_xlat7;
      let x_968 : i32 = u_xlati29;
      let x_971 : i32 = u_xlati29;
      let x_975 : vec4<f32> = x_249.x_AdditionalLightsWorldToShadow[((x_968 + 3i) / 4i)][((x_971 + 3i) % 4i)];
      u_xlat7 = (x_967 + x_975);
      let x_977 : vec4<f32> = u_xlat7;
      let x_979 : vec4<f32> = u_xlat7;
      let x_981 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.z) / vec3<f32>(x_979.w, x_979.w, x_979.w));
      let x_982 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
      let x_985 : vec4<f32> = u_xlat7;
      let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
      let x_988 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_986.x, x_986.y, x_988);
      let x_996 : vec3<f32> = txVec1;
      let x_998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_996.xy, x_996.z);
      u_xlat29 = x_998;
      let x_999 : i32 = u_xlati27;
      let x_1001 : f32 = x_249.x_AdditionalShadowParams[x_999].x;
      u_xlat30 = (1.0f + -(x_1001));
      let x_1004 : f32 = u_xlat29;
      let x_1005 : i32 = u_xlati27;
      let x_1007 : f32 = x_249.x_AdditionalShadowParams[x_1005].x;
      let x_1009 : f32 = u_xlat30;
      u_xlat29 = ((x_1004 * x_1007) + x_1009);
      let x_1012 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_1012);
      let x_1015 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_1015 >= 1.0f);
      let x_1018 : bool = u_xlatb30;
      let x_1020 : bool = u_xlatb7.x;
      u_xlatb30 = (x_1018 | x_1020);
      let x_1022 : bool = u_xlatb30;
      let x_1023 : f32 = u_xlat29;
      u_xlat29 = select(x_1023, 1.0f, x_1022);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_1026 : f32 = u_xlat29;
    u_xlat30 = (-(x_1026) + 1.0f);
    let x_1030 : f32 = u_xlat1.x;
    let x_1031 : f32 = u_xlat30;
    let x_1033 : f32 = u_xlat29;
    u_xlat29 = ((x_1030 * x_1031) + x_1033);
    let x_1035 : f32 = u_xlat28;
    let x_1036 : f32 = u_xlat29;
    u_xlat28 = (x_1035 * x_1036);
    let x_1038 : f32 = u_xlat28;
    let x_1040 : i32 = u_xlati27;
    let x_1042 : vec4<f32> = x_769.x_AdditionalLightsColor[x_1040];
    let x_1044 : vec3<f32> = (vec3<f32>(x_1038, x_1038, x_1038) * vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
    let x_1045 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
    let x_1047 : vec4<f32> = u_xlat2;
    let x_1049 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_1047.x, x_1047.y, x_1047.z), x_1049);
    let x_1051 : f32 = u_xlat27;
    u_xlat27 = clamp(x_1051, 0.0f, 1.0f);
    let x_1053 : f32 = u_xlat27;
    let x_1055 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1053, x_1053, x_1053) * vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
    let x_1058 : vec4<f32> = u_xlat1;
    let x_1060 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_1058.y, x_1058.z, x_1058.w) * x_1060);
    let x_1062 : vec3<f32> = u_xlat6;
    let x_1063 : vec4<f32> = u_xlat0;
    let x_1066 : vec4<f32> = u_xlat5;
    let x_1068 : vec3<f32> = ((x_1062 * vec3<f32>(x_1063.x, x_1063.x, x_1063.x)) + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
    let x_1069 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);

    continuing {
      let x_1071 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1071 + bitcast<u32>(1i));
    }
  }
  let x_1073 : vec4<f32> = u_xlat4;
  let x_1075 : vec4<f32> = u_xlat1;
  let x_1078 : vec4<f32> = u_xlat3;
  let x_1080 : vec3<f32> = ((vec3<f32>(x_1073.x, x_1073.y, x_1073.z) * vec3<f32>(x_1075.y, x_1075.z, x_1075.w)) + vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec4<f32> = u_xlat5;
  let x_1085 : vec4<f32> = u_xlat1;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1083.x, x_1083.y, x_1083.z) + vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1091 : f32 = u_xlat8.x;
  let x_1093 : f32 = u_xlat8.x;
  u_xlat8.x = (x_1091 * -(x_1093));
  let x_1098 : f32 = u_xlat8.x;
  u_xlat8.x = exp2(x_1098);
  let x_1101 : vec4<f32> = u_xlat1;
  let x_1104 : vec4<f32> = x_45.unity_FogColor;
  let x_1107 : vec3<f32> = (vec3<f32>(x_1101.x, x_1101.y, x_1101.z) + -(vec3<f32>(x_1104.x, x_1104.y, x_1104.z)));
  let x_1108 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1112 : vec3<f32> = u_xlat8;
  let x_1114 : vec4<f32> = u_xlat1;
  let x_1118 : vec4<f32> = x_45.unity_FogColor;
  let x_1120 : vec3<f32> = ((vec3<f32>(x_1112.x, x_1112.x, x_1112.x) * vec3<f32>(x_1114.x, x_1114.y, x_1114.z)) + vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1121 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1124 : f32 = x_58.x_Surface;
  u_xlatb8 = (x_1124 == 1.0f);
  let x_1126 : bool = u_xlatb8;
  let x_1127 : bool = u_xlatb16;
  u_xlatb8 = (x_1126 | x_1127);
  let x_1129 : bool = u_xlatb8;
  if (x_1129) {
    let x_1134 : f32 = u_xlat0.x;
    x_1130 = x_1134;
  } else {
    x_1130 = 1.0f;
  }
  let x_1136 : f32 = x_1130;
  SV_Target0.w = x_1136;
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


