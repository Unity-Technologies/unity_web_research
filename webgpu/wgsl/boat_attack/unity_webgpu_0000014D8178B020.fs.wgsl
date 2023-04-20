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
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_207 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat25 : f32;

@group(1) @binding(4) var<uniform> x_312 : LightShadows;

var<private> u_xlatb25 : bool;

var<private> u_xlatb26 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatu24 : u32;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_486 : AdditionalLights;

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
  var x_72 : f32;
  var x_121 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_622 : f32;
  var x_632 : f32;
  var txVec1 : vec3<f32>;
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
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_53 * x_55);
  let x_62 : f32 = u_xlat1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlatb0 = (x_62 >= x_68);
  let x_70 : bool = u_xlatb0;
  if (x_70) {
    let x_76 : f32 = u_xlat1.w;
    x_72 = x_76;
  } else {
    x_72 = 0.0f;
  }
  let x_79 : f32 = x_72;
  u_xlat0.x = x_79;
  let x_83 : f32 = u_xlat0.w;
  let x_85 : f32 = vs_TEXCOORD7.w;
  let x_88 : f32 = x_65.x_Cutoff;
  u_xlat8 = ((x_83 * x_85) + -(x_88));
  let x_93 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_93);
  let x_97 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_97);
  let x_99 : f32 = u_xlat24;
  let x_101 : f32 = u_xlat16;
  u_xlat16 = (abs(x_99) + abs(x_101));
  let x_104 : f32 = u_xlat16;
  u_xlat16 = max(x_104, 0.00009999999747378752f);
  let x_107 : f32 = u_xlat8;
  let x_108 : f32 = u_xlat16;
  u_xlat8 = (x_107 / x_108);
  let x_110 : f32 = u_xlat8;
  u_xlat8 = (x_110 + 0.5f);
  let x_113 : f32 = u_xlat8;
  u_xlat8 = clamp(x_113, 0.0f, 1.0f);
  let x_118 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_118 == 0.0f));
  let x_120 : bool = u_xlatb16;
  if (x_120) {
    let x_124 : f32 = u_xlat8;
    x_121 = x_124;
  } else {
    let x_127 : f32 = u_xlat0.x;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  let x_149 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_153);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  let x_160 : vec3<f32> = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : f32 = hlslcc_FragCoord.w;
  let x_167 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_164 * x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_175 : f32 = x_44.x_ProjectionParams.y;
  u_xlat0.x = (x_171 / x_175);
  let x_179 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_179) + 1.0f);
  let x_184 : f32 = u_xlat0.x;
  let x_186 : f32 = x_44.x_ProjectionParams.z;
  u_xlat0.x = (x_184 * x_186);
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_190, 0.0f);
  let x_194 : f32 = u_xlat0.x;
  let x_197 : f32 = x_44.unity_FogParams.x;
  u_xlat0.x = (x_194 * x_197);
  u_xlat2.w = 1.0f;
  let x_211 : vec4<f32> = x_207.unity_SHAr;
  let x_212 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_211, x_212);
  let x_217 : vec4<f32> = x_207.unity_SHAg;
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_217, x_218);
  let x_223 : vec4<f32> = x_207.unity_SHAb;
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_223, x_224);
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_228.y, x_228.z, x_228.z, x_228.x) * vec4<f32>(x_230.x, x_230.y, x_230.z, x_230.z));
  let x_236 : vec4<f32> = x_207.unity_SHBr;
  let x_237 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_236, x_237);
  let x_242 : vec4<f32> = x_207.unity_SHBg;
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_242, x_243);
  let x_248 : vec4<f32> = x_207.unity_SHBb;
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_248, x_249);
  let x_253 : f32 = u_xlat2.y;
  let x_255 : f32 = u_xlat2.y;
  u_xlat24 = (x_253 * x_255);
  let x_258 : f32 = u_xlat2.x;
  let x_260 : f32 = u_xlat2.x;
  let x_262 : f32 = u_xlat24;
  u_xlat24 = ((x_258 * x_260) + -(x_262));
  let x_267 : vec4<f32> = x_207.unity_SHC;
  let x_269 : f32 = u_xlat24;
  let x_272 : vec3<f32> = u_xlat5;
  let x_273 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269, x_269, x_269)) + x_272);
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec3<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_276 + vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_280, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_286 : vec4<f32> = vs_TEXCOORD6;
  let x_287 : vec2<f32> = vec2<f32>(x_286.x, x_286.y);
  let x_289 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_287.x, x_287.y, x_289);
  let x_301 : vec3<f32> = txVec0;
  let x_303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_301.xy, x_301.z);
  u_xlat24 = x_303;
  let x_315 : f32 = x_312.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_315) + 1.0f);
  let x_318 : f32 = u_xlat24;
  let x_320 : f32 = x_312.x_MainLightShadowParams.x;
  let x_322 : f32 = u_xlat25;
  u_xlat24 = ((x_318 * x_320) + x_322);
  let x_326 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (0.0f >= x_326);
  let x_330 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_330 >= 1.0f);
  let x_332 : bool = u_xlatb25;
  let x_333 : bool = u_xlatb26;
  u_xlatb25 = (x_332 | x_333);
  let x_335 : bool = u_xlatb25;
  let x_336 : f32 = u_xlat24;
  u_xlat24 = select(x_336, 1.0f, x_335);
  let x_339 : vec4<f32> = vs_TEXCOORD2;
  let x_344 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_346 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) + -(x_344));
  let x_347 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_349.x, x_349.y, x_349.z), vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_355 : f32 = u_xlat25;
  let x_357 : f32 = x_312.x_MainLightShadowParams.z;
  let x_360 : f32 = x_312.x_MainLightShadowParams.w;
  u_xlat26 = ((x_355 * x_357) + x_360);
  let x_362 : f32 = u_xlat26;
  u_xlat26 = clamp(x_362, 0.0f, 1.0f);
  let x_365 : f32 = u_xlat24;
  u_xlat27 = (-(x_365) + 1.0f);
  let x_368 : f32 = u_xlat26;
  let x_369 : f32 = u_xlat27;
  let x_371 : f32 = u_xlat24;
  u_xlat24 = ((x_368 * x_369) + x_371);
  let x_373 : f32 = u_xlat24;
  let x_375 : f32 = x_207.unity_LightData.z;
  u_xlat24 = (x_373 * x_375);
  let x_377 : f32 = u_xlat24;
  let x_381 : vec4<f32> = x_44.x_MainLightColor;
  let x_383 : vec3<f32> = (vec3<f32>(x_377, x_377, x_377) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat2;
  let x_390 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : f32 = u_xlat24;
  u_xlat24 = clamp(x_393, 0.0f, 1.0f);
  let x_395 : f32 = u_xlat24;
  let x_397 : vec4<f32> = u_xlat4;
  let x_399 : vec3<f32> = (vec3<f32>(x_395, x_395, x_395) * vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = u_xlat4;
  let x_406 : vec3<f32> = (vec3<f32>(x_402.x, x_402.y, x_402.z) * vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_412 : f32 = x_207.unity_LightData.y;
  u_xlat24 = min(x_410, x_412);
  let x_416 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_416));
  let x_419 : f32 = u_xlat25;
  let x_422 : f32 = x_312.x_AdditionalShadowFadeParams.x;
  let x_425 : f32 = x_312.x_AdditionalShadowFadeParams.y;
  u_xlat25 = ((x_419 * x_422) + x_425);
  let x_427 : f32 = u_xlat25;
  u_xlat25 = clamp(x_427, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_439 : u32 = u_xlatu_loop_1;
    let x_440 : u32 = u_xlatu24;
    if ((x_439 < x_440)) {
    } else {
      break;
    }
    let x_443 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_443 >> 2u);
    let x_447 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_447 & 3u));
    let x_450 : u32 = u_xlatu27;
    let x_453 : vec4<f32> = x_207.unity_LightIndices[bitcast<i32>(x_450)];
    let x_463 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_468 : vec4<u32> = indexable[x_463];
    u_xlat27 = dot(x_453, bitcast<vec4<f32>>(x_468));
    let x_472 : f32 = u_xlat27;
    u_xlati27 = i32(x_472);
    let x_475 : vec4<f32> = vs_TEXCOORD2;
    let x_487 : i32 = u_xlati27;
    let x_489 : vec4<f32> = x_486.x_AdditionalLightsPosition[x_487];
    let x_492 : i32 = u_xlati27;
    let x_494 : vec4<f32> = x_486.x_AdditionalLightsPosition[x_492];
    u_xlat6 = ((-(vec3<f32>(x_475.x, x_475.y, x_475.z)) * vec3<f32>(x_489.w, x_489.w, x_489.w)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
    let x_498 : vec3<f32> = u_xlat6;
    let x_499 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_498, x_499);
    let x_501 : f32 = u_xlat28;
    u_xlat28 = max(x_501, 0.00006103515625f);
    let x_505 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_505);
    let x_507 : f32 = u_xlat29;
    let x_509 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_507, x_507, x_507) * x_509);
    let x_511 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_511);
    let x_513 : f32 = u_xlat28;
    let x_514 : i32 = u_xlati27;
    let x_516 : f32 = x_486.x_AdditionalLightsAttenuation[x_514].x;
    u_xlat28 = (x_513 * x_516);
    let x_518 : f32 = u_xlat28;
    let x_520 : f32 = u_xlat28;
    u_xlat28 = ((-(x_518) * x_520) + 1.0f);
    let x_523 : f32 = u_xlat28;
    u_xlat28 = max(x_523, 0.0f);
    let x_525 : f32 = u_xlat28;
    let x_526 : f32 = u_xlat28;
    u_xlat28 = (x_525 * x_526);
    let x_528 : f32 = u_xlat28;
    let x_529 : f32 = u_xlat29;
    u_xlat28 = (x_528 * x_529);
    let x_531 : i32 = u_xlati27;
    let x_533 : vec4<f32> = x_486.x_AdditionalLightsSpotDir[x_531];
    let x_535 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), x_535);
    let x_537 : f32 = u_xlat29;
    let x_538 : i32 = u_xlati27;
    let x_540 : f32 = x_486.x_AdditionalLightsAttenuation[x_538].z;
    let x_542 : i32 = u_xlati27;
    let x_544 : f32 = x_486.x_AdditionalLightsAttenuation[x_542].w;
    u_xlat29 = ((x_537 * x_540) + x_544);
    let x_546 : f32 = u_xlat29;
    u_xlat29 = clamp(x_546, 0.0f, 1.0f);
    let x_548 : f32 = u_xlat29;
    let x_549 : f32 = u_xlat29;
    u_xlat29 = (x_548 * x_549);
    let x_551 : f32 = u_xlat28;
    let x_552 : f32 = u_xlat29;
    u_xlat28 = (x_551 * x_552);
    let x_556 : i32 = u_xlati27;
    let x_558 : f32 = x_312.x_AdditionalShadowParams[x_556].w;
    u_xlati29 = i32(x_558);
    let x_561 : i32 = u_xlati29;
    u_xlatb30 = (x_561 >= 0i);
    let x_563 : bool = u_xlatb30;
    if (x_563) {
      let x_567 : i32 = u_xlati27;
      let x_569 : f32 = x_312.x_AdditionalShadowParams[x_567].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_569, x_569, x_569, x_569))));
      let x_574 : bool = u_xlatb30;
      if (x_574) {
        let x_579 : vec3<f32> = u_xlat6;
        let x_582 : vec3<f32> = u_xlat6;
        let x_585 : vec4<bool> = (abs(vec4<f32>(x_579.z, x_579.z, x_579.y, x_579.z)) >= abs(vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.x)));
        let x_587 : vec3<bool> = vec3<bool>(x_585.x, x_585.y, x_585.z);
        let x_588 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_587.x, x_587.y, x_587.z, x_588.w);
        let x_591 : bool = u_xlatb7.y;
        let x_593 : bool = u_xlatb7.x;
        u_xlatb30 = (x_591 & x_593);
        let x_595 : vec3<f32> = u_xlat6;
        let x_598 : vec4<bool> = (-(vec4<f32>(x_595.z, x_595.y, x_595.z, x_595.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_599 : vec3<bool> = vec3<bool>(x_598.x, x_598.y, x_598.w);
        let x_600 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_599.x, x_599.y, x_600.z, x_599.z);
        let x_604 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_604);
        let x_610 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_610);
        let x_617 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_617);
        let x_621 : bool = u_xlatb7.z;
        if (x_621) {
          let x_626 : f32 = u_xlat7.y;
          x_622 = x_626;
        } else {
          let x_628 : f32 = u_xlat31;
          x_622 = x_628;
        }
        let x_629 : f32 = x_622;
        u_xlat15 = x_629;
        let x_631 : bool = u_xlatb30;
        if (x_631) {
          let x_636 : f32 = u_xlat7.x;
          x_632 = x_636;
        } else {
          let x_638 : f32 = u_xlat15;
          x_632 = x_638;
        }
        let x_639 : f32 = x_632;
        u_xlat30 = x_639;
        let x_640 : i32 = u_xlati27;
        let x_642 : f32 = x_312.x_AdditionalShadowParams[x_640].w;
        u_xlat7.x = trunc(x_642);
        let x_645 : f32 = u_xlat30;
        let x_647 : f32 = u_xlat7.x;
        u_xlat30 = (x_645 + x_647);
        let x_649 : f32 = u_xlat30;
        u_xlati29 = i32(x_649);
      }
      let x_651 : i32 = u_xlati29;
      u_xlati29 = (x_651 << bitcast<u32>(2i));
      let x_653 : vec4<f32> = vs_TEXCOORD2;
      let x_656 : i32 = u_xlati29;
      let x_659 : i32 = u_xlati29;
      let x_663 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_656 + 1i) / 4i)][((x_659 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_653.y, x_653.y, x_653.y, x_653.y) * x_663);
      let x_665 : i32 = u_xlati29;
      let x_667 : i32 = u_xlati29;
      let x_670 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[(x_665 / 4i)][(x_667 % 4i)];
      let x_671 : vec4<f32> = vs_TEXCOORD2;
      let x_674 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_670 * vec4<f32>(x_671.x, x_671.x, x_671.x, x_671.x)) + x_674);
      let x_676 : i32 = u_xlati29;
      let x_679 : i32 = u_xlati29;
      let x_683 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_676 + 2i) / 4i)][((x_679 + 2i) % 4i)];
      let x_684 : vec4<f32> = vs_TEXCOORD2;
      let x_687 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_683 * vec4<f32>(x_684.z, x_684.z, x_684.z, x_684.z)) + x_687);
      let x_689 : vec4<f32> = u_xlat7;
      let x_690 : i32 = u_xlati29;
      let x_693 : i32 = u_xlati29;
      let x_697 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_690 + 3i) / 4i)][((x_693 + 3i) % 4i)];
      u_xlat7 = (x_689 + x_697);
      let x_699 : vec4<f32> = u_xlat7;
      let x_701 : vec4<f32> = u_xlat7;
      let x_703 : vec3<f32> = (vec3<f32>(x_699.x, x_699.y, x_699.z) / vec3<f32>(x_701.w, x_701.w, x_701.w));
      let x_704 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
      let x_707 : vec4<f32> = u_xlat7;
      let x_708 : vec2<f32> = vec2<f32>(x_707.x, x_707.y);
      let x_710 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_708.x, x_708.y, x_710);
      let x_718 : vec3<f32> = txVec1;
      let x_720 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_718.xy, x_718.z);
      u_xlat29 = x_720;
      let x_721 : i32 = u_xlati27;
      let x_723 : f32 = x_312.x_AdditionalShadowParams[x_721].x;
      u_xlat30 = (1.0f + -(x_723));
      let x_726 : f32 = u_xlat29;
      let x_727 : i32 = u_xlati27;
      let x_729 : f32 = x_312.x_AdditionalShadowParams[x_727].x;
      let x_731 : f32 = u_xlat30;
      u_xlat29 = ((x_726 * x_729) + x_731);
      let x_734 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_734);
      let x_737 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_737 >= 1.0f);
      let x_740 : bool = u_xlatb30;
      let x_742 : bool = u_xlatb7.x;
      u_xlatb30 = (x_740 | x_742);
      let x_744 : bool = u_xlatb30;
      let x_745 : f32 = u_xlat29;
      u_xlat29 = select(x_745, 1.0f, x_744);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_748 : f32 = u_xlat29;
    u_xlat30 = (-(x_748) + 1.0f);
    let x_751 : f32 = u_xlat25;
    let x_752 : f32 = u_xlat30;
    let x_754 : f32 = u_xlat29;
    u_xlat29 = ((x_751 * x_752) + x_754);
    let x_756 : f32 = u_xlat28;
    let x_757 : f32 = u_xlat29;
    u_xlat28 = (x_756 * x_757);
    let x_759 : f32 = u_xlat28;
    let x_761 : i32 = u_xlati27;
    let x_763 : vec4<f32> = x_486.x_AdditionalLightsColor[x_761];
    let x_765 : vec3<f32> = (vec3<f32>(x_759, x_759, x_759) * vec3<f32>(x_763.x, x_763.y, x_763.z));
    let x_766 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
    let x_768 : vec4<f32> = u_xlat2;
    let x_770 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_768.x, x_768.y, x_768.z), x_770);
    let x_772 : f32 = u_xlat27;
    u_xlat27 = clamp(x_772, 0.0f, 1.0f);
    let x_774 : f32 = u_xlat27;
    let x_776 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_774, x_774, x_774) * vec3<f32>(x_776.x, x_776.y, x_776.z));
    let x_779 : vec3<f32> = u_xlat6;
    let x_780 : vec4<f32> = u_xlat1;
    let x_783 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_779 * vec3<f32>(x_780.x, x_780.y, x_780.z)) + x_783);

    continuing {
      let x_785 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_785 + bitcast<u32>(1i));
    }
  }
  let x_787 : vec3<f32> = u_xlat3;
  let x_788 : vec4<f32> = u_xlat1;
  let x_791 : vec4<f32> = u_xlat4;
  let x_793 : vec3<f32> = ((x_787 * vec3<f32>(x_788.x, x_788.y, x_788.z)) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec3<f32> = u_xlat5;
  let x_797 : vec4<f32> = u_xlat1;
  let x_799 : vec3<f32> = (x_796 + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_803 : f32 = u_xlat0.x;
  let x_805 : f32 = u_xlat0.x;
  u_xlat0.x = (x_803 * -(x_805));
  let x_810 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_810);
  let x_813 : vec4<f32> = u_xlat1;
  let x_816 : vec4<f32> = x_44.unity_FogColor;
  let x_819 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) + -(vec3<f32>(x_816.x, x_816.y, x_816.z)));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_824 : vec4<f32> = u_xlat0;
  let x_826 : vec4<f32> = u_xlat1;
  let x_830 : vec4<f32> = x_44.unity_FogColor;
  let x_832 : vec3<f32> = ((vec3<f32>(x_824.x, x_824.x, x_824.x) * vec3<f32>(x_826.x, x_826.y, x_826.z)) + vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : bool = u_xlatb16;
  let x_836 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_836, x_835);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


