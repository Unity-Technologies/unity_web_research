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

@group(1) @binding(1) var<uniform> x_398 : AdditionalLights;

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
  var x_533 : f32;
  var x_543 : f32;
  var txVec1 : vec3<f32>;
  var x_718 : f32;
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
  let x_320 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_323 : f32 = x_292.unity_LightData.y;
  u_xlat8 = min(x_320, x_323);
  let x_327 : f32 = u_xlat8;
  u_xlatu8 = bitcast<u32>(i32(x_327));
  let x_330 : f32 = u_xlat24;
  let x_333 : f32 = x_229.x_AdditionalShadowFadeParams.x;
  let x_336 : f32 = x_229.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_330 * x_333) + x_336);
  let x_338 : f32 = u_xlat24;
  u_xlat24 = clamp(x_338, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_351 : u32 = u_xlatu_loop_1;
    let x_352 : u32 = u_xlatu8;
    if ((x_351 < x_352)) {
    } else {
      break;
    }
    let x_355 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_355 >> 2u);
    let x_359 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_359 & 3u));
    let x_363 : u32 = u_xlatu26;
    let x_366 : vec4<f32> = x_292.unity_LightIndices[bitcast<i32>(x_363)];
    let x_376 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_381 : vec4<u32> = indexable[x_376];
    u_xlat26 = dot(x_366, bitcast<vec4<f32>>(x_381));
    let x_385 : f32 = u_xlat26;
    u_xlati26 = i32(x_385);
    let x_388 : vec3<f32> = vs_TEXCOORD1;
    let x_399 : i32 = u_xlati26;
    let x_401 : vec4<f32> = x_398.x_AdditionalLightsPosition[x_399];
    let x_404 : i32 = u_xlati26;
    let x_406 : vec4<f32> = x_398.x_AdditionalLightsPosition[x_404];
    u_xlat6 = ((-(x_388) * vec3<f32>(x_401.w, x_401.w, x_401.w)) + vec3<f32>(x_406.x, x_406.y, x_406.z));
    let x_410 : vec3<f32> = u_xlat6;
    let x_411 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_410, x_411);
    let x_413 : f32 = u_xlat27;
    u_xlat27 = max(x_413, 0.00006103515625f);
    let x_417 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_417);
    let x_419 : f32 = u_xlat28;
    let x_421 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_419, x_419, x_419) * x_421);
    let x_423 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_423);
    let x_425 : f32 = u_xlat27;
    let x_426 : i32 = u_xlati26;
    let x_428 : f32 = x_398.x_AdditionalLightsAttenuation[x_426].x;
    u_xlat27 = (x_425 * x_428);
    let x_430 : f32 = u_xlat27;
    let x_432 : f32 = u_xlat27;
    u_xlat27 = ((-(x_430) * x_432) + 1.0f);
    let x_435 : f32 = u_xlat27;
    u_xlat27 = max(x_435, 0.0f);
    let x_437 : f32 = u_xlat27;
    let x_438 : f32 = u_xlat27;
    u_xlat27 = (x_437 * x_438);
    let x_440 : f32 = u_xlat27;
    let x_441 : f32 = u_xlat28;
    u_xlat27 = (x_440 * x_441);
    let x_443 : i32 = u_xlati26;
    let x_445 : vec4<f32> = x_398.x_AdditionalLightsSpotDir[x_443];
    let x_447 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_445.x, x_445.y, x_445.z), x_447);
    let x_449 : f32 = u_xlat28;
    let x_450 : i32 = u_xlati26;
    let x_452 : f32 = x_398.x_AdditionalLightsAttenuation[x_450].z;
    let x_454 : i32 = u_xlati26;
    let x_456 : f32 = x_398.x_AdditionalLightsAttenuation[x_454].w;
    u_xlat28 = ((x_449 * x_452) + x_456);
    let x_458 : f32 = u_xlat28;
    u_xlat28 = clamp(x_458, 0.0f, 1.0f);
    let x_460 : f32 = u_xlat28;
    let x_461 : f32 = u_xlat28;
    u_xlat28 = (x_460 * x_461);
    let x_463 : f32 = u_xlat27;
    let x_464 : f32 = u_xlat28;
    u_xlat27 = (x_463 * x_464);
    let x_468 : i32 = u_xlati26;
    let x_470 : f32 = x_229.x_AdditionalShadowParams[x_468].w;
    u_xlati28 = i32(x_470);
    let x_473 : i32 = u_xlati28;
    u_xlatb29 = (x_473 >= 0i);
    let x_475 : bool = u_xlatb29;
    if (x_475) {
      let x_479 : i32 = u_xlati26;
      let x_481 : f32 = x_229.x_AdditionalShadowParams[x_479].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_481, x_481, x_481, x_481))));
      let x_486 : bool = u_xlatb29;
      if (x_486) {
        let x_491 : vec3<f32> = u_xlat6;
        let x_494 : vec3<f32> = u_xlat6;
        let x_497 : vec4<bool> = (abs(vec4<f32>(x_491.z, x_491.z, x_491.y, x_491.z)) >= abs(vec4<f32>(x_494.x, x_494.y, x_494.x, x_494.x)));
        let x_499 : vec3<bool> = vec3<bool>(x_497.x, x_497.y, x_497.z);
        let x_500 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_499.x, x_499.y, x_499.z, x_500.w);
        let x_503 : bool = u_xlatb7.y;
        let x_505 : bool = u_xlatb7.x;
        u_xlatb29 = (x_503 & x_505);
        let x_507 : vec3<f32> = u_xlat6;
        let x_510 : vec4<bool> = (-(vec4<f32>(x_507.z, x_507.y, x_507.z, x_507.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_511 : vec3<bool> = vec3<bool>(x_510.x, x_510.y, x_510.w);
        let x_512 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_511.x, x_511.y, x_512.z, x_511.z);
        let x_516 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_516);
        let x_522 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_522);
        let x_529 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_529);
        let x_532 : bool = u_xlatb7.z;
        if (x_532) {
          let x_537 : f32 = u_xlat7.y;
          x_533 = x_537;
        } else {
          let x_539 : f32 = u_xlat30;
          x_533 = x_539;
        }
        let x_540 : f32 = x_533;
        u_xlat30 = x_540;
        let x_542 : bool = u_xlatb29;
        if (x_542) {
          let x_547 : f32 = u_xlat7.x;
          x_543 = x_547;
        } else {
          let x_549 : f32 = u_xlat30;
          x_543 = x_549;
        }
        let x_550 : f32 = x_543;
        u_xlat29 = x_550;
        let x_551 : i32 = u_xlati26;
        let x_553 : f32 = x_229.x_AdditionalShadowParams[x_551].w;
        u_xlat30 = trunc(x_553);
        let x_555 : f32 = u_xlat29;
        let x_556 : f32 = u_xlat30;
        u_xlat29 = (x_555 + x_556);
        let x_558 : f32 = u_xlat29;
        u_xlati28 = i32(x_558);
      }
      let x_560 : i32 = u_xlati28;
      u_xlati28 = (x_560 << bitcast<u32>(2i));
      let x_562 : vec3<f32> = vs_TEXCOORD1;
      let x_565 : i32 = u_xlati28;
      let x_568 : i32 = u_xlati28;
      let x_572 : vec4<f32> = x_229.x_AdditionalLightsWorldToShadow[((x_565 + 1i) / 4i)][((x_568 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_562.y, x_562.y, x_562.y, x_562.y) * x_572);
      let x_574 : i32 = u_xlati28;
      let x_576 : i32 = u_xlati28;
      let x_579 : vec4<f32> = x_229.x_AdditionalLightsWorldToShadow[(x_574 / 4i)][(x_576 % 4i)];
      let x_580 : vec3<f32> = vs_TEXCOORD1;
      let x_583 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_579 * vec4<f32>(x_580.x, x_580.x, x_580.x, x_580.x)) + x_583);
      let x_585 : i32 = u_xlati28;
      let x_588 : i32 = u_xlati28;
      let x_592 : vec4<f32> = x_229.x_AdditionalLightsWorldToShadow[((x_585 + 2i) / 4i)][((x_588 + 2i) % 4i)];
      let x_593 : vec3<f32> = vs_TEXCOORD1;
      let x_596 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_592 * vec4<f32>(x_593.z, x_593.z, x_593.z, x_593.z)) + x_596);
      let x_598 : vec4<f32> = u_xlat7;
      let x_599 : i32 = u_xlati28;
      let x_602 : i32 = u_xlati28;
      let x_606 : vec4<f32> = x_229.x_AdditionalLightsWorldToShadow[((x_599 + 3i) / 4i)][((x_602 + 3i) % 4i)];
      u_xlat7 = (x_598 + x_606);
      let x_608 : vec4<f32> = u_xlat7;
      let x_610 : vec4<f32> = u_xlat7;
      let x_612 : vec3<f32> = (vec3<f32>(x_608.x, x_608.y, x_608.z) / vec3<f32>(x_610.w, x_610.w, x_610.w));
      let x_613 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
      let x_616 : vec4<f32> = u_xlat7;
      let x_617 : vec2<f32> = vec2<f32>(x_616.x, x_616.y);
      let x_619 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_617.x, x_617.y, x_619);
      let x_627 : vec3<f32> = txVec1;
      let x_629 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_627.xy, x_627.z);
      u_xlat28 = x_629;
      let x_630 : i32 = u_xlati26;
      let x_632 : f32 = x_229.x_AdditionalShadowParams[x_630].x;
      u_xlat29 = (1.0f + -(x_632));
      let x_635 : f32 = u_xlat28;
      let x_636 : i32 = u_xlati26;
      let x_638 : f32 = x_229.x_AdditionalShadowParams[x_636].x;
      let x_640 : f32 = u_xlat29;
      u_xlat28 = ((x_635 * x_638) + x_640);
      let x_643 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_643);
      let x_647 : f32 = u_xlat7.z;
      u_xlatb30 = (x_647 >= 1.0f);
      let x_649 : bool = u_xlatb29;
      let x_650 : bool = u_xlatb30;
      u_xlatb29 = (x_649 | x_650);
      let x_652 : bool = u_xlatb29;
      let x_653 : f32 = u_xlat28;
      u_xlat28 = select(x_653, 1.0f, x_652);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_656 : f32 = u_xlat28;
    u_xlat29 = (-(x_656) + 1.0f);
    let x_659 : f32 = u_xlat24;
    let x_660 : f32 = u_xlat29;
    let x_662 : f32 = u_xlat28;
    u_xlat28 = ((x_659 * x_660) + x_662);
    let x_664 : f32 = u_xlat27;
    let x_665 : f32 = u_xlat28;
    u_xlat27 = (x_664 * x_665);
    let x_667 : f32 = u_xlat27;
    let x_669 : i32 = u_xlati26;
    let x_671 : vec4<f32> = x_398.x_AdditionalLightsColor[x_669];
    let x_673 : vec3<f32> = (vec3<f32>(x_667, x_667, x_667) * vec3<f32>(x_671.x, x_671.y, x_671.z));
    let x_674 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
    let x_676 : vec3<f32> = u_xlat2;
    let x_677 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_676, x_677);
    let x_679 : f32 = u_xlat26;
    u_xlat26 = clamp(x_679, 0.0f, 1.0f);
    let x_681 : f32 = u_xlat26;
    let x_683 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_681, x_681, x_681) * vec3<f32>(x_683.x, x_683.y, x_683.z));
    let x_686 : vec3<f32> = u_xlat6;
    let x_687 : vec4<f32> = u_xlat1;
    let x_690 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_686 * vec3<f32>(x_687.y, x_687.z, x_687.w)) + x_690);

    continuing {
      let x_692 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_692 + bitcast<u32>(1i));
    }
  }
  let x_694 : vec4<f32> = u_xlat3;
  let x_696 : vec4<f32> = u_xlat1;
  let x_699 : vec3<f32> = u_xlat4;
  let x_700 : vec3<f32> = ((vec3<f32>(x_694.x, x_694.y, x_694.z) * vec3<f32>(x_696.y, x_696.z, x_696.w)) + x_699);
  let x_701 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_705 : vec3<f32> = u_xlat5;
  let x_706 : vec4<f32> = u_xlat1;
  let x_708 : vec3<f32> = (x_705 + vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_712 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_712 == 1.0f);
  let x_714 : bool = u_xlatb8;
  let x_715 : bool = u_xlatb16;
  u_xlatb8 = (x_714 | x_715);
  let x_717 : bool = u_xlatb8;
  if (x_717) {
    let x_722 : f32 = u_xlat0.x;
    x_718 = x_722;
  } else {
    x_718 = 1.0f;
  }
  let x_724 : f32 = x_718;
  SV_Target0.w = x_724;
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


