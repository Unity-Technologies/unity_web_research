struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_303 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_375 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_474 : AdditionalLights;

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
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlatb27 : bool;
  var u_xlat27 : f32;
  var u_xlatu0 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
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
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_152);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_168 : vec2<f32> = vs_TEXCOORD1;
  let x_170 : f32 = x_43.x_GlobalMipBias.x;
  let x_171 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_168, x_170);
  u_xlat3 = x_171;
  let x_177 : vec2<f32> = vs_TEXCOORD1;
  let x_179 : f32 = x_43.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_177, x_179);
  u_xlat4 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  let x_182 : vec4<f32> = u_xlat3;
  let x_186 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_187 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : vec3<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_189, vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_195 : f32 = u_xlat0.x;
  u_xlat0.x = (x_195 + 0.5f);
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec3<f32> = u_xlat4;
  let x_201 : vec3<f32> = (vec3<f32>(x_198.x, x_198.x, x_198.x) * x_200);
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_205 : f32 = u_xlat3.w;
  u_xlat0.x = max(x_205, 0.0001f);
  let x_208 : vec4<f32> = u_xlat3;
  let x_210 : vec4<f32> = u_xlat0;
  let x_212 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) / vec3<f32>(x_210.x, x_210.x, x_210.x));
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_218 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_219 : vec2<f32> = vec2<f32>(x_218.x, x_218.y);
  let x_223 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_219.x, x_219.y));
  let x_224 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_223.x, x_224.y, x_224.z, x_223.y);
  let x_226 : vec4<f32> = u_xlat0;
  let x_228 : vec4<f32> = hlslcc_FragCoord;
  let x_230 : vec2<f32> = (vec2<f32>(x_226.x, x_226.w) * vec2<f32>(x_228.x, x_228.y));
  let x_231 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_230.x, x_230.y, x_231.z);
  let x_235 : f32 = u_xlat4.y;
  let x_238 : f32 = x_43.x_ScaleBiasRt.x;
  let x_241 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_235 * x_238) + x_241);
  let x_245 : f32 = u_xlat0.x;
  u_xlat4.z = (-(x_245) + 1.0f);
  let x_255 : vec3<f32> = u_xlat4;
  let x_258 : f32 = x_43.x_GlobalMipBias.x;
  let x_259 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_255.x, x_255.z), x_258);
  u_xlat0.x = x_259.x;
  let x_263 : f32 = u_xlat0.x;
  u_xlat24 = (x_263 + -1.0f);
  let x_268 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_269 : f32 = u_xlat24;
  u_xlat24 = ((x_268 * x_269) + 1.0f);
  let x_273 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_273, 1.0f);
  let x_278 : vec4<f32> = vs_TEXCOORD6;
  let x_279 : vec2<f32> = vec2<f32>(x_278.x, x_278.y);
  let x_281 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_279.x, x_279.y, x_281);
  let x_294 : vec3<f32> = txVec0;
  let x_296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_294.xy, x_294.z);
  u_xlat25 = x_296;
  let x_305 : f32 = x_303.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_305) + 1.0f);
  let x_308 : f32 = u_xlat25;
  let x_310 : f32 = x_303.x_MainLightShadowParams.x;
  let x_312 : f32 = u_xlat26;
  u_xlat25 = ((x_308 * x_310) + x_312);
  let x_316 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_316);
  let x_320 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (x_320 >= 1.0f);
  let x_322 : bool = u_xlatb26;
  let x_323 : bool = u_xlatb27;
  u_xlatb26 = (x_322 | x_323);
  let x_325 : bool = u_xlatb26;
  let x_326 : f32 = u_xlat25;
  u_xlat25 = select(x_326, 1.0f, x_325);
  let x_329 : vec4<f32> = vs_TEXCOORD2;
  let x_334 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (vec3<f32>(x_329.x, x_329.y, x_329.z) + -(x_334));
  let x_337 : vec3<f32> = u_xlat4;
  let x_338 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_337, x_338);
  let x_340 : f32 = u_xlat26;
  let x_342 : f32 = x_303.x_MainLightShadowParams.z;
  let x_345 : f32 = x_303.x_MainLightShadowParams.w;
  u_xlat26 = ((x_340 * x_342) + x_345);
  let x_347 : f32 = u_xlat26;
  u_xlat26 = clamp(x_347, 0.0f, 1.0f);
  let x_350 : f32 = u_xlat25;
  u_xlat27 = (-(x_350) + 1.0f);
  let x_353 : f32 = u_xlat26;
  let x_354 : f32 = u_xlat27;
  let x_356 : f32 = u_xlat25;
  u_xlat25 = ((x_353 * x_354) + x_356);
  let x_358 : f32 = u_xlat24;
  let x_361 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_358, x_358, x_358) * vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = u_xlat3;
  let x_368 : vec3<f32> = (vec3<f32>(x_364.x, x_364.x, x_364.x) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : f32 = u_xlat25;
  let x_377 : f32 = x_375.unity_LightData.z;
  u_xlat0.x = (x_371 * x_377);
  let x_380 : vec4<f32> = u_xlat0;
  let x_382 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_380.x, x_380.x, x_380.x) * x_382);
  let x_384 : vec3<f32> = u_xlat2;
  let x_387 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_384, vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_392 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_392, 0.0f, 1.0f);
  let x_395 : vec4<f32> = u_xlat0;
  let x_397 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_395.x, x_395.x, x_395.x) * x_397);
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_399.x, x_399.y, x_399.z) * x_401);
  let x_405 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_407 : f32 = x_375.unity_LightData.y;
  u_xlat0.x = min(x_405, x_407);
  let x_413 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_413));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_426 : u32 = u_xlatu_loop_1;
    let x_427 : u32 = u_xlatu0;
    if ((x_426 < x_427)) {
    } else {
      break;
    }
    let x_430 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_430 >> 2u);
    let x_434 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_434 & 3u));
    let x_437 : u32 = u_xlatu26;
    let x_440 : vec4<f32> = x_375.unity_LightIndices[bitcast<i32>(x_437)];
    let x_450 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_455 : vec4<u32> = indexable[x_450];
    u_xlat26 = dot(x_440, bitcast<vec4<f32>>(x_455));
    let x_459 : f32 = u_xlat26;
    u_xlati26 = i32(x_459);
    let x_462 : vec4<f32> = vs_TEXCOORD2;
    let x_475 : i32 = u_xlati26;
    let x_477 : vec4<f32> = x_474.x_AdditionalLightsPosition[x_475];
    let x_480 : i32 = u_xlati26;
    let x_482 : vec4<f32> = x_474.x_AdditionalLightsPosition[x_480];
    u_xlat6 = ((-(vec3<f32>(x_462.x, x_462.y, x_462.z)) * vec3<f32>(x_477.w, x_477.w, x_477.w)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
    let x_485 : vec3<f32> = u_xlat6;
    let x_486 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_485, x_486);
    let x_488 : f32 = u_xlat27;
    u_xlat27 = max(x_488, 6.10351562e-05f);
    let x_492 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_492);
    let x_494 : f32 = u_xlat28;
    let x_496 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_494, x_494, x_494) * x_496);
    let x_498 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_498);
    let x_500 : f32 = u_xlat27;
    let x_501 : i32 = u_xlati26;
    let x_503 : f32 = x_474.x_AdditionalLightsAttenuation[x_501].x;
    u_xlat27 = (x_500 * x_503);
    let x_505 : f32 = u_xlat27;
    let x_507 : f32 = u_xlat27;
    u_xlat27 = ((-(x_505) * x_507) + 1.0f);
    let x_510 : f32 = u_xlat27;
    u_xlat27 = max(x_510, 0.0f);
    let x_512 : f32 = u_xlat27;
    let x_513 : f32 = u_xlat27;
    u_xlat27 = (x_512 * x_513);
    let x_515 : f32 = u_xlat27;
    let x_516 : f32 = u_xlat28;
    u_xlat27 = (x_515 * x_516);
    let x_518 : i32 = u_xlati26;
    let x_520 : vec4<f32> = x_474.x_AdditionalLightsSpotDir[x_518];
    let x_522 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_520.x, x_520.y, x_520.z), x_522);
    let x_524 : f32 = u_xlat28;
    let x_525 : i32 = u_xlati26;
    let x_527 : f32 = x_474.x_AdditionalLightsAttenuation[x_525].z;
    let x_529 : i32 = u_xlati26;
    let x_531 : f32 = x_474.x_AdditionalLightsAttenuation[x_529].w;
    u_xlat28 = ((x_524 * x_527) + x_531);
    let x_533 : f32 = u_xlat28;
    u_xlat28 = clamp(x_533, 0.0f, 1.0f);
    let x_535 : f32 = u_xlat28;
    let x_536 : f32 = u_xlat28;
    u_xlat28 = (x_535 * x_536);
    let x_538 : f32 = u_xlat27;
    let x_539 : f32 = u_xlat28;
    u_xlat27 = (x_538 * x_539);
    let x_542 : f32 = u_xlat24;
    let x_544 : i32 = u_xlati26;
    let x_546 : vec4<f32> = x_474.x_AdditionalLightsColor[x_544];
    u_xlat7 = (vec3<f32>(x_542, x_542, x_542) * vec3<f32>(x_546.x, x_546.y, x_546.z));
    let x_549 : f32 = u_xlat27;
    let x_551 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_549, x_549, x_549) * x_551);
    let x_553 : vec3<f32> = u_xlat2;
    let x_554 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_553, x_554);
    let x_556 : f32 = u_xlat26;
    u_xlat26 = clamp(x_556, 0.0f, 1.0f);
    let x_558 : f32 = u_xlat26;
    let x_560 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_558, x_558, x_558) * x_560);
    let x_562 : vec3<f32> = u_xlat6;
    let x_563 : vec4<f32> = u_xlat1;
    let x_566 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_562 * vec3<f32>(x_563.x, x_563.y, x_563.z)) + x_566);

    continuing {
      let x_568 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_568 + bitcast<u32>(1i));
    }
  }
  let x_570 : vec4<f32> = u_xlat3;
  let x_572 : vec4<f32> = u_xlat1;
  let x_575 : vec3<f32> = u_xlat4;
  let x_576 : vec3<f32> = ((vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_572.x, x_572.y, x_572.z)) + x_575);
  let x_577 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_581 : vec3<f32> = u_xlat5;
  let x_582 : vec4<f32> = u_xlat1;
  let x_584 : vec3<f32> = (x_581 + vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : bool = u_xlatb16;
  let x_588 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_588, x_587);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

