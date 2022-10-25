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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_158 : UnityPerDraw;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_263 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_445 : AdditionalLights;

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
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlatb25 : bool;
  var x_289 : f32;
  var u_xlat25 : f32;
  var u_xlatu0 : u32;
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
  let x_144 : vec4<f32> = u_xlat0;
  let x_146 : vec3<f32> = vs_TEXCOORD3;
  let x_147 : vec3<f32> = (vec3<f32>(x_144.x, x_144.x, x_144.x) * x_146);
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  u_xlat2.w = 1.0f;
  let x_162 : vec4<f32> = x_158.unity_SHAr;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_162, x_163);
  let x_168 : vec4<f32> = x_158.unity_SHAg;
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_168, x_169);
  let x_175 : vec4<f32> = x_158.unity_SHAb;
  let x_176 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_175, x_176);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_180.y, x_180.z, x_180.z, x_180.x) * vec4<f32>(x_182.x, x_182.y, x_182.z, x_182.z));
  let x_188 : vec4<f32> = x_158.unity_SHBr;
  let x_189 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_188, x_189);
  let x_194 : vec4<f32> = x_158.unity_SHBg;
  let x_195 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_194, x_195);
  let x_200 : vec4<f32> = x_158.unity_SHBb;
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_200, x_201);
  let x_205 : f32 = u_xlat2.y;
  let x_207 : f32 = u_xlat2.y;
  u_xlat0.x = (x_205 * x_207);
  let x_211 : f32 = u_xlat2.x;
  let x_213 : f32 = u_xlat2.x;
  let x_216 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_211 * x_213) + -(x_216));
  let x_222 : vec4<f32> = x_158.unity_SHC;
  let x_224 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = u_xlat5;
  let x_228 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.x, x_224.x, x_224.x)) + x_227);
  let x_229 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec3<f32> = u_xlat3;
  let x_232 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_231 + vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_235, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_240 : vec4<f32> = vs_TEXCOORD6;
  let x_241 : vec2<f32> = vec2<f32>(x_240.x, x_240.y);
  let x_243 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_241.x, x_241.y, x_243);
  let x_255 : vec3<f32> = txVec0;
  let x_257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_255.xy, x_255.z);
  u_xlat0.x = x_257;
  let x_266 : f32 = x_263.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_266) + 1.0f);
  let x_270 : f32 = u_xlat0.x;
  let x_272 : f32 = x_263.x_MainLightShadowParams.x;
  let x_274 : f32 = u_xlat24;
  u_xlat0.x = ((x_270 * x_272) + x_274);
  let x_279 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_279);
  let x_283 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (x_283 >= 1.0f);
  let x_285 : bool = u_xlatb24;
  let x_286 : bool = u_xlatb25;
  u_xlatb24 = (x_285 | x_286);
  let x_288 : bool = u_xlatb24;
  if (x_288) {
    x_289 = 1.0f;
  } else {
    let x_294 : f32 = u_xlat0.x;
    x_289 = x_294;
  }
  let x_295 : f32 = x_289;
  u_xlat0.x = x_295;
  let x_298 : vec4<f32> = vs_TEXCOORD2;
  let x_303 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_305 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) + -(x_303));
  let x_306 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_308.x, x_308.y, x_308.z), vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : f32 = u_xlat24;
  let x_315 : f32 = x_263.x_MainLightShadowParams.z;
  let x_318 : f32 = x_263.x_MainLightShadowParams.w;
  u_xlat24 = ((x_313 * x_315) + x_318);
  let x_320 : f32 = u_xlat24;
  u_xlat24 = clamp(x_320, 0.0f, 1.0f);
  let x_324 : f32 = u_xlat0.x;
  u_xlat25 = (-(x_324) + 1.0f);
  let x_327 : f32 = u_xlat24;
  let x_328 : f32 = u_xlat25;
  let x_331 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_327 * x_328) + x_331);
  let x_335 : f32 = u_xlat0.x;
  let x_337 : f32 = x_158.unity_LightData.z;
  u_xlat0.x = (x_335 * x_337);
  let x_340 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = x_27.x_MainLightColor;
  let x_346 : vec3<f32> = (vec3<f32>(x_340.x, x_340.x, x_340.x) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat2;
  let x_353 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_349.x, x_349.y, x_349.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_358 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_358, 0.0f, 1.0f);
  let x_361 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = u_xlat4;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.x, x_361.x) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat1;
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec3<f32> = (vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_378 : f32 = x_158.unity_LightData.y;
  u_xlat0.x = min(x_376, x_378);
  let x_384 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_384));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_396 : u32 = u_xlatu_loop_1;
    let x_397 : u32 = u_xlatu0;
    if ((x_396 < x_397)) {
    } else {
      break;
    }
    let x_400 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_400 >> 2u);
    let x_404 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_404 & 3u));
    let x_408 : u32 = u_xlatu25;
    let x_411 : vec4<f32> = x_158.unity_LightIndices[bitcast<i32>(x_408)];
    let x_421 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_426 : vec4<u32> = indexable[x_421];
    u_xlat25 = dot(x_411, bitcast<vec4<f32>>(x_426));
    let x_430 : f32 = u_xlat25;
    u_xlati25 = i32(x_430);
    let x_433 : vec4<f32> = vs_TEXCOORD2;
    let x_446 : i32 = u_xlati25;
    let x_448 : vec4<f32> = x_445.x_AdditionalLightsPosition[x_446];
    let x_451 : i32 = u_xlati25;
    let x_453 : vec4<f32> = x_445.x_AdditionalLightsPosition[x_451];
    u_xlat6 = ((-(vec3<f32>(x_433.x, x_433.y, x_433.z)) * vec3<f32>(x_448.w, x_448.w, x_448.w)) + vec3<f32>(x_453.x, x_453.y, x_453.z));
    let x_457 : vec3<f32> = u_xlat6;
    let x_458 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_457, x_458);
    let x_460 : f32 = u_xlat26;
    u_xlat26 = max(x_460, 6.10351562e-05f);
    let x_464 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_464);
    let x_466 : f32 = u_xlat27;
    let x_468 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_466, x_466, x_466) * x_468);
    let x_470 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_470);
    let x_472 : f32 = u_xlat26;
    let x_473 : i32 = u_xlati25;
    let x_475 : f32 = x_445.x_AdditionalLightsAttenuation[x_473].x;
    u_xlat26 = (x_472 * x_475);
    let x_477 : f32 = u_xlat26;
    let x_479 : f32 = u_xlat26;
    u_xlat26 = ((-(x_477) * x_479) + 1.0f);
    let x_482 : f32 = u_xlat26;
    u_xlat26 = max(x_482, 0.0f);
    let x_484 : f32 = u_xlat26;
    let x_485 : f32 = u_xlat26;
    u_xlat26 = (x_484 * x_485);
    let x_487 : f32 = u_xlat26;
    let x_488 : f32 = u_xlat27;
    u_xlat26 = (x_487 * x_488);
    let x_490 : i32 = u_xlati25;
    let x_492 : vec4<f32> = x_445.x_AdditionalLightsSpotDir[x_490];
    let x_494 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_492.x, x_492.y, x_492.z), x_494);
    let x_496 : f32 = u_xlat27;
    let x_497 : i32 = u_xlati25;
    let x_499 : f32 = x_445.x_AdditionalLightsAttenuation[x_497].z;
    let x_501 : i32 = u_xlati25;
    let x_503 : f32 = x_445.x_AdditionalLightsAttenuation[x_501].w;
    u_xlat27 = ((x_496 * x_499) + x_503);
    let x_505 : f32 = u_xlat27;
    u_xlat27 = clamp(x_505, 0.0f, 1.0f);
    let x_507 : f32 = u_xlat27;
    let x_508 : f32 = u_xlat27;
    u_xlat27 = (x_507 * x_508);
    let x_510 : f32 = u_xlat26;
    let x_511 : f32 = u_xlat27;
    u_xlat26 = (x_510 * x_511);
    let x_514 : f32 = u_xlat26;
    let x_516 : i32 = u_xlati25;
    let x_518 : vec4<f32> = x_445.x_AdditionalLightsColor[x_516];
    u_xlat7 = (vec3<f32>(x_514, x_514, x_514) * vec3<f32>(x_518.x, x_518.y, x_518.z));
    let x_521 : vec4<f32> = u_xlat2;
    let x_523 : vec3<f32> = u_xlat6;
    u_xlat25 = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), x_523);
    let x_525 : f32 = u_xlat25;
    u_xlat25 = clamp(x_525, 0.0f, 1.0f);
    let x_527 : f32 = u_xlat25;
    let x_529 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_527, x_527, x_527) * x_529);
    let x_531 : vec3<f32> = u_xlat6;
    let x_532 : vec4<f32> = u_xlat1;
    let x_535 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_531 * vec3<f32>(x_532.x, x_532.y, x_532.z)) + x_535);

    continuing {
      let x_537 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_537 + bitcast<u32>(1i));
    }
  }
  let x_539 : vec3<f32> = u_xlat3;
  let x_540 : vec4<f32> = u_xlat1;
  let x_543 : vec4<f32> = u_xlat4;
  let x_545 : vec3<f32> = ((x_539 * vec3<f32>(x_540.x, x_540.y, x_540.z)) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_550 : vec3<f32> = u_xlat5;
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec3<f32> = (x_550 + vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : bool = u_xlatb16;
  let x_557 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_557, x_556);
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

