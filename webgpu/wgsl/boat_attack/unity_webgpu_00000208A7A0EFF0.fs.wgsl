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
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_266 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_332 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_428 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_60 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_110 : f32;
  var u_xlatb8 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb26 : bool;
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
  var x_575 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_42.x_BaseColor.w;
  let x_77 : f32 = x_42.x_Cutoff;
  u_xlat8 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat24;
  let x_90 : f32 = u_xlat16;
  u_xlat16 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat16;
  u_xlat16 = max(x_93, 0.0001f);
  let x_96 : f32 = u_xlat8;
  let x_97 : f32 = u_xlat16;
  u_xlat8 = (x_96 / x_97);
  let x_99 : f32 = u_xlat8;
  u_xlat8 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat8;
  u_xlat8 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_28.x_AlphaToMaskAvailable;
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
  u_xlat8 = (x_120 + -0.0001f);
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
  let x_151 : f32 = vs_TEXCOORD1.y;
  let x_155 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat8 = (x_151 * x_155);
  let x_158 : f32 = x_28.unity_MatrixV[0i].z;
  let x_160 : f32 = vs_TEXCOORD1.x;
  let x_162 : f32 = u_xlat8;
  u_xlat8 = ((x_158 * x_160) + x_162);
  let x_166 : f32 = x_28.unity_MatrixV[2i].z;
  let x_168 : f32 = vs_TEXCOORD1.z;
  let x_170 : f32 = u_xlat8;
  u_xlat8 = ((x_166 * x_168) + x_170);
  let x_172 : f32 = u_xlat8;
  let x_175 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat8 = (x_172 + x_175);
  let x_177 : f32 = u_xlat8;
  let x_181 : f32 = x_28.x_ProjectionParams.y;
  u_xlat8 = (-(x_177) + -(x_181));
  let x_184 : f32 = u_xlat8;
  u_xlat8 = max(x_184, 0.0f);
  let x_186 : f32 = u_xlat8;
  let x_189 : f32 = x_28.unity_FogParams.x;
  u_xlat8 = (x_186 * x_189);
  let x_198 : vec2<f32> = vs_TEXCOORD7;
  let x_200 : f32 = x_28.x_GlobalMipBias.x;
  let x_201 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_198, x_200);
  u_xlat3 = x_201;
  let x_207 : vec2<f32> = vs_TEXCOORD7;
  let x_209 : f32 = x_28.x_GlobalMipBias.x;
  let x_210 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_207, x_209);
  u_xlat4 = vec3<f32>(x_210.x, x_210.y, x_210.z);
  let x_212 : vec4<f32> = u_xlat3;
  let x_216 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_217 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec3<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(x_219, vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : f32 = u_xlat24;
  u_xlat24 = (x_223 + 0.5f);
  let x_225 : f32 = u_xlat24;
  let x_227 : vec3<f32> = u_xlat4;
  let x_228 : vec3<f32> = (vec3<f32>(x_225, x_225, x_225) * x_227);
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : f32 = u_xlat3.w;
  u_xlat24 = max(x_232, 0.0001f);
  let x_234 : vec4<f32> = u_xlat3;
  let x_236 : f32 = u_xlat24;
  let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) / vec3<f32>(x_236, x_236, x_236));
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_244 : vec4<f32> = vs_TEXCOORD6;
  let x_245 : vec2<f32> = vec2<f32>(x_244.x, x_244.y);
  let x_247 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_245.x, x_245.y, x_247);
  let x_259 : vec3<f32> = txVec0;
  let x_261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_259.xy, x_259.z);
  u_xlat24 = x_261;
  let x_269 : f32 = x_266.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_269) + 1.0f);
  let x_273 : f32 = u_xlat24;
  let x_275 : f32 = x_266.x_MainLightShadowParams.x;
  let x_278 : f32 = u_xlat1.x;
  u_xlat24 = ((x_273 * x_275) + x_278);
  let x_282 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_282);
  let x_286 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_286 >= 1.0f);
  let x_288 : bool = u_xlatb1;
  let x_289 : bool = u_xlatb26;
  u_xlatb1 = (x_288 | x_289);
  let x_291 : bool = u_xlatb1;
  let x_292 : f32 = u_xlat24;
  u_xlat24 = select(x_292, 1.0f, x_291);
  let x_294 : vec3<f32> = vs_TEXCOORD1;
  let x_298 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat4 = (x_294 + -(x_298));
  let x_301 : vec3<f32> = u_xlat4;
  let x_302 : vec3<f32> = u_xlat4;
  u_xlat1.x = dot(x_301, x_302);
  let x_306 : f32 = u_xlat1.x;
  let x_308 : f32 = x_266.x_MainLightShadowParams.z;
  let x_311 : f32 = x_266.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_306 * x_308) + x_311);
  let x_315 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_315, 0.0f, 1.0f);
  let x_319 : f32 = u_xlat24;
  u_xlat26 = (-(x_319) + 1.0f);
  let x_323 : f32 = u_xlat1.x;
  let x_324 : f32 = u_xlat26;
  let x_326 : f32 = u_xlat24;
  u_xlat24 = ((x_323 * x_324) + x_326);
  let x_328 : f32 = u_xlat24;
  let x_334 : f32 = x_332.unity_LightData.z;
  u_xlat24 = (x_328 * x_334);
  let x_336 : f32 = u_xlat24;
  let x_339 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_336, x_336, x_336) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec3<f32> = u_xlat2;
  let x_344 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat24 = dot(x_342, vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : f32 = u_xlat24;
  u_xlat24 = clamp(x_347, 0.0f, 1.0f);
  let x_349 : f32 = u_xlat24;
  let x_351 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_349, x_349, x_349) * x_351);
  let x_353 : vec4<f32> = u_xlat1;
  let x_355 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_353.y, x_353.z, x_353.w) * x_355);
  let x_357 : vec4<f32> = u_xlat0;
  let x_359 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_357.x, x_357.x, x_357.x) * x_359);
  let x_362 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_364 : f32 = x_332.unity_LightData.y;
  u_xlat24 = min(x_362, x_364);
  let x_368 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_368));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_381 : u32 = u_xlatu_loop_1;
    let x_382 : u32 = u_xlatu24;
    if ((x_381 < x_382)) {
    } else {
      break;
    }
    let x_385 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_385 >> 2u);
    let x_389 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_389 & 3u));
    let x_392 : u32 = u_xlatu26;
    let x_395 : vec4<f32> = x_332.unity_LightIndices[bitcast<i32>(x_392)];
    let x_405 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_410 : vec4<u32> = indexable[x_405];
    u_xlat26 = dot(x_395, bitcast<vec4<f32>>(x_410));
    let x_414 : f32 = u_xlat26;
    u_xlati26 = i32(x_414);
    let x_417 : vec3<f32> = vs_TEXCOORD1;
    let x_429 : i32 = u_xlati26;
    let x_431 : vec4<f32> = x_428.x_AdditionalLightsPosition[x_429];
    let x_434 : i32 = u_xlati26;
    let x_436 : vec4<f32> = x_428.x_AdditionalLightsPosition[x_434];
    u_xlat6 = ((-(x_417) * vec3<f32>(x_431.w, x_431.w, x_431.w)) + vec3<f32>(x_436.x, x_436.y, x_436.z));
    let x_440 : vec3<f32> = u_xlat6;
    let x_441 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_440, x_441);
    let x_443 : f32 = u_xlat27;
    u_xlat27 = max(x_443, 6.10351562e-05f);
    let x_447 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_447);
    let x_449 : f32 = u_xlat28;
    let x_451 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_449, x_449, x_449) * x_451);
    let x_453 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_453);
    let x_455 : f32 = u_xlat27;
    let x_456 : i32 = u_xlati26;
    let x_458 : f32 = x_428.x_AdditionalLightsAttenuation[x_456].x;
    u_xlat27 = (x_455 * x_458);
    let x_460 : f32 = u_xlat27;
    let x_462 : f32 = u_xlat27;
    u_xlat27 = ((-(x_460) * x_462) + 1.0f);
    let x_465 : f32 = u_xlat27;
    u_xlat27 = max(x_465, 0.0f);
    let x_467 : f32 = u_xlat27;
    let x_468 : f32 = u_xlat27;
    u_xlat27 = (x_467 * x_468);
    let x_470 : f32 = u_xlat27;
    let x_471 : f32 = u_xlat28;
    u_xlat27 = (x_470 * x_471);
    let x_473 : i32 = u_xlati26;
    let x_475 : vec4<f32> = x_428.x_AdditionalLightsSpotDir[x_473];
    let x_477 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_475.x, x_475.y, x_475.z), x_477);
    let x_479 : f32 = u_xlat28;
    let x_480 : i32 = u_xlati26;
    let x_482 : f32 = x_428.x_AdditionalLightsAttenuation[x_480].z;
    let x_484 : i32 = u_xlati26;
    let x_486 : f32 = x_428.x_AdditionalLightsAttenuation[x_484].w;
    u_xlat28 = ((x_479 * x_482) + x_486);
    let x_488 : f32 = u_xlat28;
    u_xlat28 = clamp(x_488, 0.0f, 1.0f);
    let x_490 : f32 = u_xlat28;
    let x_491 : f32 = u_xlat28;
    u_xlat28 = (x_490 * x_491);
    let x_493 : f32 = u_xlat27;
    let x_494 : f32 = u_xlat28;
    u_xlat27 = (x_493 * x_494);
    let x_497 : f32 = u_xlat27;
    let x_499 : i32 = u_xlati26;
    let x_501 : vec4<f32> = x_428.x_AdditionalLightsColor[x_499];
    u_xlat7 = (vec3<f32>(x_497, x_497, x_497) * vec3<f32>(x_501.x, x_501.y, x_501.z));
    let x_504 : vec3<f32> = u_xlat2;
    let x_505 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_504, x_505);
    let x_507 : f32 = u_xlat26;
    u_xlat26 = clamp(x_507, 0.0f, 1.0f);
    let x_509 : f32 = u_xlat26;
    let x_511 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_509, x_509, x_509) * x_511);
    let x_513 : vec4<f32> = u_xlat1;
    let x_515 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_513.y, x_513.z, x_513.w) * x_515);
    let x_517 : vec3<f32> = u_xlat6;
    let x_518 : vec4<f32> = u_xlat0;
    let x_521 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_517 * vec3<f32>(x_518.x, x_518.x, x_518.x)) + x_521);

    continuing {
      let x_523 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_523 + bitcast<u32>(1i));
    }
  }
  let x_525 : vec4<f32> = u_xlat3;
  let x_527 : vec4<f32> = u_xlat1;
  let x_530 : vec3<f32> = u_xlat4;
  let x_531 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_527.y, x_527.z, x_527.w)) + x_530);
  let x_532 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec3<f32> = u_xlat5;
  let x_535 : vec4<f32> = u_xlat1;
  let x_537 : vec3<f32> = (x_534 + vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : f32 = u_xlat8;
  let x_541 : f32 = u_xlat8;
  u_xlat8 = (x_540 * -(x_541));
  let x_544 : f32 = u_xlat8;
  u_xlat8 = exp2(x_544);
  let x_546 : vec4<f32> = u_xlat1;
  let x_549 : vec4<f32> = x_28.unity_FogColor;
  let x_552 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) + -(vec3<f32>(x_549.x, x_549.y, x_549.z)));
  let x_553 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_557 : f32 = u_xlat8;
  let x_559 : vec4<f32> = u_xlat1;
  let x_563 : vec4<f32> = x_28.unity_FogColor;
  let x_565 : vec3<f32> = ((vec3<f32>(x_557, x_557, x_557) * vec3<f32>(x_559.x, x_559.y, x_559.z)) + vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : f32 = x_42.x_Surface;
  u_xlatb8 = (x_569 == 1.0f);
  let x_571 : bool = u_xlatb8;
  let x_572 : bool = u_xlatb16;
  u_xlatb8 = (x_571 | x_572);
  let x_574 : bool = u_xlatb8;
  if (x_574) {
    let x_579 : f32 = u_xlat0.x;
    x_575 = x_579;
  } else {
    x_575 = 1.0f;
  }
  let x_581 : f32 = x_575;
  SV_Target0.w = x_581;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

