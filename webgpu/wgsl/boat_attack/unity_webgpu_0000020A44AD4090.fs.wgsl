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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_159 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_268 : LightShadows;

var<private> u_xlatb24 : bool;

var<private> u_xlatb25 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlatu0 : u32;

var<private> u_xlatu26 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati26 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_461 : AdditionalLights;

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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu25 : u32;

var<private> u_xlatb26 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var x_294 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_596 : f32;
  var x_606 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_37 * x_40);
  let x_48 : f32 = u_xlat1.w;
  let x_54 : f32 = x_51.x_Cutoff;
  u_xlatb0 = (x_48 >= x_54);
  let x_56 : bool = u_xlatb0;
  if (x_56) {
    let x_62 : f32 = u_xlat1.w;
    x_58 = x_62;
  } else {
    x_58 = 0.0f;
  }
  let x_65 : f32 = x_58;
  u_xlat0.x = x_65;
  let x_69 : f32 = u_xlat0.w;
  let x_72 : f32 = vs_TEXCOORD7.w;
  let x_75 : f32 = x_51.x_Cutoff;
  u_xlat8 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat24;
  let x_88 : f32 = u_xlat16;
  u_xlat16 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat16;
  u_xlat16 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat8;
  let x_95 : f32 = u_xlat16;
  u_xlat8 = (x_94 / x_95);
  let x_97 : f32 = u_xlat8;
  u_xlat8 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat8;
  u_xlat8 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb16;
  if (x_108) {
    let x_112 : f32 = u_xlat8;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat0.x = (x_119 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat0.x;
  u_xlatb0 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb0;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  u_xlat2.w = 1.0f;
  let x_163 : vec4<f32> = x_159.unity_SHAr;
  let x_164 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_163, x_164);
  let x_169 : vec4<f32> = x_159.unity_SHAg;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_169, x_170);
  let x_176 : vec4<f32> = x_159.unity_SHAb;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_176, x_177);
  let x_181 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_181.y, x_181.z, x_181.z, x_181.x) * vec4<f32>(x_183.x, x_183.y, x_183.z, x_183.z));
  let x_189 : vec4<f32> = x_159.unity_SHBr;
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_189, x_190);
  let x_195 : vec4<f32> = x_159.unity_SHBg;
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_195, x_196);
  let x_201 : vec4<f32> = x_159.unity_SHBb;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_201, x_202);
  let x_206 : f32 = u_xlat2.y;
  let x_208 : f32 = u_xlat2.y;
  u_xlat0.x = (x_206 * x_208);
  let x_212 : f32 = u_xlat2.x;
  let x_214 : f32 = u_xlat2.x;
  let x_217 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_212 * x_214) + -(x_217));
  let x_223 : vec4<f32> = x_159.unity_SHC;
  let x_225 : vec4<f32> = u_xlat0;
  let x_228 : vec3<f32> = u_xlat5;
  let x_229 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.x, x_225.x, x_225.x)) + x_228);
  let x_230 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec3<f32> = u_xlat3;
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_232 + vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_236, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_242 : vec4<f32> = vs_TEXCOORD6;
  let x_243 : vec2<f32> = vec2<f32>(x_242.x, x_242.y);
  let x_245 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_243.x, x_243.y, x_245);
  let x_257 : vec3<f32> = txVec0;
  let x_259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_257.xy, x_257.z);
  u_xlat0.x = x_259;
  let x_271 : f32 = x_268.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_271) + 1.0f);
  let x_275 : f32 = u_xlat0.x;
  let x_277 : f32 = x_268.x_MainLightShadowParams.x;
  let x_279 : f32 = u_xlat24;
  u_xlat0.x = ((x_275 * x_277) + x_279);
  let x_284 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_284);
  let x_288 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (x_288 >= 1.0f);
  let x_290 : bool = u_xlatb24;
  let x_291 : bool = u_xlatb25;
  u_xlatb24 = (x_290 | x_291);
  let x_293 : bool = u_xlatb24;
  if (x_293) {
    x_294 = 1.0f;
  } else {
    let x_299 : f32 = u_xlat0.x;
    x_294 = x_299;
  }
  let x_300 : f32 = x_294;
  u_xlat0.x = x_300;
  let x_303 : vec4<f32> = vs_TEXCOORD2;
  let x_308 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_310 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + -(x_308));
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat4;
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_319 : f32 = u_xlat24;
  let x_321 : f32 = x_268.x_MainLightShadowParams.z;
  let x_324 : f32 = x_268.x_MainLightShadowParams.w;
  u_xlat25 = ((x_319 * x_321) + x_324);
  let x_326 : f32 = u_xlat25;
  u_xlat25 = clamp(x_326, 0.0f, 1.0f);
  let x_330 : f32 = u_xlat0.x;
  u_xlat26 = (-(x_330) + 1.0f);
  let x_333 : f32 = u_xlat25;
  let x_334 : f32 = u_xlat26;
  let x_337 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_333 * x_334) + x_337);
  let x_341 : f32 = u_xlat0.x;
  let x_343 : f32 = x_159.unity_LightData.z;
  u_xlat0.x = (x_341 * x_343);
  let x_346 : vec4<f32> = u_xlat0;
  let x_350 : vec4<f32> = x_27.x_MainLightColor;
  let x_352 : vec3<f32> = (vec3<f32>(x_346.x, x_346.x, x_346.x) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat2;
  let x_359 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_355.x, x_355.y, x_355.z), vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_364 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_364, 0.0f, 1.0f);
  let x_367 : vec4<f32> = u_xlat0;
  let x_369 : vec4<f32> = u_xlat4;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.x, x_367.x) * vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec4<f32> = u_xlat4;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_384 : f32 = x_159.unity_LightData.y;
  u_xlat0.x = min(x_382, x_384);
  let x_390 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_390));
  let x_393 : f32 = u_xlat24;
  let x_396 : f32 = x_268.x_AdditionalShadowFadeParams.x;
  let x_399 : f32 = x_268.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_393 * x_396) + x_399);
  let x_401 : f32 = u_xlat24;
  u_xlat24 = clamp(x_401, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_413 : u32 = u_xlatu_loop_1;
    let x_414 : u32 = u_xlatu0;
    if ((x_413 < x_414)) {
    } else {
      break;
    }
    let x_417 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_417 >> 2u);
    let x_421 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_421 & 3u));
    let x_425 : u32 = u_xlatu26;
    let x_428 : vec4<f32> = x_159.unity_LightIndices[bitcast<i32>(x_425)];
    let x_438 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_443 : vec4<u32> = indexable[x_438];
    u_xlat26 = dot(x_428, bitcast<vec4<f32>>(x_443));
    let x_447 : f32 = u_xlat26;
    u_xlati26 = i32(x_447);
    let x_450 : vec4<f32> = vs_TEXCOORD2;
    let x_462 : i32 = u_xlati26;
    let x_464 : vec4<f32> = x_461.x_AdditionalLightsPosition[x_462];
    let x_467 : i32 = u_xlati26;
    let x_469 : vec4<f32> = x_461.x_AdditionalLightsPosition[x_467];
    u_xlat6 = ((-(vec3<f32>(x_450.x, x_450.y, x_450.z)) * vec3<f32>(x_464.w, x_464.w, x_464.w)) + vec3<f32>(x_469.x, x_469.y, x_469.z));
    let x_473 : vec3<f32> = u_xlat6;
    let x_474 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_473, x_474);
    let x_476 : f32 = u_xlat27;
    u_xlat27 = max(x_476, 0.00006103515625f);
    let x_480 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_480);
    let x_482 : f32 = u_xlat28;
    let x_484 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_482, x_482, x_482) * x_484);
    let x_486 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_486);
    let x_488 : f32 = u_xlat27;
    let x_489 : i32 = u_xlati26;
    let x_491 : f32 = x_461.x_AdditionalLightsAttenuation[x_489].x;
    u_xlat27 = (x_488 * x_491);
    let x_493 : f32 = u_xlat27;
    let x_495 : f32 = u_xlat27;
    u_xlat27 = ((-(x_493) * x_495) + 1.0f);
    let x_498 : f32 = u_xlat27;
    u_xlat27 = max(x_498, 0.0f);
    let x_500 : f32 = u_xlat27;
    let x_501 : f32 = u_xlat27;
    u_xlat27 = (x_500 * x_501);
    let x_503 : f32 = u_xlat27;
    let x_504 : f32 = u_xlat28;
    u_xlat27 = (x_503 * x_504);
    let x_506 : i32 = u_xlati26;
    let x_508 : vec4<f32> = x_461.x_AdditionalLightsSpotDir[x_506];
    let x_510 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_508.x, x_508.y, x_508.z), x_510);
    let x_512 : f32 = u_xlat28;
    let x_513 : i32 = u_xlati26;
    let x_515 : f32 = x_461.x_AdditionalLightsAttenuation[x_513].z;
    let x_517 : i32 = u_xlati26;
    let x_519 : f32 = x_461.x_AdditionalLightsAttenuation[x_517].w;
    u_xlat28 = ((x_512 * x_515) + x_519);
    let x_521 : f32 = u_xlat28;
    u_xlat28 = clamp(x_521, 0.0f, 1.0f);
    let x_523 : f32 = u_xlat28;
    let x_524 : f32 = u_xlat28;
    u_xlat28 = (x_523 * x_524);
    let x_526 : f32 = u_xlat27;
    let x_527 : f32 = u_xlat28;
    u_xlat27 = (x_526 * x_527);
    let x_531 : i32 = u_xlati26;
    let x_533 : f32 = x_268.x_AdditionalShadowParams[x_531].w;
    u_xlati28 = i32(x_533);
    let x_536 : i32 = u_xlati28;
    u_xlatb29 = (x_536 >= 0i);
    let x_538 : bool = u_xlatb29;
    if (x_538) {
      let x_542 : i32 = u_xlati26;
      let x_544 : f32 = x_268.x_AdditionalShadowParams[x_542].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_544, x_544, x_544, x_544))));
      let x_549 : bool = u_xlatb29;
      if (x_549) {
        let x_554 : vec3<f32> = u_xlat6;
        let x_557 : vec3<f32> = u_xlat6;
        let x_560 : vec4<bool> = (abs(vec4<f32>(x_554.z, x_554.z, x_554.y, x_554.z)) >= abs(vec4<f32>(x_557.x, x_557.y, x_557.x, x_557.x)));
        let x_562 : vec3<bool> = vec3<bool>(x_560.x, x_560.y, x_560.z);
        let x_563 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_562.x, x_562.y, x_562.z, x_563.w);
        let x_566 : bool = u_xlatb7.y;
        let x_568 : bool = u_xlatb7.x;
        u_xlatb29 = (x_566 & x_568);
        let x_570 : vec3<f32> = u_xlat6;
        let x_573 : vec4<bool> = (-(vec4<f32>(x_570.z, x_570.y, x_570.z, x_570.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_574 : vec3<bool> = vec3<bool>(x_573.x, x_573.y, x_573.w);
        let x_575 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_574.x, x_574.y, x_575.z, x_574.z);
        let x_579 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_579);
        let x_585 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_585);
        let x_592 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_592);
        let x_595 : bool = u_xlatb7.z;
        if (x_595) {
          let x_600 : f32 = u_xlat7.y;
          x_596 = x_600;
        } else {
          let x_602 : f32 = u_xlat30;
          x_596 = x_602;
        }
        let x_603 : f32 = x_596;
        u_xlat30 = x_603;
        let x_605 : bool = u_xlatb29;
        if (x_605) {
          let x_610 : f32 = u_xlat7.x;
          x_606 = x_610;
        } else {
          let x_612 : f32 = u_xlat30;
          x_606 = x_612;
        }
        let x_613 : f32 = x_606;
        u_xlat29 = x_613;
        let x_614 : i32 = u_xlati26;
        let x_616 : f32 = x_268.x_AdditionalShadowParams[x_614].w;
        u_xlat30 = trunc(x_616);
        let x_618 : f32 = u_xlat29;
        let x_619 : f32 = u_xlat30;
        u_xlat29 = (x_618 + x_619);
        let x_621 : f32 = u_xlat29;
        u_xlati28 = i32(x_621);
      }
      let x_623 : i32 = u_xlati28;
      u_xlati28 = (x_623 << bitcast<u32>(2i));
      let x_625 : vec4<f32> = vs_TEXCOORD2;
      let x_628 : i32 = u_xlati28;
      let x_631 : i32 = u_xlati28;
      let x_635 : vec4<f32> = x_268.x_AdditionalLightsWorldToShadow[((x_628 + 1i) / 4i)][((x_631 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_625.y, x_625.y, x_625.y, x_625.y) * x_635);
      let x_637 : i32 = u_xlati28;
      let x_639 : i32 = u_xlati28;
      let x_642 : vec4<f32> = x_268.x_AdditionalLightsWorldToShadow[(x_637 / 4i)][(x_639 % 4i)];
      let x_643 : vec4<f32> = vs_TEXCOORD2;
      let x_646 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_642 * vec4<f32>(x_643.x, x_643.x, x_643.x, x_643.x)) + x_646);
      let x_648 : i32 = u_xlati28;
      let x_651 : i32 = u_xlati28;
      let x_655 : vec4<f32> = x_268.x_AdditionalLightsWorldToShadow[((x_648 + 2i) / 4i)][((x_651 + 2i) % 4i)];
      let x_656 : vec4<f32> = vs_TEXCOORD2;
      let x_659 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_655 * vec4<f32>(x_656.z, x_656.z, x_656.z, x_656.z)) + x_659);
      let x_661 : vec4<f32> = u_xlat7;
      let x_662 : i32 = u_xlati28;
      let x_665 : i32 = u_xlati28;
      let x_669 : vec4<f32> = x_268.x_AdditionalLightsWorldToShadow[((x_662 + 3i) / 4i)][((x_665 + 3i) % 4i)];
      u_xlat7 = (x_661 + x_669);
      let x_671 : vec4<f32> = u_xlat7;
      let x_673 : vec4<f32> = u_xlat7;
      let x_675 : vec3<f32> = (vec3<f32>(x_671.x, x_671.y, x_671.z) / vec3<f32>(x_673.w, x_673.w, x_673.w));
      let x_676 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
      let x_679 : vec4<f32> = u_xlat7;
      let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
      let x_682 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_680.x, x_680.y, x_682);
      let x_690 : vec3<f32> = txVec1;
      let x_692 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_690.xy, x_690.z);
      u_xlat28 = x_692;
      let x_693 : i32 = u_xlati26;
      let x_695 : f32 = x_268.x_AdditionalShadowParams[x_693].x;
      u_xlat29 = (1.0f + -(x_695));
      let x_698 : f32 = u_xlat28;
      let x_699 : i32 = u_xlati26;
      let x_701 : f32 = x_268.x_AdditionalShadowParams[x_699].x;
      let x_703 : f32 = u_xlat29;
      u_xlat28 = ((x_698 * x_701) + x_703);
      let x_706 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_706);
      let x_710 : f32 = u_xlat7.z;
      u_xlatb30 = (x_710 >= 1.0f);
      let x_712 : bool = u_xlatb29;
      let x_713 : bool = u_xlatb30;
      u_xlatb29 = (x_712 | x_713);
      let x_715 : bool = u_xlatb29;
      let x_716 : f32 = u_xlat28;
      u_xlat28 = select(x_716, 1.0f, x_715);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_719 : f32 = u_xlat28;
    u_xlat29 = (-(x_719) + 1.0f);
    let x_722 : f32 = u_xlat24;
    let x_723 : f32 = u_xlat29;
    let x_725 : f32 = u_xlat28;
    u_xlat28 = ((x_722 * x_723) + x_725);
    let x_727 : f32 = u_xlat27;
    let x_728 : f32 = u_xlat28;
    u_xlat27 = (x_727 * x_728);
    let x_730 : f32 = u_xlat27;
    let x_732 : i32 = u_xlati26;
    let x_734 : vec4<f32> = x_461.x_AdditionalLightsColor[x_732];
    let x_736 : vec3<f32> = (vec3<f32>(x_730, x_730, x_730) * vec3<f32>(x_734.x, x_734.y, x_734.z));
    let x_737 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
    let x_739 : vec4<f32> = u_xlat2;
    let x_741 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_739.x, x_739.y, x_739.z), x_741);
    let x_743 : f32 = u_xlat26;
    u_xlat26 = clamp(x_743, 0.0f, 1.0f);
    let x_745 : f32 = u_xlat26;
    let x_747 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_745, x_745, x_745) * vec3<f32>(x_747.x, x_747.y, x_747.z));
    let x_750 : vec3<f32> = u_xlat6;
    let x_751 : vec4<f32> = u_xlat1;
    let x_754 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_750 * vec3<f32>(x_751.x, x_751.y, x_751.z)) + x_754);

    continuing {
      let x_756 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_756 + bitcast<u32>(1i));
    }
  }
  let x_758 : vec3<f32> = u_xlat3;
  let x_759 : vec4<f32> = u_xlat1;
  let x_762 : vec4<f32> = u_xlat4;
  let x_764 : vec3<f32> = ((x_758 * vec3<f32>(x_759.x, x_759.y, x_759.z)) + vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_769 : vec3<f32> = u_xlat5;
  let x_770 : vec4<f32> = u_xlat1;
  let x_772 : vec3<f32> = (x_769 + vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_773 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : bool = u_xlatb16;
  let x_776 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_776, x_775);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


