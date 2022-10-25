struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_188 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_261 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_365 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_57 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_108 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlatb25 : bool;
  var x_214 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlatu0 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati26 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlat7 : vec3<f32>;
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
    let x_61 : f32 = u_xlat1.w;
    x_57 = x_61;
  } else {
    x_57 = 0.0f;
  }
  let x_64 : f32 = x_57;
  u_xlat0.x = x_64;
  let x_68 : f32 = u_xlat0.w;
  let x_71 : f32 = vs_TEXCOORD7.w;
  let x_74 : f32 = x_51.x_Cutoff;
  u_xlat8 = ((x_68 * x_71) + -(x_74));
  let x_79 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_79);
  let x_83 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_83);
  let x_85 : f32 = u_xlat24;
  let x_87 : f32 = u_xlat16;
  u_xlat16 = (abs(x_85) + abs(x_87));
  let x_90 : f32 = u_xlat16;
  u_xlat16 = max(x_90, 0.0001f);
  let x_93 : f32 = u_xlat8;
  let x_94 : f32 = u_xlat16;
  u_xlat8 = (x_93 / x_94);
  let x_96 : f32 = u_xlat8;
  u_xlat8 = (x_96 + 0.5f);
  let x_99 : f32 = u_xlat8;
  u_xlat8 = clamp(x_99, 0.0f, 1.0f);
  let x_105 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_105 == 0.0f));
  let x_107 : bool = u_xlatb16;
  if (x_107) {
    let x_111 : f32 = u_xlat8;
    x_108 = x_111;
  } else {
    let x_114 : f32 = u_xlat0.x;
    x_108 = x_114;
  }
  let x_115 : f32 = x_108;
  u_xlat0.x = x_115;
  let x_118 : f32 = u_xlat0.x;
  u_xlat0.x = (x_118 + -0.0001f);
  let x_123 : f32 = u_xlat0.x;
  u_xlatb0 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb0;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD3;
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_140);
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_156 : vec2<f32> = vs_TEXCOORD1;
  let x_158 : f32 = x_27.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_156, x_158);
  u_xlat3 = vec3<f32>(x_159.x, x_159.y, x_159.z);
  let x_163 : vec4<f32> = vs_TEXCOORD6;
  let x_164 : vec2<f32> = vec2<f32>(x_163.x, x_163.y);
  let x_167 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_164.x, x_164.y, x_167);
  let x_179 : vec3<f32> = txVec0;
  let x_181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_179.xy, x_179.z);
  u_xlat0.x = x_181;
  let x_191 : f32 = x_188.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_191) + 1.0f);
  let x_195 : f32 = u_xlat0.x;
  let x_197 : f32 = x_188.x_MainLightShadowParams.x;
  let x_199 : f32 = u_xlat24;
  u_xlat0.x = ((x_195 * x_197) + x_199);
  let x_204 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_204);
  let x_208 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (x_208 >= 1.0f);
  let x_210 : bool = u_xlatb24;
  let x_211 : bool = u_xlatb25;
  u_xlatb24 = (x_210 | x_211);
  let x_213 : bool = u_xlatb24;
  if (x_213) {
    x_214 = 1.0f;
  } else {
    let x_219 : f32 = u_xlat0.x;
    x_214 = x_219;
  }
  let x_220 : f32 = x_214;
  u_xlat0.x = x_220;
  let x_224 : vec4<f32> = vs_TEXCOORD2;
  let x_229 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  u_xlat4 = (vec3<f32>(x_224.x, x_224.y, x_224.z) + -(x_229));
  let x_232 : vec3<f32> = u_xlat4;
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat24 = dot(x_232, x_233);
  let x_235 : f32 = u_xlat24;
  let x_237 : f32 = x_188.x_MainLightShadowParams.z;
  let x_240 : f32 = x_188.x_MainLightShadowParams.w;
  u_xlat24 = ((x_235 * x_237) + x_240);
  let x_242 : f32 = u_xlat24;
  u_xlat24 = clamp(x_242, 0.0f, 1.0f);
  let x_246 : f32 = u_xlat0.x;
  u_xlat25 = (-(x_246) + 1.0f);
  let x_249 : f32 = u_xlat24;
  let x_250 : f32 = u_xlat25;
  let x_253 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_249 * x_250) + x_253);
  let x_257 : f32 = u_xlat0.x;
  let x_263 : f32 = x_261.unity_LightData.z;
  u_xlat0.x = (x_257 * x_263);
  let x_266 : vec4<f32> = u_xlat0;
  let x_271 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_266.x, x_266.x, x_266.x) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec3<f32> = u_xlat2;
  let x_277 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_274, vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_282 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_282, 0.0f, 1.0f);
  let x_285 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_285.x, x_285.x, x_285.x) * x_287);
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_289.x, x_289.y, x_289.z) * x_291);
  let x_294 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_297 : f32 = x_261.unity_LightData.y;
  u_xlat0.x = min(x_294, x_297);
  let x_303 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_303));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_316 : u32 = u_xlatu_loop_1;
    let x_317 : u32 = u_xlatu0;
    if ((x_316 < x_317)) {
    } else {
      break;
    }
    let x_320 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_320 >> 2u);
    let x_324 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_324 & 3u));
    let x_328 : u32 = u_xlatu25;
    let x_331 : vec4<f32> = x_261.unity_LightIndices[bitcast<i32>(x_328)];
    let x_341 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_346 : vec4<u32> = indexable[x_341];
    u_xlat25 = dot(x_331, bitcast<vec4<f32>>(x_346));
    let x_350 : f32 = u_xlat25;
    u_xlati25 = i32(x_350);
    let x_353 : vec4<f32> = vs_TEXCOORD2;
    let x_366 : i32 = u_xlati25;
    let x_368 : vec4<f32> = x_365.x_AdditionalLightsPosition[x_366];
    let x_371 : i32 = u_xlati25;
    let x_373 : vec4<f32> = x_365.x_AdditionalLightsPosition[x_371];
    u_xlat6 = ((-(vec3<f32>(x_353.x, x_353.y, x_353.z)) * vec3<f32>(x_368.w, x_368.w, x_368.w)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
    let x_377 : vec3<f32> = u_xlat6;
    let x_378 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_377, x_378);
    let x_380 : f32 = u_xlat26;
    u_xlat26 = max(x_380, 6.10351562e-05f);
    let x_384 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_384);
    let x_386 : f32 = u_xlat27;
    let x_388 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_386, x_386, x_386) * x_388);
    let x_390 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_390);
    let x_392 : f32 = u_xlat26;
    let x_393 : i32 = u_xlati25;
    let x_395 : f32 = x_365.x_AdditionalLightsAttenuation[x_393].x;
    u_xlat26 = (x_392 * x_395);
    let x_397 : f32 = u_xlat26;
    let x_399 : f32 = u_xlat26;
    u_xlat26 = ((-(x_397) * x_399) + 1.0f);
    let x_402 : f32 = u_xlat26;
    u_xlat26 = max(x_402, 0.0f);
    let x_404 : f32 = u_xlat26;
    let x_405 : f32 = u_xlat26;
    u_xlat26 = (x_404 * x_405);
    let x_407 : f32 = u_xlat26;
    let x_408 : f32 = u_xlat27;
    u_xlat26 = (x_407 * x_408);
    let x_410 : i32 = u_xlati25;
    let x_412 : vec4<f32> = x_365.x_AdditionalLightsSpotDir[x_410];
    let x_414 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), x_414);
    let x_416 : f32 = u_xlat27;
    let x_417 : i32 = u_xlati25;
    let x_419 : f32 = x_365.x_AdditionalLightsAttenuation[x_417].z;
    let x_421 : i32 = u_xlati25;
    let x_423 : f32 = x_365.x_AdditionalLightsAttenuation[x_421].w;
    u_xlat27 = ((x_416 * x_419) + x_423);
    let x_425 : f32 = u_xlat27;
    u_xlat27 = clamp(x_425, 0.0f, 1.0f);
    let x_427 : f32 = u_xlat27;
    let x_428 : f32 = u_xlat27;
    u_xlat27 = (x_427 * x_428);
    let x_430 : f32 = u_xlat26;
    let x_431 : f32 = u_xlat27;
    u_xlat26 = (x_430 * x_431);
    let x_434 : f32 = u_xlat26;
    let x_436 : i32 = u_xlati25;
    let x_438 : vec4<f32> = x_365.x_AdditionalLightsColor[x_436];
    u_xlat7 = (vec3<f32>(x_434, x_434, x_434) * vec3<f32>(x_438.x, x_438.y, x_438.z));
    let x_441 : vec3<f32> = u_xlat2;
    let x_442 : vec3<f32> = u_xlat6;
    u_xlat25 = dot(x_441, x_442);
    let x_444 : f32 = u_xlat25;
    u_xlat25 = clamp(x_444, 0.0f, 1.0f);
    let x_446 : f32 = u_xlat25;
    let x_448 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_446, x_446, x_446) * x_448);
    let x_450 : vec3<f32> = u_xlat6;
    let x_451 : vec4<f32> = u_xlat1;
    let x_454 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_450 * vec3<f32>(x_451.x, x_451.y, x_451.z)) + x_454);

    continuing {
      let x_456 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_456 + bitcast<u32>(1i));
    }
  }
  let x_458 : vec3<f32> = u_xlat3;
  let x_459 : vec4<f32> = u_xlat1;
  let x_462 : vec3<f32> = u_xlat4;
  let x_463 : vec3<f32> = ((x_458 * vec3<f32>(x_459.x, x_459.y, x_459.z)) + x_462);
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_468 : vec3<f32> = u_xlat5;
  let x_469 : vec4<f32> = u_xlat1;
  let x_471 : vec3<f32> = (x_468 + vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : bool = u_xlatb16;
  let x_475 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_475, x_474);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

