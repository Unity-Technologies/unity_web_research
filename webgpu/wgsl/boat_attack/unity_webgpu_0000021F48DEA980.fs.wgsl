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
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_205 : UnityPerDraw;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_306 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_469 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_119 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var u_xlatb26 : bool;
  var u_xlat26 : f32;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_52 * x_54);
  let x_61 : f32 = u_xlat1.w;
  let x_67 : f32 = x_64.x_Cutoff;
  u_xlatb0 = (x_61 >= x_67);
  let x_69 : bool = u_xlatb0;
  if (x_69) {
    let x_74 : f32 = u_xlat1.w;
    x_70 = x_74;
  } else {
    x_70 = 0.0f;
  }
  let x_77 : f32 = x_70;
  u_xlat0.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  let x_83 : f32 = vs_TEXCOORD7.w;
  let x_86 : f32 = x_64.x_Cutoff;
  u_xlat8 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat24;
  let x_99 : f32 = u_xlat16;
  u_xlat16 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat16;
  u_xlat16 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat8;
  let x_106 : f32 = u_xlat16;
  u_xlat8 = (x_105 / x_106);
  let x_108 : f32 = u_xlat8;
  u_xlat8 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat8;
  u_xlat8 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb16;
  if (x_118) {
    let x_122 : f32 = u_xlat8;
    x_119 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_119 = x_125;
  }
  let x_126 : f32 = x_119;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_129 + -0.0001f);
  let x_134 : f32 = u_xlat0.x;
  u_xlatb0 = (x_134 < 0.0f);
  let x_136 : bool = u_xlatb0;
  if (((select(0i, 1i, x_136) * -1i) != 0i)) {
    discard;
  }
  let x_146 : vec3<f32> = vs_TEXCOORD3;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_146, x_147);
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_151);
  let x_155 : vec4<f32> = u_xlat0;
  let x_157 : vec3<f32> = vs_TEXCOORD3;
  let x_158 : vec3<f32> = (vec3<f32>(x_155.x, x_155.x, x_155.x) * x_157);
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : f32 = hlslcc_FragCoord.w;
  let x_165 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_162 * x_165);
  let x_169 : f32 = u_xlat0.x;
  let x_173 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_169 / x_173);
  let x_177 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_177) + 1.0f);
  let x_182 : f32 = u_xlat0.x;
  let x_184 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_182 * x_184);
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_188, 0.0f);
  let x_192 : f32 = u_xlat0.x;
  let x_195 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_192 * x_195);
  u_xlat2.w = 1.0f;
  let x_209 : vec4<f32> = x_205.unity_SHAr;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_209, x_210);
  let x_215 : vec4<f32> = x_205.unity_SHAg;
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_215, x_216);
  let x_221 : vec4<f32> = x_205.unity_SHAb;
  let x_222 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_221, x_222);
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_226.y, x_226.z, x_226.z, x_226.x) * vec4<f32>(x_228.x, x_228.y, x_228.z, x_228.z));
  let x_234 : vec4<f32> = x_205.unity_SHBr;
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_234, x_235);
  let x_240 : vec4<f32> = x_205.unity_SHBg;
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_240, x_241);
  let x_246 : vec4<f32> = x_205.unity_SHBb;
  let x_247 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_246, x_247);
  let x_251 : f32 = u_xlat2.y;
  let x_253 : f32 = u_xlat2.y;
  u_xlat24 = (x_251 * x_253);
  let x_256 : f32 = u_xlat2.x;
  let x_258 : f32 = u_xlat2.x;
  let x_260 : f32 = u_xlat24;
  u_xlat24 = ((x_256 * x_258) + -(x_260));
  let x_265 : vec4<f32> = x_205.unity_SHC;
  let x_267 : f32 = u_xlat24;
  let x_270 : vec3<f32> = u_xlat5;
  let x_271 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_267, x_267, x_267)) + x_270);
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : vec3<f32> = u_xlat3;
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_274 + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_278, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_283 : vec4<f32> = vs_TEXCOORD6;
  let x_284 : vec2<f32> = vec2<f32>(x_283.x, x_283.y);
  let x_286 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_284.x, x_284.y, x_286);
  let x_298 : vec3<f32> = txVec0;
  let x_300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_298.xy, x_298.z);
  u_xlat24 = x_300;
  let x_309 : f32 = x_306.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_309) + 1.0f);
  let x_312 : f32 = u_xlat24;
  let x_314 : f32 = x_306.x_MainLightShadowParams.x;
  let x_316 : f32 = u_xlat25;
  u_xlat24 = ((x_312 * x_314) + x_316);
  let x_320 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (0.0f >= x_320);
  let x_324 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_324 >= 1.0f);
  let x_326 : bool = u_xlatb25;
  let x_327 : bool = u_xlatb26;
  u_xlatb25 = (x_326 | x_327);
  let x_329 : bool = u_xlatb25;
  let x_330 : f32 = u_xlat24;
  u_xlat24 = select(x_330, 1.0f, x_329);
  let x_333 : vec4<f32> = vs_TEXCOORD2;
  let x_338 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_340 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + -(x_338));
  let x_341 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat4;
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_343.x, x_343.y, x_343.z), vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : f32 = u_xlat25;
  let x_350 : f32 = x_306.x_MainLightShadowParams.z;
  let x_353 : f32 = x_306.x_MainLightShadowParams.w;
  u_xlat25 = ((x_348 * x_350) + x_353);
  let x_355 : f32 = u_xlat25;
  u_xlat25 = clamp(x_355, 0.0f, 1.0f);
  let x_358 : f32 = u_xlat24;
  u_xlat26 = (-(x_358) + 1.0f);
  let x_361 : f32 = u_xlat25;
  let x_362 : f32 = u_xlat26;
  let x_364 : f32 = u_xlat24;
  u_xlat24 = ((x_361 * x_362) + x_364);
  let x_366 : f32 = u_xlat24;
  let x_368 : f32 = x_205.unity_LightData.z;
  u_xlat24 = (x_366 * x_368);
  let x_370 : f32 = u_xlat24;
  let x_374 : vec4<f32> = x_43.x_MainLightColor;
  let x_376 : vec3<f32> = (vec3<f32>(x_370, x_370, x_370) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat2;
  let x_383 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_379.x, x_379.y, x_379.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : f32 = u_xlat24;
  u_xlat24 = clamp(x_386, 0.0f, 1.0f);
  let x_388 : f32 = u_xlat24;
  let x_390 : vec4<f32> = u_xlat4;
  let x_392 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat1;
  let x_397 : vec4<f32> = u_xlat4;
  let x_399 : vec3<f32> = (vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_405 : f32 = x_205.unity_LightData.y;
  u_xlat24 = min(x_403, x_405);
  let x_409 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_409));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_421 : u32 = u_xlatu_loop_1;
    let x_422 : u32 = u_xlatu24;
    if ((x_421 < x_422)) {
    } else {
      break;
    }
    let x_425 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_425 >> 2u);
    let x_429 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_429 & 3u));
    let x_432 : u32 = u_xlatu26;
    let x_435 : vec4<f32> = x_205.unity_LightIndices[bitcast<i32>(x_432)];
    let x_445 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_450 : vec4<u32> = indexable[x_445];
    u_xlat26 = dot(x_435, bitcast<vec4<f32>>(x_450));
    let x_454 : f32 = u_xlat26;
    u_xlati26 = i32(x_454);
    let x_457 : vec4<f32> = vs_TEXCOORD2;
    let x_470 : i32 = u_xlati26;
    let x_472 : vec4<f32> = x_469.x_AdditionalLightsPosition[x_470];
    let x_475 : i32 = u_xlati26;
    let x_477 : vec4<f32> = x_469.x_AdditionalLightsPosition[x_475];
    u_xlat6 = ((-(vec3<f32>(x_457.x, x_457.y, x_457.z)) * vec3<f32>(x_472.w, x_472.w, x_472.w)) + vec3<f32>(x_477.x, x_477.y, x_477.z));
    let x_481 : vec3<f32> = u_xlat6;
    let x_482 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_481, x_482);
    let x_484 : f32 = u_xlat27;
    u_xlat27 = max(x_484, 6.10351562e-05f);
    let x_488 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_488);
    let x_490 : f32 = u_xlat28;
    let x_492 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_490, x_490, x_490) * x_492);
    let x_494 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_494);
    let x_496 : f32 = u_xlat27;
    let x_497 : i32 = u_xlati26;
    let x_499 : f32 = x_469.x_AdditionalLightsAttenuation[x_497].x;
    u_xlat27 = (x_496 * x_499);
    let x_501 : f32 = u_xlat27;
    let x_503 : f32 = u_xlat27;
    u_xlat27 = ((-(x_501) * x_503) + 1.0f);
    let x_506 : f32 = u_xlat27;
    u_xlat27 = max(x_506, 0.0f);
    let x_508 : f32 = u_xlat27;
    let x_509 : f32 = u_xlat27;
    u_xlat27 = (x_508 * x_509);
    let x_511 : f32 = u_xlat27;
    let x_512 : f32 = u_xlat28;
    u_xlat27 = (x_511 * x_512);
    let x_514 : i32 = u_xlati26;
    let x_516 : vec4<f32> = x_469.x_AdditionalLightsSpotDir[x_514];
    let x_518 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_516.x, x_516.y, x_516.z), x_518);
    let x_520 : f32 = u_xlat28;
    let x_521 : i32 = u_xlati26;
    let x_523 : f32 = x_469.x_AdditionalLightsAttenuation[x_521].z;
    let x_525 : i32 = u_xlati26;
    let x_527 : f32 = x_469.x_AdditionalLightsAttenuation[x_525].w;
    u_xlat28 = ((x_520 * x_523) + x_527);
    let x_529 : f32 = u_xlat28;
    u_xlat28 = clamp(x_529, 0.0f, 1.0f);
    let x_531 : f32 = u_xlat28;
    let x_532 : f32 = u_xlat28;
    u_xlat28 = (x_531 * x_532);
    let x_534 : f32 = u_xlat27;
    let x_535 : f32 = u_xlat28;
    u_xlat27 = (x_534 * x_535);
    let x_538 : f32 = u_xlat27;
    let x_540 : i32 = u_xlati26;
    let x_542 : vec4<f32> = x_469.x_AdditionalLightsColor[x_540];
    u_xlat7 = (vec3<f32>(x_538, x_538, x_538) * vec3<f32>(x_542.x, x_542.y, x_542.z));
    let x_545 : vec4<f32> = u_xlat2;
    let x_547 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_545.x, x_545.y, x_545.z), x_547);
    let x_549 : f32 = u_xlat26;
    u_xlat26 = clamp(x_549, 0.0f, 1.0f);
    let x_551 : f32 = u_xlat26;
    let x_553 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_551, x_551, x_551) * x_553);
    let x_555 : vec3<f32> = u_xlat6;
    let x_556 : vec4<f32> = u_xlat1;
    let x_559 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_555 * vec3<f32>(x_556.x, x_556.y, x_556.z)) + x_559);

    continuing {
      let x_561 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_561 + bitcast<u32>(1i));
    }
  }
  let x_563 : vec3<f32> = u_xlat3;
  let x_564 : vec4<f32> = u_xlat1;
  let x_567 : vec4<f32> = u_xlat4;
  let x_569 : vec3<f32> = ((x_563 * vec3<f32>(x_564.x, x_564.y, x_564.z)) + vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec3<f32> = u_xlat5;
  let x_573 : vec4<f32> = u_xlat1;
  let x_575 : vec3<f32> = (x_572 + vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_579 : f32 = u_xlat0.x;
  let x_581 : f32 = u_xlat0.x;
  u_xlat0.x = (x_579 * -(x_581));
  let x_586 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_586);
  let x_589 : vec4<f32> = u_xlat1;
  let x_592 : vec4<f32> = x_43.unity_FogColor;
  let x_595 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) + -(vec3<f32>(x_592.x, x_592.y, x_592.z)));
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_600 : vec4<f32> = u_xlat0;
  let x_602 : vec4<f32> = u_xlat1;
  let x_606 : vec4<f32> = x_43.unity_FogColor;
  let x_608 : vec3<f32> = ((vec3<f32>(x_600.x, x_600.x, x_600.x) * vec3<f32>(x_602.x, x_602.y, x_602.z)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : bool = u_xlatb16;
  let x_612 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_612, x_611);
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

