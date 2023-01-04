struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_325 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_484 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_75 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_131 : f32;
  var u_xlatb8 : bool;
  var u_xlatb24 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb26 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatu24 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_635 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_79 : f32 = u_xlat1.x;
    x_75 = x_79;
  } else {
    x_75 = 0.0f;
  }
  let x_82 : f32 = x_75;
  u_xlat0.x = x_82;
  let x_87 : f32 = u_xlat0.w;
  let x_89 : f32 = x_57.x_BaseColor.w;
  let x_92 : f32 = x_57.x_Cutoff;
  u_xlat8.x = ((x_87 * x_89) + -(x_92));
  let x_98 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_98);
  let x_102 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_102);
  let x_104 : f32 = u_xlat24;
  let x_106 : f32 = u_xlat16;
  u_xlat16 = (abs(x_104) + abs(x_106));
  let x_109 : f32 = u_xlat16;
  u_xlat16 = max(x_109, 0.0001f);
  let x_113 : f32 = u_xlat8.x;
  let x_114 : f32 = u_xlat16;
  u_xlat8.x = (x_113 / x_114);
  let x_118 : f32 = u_xlat8.x;
  u_xlat8.x = (x_118 + 0.5f);
  let x_123 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_123, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb16;
  if (x_130) {
    let x_135 : f32 = u_xlat8.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat8.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat8.x;
  u_xlatb8 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb8;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_44.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat8;
  let x_175 : f32 = x_44.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat8.x = x_176.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb24 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb24;
  if (x_189) {
    let x_194 : f32 = u_xlat8.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat8.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat8.x = x_201;
  let x_204 : f32 = u_xlat8.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat8.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat8.x;
  u_xlatb8 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb8;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat8;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_238 : f32 = vs_TEXCOORD1.y;
  let x_241 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat8.x = (x_238 * x_241);
  let x_245 : f32 = x_44.unity_MatrixV[0i].z;
  let x_247 : f32 = vs_TEXCOORD1.x;
  let x_250 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_245 * x_247) + x_250);
  let x_254 : f32 = x_44.unity_MatrixV[2i].z;
  let x_256 : f32 = vs_TEXCOORD1.z;
  let x_259 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_254 * x_256) + x_259);
  let x_263 : f32 = u_xlat8.x;
  let x_266 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat8.x = (x_263 + x_266);
  let x_270 : f32 = u_xlat8.x;
  let x_274 : f32 = x_44.x_ProjectionParams.y;
  u_xlat8.x = (-(x_270) + -(x_274));
  let x_279 : f32 = u_xlat8.x;
  u_xlat8.x = max(x_279, 0.0f);
  let x_283 : f32 = u_xlat8.x;
  let x_286 : f32 = x_44.unity_FogParams.x;
  u_xlat8.x = (x_283 * x_286);
  let x_296 : vec2<f32> = vs_TEXCOORD7;
  let x_298 : f32 = x_44.x_GlobalMipBias.x;
  let x_299 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_296, x_298);
  u_xlat3 = vec3<f32>(x_299.x, x_299.y, x_299.z);
  let x_303 : vec4<f32> = vs_TEXCOORD6;
  let x_304 : vec2<f32> = vec2<f32>(x_303.x, x_303.y);
  let x_306 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_304.x, x_304.y, x_306);
  let x_318 : vec3<f32> = txVec0;
  let x_320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_318.xy, x_318.z);
  u_xlat24 = x_320;
  let x_328 : f32 = x_325.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_328) + 1.0f);
  let x_332 : f32 = u_xlat24;
  let x_334 : f32 = x_325.x_MainLightShadowParams.x;
  let x_337 : f32 = u_xlat1.x;
  u_xlat24 = ((x_332 * x_334) + x_337);
  let x_341 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_341);
  let x_345 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_345 >= 1.0f);
  let x_347 : bool = u_xlatb1;
  let x_348 : bool = u_xlatb26;
  u_xlatb1 = (x_347 | x_348);
  let x_350 : bool = u_xlatb1;
  let x_351 : f32 = u_xlat24;
  u_xlat24 = select(x_351, 1.0f, x_350);
  let x_354 : vec3<f32> = vs_TEXCOORD1;
  let x_358 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (x_354 + -(x_358));
  let x_361 : vec3<f32> = u_xlat4;
  let x_362 : vec3<f32> = u_xlat4;
  u_xlat1.x = dot(x_361, x_362);
  let x_366 : f32 = u_xlat1.x;
  let x_368 : f32 = x_325.x_MainLightShadowParams.z;
  let x_371 : f32 = x_325.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_366 * x_368) + x_371);
  let x_375 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_375, 0.0f, 1.0f);
  let x_379 : f32 = u_xlat24;
  u_xlat26 = (-(x_379) + 1.0f);
  let x_383 : f32 = u_xlat1.x;
  let x_384 : f32 = u_xlat26;
  let x_386 : f32 = u_xlat24;
  u_xlat24 = ((x_383 * x_384) + x_386);
  let x_388 : f32 = u_xlat24;
  let x_390 : f32 = x_184.unity_LightData.z;
  u_xlat24 = (x_388 * x_390);
  let x_392 : f32 = u_xlat24;
  let x_395 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_392, x_392, x_392) * vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec3<f32> = u_xlat2;
  let x_400 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(x_398, vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : f32 = u_xlat24;
  u_xlat24 = clamp(x_403, 0.0f, 1.0f);
  let x_405 : f32 = u_xlat24;
  let x_407 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_405, x_405, x_405) * x_407);
  let x_409 : vec4<f32> = u_xlat1;
  let x_411 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_409.y, x_409.z, x_409.w) * x_411);
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_413.x, x_413.x, x_413.x) * x_415);
  let x_418 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_420 : f32 = x_184.unity_LightData.y;
  u_xlat24 = min(x_418, x_420);
  let x_424 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_424));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_437 : u32 = u_xlatu_loop_1;
    let x_438 : u32 = u_xlatu24;
    if ((x_437 < x_438)) {
    } else {
      break;
    }
    let x_441 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_441 >> 2u);
    let x_445 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_445 & 3u));
    let x_448 : u32 = u_xlatu26;
    let x_451 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_448)];
    let x_461 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_466 : vec4<u32> = indexable[x_461];
    u_xlat26 = dot(x_451, bitcast<vec4<f32>>(x_466));
    let x_470 : f32 = u_xlat26;
    u_xlati26 = i32(x_470);
    let x_473 : vec3<f32> = vs_TEXCOORD1;
    let x_485 : i32 = u_xlati26;
    let x_487 : vec4<f32> = x_484.x_AdditionalLightsPosition[x_485];
    let x_490 : i32 = u_xlati26;
    let x_492 : vec4<f32> = x_484.x_AdditionalLightsPosition[x_490];
    u_xlat6 = ((-(x_473) * vec3<f32>(x_487.w, x_487.w, x_487.w)) + vec3<f32>(x_492.x, x_492.y, x_492.z));
    let x_496 : vec3<f32> = u_xlat6;
    let x_497 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_496, x_497);
    let x_499 : f32 = u_xlat27;
    u_xlat27 = max(x_499, 6.10351562e-05f);
    let x_503 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_503);
    let x_505 : f32 = u_xlat28;
    let x_507 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_505, x_505, x_505) * x_507);
    let x_509 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_509);
    let x_511 : f32 = u_xlat27;
    let x_512 : i32 = u_xlati26;
    let x_514 : f32 = x_484.x_AdditionalLightsAttenuation[x_512].x;
    u_xlat27 = (x_511 * x_514);
    let x_516 : f32 = u_xlat27;
    let x_518 : f32 = u_xlat27;
    u_xlat27 = ((-(x_516) * x_518) + 1.0f);
    let x_521 : f32 = u_xlat27;
    u_xlat27 = max(x_521, 0.0f);
    let x_523 : f32 = u_xlat27;
    let x_524 : f32 = u_xlat27;
    u_xlat27 = (x_523 * x_524);
    let x_526 : f32 = u_xlat27;
    let x_527 : f32 = u_xlat28;
    u_xlat27 = (x_526 * x_527);
    let x_529 : i32 = u_xlati26;
    let x_531 : vec4<f32> = x_484.x_AdditionalLightsSpotDir[x_529];
    let x_533 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_531.x, x_531.y, x_531.z), x_533);
    let x_535 : f32 = u_xlat28;
    let x_536 : i32 = u_xlati26;
    let x_538 : f32 = x_484.x_AdditionalLightsAttenuation[x_536].z;
    let x_540 : i32 = u_xlati26;
    let x_542 : f32 = x_484.x_AdditionalLightsAttenuation[x_540].w;
    u_xlat28 = ((x_535 * x_538) + x_542);
    let x_544 : f32 = u_xlat28;
    u_xlat28 = clamp(x_544, 0.0f, 1.0f);
    let x_546 : f32 = u_xlat28;
    let x_547 : f32 = u_xlat28;
    u_xlat28 = (x_546 * x_547);
    let x_549 : f32 = u_xlat27;
    let x_550 : f32 = u_xlat28;
    u_xlat27 = (x_549 * x_550);
    let x_553 : f32 = u_xlat27;
    let x_555 : i32 = u_xlati26;
    let x_557 : vec4<f32> = x_484.x_AdditionalLightsColor[x_555];
    u_xlat7 = (vec3<f32>(x_553, x_553, x_553) * vec3<f32>(x_557.x, x_557.y, x_557.z));
    let x_560 : vec3<f32> = u_xlat2;
    let x_561 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_560, x_561);
    let x_563 : f32 = u_xlat26;
    u_xlat26 = clamp(x_563, 0.0f, 1.0f);
    let x_565 : f32 = u_xlat26;
    let x_567 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_565, x_565, x_565) * x_567);
    let x_569 : vec4<f32> = u_xlat1;
    let x_571 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_569.y, x_569.z, x_569.w) * x_571);
    let x_573 : vec3<f32> = u_xlat6;
    let x_574 : vec4<f32> = u_xlat0;
    let x_577 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_573 * vec3<f32>(x_574.x, x_574.x, x_574.x)) + x_577);

    continuing {
      let x_579 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_579 + bitcast<u32>(1i));
    }
  }
  let x_581 : vec3<f32> = u_xlat3;
  let x_582 : vec4<f32> = u_xlat1;
  let x_585 : vec3<f32> = u_xlat4;
  let x_586 : vec3<f32> = ((x_581 * vec3<f32>(x_582.y, x_582.z, x_582.w)) + x_585);
  let x_587 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_589 : vec3<f32> = u_xlat5;
  let x_590 : vec4<f32> = u_xlat1;
  let x_592 : vec3<f32> = (x_589 + vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : f32 = u_xlat8.x;
  let x_598 : f32 = u_xlat8.x;
  u_xlat8.x = (x_596 * -(x_598));
  let x_603 : f32 = u_xlat8.x;
  u_xlat8.x = exp2(x_603);
  let x_606 : vec4<f32> = u_xlat1;
  let x_609 : vec4<f32> = x_44.unity_FogColor;
  let x_612 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) + -(vec3<f32>(x_609.x, x_609.y, x_609.z)));
  let x_613 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_617 : vec3<f32> = u_xlat8;
  let x_619 : vec4<f32> = u_xlat1;
  let x_623 : vec4<f32> = x_44.unity_FogColor;
  let x_625 : vec3<f32> = ((vec3<f32>(x_617.x, x_617.x, x_617.x) * vec3<f32>(x_619.x, x_619.y, x_619.z)) + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_629 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_629 == 1.0f);
  let x_631 : bool = u_xlatb8;
  let x_632 : bool = u_xlatb16;
  u_xlatb8 = (x_631 | x_632);
  let x_634 : bool = u_xlatb8;
  if (x_634) {
    let x_639 : f32 = u_xlat0.x;
    x_635 = x_639;
  } else {
    x_635 = 1.0f;
  }
  let x_641 : f32 = x_635;
  SV_Target0.w = x_641;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

