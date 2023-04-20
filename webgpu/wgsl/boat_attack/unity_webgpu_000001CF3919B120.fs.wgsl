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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_75 : UnityPerDraw;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat26 : f32;

@group(1) @binding(4) var<uniform> x_184 : LightShadows;

var<private> u_xlatb26 : bool;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlatu25 : u32;

var<private> u_xlatu28 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_364 : AdditionalLights;

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
  var x_513 : f32;
  var x_524 : f32;
  var txVec1 : vec3<f32>;
  var x_641 : f32;
  var x_714 : f32;
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
  u_xlat1.w = 1.0f;
  let x_78 : vec4<f32> = x_75.unity_SHAr;
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_78, x_79);
  let x_84 : vec4<f32> = x_75.unity_SHAg;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_84, x_85);
  let x_91 : vec4<f32> = x_75.unity_SHAb;
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_91, x_92);
  let x_96 : vec4<f32> = u_xlat1;
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_96.y, x_96.z, x_96.z, x_96.x) * vec4<f32>(x_98.x, x_98.y, x_98.z, x_98.z));
  let x_104 : vec4<f32> = x_75.unity_SHBr;
  let x_105 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_104, x_105);
  let x_110 : vec4<f32> = x_75.unity_SHBg;
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_110, x_111);
  let x_116 : vec4<f32> = x_75.unity_SHBb;
  let x_117 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_116, x_117);
  let x_122 : f32 = u_xlat1.y;
  let x_124 : f32 = u_xlat1.y;
  u_xlat25 = (x_122 * x_124);
  let x_127 : f32 = u_xlat1.x;
  let x_129 : f32 = u_xlat1.x;
  let x_131 : f32 = u_xlat25;
  u_xlat25 = ((x_127 * x_129) + -(x_131));
  let x_136 : vec4<f32> = x_75.unity_SHC;
  let x_138 : f32 = u_xlat25;
  let x_141 : vec3<f32> = u_xlat4;
  let x_142 : vec3<f32> = ((vec3<f32>(x_136.x, x_136.y, x_136.z) * vec3<f32>(x_138, x_138, x_138)) + x_141);
  let x_143 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec3<f32> = u_xlat2;
  let x_146 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_145 + vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_149, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_157 : vec4<f32> = vs_TEXCOORD6;
  let x_158 : vec2<f32> = vec2<f32>(x_157.x, x_157.y);
  let x_161 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_158.x, x_158.y, x_161);
  let x_173 : vec3<f32> = txVec0;
  let x_175 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_173.xy, x_173.z);
  u_xlat25 = x_175;
  let x_187 : f32 = x_184.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_187) + 1.0f);
  let x_190 : f32 = u_xlat25;
  let x_192 : f32 = x_184.x_MainLightShadowParams.x;
  let x_194 : f32 = u_xlat26;
  u_xlat25 = ((x_190 * x_192) + x_194);
  let x_200 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_200);
  let x_204 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (x_204 >= 1.0f);
  let x_206 : bool = u_xlatb26;
  let x_207 : bool = u_xlatb3;
  u_xlatb26 = (x_206 | x_207);
  let x_209 : bool = u_xlatb26;
  let x_210 : f32 = u_xlat25;
  u_xlat25 = select(x_210, 1.0f, x_209);
  let x_213 : vec3<f32> = vs_TEXCOORD1;
  let x_217 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_219 : vec3<f32> = (x_213 + -(x_217));
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat3;
  let x_224 : vec4<f32> = u_xlat3;
  u_xlat26 = dot(vec3<f32>(x_222.x, x_222.y, x_222.z), vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : f32 = u_xlat26;
  let x_229 : f32 = x_184.x_MainLightShadowParams.z;
  let x_232 : f32 = x_184.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_227 * x_229) + x_232);
  let x_236 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_236, 0.0f, 1.0f);
  let x_240 : f32 = u_xlat25;
  u_xlat11 = (-(x_240) + 1.0f);
  let x_244 : f32 = u_xlat3.x;
  let x_245 : f32 = u_xlat11;
  let x_247 : f32 = u_xlat25;
  u_xlat25 = ((x_244 * x_245) + x_247);
  let x_249 : f32 = u_xlat25;
  let x_252 : f32 = x_75.unity_LightData.z;
  u_xlat25 = (x_249 * x_252);
  let x_254 : f32 = u_xlat25;
  let x_258 : vec4<f32> = x_27.x_MainLightColor;
  let x_260 : vec3<f32> = (vec3<f32>(x_254, x_254, x_254) * vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat1;
  let x_266 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat25 = dot(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : f32 = u_xlat25;
  u_xlat25 = clamp(x_269, 0.0f, 1.0f);
  let x_271 : f32 = u_xlat25;
  let x_273 : vec4<f32> = u_xlat3;
  let x_275 : vec3<f32> = (vec3<f32>(x_271, x_271, x_271) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec3<f32> = (vec3<f32>(x_278.y, x_278.z, x_278.w) * vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_287 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_289 : f32 = x_75.unity_LightData.y;
  u_xlat25 = min(x_287, x_289);
  let x_293 : f32 = u_xlat25;
  u_xlatu25 = bitcast<u32>(i32(x_293));
  let x_296 : f32 = u_xlat26;
  let x_299 : f32 = x_184.x_AdditionalShadowFadeParams.x;
  let x_302 : f32 = x_184.x_AdditionalShadowFadeParams.y;
  u_xlat26 = ((x_296 * x_299) + x_302);
  let x_304 : f32 = u_xlat26;
  u_xlat26 = clamp(x_304, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_316 : u32 = u_xlatu_loop_1;
    let x_317 : u32 = u_xlatu25;
    if ((x_316 < x_317)) {
    } else {
      break;
    }
    let x_320 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_320 >> 2u);
    let x_324 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_324 & 3u));
    let x_329 : u32 = u_xlatu28;
    let x_332 : vec4<f32> = x_75.unity_LightIndices[bitcast<i32>(x_329)];
    let x_342 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_347 : vec4<u32> = indexable[x_342];
    u_xlat28 = dot(x_332, bitcast<vec4<f32>>(x_347));
    let x_351 : f32 = u_xlat28;
    u_xlati28 = i32(x_351);
    let x_354 : vec3<f32> = vs_TEXCOORD1;
    let x_365 : i32 = u_xlati28;
    let x_367 : vec4<f32> = x_364.x_AdditionalLightsPosition[x_365];
    let x_370 : i32 = u_xlati28;
    let x_372 : vec4<f32> = x_364.x_AdditionalLightsPosition[x_370];
    u_xlat5 = ((-(x_354) * vec3<f32>(x_367.w, x_367.w, x_367.w)) + vec3<f32>(x_372.x, x_372.y, x_372.z));
    let x_376 : vec3<f32> = u_xlat5;
    let x_377 : vec3<f32> = u_xlat5;
    u_xlat29 = dot(x_376, x_377);
    let x_379 : f32 = u_xlat29;
    u_xlat29 = max(x_379, 0.00006103515625f);
    let x_383 : f32 = u_xlat29;
    u_xlat6.x = inverseSqrt(x_383);
    let x_386 : vec3<f32> = u_xlat5;
    let x_387 : vec4<f32> = u_xlat6;
    u_xlat5 = (x_386 * vec3<f32>(x_387.x, x_387.x, x_387.x));
    let x_390 : f32 = u_xlat29;
    u_xlat6.x = (1.0f / x_390);
    let x_393 : f32 = u_xlat29;
    let x_394 : i32 = u_xlati28;
    let x_396 : f32 = x_364.x_AdditionalLightsAttenuation[x_394].x;
    u_xlat29 = (x_393 * x_396);
    let x_398 : f32 = u_xlat29;
    let x_400 : f32 = u_xlat29;
    u_xlat29 = ((-(x_398) * x_400) + 1.0f);
    let x_403 : f32 = u_xlat29;
    u_xlat29 = max(x_403, 0.0f);
    let x_405 : f32 = u_xlat29;
    let x_406 : f32 = u_xlat29;
    u_xlat29 = (x_405 * x_406);
    let x_408 : f32 = u_xlat29;
    let x_410 : f32 = u_xlat6.x;
    u_xlat29 = (x_408 * x_410);
    let x_412 : i32 = u_xlati28;
    let x_414 : vec4<f32> = x_364.x_AdditionalLightsSpotDir[x_412];
    let x_416 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_414.x, x_414.y, x_414.z), x_416);
    let x_420 : f32 = u_xlat6.x;
    let x_421 : i32 = u_xlati28;
    let x_423 : f32 = x_364.x_AdditionalLightsAttenuation[x_421].z;
    let x_425 : i32 = u_xlati28;
    let x_427 : f32 = x_364.x_AdditionalLightsAttenuation[x_425].w;
    u_xlat6.x = ((x_420 * x_423) + x_427);
    let x_431 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_431, 0.0f, 1.0f);
    let x_435 : f32 = u_xlat6.x;
    let x_437 : f32 = u_xlat6.x;
    u_xlat6.x = (x_435 * x_437);
    let x_440 : f32 = u_xlat29;
    let x_442 : f32 = u_xlat6.x;
    u_xlat29 = (x_440 * x_442);
    let x_446 : i32 = u_xlati28;
    let x_448 : f32 = x_184.x_AdditionalShadowParams[x_446].w;
    u_xlati6 = i32(x_448);
    let x_453 : i32 = u_xlati6;
    u_xlatb14.x = (x_453 >= 0i);
    let x_457 : bool = u_xlatb14.x;
    if (x_457) {
      let x_461 : i32 = u_xlati28;
      let x_463 : f32 = x_184.x_AdditionalShadowParams[x_461].z;
      u_xlatb14.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_463, x_463, x_463, x_463))));
      let x_470 : bool = u_xlatb14.x;
      if (x_470) {
        let x_473 : vec3<f32> = u_xlat5;
        let x_476 : vec3<f32> = u_xlat5;
        let x_479 : vec4<bool> = (abs(vec4<f32>(x_473.z, x_473.z, x_473.y, x_473.y)) >= abs(vec4<f32>(x_476.x, x_476.y, x_476.x, x_476.x)));
        u_xlatb14 = vec3<bool>(x_479.x, x_479.y, x_479.z);
        let x_482 : bool = u_xlatb14.y;
        let x_484 : bool = u_xlatb14.x;
        u_xlatb14.x = (x_482 & x_484);
        let x_488 : vec3<f32> = u_xlat5;
        let x_491 : vec4<bool> = (-(vec4<f32>(x_488.z, x_488.y, x_488.x, x_488.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_491.x, x_491.y, x_491.z);
        let x_495 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_495);
        let x_501 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_501);
        let x_508 : bool = u_xlatb7.z;
        u_xlat22 = select(0.0f, 1.0f, x_508);
        let x_511 : bool = u_xlatb14.z;
        if (x_511) {
          let x_517 : f32 = u_xlat7.y;
          x_513 = x_517;
        } else {
          let x_519 : f32 = u_xlat22;
          x_513 = x_519;
        }
        let x_520 : f32 = x_513;
        u_xlat22 = x_520;
        let x_523 : bool = u_xlatb14.x;
        if (x_523) {
          let x_528 : f32 = u_xlat7.x;
          x_524 = x_528;
        } else {
          let x_530 : f32 = u_xlat22;
          x_524 = x_530;
        }
        let x_531 : f32 = x_524;
        u_xlat14 = x_531;
        let x_532 : i32 = u_xlati28;
        let x_534 : f32 = x_184.x_AdditionalShadowParams[x_532].w;
        u_xlat22 = trunc(x_534);
        let x_536 : f32 = u_xlat14;
        let x_537 : f32 = u_xlat22;
        u_xlat14 = (x_536 + x_537);
        let x_539 : f32 = u_xlat14;
        u_xlati6 = i32(x_539);
      }
      let x_541 : i32 = u_xlati6;
      u_xlati6 = (x_541 << bitcast<u32>(2i));
      let x_543 : vec3<f32> = vs_TEXCOORD1;
      let x_546 : i32 = u_xlati6;
      let x_549 : i32 = u_xlati6;
      let x_553 : vec4<f32> = x_184.x_AdditionalLightsWorldToShadow[((x_546 + 1i) / 4i)][((x_549 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_543.y, x_543.y, x_543.y, x_543.y) * x_553);
      let x_555 : i32 = u_xlati6;
      let x_557 : i32 = u_xlati6;
      let x_560 : vec4<f32> = x_184.x_AdditionalLightsWorldToShadow[(x_555 / 4i)][(x_557 % 4i)];
      let x_561 : vec3<f32> = vs_TEXCOORD1;
      let x_564 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_560 * vec4<f32>(x_561.x, x_561.x, x_561.x, x_561.x)) + x_564);
      let x_566 : i32 = u_xlati6;
      let x_569 : i32 = u_xlati6;
      let x_573 : vec4<f32> = x_184.x_AdditionalLightsWorldToShadow[((x_566 + 2i) / 4i)][((x_569 + 2i) % 4i)];
      let x_574 : vec3<f32> = vs_TEXCOORD1;
      let x_577 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_573 * vec4<f32>(x_574.z, x_574.z, x_574.z, x_574.z)) + x_577);
      let x_579 : vec4<f32> = u_xlat7;
      let x_580 : i32 = u_xlati6;
      let x_583 : i32 = u_xlati6;
      let x_587 : vec4<f32> = x_184.x_AdditionalLightsWorldToShadow[((x_580 + 3i) / 4i)][((x_583 + 3i) % 4i)];
      u_xlat6 = (x_579 + x_587);
      let x_589 : vec4<f32> = u_xlat6;
      let x_591 : vec4<f32> = u_xlat6;
      let x_593 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) / vec3<f32>(x_591.w, x_591.w, x_591.w));
      let x_594 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
      let x_597 : vec4<f32> = u_xlat6;
      let x_598 : vec2<f32> = vec2<f32>(x_597.x, x_597.y);
      let x_600 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_598.x, x_598.y, x_600);
      let x_608 : vec3<f32> = txVec1;
      let x_610 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_608.xy, x_608.z);
      u_xlat6.x = x_610;
      let x_612 : i32 = u_xlati28;
      let x_614 : f32 = x_184.x_AdditionalShadowParams[x_612].x;
      u_xlat14 = (1.0f + -(x_614));
      let x_618 : f32 = u_xlat6.x;
      let x_619 : i32 = u_xlati28;
      let x_621 : f32 = x_184.x_AdditionalShadowParams[x_619].x;
      let x_623 : f32 = u_xlat14;
      u_xlat6.x = ((x_618 * x_621) + x_623);
      let x_627 : f32 = u_xlat6.z;
      u_xlatb14.x = (0.0f >= x_627);
      let x_632 : f32 = u_xlat6.z;
      u_xlatb22 = (x_632 >= 1.0f);
      let x_634 : bool = u_xlatb22;
      let x_636 : bool = u_xlatb14.x;
      u_xlatb14.x = (x_634 | x_636);
      let x_640 : bool = u_xlatb14.x;
      if (x_640) {
        x_641 = 1.0f;
      } else {
        let x_646 : f32 = u_xlat6.x;
        x_641 = x_646;
      }
      let x_647 : f32 = x_641;
      u_xlat6.x = x_647;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_652 : f32 = u_xlat6.x;
    u_xlat14 = (-(x_652) + 1.0f);
    let x_655 : f32 = u_xlat26;
    let x_656 : f32 = u_xlat14;
    let x_659 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_655 * x_656) + x_659);
    let x_662 : f32 = u_xlat29;
    let x_664 : f32 = u_xlat6.x;
    u_xlat29 = (x_662 * x_664);
    let x_666 : f32 = u_xlat29;
    let x_668 : i32 = u_xlati28;
    let x_670 : vec4<f32> = x_364.x_AdditionalLightsColor[x_668];
    let x_672 : vec3<f32> = (vec3<f32>(x_666, x_666, x_666) * vec3<f32>(x_670.x, x_670.y, x_670.z));
    let x_673 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
    let x_675 : vec4<f32> = u_xlat1;
    let x_677 : vec3<f32> = u_xlat5;
    u_xlat28 = dot(vec3<f32>(x_675.x, x_675.y, x_675.z), x_677);
    let x_679 : f32 = u_xlat28;
    u_xlat28 = clamp(x_679, 0.0f, 1.0f);
    let x_681 : f32 = u_xlat28;
    let x_683 : vec4<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_681, x_681, x_681) * vec3<f32>(x_683.x, x_683.y, x_683.z));
    let x_686 : vec3<f32> = u_xlat5;
    let x_687 : vec4<f32> = u_xlat0;
    let x_690 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_686 * vec3<f32>(x_687.y, x_687.z, x_687.w)) + x_690);

    continuing {
      let x_692 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_692 + bitcast<u32>(1i));
    }
  }
  let x_695 : vec3<f32> = u_xlat2;
  let x_696 : vec4<f32> = u_xlat0;
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat8 = ((x_695 * vec3<f32>(x_696.y, x_696.z, x_696.w)) + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_704 : vec3<f32> = u_xlat4;
  let x_705 : vec3<f32> = u_xlat8;
  let x_706 : vec3<f32> = (x_704 + x_705);
  let x_707 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_711 : f32 = x_40.x_Surface;
  u_xlatb8 = (x_711 == 1.0f);
  let x_713 : bool = u_xlatb8;
  if (x_713) {
    let x_718 : f32 = u_xlat0.x;
    x_714 = x_718;
  } else {
    x_714 = 1.0f;
  }
  let x_720 : f32 = x_714;
  SV_Target0.w = x_720;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


