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
  /* @offset(160) */
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

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb10 : bool;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : f32;

@group(1) @binding(4) var<uniform> x_327 : LightShadows;

var<private> u_xlatb30 : bool;

var<private> u_xlatb4 : bool;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlatu31 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati15 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_554 : AdditionalLights;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlati16 : i32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat25 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlatu32 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var x_163 : f32;
  var x_175 : f32;
  var x_187 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_719 : f32;
  var x_729 : f32;
  var txVec1 : vec3<f32>;
  var x_840 : f32;
  var x_970 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_45.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : f32 = x_45.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.w;
  let x_97 : f32 = x_94.unity_LODFade.x;
  u_xlatb10 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb10;
  if (x_100) {
    let x_106 : f32 = u_xlat1.x;
    x_102 = abs(x_106);
  } else {
    let x_110 : f32 = u_xlat1.x;
    x_102 = -(abs(x_110));
  }
  let x_113 : f32 = x_102;
  u_xlat1.x = x_113;
  let x_116 : f32 = u_xlat1.x;
  let x_119 : f32 = x_94.unity_LODFade.x;
  u_xlat1.x = (-(x_116) + x_119);
  let x_124 : f32 = u_xlat1.x;
  u_xlatb1 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb1;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_136 == 0.0f);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat10;
  let x_151 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat10;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_162 : bool = u_xlatb1;
  if (x_162) {
    let x_167 : f32 = u_xlat10.x;
    x_163 = x_167;
  } else {
    let x_171 : f32 = x_45.unity_MatrixV[0i].z;
    x_163 = x_171;
  }
  let x_172 : f32 = x_163;
  u_xlat2.x = x_172;
  let x_174 : bool = u_xlatb1;
  if (x_174) {
    let x_180 : f32 = u_xlat10.y;
    x_175 = x_180;
  } else {
    let x_183 : f32 = x_45.unity_MatrixV[1i].z;
    x_175 = x_183;
  }
  let x_184 : f32 = x_175;
  u_xlat2.y = x_184;
  let x_186 : bool = u_xlatb1;
  if (x_186) {
    let x_191 : f32 = u_xlat10.z;
    x_187 = x_191;
  } else {
    let x_194 : f32 = x_45.unity_MatrixV[2i].z;
    x_187 = x_194;
  }
  let x_195 : f32 = x_187;
  u_xlat2.z = x_195;
  let x_198 : vec3<f32> = vs_TEXCOORD2;
  let x_199 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_198, x_199);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_203);
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec3<f32> = vs_TEXCOORD2;
  let x_209 : vec3<f32> = (vec3<f32>(x_206.x, x_206.x, x_206.x) * x_208);
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : vec3<f32> = u_xlat2;
  let x_214 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_213, x_214);
  let x_216 : f32 = u_xlat29;
  u_xlat29 = max(x_216, 0.00006103515625f);
  let x_219 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_219);
  u_xlat1.w = 1.0f;
  let x_225 : vec4<f32> = x_94.unity_SHAr;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_225, x_226);
  let x_231 : vec4<f32> = x_94.unity_SHAg;
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_231, x_232);
  let x_237 : vec4<f32> = x_94.unity_SHAb;
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_237, x_238);
  let x_242 : vec4<f32> = u_xlat1;
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_242.y, x_242.z, x_242.z, x_242.x) * vec4<f32>(x_244.x, x_244.y, x_244.z, x_244.z));
  let x_250 : vec4<f32> = x_94.unity_SHBr;
  let x_251 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_250, x_251);
  let x_256 : vec4<f32> = x_94.unity_SHBg;
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_256, x_257);
  let x_262 : vec4<f32> = x_94.unity_SHBb;
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_262, x_263);
  let x_268 : f32 = u_xlat1.y;
  let x_270 : f32 = u_xlat1.y;
  u_xlat28 = (x_268 * x_270);
  let x_273 : f32 = u_xlat1.x;
  let x_275 : f32 = u_xlat1.x;
  let x_277 : f32 = u_xlat28;
  u_xlat28 = ((x_273 * x_275) + -(x_277));
  let x_282 : vec4<f32> = x_94.unity_SHC;
  let x_284 : f32 = u_xlat28;
  let x_287 : vec3<f32> = u_xlat5;
  let x_288 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284, x_284, x_284)) + x_287);
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec3<f32> = u_xlat3;
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_291 + vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_295, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_301 : vec4<f32> = vs_TEXCOORD6;
  let x_302 : vec2<f32> = vec2<f32>(x_301.x, x_301.y);
  let x_304 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_302.x, x_302.y, x_304);
  let x_316 : vec3<f32> = txVec0;
  let x_318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_316.xy, x_316.z);
  u_xlat28 = x_318;
  let x_330 : f32 = x_327.x_MainLightShadowParams.x;
  u_xlat30 = (-(x_330) + 1.0f);
  let x_333 : f32 = u_xlat28;
  let x_335 : f32 = x_327.x_MainLightShadowParams.x;
  let x_337 : f32 = u_xlat30;
  u_xlat28 = ((x_333 * x_335) + x_337);
  let x_341 : f32 = vs_TEXCOORD6.z;
  u_xlatb30 = (0.0f >= x_341);
  let x_345 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_345 >= 1.0f);
  let x_347 : bool = u_xlatb30;
  let x_348 : bool = u_xlatb4;
  u_xlatb30 = (x_347 | x_348);
  let x_350 : bool = u_xlatb30;
  let x_351 : f32 = u_xlat28;
  u_xlat28 = select(x_351, 1.0f, x_350);
  let x_353 : vec3<f32> = vs_TEXCOORD1;
  let x_355 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_357 : vec3<f32> = (x_353 + -(x_355));
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat4;
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : f32 = u_xlat30;
  let x_367 : f32 = x_327.x_MainLightShadowParams.z;
  let x_370 : f32 = x_327.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_365 * x_367) + x_370);
  let x_374 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_374, 0.0f, 1.0f);
  let x_378 : f32 = u_xlat28;
  u_xlat13 = (-(x_378) + 1.0f);
  let x_382 : f32 = u_xlat4.x;
  let x_383 : f32 = u_xlat13;
  let x_385 : f32 = u_xlat28;
  u_xlat28 = ((x_382 * x_383) + x_385);
  let x_387 : f32 = u_xlat28;
  let x_389 : f32 = x_94.unity_LightData.z;
  u_xlat28 = (x_387 * x_389);
  let x_391 : f32 = u_xlat28;
  let x_394 : vec4<f32> = x_45.x_MainLightColor;
  let x_396 : vec3<f32> = (vec3<f32>(x_391, x_391, x_391) * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat1;
  let x_402 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : f32 = u_xlat28;
  u_xlat28 = clamp(x_405, 0.0f, 1.0f);
  let x_407 : f32 = u_xlat28;
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_407, x_407, x_407) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_413 : f32 = u_xlat0.x;
  u_xlat28 = ((x_413 * 10.0f) + 1.0f);
  let x_417 : f32 = u_xlat28;
  u_xlat28 = exp2(x_417);
  let x_420 : vec3<f32> = u_xlat2;
  let x_421 : f32 = u_xlat29;
  let x_425 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat6 = ((x_420 * vec3<f32>(x_421, x_421, x_421)) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_429 : vec3<f32> = u_xlat6;
  let x_430 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_429, x_430);
  let x_432 : f32 = u_xlat31;
  u_xlat31 = max(x_432, 1.17549435e-38f);
  let x_435 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat31;
  let x_439 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_437, x_437, x_437) * x_439);
  let x_441 : vec4<f32> = u_xlat1;
  let x_443 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(vec3<f32>(x_441.x, x_441.y, x_441.z), x_443);
  let x_445 : f32 = u_xlat31;
  u_xlat31 = clamp(x_445, 0.0f, 1.0f);
  let x_447 : f32 = u_xlat31;
  u_xlat31 = log2(x_447);
  let x_449 : f32 = u_xlat28;
  let x_450 : f32 = u_xlat31;
  u_xlat31 = (x_449 * x_450);
  let x_452 : f32 = u_xlat31;
  u_xlat31 = exp2(x_452);
  let x_454 : f32 = u_xlat31;
  let x_457 : vec4<f32> = x_57.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_454, x_454, x_454) * vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat4;
  let x_462 : vec3<f32> = u_xlat6;
  let x_463 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) * x_462);
  let x_464 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec3<f32> = u_xlat5;
  let x_467 : vec4<f32> = u_xlat0;
  let x_470 : vec4<f32> = u_xlat4;
  let x_472 : vec3<f32> = ((x_466 * vec3<f32>(x_467.y, x_467.z, x_467.w)) + vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_477 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_479 : f32 = x_94.unity_LightData.y;
  u_xlat31 = min(x_477, x_479);
  let x_483 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_483));
  let x_486 : f32 = u_xlat30;
  let x_489 : f32 = x_327.x_AdditionalShadowFadeParams.x;
  let x_492 : f32 = x_327.x_AdditionalShadowFadeParams.y;
  u_xlat30 = ((x_486 * x_489) + x_492);
  let x_494 : f32 = u_xlat30;
  u_xlat30 = clamp(x_494, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_506 : u32 = u_xlatu_loop_1;
    let x_507 : u32 = u_xlatu31;
    if ((x_506 < x_507)) {
    } else {
      break;
    }
    let x_510 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_510 >> 2u);
    let x_514 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_514 & 3u));
    let x_517 : u32 = u_xlatu6;
    let x_520 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_517)];
    let x_530 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_535 : vec4<u32> = indexable[x_530];
    u_xlat6.x = dot(x_520, bitcast<vec4<f32>>(x_535));
    let x_541 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_541);
    let x_544 : vec3<f32> = vs_TEXCOORD1;
    let x_555 : i32 = u_xlati6;
    let x_557 : vec4<f32> = x_554.x_AdditionalLightsPosition[x_555];
    let x_560 : i32 = u_xlati6;
    let x_562 : vec4<f32> = x_554.x_AdditionalLightsPosition[x_560];
    u_xlat15 = ((-(x_544) * vec3<f32>(x_557.w, x_557.w, x_557.w)) + vec3<f32>(x_562.x, x_562.y, x_562.z));
    let x_566 : vec3<f32> = u_xlat15;
    let x_567 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_566, x_567);
    let x_571 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_571, 0.00006103515625f);
    let x_576 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_576);
    let x_579 : vec3<f32> = u_xlat15;
    let x_580 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_579 * vec3<f32>(x_580.x, x_580.x, x_580.x));
    let x_584 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_584);
    let x_588 : f32 = u_xlat7.x;
    let x_589 : i32 = u_xlati6;
    let x_591 : f32 = x_554.x_AdditionalLightsAttenuation[x_589].x;
    u_xlat7.x = (x_588 * x_591);
    let x_595 : f32 = u_xlat7.x;
    let x_598 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_595) * x_598) + 1.0f);
    let x_603 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_603, 0.0f);
    let x_607 : f32 = u_xlat7.x;
    let x_609 : f32 = u_xlat7.x;
    u_xlat7.x = (x_607 * x_609);
    let x_613 : f32 = u_xlat7.x;
    let x_615 : f32 = u_xlat16.x;
    u_xlat7.x = (x_613 * x_615);
    let x_618 : i32 = u_xlati6;
    let x_620 : vec4<f32> = x_554.x_AdditionalLightsSpotDir[x_618];
    let x_622 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), x_622);
    let x_626 : f32 = u_xlat16.x;
    let x_627 : i32 = u_xlati6;
    let x_629 : f32 = x_554.x_AdditionalLightsAttenuation[x_627].z;
    let x_631 : i32 = u_xlati6;
    let x_633 : f32 = x_554.x_AdditionalLightsAttenuation[x_631].w;
    u_xlat16.x = ((x_626 * x_629) + x_633);
    let x_637 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_637, 0.0f, 1.0f);
    let x_641 : f32 = u_xlat16.x;
    let x_643 : f32 = u_xlat16.x;
    u_xlat16.x = (x_641 * x_643);
    let x_647 : f32 = u_xlat16.x;
    let x_649 : f32 = u_xlat7.x;
    u_xlat7.x = (x_647 * x_649);
    let x_654 : i32 = u_xlati6;
    let x_656 : f32 = x_327.x_AdditionalShadowParams[x_654].w;
    u_xlati16 = i32(x_656);
    let x_659 : i32 = u_xlati16;
    u_xlatb25 = (x_659 >= 0i);
    let x_661 : bool = u_xlatb25;
    if (x_661) {
      let x_665 : i32 = u_xlati6;
      let x_667 : f32 = x_327.x_AdditionalShadowParams[x_665].z;
      u_xlatb25 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_667, x_667, x_667, x_667))));
      let x_672 : bool = u_xlatb25;
      if (x_672) {
        let x_677 : vec3<f32> = u_xlat15;
        let x_680 : vec3<f32> = u_xlat15;
        let x_683 : vec4<bool> = (abs(vec4<f32>(x_677.z, x_677.z, x_677.y, x_677.z)) >= abs(vec4<f32>(x_680.x, x_680.y, x_680.x, x_680.x)));
        let x_685 : vec3<bool> = vec3<bool>(x_683.x, x_683.y, x_683.z);
        let x_686 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_685.x, x_685.y, x_685.z, x_686.w);
        let x_689 : bool = u_xlatb8.y;
        let x_691 : bool = u_xlatb8.x;
        u_xlatb25 = (x_689 & x_691);
        let x_693 : vec3<f32> = u_xlat15;
        let x_696 : vec4<bool> = (-(vec4<f32>(x_693.z, x_693.y, x_693.z, x_693.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_697 : vec3<bool> = vec3<bool>(x_696.x, x_696.y, x_696.w);
        let x_698 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_697.x, x_697.y, x_698.z, x_697.z);
        let x_702 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_702);
        let x_708 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_708);
        let x_715 : bool = u_xlatb8.w;
        u_xlat34 = select(0.0f, 1.0f, x_715);
        let x_718 : bool = u_xlatb8.z;
        if (x_718) {
          let x_723 : f32 = u_xlat8.y;
          x_719 = x_723;
        } else {
          let x_725 : f32 = u_xlat34;
          x_719 = x_725;
        }
        let x_726 : f32 = x_719;
        u_xlat34 = x_726;
        let x_728 : bool = u_xlatb25;
        if (x_728) {
          let x_733 : f32 = u_xlat8.x;
          x_729 = x_733;
        } else {
          let x_735 : f32 = u_xlat34;
          x_729 = x_735;
        }
        let x_736 : f32 = x_729;
        u_xlat25 = x_736;
        let x_737 : i32 = u_xlati6;
        let x_739 : f32 = x_327.x_AdditionalShadowParams[x_737].w;
        u_xlat34 = trunc(x_739);
        let x_741 : f32 = u_xlat25;
        let x_742 : f32 = u_xlat34;
        u_xlat25 = (x_741 + x_742);
        let x_744 : f32 = u_xlat25;
        u_xlati16 = i32(x_744);
      }
      let x_746 : i32 = u_xlati16;
      u_xlati16 = (x_746 << bitcast<u32>(2i));
      let x_748 : vec3<f32> = vs_TEXCOORD1;
      let x_751 : i32 = u_xlati16;
      let x_754 : i32 = u_xlati16;
      let x_758 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_751 + 1i) / 4i)][((x_754 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_748.y, x_748.y, x_748.y, x_748.y) * x_758);
      let x_760 : i32 = u_xlati16;
      let x_762 : i32 = u_xlati16;
      let x_765 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[(x_760 / 4i)][(x_762 % 4i)];
      let x_766 : vec3<f32> = vs_TEXCOORD1;
      let x_769 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_765 * vec4<f32>(x_766.x, x_766.x, x_766.x, x_766.x)) + x_769);
      let x_771 : i32 = u_xlati16;
      let x_774 : i32 = u_xlati16;
      let x_778 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_771 + 2i) / 4i)][((x_774 + 2i) % 4i)];
      let x_779 : vec3<f32> = vs_TEXCOORD1;
      let x_782 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_778 * vec4<f32>(x_779.z, x_779.z, x_779.z, x_779.z)) + x_782);
      let x_784 : vec4<f32> = u_xlat8;
      let x_785 : i32 = u_xlati16;
      let x_788 : i32 = u_xlati16;
      let x_792 : vec4<f32> = x_327.x_AdditionalLightsWorldToShadow[((x_785 + 3i) / 4i)][((x_788 + 3i) % 4i)];
      u_xlat8 = (x_784 + x_792);
      let x_794 : vec4<f32> = u_xlat8;
      let x_796 : vec4<f32> = u_xlat8;
      u_xlat16 = (vec3<f32>(x_794.x, x_794.y, x_794.z) / vec3<f32>(x_796.w, x_796.w, x_796.w));
      let x_800 : vec3<f32> = u_xlat16;
      let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
      let x_803 : f32 = u_xlat16.z;
      txVec1 = vec3<f32>(x_801.x, x_801.y, x_803);
      let x_811 : vec3<f32> = txVec1;
      let x_813 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_811.xy, x_811.z);
      u_xlat16.x = x_813;
      let x_815 : i32 = u_xlati6;
      let x_817 : f32 = x_327.x_AdditionalShadowParams[x_815].x;
      u_xlat25 = (1.0f + -(x_817));
      let x_821 : f32 = u_xlat16.x;
      let x_822 : i32 = u_xlati6;
      let x_824 : f32 = x_327.x_AdditionalShadowParams[x_822].x;
      let x_826 : f32 = u_xlat25;
      u_xlat16.x = ((x_821 * x_824) + x_826);
      let x_830 : f32 = u_xlat16.z;
      u_xlatb25 = (0.0f >= x_830);
      let x_834 : f32 = u_xlat16.z;
      u_xlatb34 = (x_834 >= 1.0f);
      let x_836 : bool = u_xlatb34;
      let x_837 : bool = u_xlatb25;
      u_xlatb25 = (x_836 | x_837);
      let x_839 : bool = u_xlatb25;
      if (x_839) {
        x_840 = 1.0f;
      } else {
        let x_845 : f32 = u_xlat16.x;
        x_840 = x_845;
      }
      let x_846 : f32 = x_840;
      u_xlat16.x = x_846;
    } else {
      u_xlat16.x = 1.0f;
    }
    let x_851 : f32 = u_xlat16.x;
    u_xlat25 = (-(x_851) + 1.0f);
    let x_854 : f32 = u_xlat30;
    let x_855 : f32 = u_xlat25;
    let x_858 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_854 * x_855) + x_858);
    let x_862 : f32 = u_xlat16.x;
    let x_864 : f32 = u_xlat7.x;
    u_xlat7.x = (x_862 * x_864);
    let x_867 : vec3<f32> = u_xlat7;
    let x_869 : i32 = u_xlati6;
    let x_871 : vec4<f32> = x_554.x_AdditionalLightsColor[x_869];
    u_xlat7 = (vec3<f32>(x_867.x, x_867.x, x_867.x) * vec3<f32>(x_871.x, x_871.y, x_871.z));
    let x_874 : vec4<f32> = u_xlat1;
    let x_876 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(vec3<f32>(x_874.x, x_874.y, x_874.z), x_876);
    let x_880 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_880, 0.0f, 1.0f);
    let x_883 : vec3<f32> = u_xlat6;
    let x_885 : vec3<f32> = u_xlat7;
    let x_886 : vec3<f32> = (vec3<f32>(x_883.x, x_883.x, x_883.x) * x_885);
    let x_887 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
    let x_889 : vec3<f32> = u_xlat2;
    let x_890 : f32 = u_xlat29;
    let x_893 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_889 * vec3<f32>(x_890, x_890, x_890)) + x_893);
    let x_896 : vec3<f32> = u_xlat6;
    let x_897 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_896, x_897);
    let x_899 : f32 = u_xlat33;
    u_xlat33 = max(x_899, 1.17549435e-38f);
    let x_901 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_901);
    let x_903 : f32 = u_xlat33;
    let x_905 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_903, x_903, x_903) * x_905);
    let x_907 : vec4<f32> = u_xlat1;
    let x_909 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(vec3<f32>(x_907.x, x_907.y, x_907.z), x_909);
    let x_913 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_913, 0.0f, 1.0f);
    let x_917 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_917);
    let x_920 : f32 = u_xlat28;
    let x_922 : f32 = u_xlat6.x;
    u_xlat6.x = (x_920 * x_922);
    let x_926 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_926);
    let x_929 : vec3<f32> = u_xlat6;
    let x_932 : vec4<f32> = x_57.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_929.x, x_929.x, x_929.x) * vec3<f32>(x_932.x, x_932.y, x_932.z));
    let x_935 : vec3<f32> = u_xlat6;
    let x_936 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_935 * x_936);
    let x_938 : vec4<f32> = u_xlat8;
    let x_940 : vec4<f32> = u_xlat0;
    let x_943 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_938.x, x_938.y, x_938.z) * vec3<f32>(x_940.y, x_940.z, x_940.w)) + x_943);
    let x_945 : vec3<f32> = u_xlat5;
    let x_946 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_945 + x_946);

    continuing {
      let x_948 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_948 + bitcast<u32>(1i));
    }
  }
  let x_951 : vec3<f32> = u_xlat3;
  let x_952 : vec4<f32> = u_xlat0;
  let x_955 : vec4<f32> = u_xlat4;
  u_xlat9 = ((x_951 * vec3<f32>(x_952.y, x_952.z, x_952.w)) + vec3<f32>(x_955.x, x_955.y, x_955.z));
  let x_960 : vec3<f32> = u_xlat5;
  let x_961 : vec3<f32> = u_xlat9;
  let x_962 : vec3<f32> = (x_960 + x_961);
  let x_963 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_967 : f32 = x_57.x_Surface;
  u_xlatb9 = (x_967 == 1.0f);
  let x_969 : bool = u_xlatb9;
  if (x_969) {
    let x_974 : f32 = u_xlat0.x;
    x_970 = x_974;
  } else {
    x_970 = 1.0f;
  }
  let x_976 : f32 = x_970;
  SV_Target0.w = x_976;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


