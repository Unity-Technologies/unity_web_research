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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_230 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_302 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_406 : AdditionalLights;

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
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlatb25 : bool;
  var x_256 : f32;
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
  let x_159 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_156, x_158);
  u_xlat3 = x_159;
  let x_165 : vec2<f32> = vs_TEXCOORD1;
  let x_167 : f32 = x_27.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_165, x_167);
  u_xlat4 = vec3<f32>(x_168.x, x_168.y, x_168.z);
  let x_170 : vec4<f32> = u_xlat3;
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec3<f32> = u_xlat2;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_177, vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_183 : f32 = u_xlat0.x;
  u_xlat0.x = (x_183 + 0.5f);
  let x_186 : vec4<f32> = u_xlat0;
  let x_188 : vec3<f32> = u_xlat4;
  let x_189 : vec3<f32> = (vec3<f32>(x_186.x, x_186.x, x_186.x) * x_188);
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_193 : f32 = u_xlat3.w;
  u_xlat0.x = max(x_193, 0.0001f);
  let x_196 : vec4<f32> = u_xlat3;
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) / vec3<f32>(x_198.x, x_198.x, x_198.x));
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_205 : vec4<f32> = vs_TEXCOORD6;
  let x_206 : vec2<f32> = vec2<f32>(x_205.x, x_205.y);
  let x_209 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_206.x, x_206.y, x_209);
  let x_221 : vec3<f32> = txVec0;
  let x_223 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_221.xy, x_221.z);
  u_xlat0.x = x_223;
  let x_233 : f32 = x_230.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_233) + 1.0f);
  let x_237 : f32 = u_xlat0.x;
  let x_239 : f32 = x_230.x_MainLightShadowParams.x;
  let x_241 : f32 = u_xlat24;
  u_xlat0.x = ((x_237 * x_239) + x_241);
  let x_246 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_246);
  let x_250 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (x_250 >= 1.0f);
  let x_252 : bool = u_xlatb24;
  let x_253 : bool = u_xlatb25;
  u_xlatb24 = (x_252 | x_253);
  let x_255 : bool = u_xlatb24;
  if (x_255) {
    x_256 = 1.0f;
  } else {
    let x_261 : f32 = u_xlat0.x;
    x_256 = x_261;
  }
  let x_262 : f32 = x_256;
  u_xlat0.x = x_262;
  let x_265 : vec4<f32> = vs_TEXCOORD2;
  let x_270 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  u_xlat4 = (vec3<f32>(x_265.x, x_265.y, x_265.z) + -(x_270));
  let x_273 : vec3<f32> = u_xlat4;
  let x_274 : vec3<f32> = u_xlat4;
  u_xlat24 = dot(x_273, x_274);
  let x_276 : f32 = u_xlat24;
  let x_278 : f32 = x_230.x_MainLightShadowParams.z;
  let x_281 : f32 = x_230.x_MainLightShadowParams.w;
  u_xlat24 = ((x_276 * x_278) + x_281);
  let x_283 : f32 = u_xlat24;
  u_xlat24 = clamp(x_283, 0.0f, 1.0f);
  let x_287 : f32 = u_xlat0.x;
  u_xlat25 = (-(x_287) + 1.0f);
  let x_290 : f32 = u_xlat24;
  let x_291 : f32 = u_xlat25;
  let x_294 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_290 * x_291) + x_294);
  let x_298 : f32 = u_xlat0.x;
  let x_304 : f32 = x_302.unity_LightData.z;
  u_xlat0.x = (x_298 * x_304);
  let x_307 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_307.x, x_307.x, x_307.x) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec3<f32> = u_xlat2;
  let x_318 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_315, vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_323 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_323, 0.0f, 1.0f);
  let x_326 : vec4<f32> = u_xlat0;
  let x_328 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_326.x, x_326.x, x_326.x) * x_328);
  let x_330 : vec4<f32> = u_xlat1;
  let x_332 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_330.x, x_330.y, x_330.z) * x_332);
  let x_335 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_338 : f32 = x_302.unity_LightData.y;
  u_xlat0.x = min(x_335, x_338);
  let x_344 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_344));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_357 : u32 = u_xlatu_loop_1;
    let x_358 : u32 = u_xlatu0;
    if ((x_357 < x_358)) {
    } else {
      break;
    }
    let x_361 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_361 >> 2u);
    let x_365 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_365 & 3u));
    let x_369 : u32 = u_xlatu25;
    let x_372 : vec4<f32> = x_302.unity_LightIndices[bitcast<i32>(x_369)];
    let x_382 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_387 : vec4<u32> = indexable[x_382];
    u_xlat25 = dot(x_372, bitcast<vec4<f32>>(x_387));
    let x_391 : f32 = u_xlat25;
    u_xlati25 = i32(x_391);
    let x_394 : vec4<f32> = vs_TEXCOORD2;
    let x_407 : i32 = u_xlati25;
    let x_409 : vec4<f32> = x_406.x_AdditionalLightsPosition[x_407];
    let x_412 : i32 = u_xlati25;
    let x_414 : vec4<f32> = x_406.x_AdditionalLightsPosition[x_412];
    u_xlat6 = ((-(vec3<f32>(x_394.x, x_394.y, x_394.z)) * vec3<f32>(x_409.w, x_409.w, x_409.w)) + vec3<f32>(x_414.x, x_414.y, x_414.z));
    let x_418 : vec3<f32> = u_xlat6;
    let x_419 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_418, x_419);
    let x_421 : f32 = u_xlat26;
    u_xlat26 = max(x_421, 6.10351562e-05f);
    let x_425 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_425);
    let x_427 : f32 = u_xlat27;
    let x_429 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_427, x_427, x_427) * x_429);
    let x_431 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_431);
    let x_433 : f32 = u_xlat26;
    let x_434 : i32 = u_xlati25;
    let x_436 : f32 = x_406.x_AdditionalLightsAttenuation[x_434].x;
    u_xlat26 = (x_433 * x_436);
    let x_438 : f32 = u_xlat26;
    let x_440 : f32 = u_xlat26;
    u_xlat26 = ((-(x_438) * x_440) + 1.0f);
    let x_443 : f32 = u_xlat26;
    u_xlat26 = max(x_443, 0.0f);
    let x_445 : f32 = u_xlat26;
    let x_446 : f32 = u_xlat26;
    u_xlat26 = (x_445 * x_446);
    let x_448 : f32 = u_xlat26;
    let x_449 : f32 = u_xlat27;
    u_xlat26 = (x_448 * x_449);
    let x_451 : i32 = u_xlati25;
    let x_453 : vec4<f32> = x_406.x_AdditionalLightsSpotDir[x_451];
    let x_455 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_453.x, x_453.y, x_453.z), x_455);
    let x_457 : f32 = u_xlat27;
    let x_458 : i32 = u_xlati25;
    let x_460 : f32 = x_406.x_AdditionalLightsAttenuation[x_458].z;
    let x_462 : i32 = u_xlati25;
    let x_464 : f32 = x_406.x_AdditionalLightsAttenuation[x_462].w;
    u_xlat27 = ((x_457 * x_460) + x_464);
    let x_466 : f32 = u_xlat27;
    u_xlat27 = clamp(x_466, 0.0f, 1.0f);
    let x_468 : f32 = u_xlat27;
    let x_469 : f32 = u_xlat27;
    u_xlat27 = (x_468 * x_469);
    let x_471 : f32 = u_xlat26;
    let x_472 : f32 = u_xlat27;
    u_xlat26 = (x_471 * x_472);
    let x_475 : f32 = u_xlat26;
    let x_477 : i32 = u_xlati25;
    let x_479 : vec4<f32> = x_406.x_AdditionalLightsColor[x_477];
    u_xlat7 = (vec3<f32>(x_475, x_475, x_475) * vec3<f32>(x_479.x, x_479.y, x_479.z));
    let x_482 : vec3<f32> = u_xlat2;
    let x_483 : vec3<f32> = u_xlat6;
    u_xlat25 = dot(x_482, x_483);
    let x_485 : f32 = u_xlat25;
    u_xlat25 = clamp(x_485, 0.0f, 1.0f);
    let x_487 : f32 = u_xlat25;
    let x_489 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_487, x_487, x_487) * x_489);
    let x_491 : vec3<f32> = u_xlat6;
    let x_492 : vec4<f32> = u_xlat1;
    let x_495 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_491 * vec3<f32>(x_492.x, x_492.y, x_492.z)) + x_495);

    continuing {
      let x_497 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_497 + bitcast<u32>(1i));
    }
  }
  let x_499 : vec4<f32> = u_xlat3;
  let x_501 : vec4<f32> = u_xlat1;
  let x_504 : vec3<f32> = u_xlat4;
  let x_505 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_501.x, x_501.y, x_501.z)) + x_504);
  let x_506 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_510 : vec3<f32> = u_xlat5;
  let x_511 : vec4<f32> = u_xlat1;
  let x_513 : vec3<f32> = (x_510 + vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : bool = u_xlatb16;
  let x_517 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_517, x_516);
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

