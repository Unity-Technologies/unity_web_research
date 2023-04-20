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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb8 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_229 : LightShadows;

var<private> u_xlatb24 : bool;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat26 : f32;

@group(1) @binding(2) var<uniform> x_292 : UnityPerDraw;

var<private> u_xlatu8 : u32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati26 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_402 : AdditionalLights;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb26 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_537 : f32;
  var x_547 : f32;
  var txVec1 : vec3<f32>;
  var x_726 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat8 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat24;
  let x_90 : f32 = u_xlat16;
  u_xlat16 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat16;
  u_xlat16 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat8;
  let x_97 : f32 = u_xlat16;
  u_xlat8 = (x_96 / x_97);
  let x_99 : f32 = u_xlat8;
  u_xlat8 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat8;
  u_xlat8 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb16;
  if (x_109) {
    let x_113 : f32 = u_xlat8;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat8 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat8;
  u_xlatb8 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb8;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat8;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_154 : vec2<f32> = vs_TEXCOORD7;
  let x_156 : f32 = x_27.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_154, x_156);
  u_xlat3 = x_157;
  let x_163 : vec2<f32> = vs_TEXCOORD7;
  let x_165 : f32 = x_27.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_163, x_165);
  u_xlat4 = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat3;
  let x_172 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : vec3<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat3;
  u_xlat8 = dot(x_175, vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : f32 = u_xlat8;
  u_xlat8 = (x_179 + 0.5f);
  let x_181 : f32 = u_xlat8;
  let x_183 : vec3<f32> = u_xlat4;
  let x_184 : vec3<f32> = (vec3<f32>(x_181, x_181, x_181) * x_183);
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : f32 = u_xlat3.w;
  u_xlat8 = max(x_188, 0.00009999999747378752f);
  let x_190 : vec4<f32> = u_xlat3;
  let x_192 : f32 = u_xlat8;
  let x_194 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) / vec3<f32>(x_192, x_192, x_192));
  let x_195 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_201 : vec4<f32> = vs_TEXCOORD6;
  let x_202 : vec2<f32> = vec2<f32>(x_201.x, x_201.y);
  let x_206 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_202.x, x_202.y, x_206);
  let x_218 : vec3<f32> = txVec0;
  let x_220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_218.xy, x_218.z);
  u_xlat8 = x_220;
  let x_232 : f32 = x_229.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_232) + 1.0f);
  let x_235 : f32 = u_xlat8;
  let x_237 : f32 = x_229.x_MainLightShadowParams.x;
  let x_239 : f32 = u_xlat24;
  u_xlat8 = ((x_235 * x_237) + x_239);
  let x_243 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_243);
  let x_247 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_247 >= 1.0f);
  let x_249 : bool = u_xlatb24;
  let x_250 : bool = u_xlatb1;
  u_xlatb24 = (x_249 | x_250);
  let x_252 : bool = u_xlatb24;
  let x_253 : f32 = u_xlat8;
  u_xlat8 = select(x_253, 1.0f, x_252);
  let x_256 : vec3<f32> = vs_TEXCOORD1;
  let x_260 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  u_xlat4 = (x_256 + -(x_260));
  let x_263 : vec3<f32> = u_xlat4;
  let x_264 : vec3<f32> = u_xlat4;
  u_xlat24 = dot(x_263, x_264);
  let x_266 : f32 = u_xlat24;
  let x_268 : f32 = x_229.x_MainLightShadowParams.z;
  let x_271 : f32 = x_229.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_266 * x_268) + x_271);
  let x_275 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_275, 0.0f, 1.0f);
  let x_279 : f32 = u_xlat8;
  u_xlat26 = (-(x_279) + 1.0f);
  let x_283 : f32 = u_xlat1.x;
  let x_284 : f32 = u_xlat26;
  let x_286 : f32 = u_xlat8;
  u_xlat8 = ((x_283 * x_284) + x_286);
  let x_288 : f32 = u_xlat8;
  let x_294 : f32 = x_292.unity_LightData.z;
  u_xlat8 = (x_288 * x_294);
  let x_296 : f32 = u_xlat8;
  let x_300 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_296, x_296, x_296) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec3<f32> = u_xlat2;
  let x_306 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat8 = dot(x_303, vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : f32 = u_xlat8;
  u_xlat8 = clamp(x_309, 0.0f, 1.0f);
  let x_311 : f32 = u_xlat8;
  let x_313 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_315 : vec4<f32> = u_xlat1;
  let x_317 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_315.y, x_315.z, x_315.w) * x_317);
  let x_319 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_319.x, x_319.x, x_319.x) * x_321);
  let x_324 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_327 : f32 = x_292.unity_LightData.y;
  u_xlat8 = min(x_324, x_327);
  let x_331 : f32 = u_xlat8;
  u_xlatu8 = bitcast<u32>(i32(x_331));
  let x_334 : f32 = u_xlat24;
  let x_337 : f32 = x_229.x_AdditionalShadowFadeParams.x;
  let x_340 : f32 = x_229.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_334 * x_337) + x_340);
  let x_342 : f32 = u_xlat24;
  u_xlat24 = clamp(x_342, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_355 : u32 = u_xlatu_loop_1;
    let x_356 : u32 = u_xlatu8;
    if ((x_355 < x_356)) {
    } else {
      break;
    }
    let x_359 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_359 >> 2u);
    let x_363 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_363 & 3u));
    let x_367 : u32 = u_xlatu26;
    let x_370 : vec4<f32> = x_292.unity_LightIndices[bitcast<i32>(x_367)];
    let x_380 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_385 : vec4<u32> = indexable[x_380];
    u_xlat26 = dot(x_370, bitcast<vec4<f32>>(x_385));
    let x_389 : f32 = u_xlat26;
    u_xlati26 = i32(x_389);
    let x_392 : vec3<f32> = vs_TEXCOORD1;
    let x_403 : i32 = u_xlati26;
    let x_405 : vec4<f32> = x_402.x_AdditionalLightsPosition[x_403];
    let x_408 : i32 = u_xlati26;
    let x_410 : vec4<f32> = x_402.x_AdditionalLightsPosition[x_408];
    u_xlat6 = ((-(x_392) * vec3<f32>(x_405.w, x_405.w, x_405.w)) + vec3<f32>(x_410.x, x_410.y, x_410.z));
    let x_414 : vec3<f32> = u_xlat6;
    let x_415 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_414, x_415);
    let x_417 : f32 = u_xlat27;
    u_xlat27 = max(x_417, 0.00006103515625f);
    let x_421 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_421);
    let x_423 : f32 = u_xlat28;
    let x_425 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_423, x_423, x_423) * x_425);
    let x_427 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_427);
    let x_429 : f32 = u_xlat27;
    let x_430 : i32 = u_xlati26;
    let x_432 : f32 = x_402.x_AdditionalLightsAttenuation[x_430].x;
    u_xlat27 = (x_429 * x_432);
    let x_434 : f32 = u_xlat27;
    let x_436 : f32 = u_xlat27;
    u_xlat27 = ((-(x_434) * x_436) + 1.0f);
    let x_439 : f32 = u_xlat27;
    u_xlat27 = max(x_439, 0.0f);
    let x_441 : f32 = u_xlat27;
    let x_442 : f32 = u_xlat27;
    u_xlat27 = (x_441 * x_442);
    let x_444 : f32 = u_xlat27;
    let x_445 : f32 = u_xlat28;
    u_xlat27 = (x_444 * x_445);
    let x_447 : i32 = u_xlati26;
    let x_449 : vec4<f32> = x_402.x_AdditionalLightsSpotDir[x_447];
    let x_451 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), x_451);
    let x_453 : f32 = u_xlat28;
    let x_454 : i32 = u_xlati26;
    let x_456 : f32 = x_402.x_AdditionalLightsAttenuation[x_454].z;
    let x_458 : i32 = u_xlati26;
    let x_460 : f32 = x_402.x_AdditionalLightsAttenuation[x_458].w;
    u_xlat28 = ((x_453 * x_456) + x_460);
    let x_462 : f32 = u_xlat28;
    u_xlat28 = clamp(x_462, 0.0f, 1.0f);
    let x_464 : f32 = u_xlat28;
    let x_465 : f32 = u_xlat28;
    u_xlat28 = (x_464 * x_465);
    let x_467 : f32 = u_xlat27;
    let x_468 : f32 = u_xlat28;
    u_xlat27 = (x_467 * x_468);
    let x_472 : i32 = u_xlati26;
    let x_474 : f32 = x_229.x_AdditionalShadowParams[x_472].w;
    u_xlati28 = i32(x_474);
    let x_477 : i32 = u_xlati28;
    u_xlatb29 = (x_477 >= 0i);
    let x_479 : bool = u_xlatb29;
    if (x_479) {
      let x_483 : i32 = u_xlati26;
      let x_485 : f32 = x_229.x_AdditionalShadowParams[x_483].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_485, x_485, x_485, x_485))));
      let x_490 : bool = u_xlatb29;
      if (x_490) {
        let x_495 : vec3<f32> = u_xlat6;
        let x_498 : vec3<f32> = u_xlat6;
        let x_501 : vec4<bool> = (abs(vec4<f32>(x_495.z, x_495.z, x_495.y, x_495.z)) >= abs(vec4<f32>(x_498.x, x_498.y, x_498.x, x_498.x)));
        let x_503 : vec3<bool> = vec3<bool>(x_501.x, x_501.y, x_501.z);
        let x_504 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_503.x, x_503.y, x_503.z, x_504.w);
        let x_507 : bool = u_xlatb7.y;
        let x_509 : bool = u_xlatb7.x;
        u_xlatb29 = (x_507 & x_509);
        let x_511 : vec3<f32> = u_xlat6;
        let x_514 : vec4<bool> = (-(vec4<f32>(x_511.z, x_511.y, x_511.z, x_511.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_515 : vec3<bool> = vec3<bool>(x_514.x, x_514.y, x_514.w);
        let x_516 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_515.x, x_515.y, x_516.z, x_515.z);
        let x_520 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_520);
        let x_526 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_526);
        let x_533 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_533);
        let x_536 : bool = u_xlatb7.z;
        if (x_536) {
          let x_541 : f32 = u_xlat7.y;
          x_537 = x_541;
        } else {
          let x_543 : f32 = u_xlat30;
          x_537 = x_543;
        }
        let x_544 : f32 = x_537;
        u_xlat30 = x_544;
        let x_546 : bool = u_xlatb29;
        if (x_546) {
          let x_551 : f32 = u_xlat7.x;
          x_547 = x_551;
        } else {
          let x_553 : f32 = u_xlat30;
          x_547 = x_553;
        }
        let x_554 : f32 = x_547;
        u_xlat29 = x_554;
        let x_555 : i32 = u_xlati26;
        let x_557 : f32 = x_229.x_AdditionalShadowParams[x_555].w;
        u_xlat30 = trunc(x_557);
        let x_559 : f32 = u_xlat29;
        let x_560 : f32 = u_xlat30;
        u_xlat29 = (x_559 + x_560);
        let x_562 : f32 = u_xlat29;
        u_xlati28 = i32(x_562);
      }
      let x_564 : i32 = u_xlati28;
      u_xlati28 = (x_564 << bitcast<u32>(2i));
      let x_566 : vec3<f32> = vs_TEXCOORD1;
      let x_569 : i32 = u_xlati28;
      let x_572 : i32 = u_xlati28;
      let x_576 : vec4<f32> = x_229.x_AdditionalLightsWorldToShadow[((x_569 + 1i) / 4i)][((x_572 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_566.y, x_566.y, x_566.y, x_566.y) * x_576);
      let x_578 : i32 = u_xlati28;
      let x_580 : i32 = u_xlati28;
      let x_583 : vec4<f32> = x_229.x_AdditionalLightsWorldToShadow[(x_578 / 4i)][(x_580 % 4i)];
      let x_584 : vec3<f32> = vs_TEXCOORD1;
      let x_587 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_583 * vec4<f32>(x_584.x, x_584.x, x_584.x, x_584.x)) + x_587);
      let x_589 : i32 = u_xlati28;
      let x_592 : i32 = u_xlati28;
      let x_596 : vec4<f32> = x_229.x_AdditionalLightsWorldToShadow[((x_589 + 2i) / 4i)][((x_592 + 2i) % 4i)];
      let x_597 : vec3<f32> = vs_TEXCOORD1;
      let x_600 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_596 * vec4<f32>(x_597.z, x_597.z, x_597.z, x_597.z)) + x_600);
      let x_602 : vec4<f32> = u_xlat7;
      let x_603 : i32 = u_xlati28;
      let x_606 : i32 = u_xlati28;
      let x_610 : vec4<f32> = x_229.x_AdditionalLightsWorldToShadow[((x_603 + 3i) / 4i)][((x_606 + 3i) % 4i)];
      u_xlat7 = (x_602 + x_610);
      let x_612 : vec4<f32> = u_xlat7;
      let x_614 : vec4<f32> = u_xlat7;
      let x_616 : vec3<f32> = (vec3<f32>(x_612.x, x_612.y, x_612.z) / vec3<f32>(x_614.w, x_614.w, x_614.w));
      let x_617 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
      let x_620 : vec4<f32> = u_xlat7;
      let x_621 : vec2<f32> = vec2<f32>(x_620.x, x_620.y);
      let x_623 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_621.x, x_621.y, x_623);
      let x_631 : vec3<f32> = txVec1;
      let x_633 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_631.xy, x_631.z);
      u_xlat28 = x_633;
      let x_634 : i32 = u_xlati26;
      let x_636 : f32 = x_229.x_AdditionalShadowParams[x_634].x;
      u_xlat29 = (1.0f + -(x_636));
      let x_639 : f32 = u_xlat28;
      let x_640 : i32 = u_xlati26;
      let x_642 : f32 = x_229.x_AdditionalShadowParams[x_640].x;
      let x_644 : f32 = u_xlat29;
      u_xlat28 = ((x_639 * x_642) + x_644);
      let x_647 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_647);
      let x_651 : f32 = u_xlat7.z;
      u_xlatb30 = (x_651 >= 1.0f);
      let x_653 : bool = u_xlatb29;
      let x_654 : bool = u_xlatb30;
      u_xlatb29 = (x_653 | x_654);
      let x_656 : bool = u_xlatb29;
      let x_657 : f32 = u_xlat28;
      u_xlat28 = select(x_657, 1.0f, x_656);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_660 : f32 = u_xlat28;
    u_xlat29 = (-(x_660) + 1.0f);
    let x_663 : f32 = u_xlat24;
    let x_664 : f32 = u_xlat29;
    let x_666 : f32 = u_xlat28;
    u_xlat28 = ((x_663 * x_664) + x_666);
    let x_668 : f32 = u_xlat27;
    let x_669 : f32 = u_xlat28;
    u_xlat27 = (x_668 * x_669);
    let x_671 : f32 = u_xlat27;
    let x_673 : i32 = u_xlati26;
    let x_675 : vec4<f32> = x_402.x_AdditionalLightsColor[x_673];
    let x_677 : vec3<f32> = (vec3<f32>(x_671, x_671, x_671) * vec3<f32>(x_675.x, x_675.y, x_675.z));
    let x_678 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
    let x_680 : vec3<f32> = u_xlat2;
    let x_681 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_680, x_681);
    let x_683 : f32 = u_xlat26;
    u_xlat26 = clamp(x_683, 0.0f, 1.0f);
    let x_685 : f32 = u_xlat26;
    let x_687 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_685, x_685, x_685) * vec3<f32>(x_687.x, x_687.y, x_687.z));
    let x_690 : vec4<f32> = u_xlat1;
    let x_692 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_690.y, x_690.z, x_690.w) * x_692);
    let x_694 : vec3<f32> = u_xlat6;
    let x_695 : vec4<f32> = u_xlat0;
    let x_698 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_694 * vec3<f32>(x_695.x, x_695.x, x_695.x)) + x_698);

    continuing {
      let x_700 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_700 + bitcast<u32>(1i));
    }
  }
  let x_702 : vec4<f32> = u_xlat3;
  let x_704 : vec4<f32> = u_xlat1;
  let x_707 : vec3<f32> = u_xlat4;
  let x_708 : vec3<f32> = ((vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_704.y, x_704.z, x_704.w)) + x_707);
  let x_709 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_713 : vec3<f32> = u_xlat5;
  let x_714 : vec4<f32> = u_xlat1;
  let x_716 : vec3<f32> = (x_713 + vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_720 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_720 == 1.0f);
  let x_722 : bool = u_xlatb8;
  let x_723 : bool = u_xlatb16;
  u_xlatb8 = (x_722 | x_723);
  let x_725 : bool = u_xlatb8;
  if (x_725) {
    let x_730 : f32 = u_xlat0.x;
    x_726 = x_730;
  } else {
    x_726 = 1.0f;
  }
  let x_732 : f32 = x_726;
  SV_Target0.w = x_732;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


