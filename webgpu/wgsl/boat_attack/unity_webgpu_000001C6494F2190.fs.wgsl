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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_314 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_397 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_495 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_130 : f32;
  var u_xlatb8 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlatb27 : bool;
  var x_339 : f32;
  var u_xlat27 : f32;
  var u_xlatu8 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_615 : f32;
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
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat8.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat24;
  let x_104 : f32 = u_xlat16;
  u_xlat16 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat16;
  u_xlat16 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat8.x;
  let x_112 : f32 = u_xlat16;
  u_xlat8.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat8.x;
  u_xlat8.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb16;
  if (x_129) {
    let x_134 : f32 = u_xlat8.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat8.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat8.x;
  u_xlatb8 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb8;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec3<f32> = vs_TEXCOORD2;
  let x_161 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_160, x_161);
  let x_165 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_165);
  let x_169 : vec3<f32> = u_xlat8;
  let x_171 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171);
  let x_180 : vec2<f32> = vs_TEXCOORD7;
  let x_182 : f32 = x_43.x_GlobalMipBias.x;
  let x_183 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_180, x_182);
  u_xlat3 = x_183;
  let x_189 : vec2<f32> = vs_TEXCOORD7;
  let x_191 : f32 = x_43.x_GlobalMipBias.x;
  let x_192 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_189, x_191);
  u_xlat4 = vec3<f32>(x_192.x, x_192.y, x_192.z);
  let x_194 : vec4<f32> = u_xlat3;
  let x_198 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_199 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec3<f32> = u_xlat2;
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat8.x = dot(x_201, vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_207 : f32 = u_xlat8.x;
  u_xlat8.x = (x_207 + 0.5f);
  let x_210 : vec3<f32> = u_xlat8;
  let x_212 : vec3<f32> = u_xlat4;
  let x_213 : vec3<f32> = (vec3<f32>(x_210.x, x_210.x, x_210.x) * x_212);
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : f32 = u_xlat3.w;
  u_xlat8.x = max(x_217, 0.0001f);
  let x_220 : vec4<f32> = u_xlat3;
  let x_222 : vec3<f32> = u_xlat8;
  let x_224 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) / vec3<f32>(x_222.x, x_222.x, x_222.x));
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_229 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_230 : vec2<f32> = vec2<f32>(x_229.x, x_229.y);
  let x_234 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_230.x, x_230.y));
  let x_235 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_234.x, x_235.y, x_234.y);
  let x_237 : vec3<f32> = u_xlat8;
  let x_239 : vec4<f32> = hlslcc_FragCoord;
  let x_241 : vec2<f32> = (vec2<f32>(x_237.x, x_237.z) * vec2<f32>(x_239.x, x_239.y));
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_241.x, x_241.y, x_242.z);
  let x_246 : f32 = u_xlat4.y;
  let x_249 : f32 = x_43.x_ScaleBiasRt.x;
  let x_252 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat8.x = ((x_246 * x_249) + x_252);
  let x_256 : f32 = u_xlat8.x;
  u_xlat4.z = (-(x_256) + 1.0f);
  let x_266 : vec3<f32> = u_xlat4;
  let x_269 : f32 = x_43.x_GlobalMipBias.x;
  let x_270 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_266.x, x_266.z), x_269);
  u_xlat8.x = x_270.x;
  let x_274 : f32 = u_xlat8.x;
  u_xlat24 = (x_274 + -1.0f);
  let x_279 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_280 : f32 = u_xlat24;
  u_xlat24 = ((x_279 * x_280) + 1.0f);
  let x_284 : f32 = u_xlat8.x;
  u_xlat8.x = min(x_284, 1.0f);
  let x_289 : vec4<f32> = vs_TEXCOORD6;
  let x_290 : vec2<f32> = vec2<f32>(x_289.x, x_289.y);
  let x_292 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_290.x, x_290.y, x_292);
  let x_304 : vec3<f32> = txVec0;
  let x_306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_304.xy, x_304.z);
  u_xlat1.x = x_306;
  let x_316 : f32 = x_314.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_316) + 1.0f);
  let x_320 : f32 = u_xlat1.x;
  let x_322 : f32 = x_314.x_MainLightShadowParams.x;
  let x_324 : f32 = u_xlat26;
  u_xlat1.x = ((x_320 * x_322) + x_324);
  let x_329 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_329);
  let x_333 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (x_333 >= 1.0f);
  let x_335 : bool = u_xlatb26;
  let x_336 : bool = u_xlatb27;
  u_xlatb26 = (x_335 | x_336);
  let x_338 : bool = u_xlatb26;
  if (x_338) {
    x_339 = 1.0f;
  } else {
    let x_344 : f32 = u_xlat1.x;
    x_339 = x_344;
  }
  let x_345 : f32 = x_339;
  u_xlat1.x = x_345;
  let x_348 : vec3<f32> = vs_TEXCOORD1;
  let x_352 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (x_348 + -(x_352));
  let x_355 : vec3<f32> = u_xlat4;
  let x_356 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_355, x_356);
  let x_358 : f32 = u_xlat26;
  let x_360 : f32 = x_314.x_MainLightShadowParams.z;
  let x_363 : f32 = x_314.x_MainLightShadowParams.w;
  u_xlat26 = ((x_358 * x_360) + x_363);
  let x_365 : f32 = u_xlat26;
  u_xlat26 = clamp(x_365, 0.0f, 1.0f);
  let x_369 : f32 = u_xlat1.x;
  u_xlat27 = (-(x_369) + 1.0f);
  let x_372 : f32 = u_xlat26;
  let x_373 : f32 = u_xlat27;
  let x_376 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_372 * x_373) + x_376);
  let x_379 : f32 = u_xlat24;
  let x_382 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_379, x_379, x_379) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec3<f32> = u_xlat8;
  let x_387 : vec4<f32> = u_xlat3;
  let x_389 : vec3<f32> = (vec3<f32>(x_385.x, x_385.x, x_385.x) * vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : f32 = u_xlat1.x;
  let x_399 : f32 = x_397.unity_LightData.z;
  u_xlat8.x = (x_393 * x_399);
  let x_402 : vec3<f32> = u_xlat8;
  let x_404 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_402.x, x_402.x, x_402.x) * x_404);
  let x_406 : vec3<f32> = u_xlat2;
  let x_409 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat8.x = dot(x_406, vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_414 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_414, 0.0f, 1.0f);
  let x_417 : vec3<f32> = u_xlat8;
  let x_419 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_417.x, x_417.x, x_417.x) * x_419);
  let x_421 : vec4<f32> = u_xlat1;
  let x_423 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_421.y, x_421.z, x_421.w) * x_423);
  let x_427 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_429 : f32 = x_397.unity_LightData.y;
  u_xlat8.x = min(x_427, x_429);
  let x_435 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_435));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_448 : u32 = u_xlatu_loop_1;
    let x_449 : u32 = u_xlatu8;
    if ((x_448 < x_449)) {
    } else {
      break;
    }
    let x_452 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_452 >> 2u);
    let x_456 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_456 & 3u));
    let x_459 : u32 = u_xlatu26;
    let x_462 : vec4<f32> = x_397.unity_LightIndices[bitcast<i32>(x_459)];
    let x_472 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_477 : vec4<u32> = indexable[x_472];
    u_xlat26 = dot(x_462, bitcast<vec4<f32>>(x_477));
    let x_481 : f32 = u_xlat26;
    u_xlati26 = i32(x_481);
    let x_484 : vec3<f32> = vs_TEXCOORD1;
    let x_496 : i32 = u_xlati26;
    let x_498 : vec4<f32> = x_495.x_AdditionalLightsPosition[x_496];
    let x_501 : i32 = u_xlati26;
    let x_503 : vec4<f32> = x_495.x_AdditionalLightsPosition[x_501];
    u_xlat6 = ((-(x_484) * vec3<f32>(x_498.w, x_498.w, x_498.w)) + vec3<f32>(x_503.x, x_503.y, x_503.z));
    let x_506 : vec3<f32> = u_xlat6;
    let x_507 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_506, x_507);
    let x_509 : f32 = u_xlat27;
    u_xlat27 = max(x_509, 6.10351562e-05f);
    let x_513 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_513);
    let x_515 : f32 = u_xlat28;
    let x_517 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_515, x_515, x_515) * x_517);
    let x_519 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_519);
    let x_521 : f32 = u_xlat27;
    let x_522 : i32 = u_xlati26;
    let x_524 : f32 = x_495.x_AdditionalLightsAttenuation[x_522].x;
    u_xlat27 = (x_521 * x_524);
    let x_526 : f32 = u_xlat27;
    let x_528 : f32 = u_xlat27;
    u_xlat27 = ((-(x_526) * x_528) + 1.0f);
    let x_531 : f32 = u_xlat27;
    u_xlat27 = max(x_531, 0.0f);
    let x_533 : f32 = u_xlat27;
    let x_534 : f32 = u_xlat27;
    u_xlat27 = (x_533 * x_534);
    let x_536 : f32 = u_xlat27;
    let x_537 : f32 = u_xlat28;
    u_xlat27 = (x_536 * x_537);
    let x_539 : i32 = u_xlati26;
    let x_541 : vec4<f32> = x_495.x_AdditionalLightsSpotDir[x_539];
    let x_543 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_541.x, x_541.y, x_541.z), x_543);
    let x_545 : f32 = u_xlat28;
    let x_546 : i32 = u_xlati26;
    let x_548 : f32 = x_495.x_AdditionalLightsAttenuation[x_546].z;
    let x_550 : i32 = u_xlati26;
    let x_552 : f32 = x_495.x_AdditionalLightsAttenuation[x_550].w;
    u_xlat28 = ((x_545 * x_548) + x_552);
    let x_554 : f32 = u_xlat28;
    u_xlat28 = clamp(x_554, 0.0f, 1.0f);
    let x_556 : f32 = u_xlat28;
    let x_557 : f32 = u_xlat28;
    u_xlat28 = (x_556 * x_557);
    let x_559 : f32 = u_xlat27;
    let x_560 : f32 = u_xlat28;
    u_xlat27 = (x_559 * x_560);
    let x_563 : f32 = u_xlat24;
    let x_565 : i32 = u_xlati26;
    let x_567 : vec4<f32> = x_495.x_AdditionalLightsColor[x_565];
    u_xlat7 = (vec3<f32>(x_563, x_563, x_563) * vec3<f32>(x_567.x, x_567.y, x_567.z));
    let x_570 : f32 = u_xlat27;
    let x_572 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_570, x_570, x_570) * x_572);
    let x_574 : vec3<f32> = u_xlat2;
    let x_575 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_574, x_575);
    let x_577 : f32 = u_xlat26;
    u_xlat26 = clamp(x_577, 0.0f, 1.0f);
    let x_579 : f32 = u_xlat26;
    let x_581 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_579, x_579, x_579) * x_581);
    let x_583 : vec3<f32> = u_xlat6;
    let x_584 : vec4<f32> = u_xlat1;
    let x_587 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_583 * vec3<f32>(x_584.y, x_584.z, x_584.w)) + x_587);

    continuing {
      let x_589 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_589 + bitcast<u32>(1i));
    }
  }
  let x_591 : vec4<f32> = u_xlat3;
  let x_593 : vec4<f32> = u_xlat1;
  let x_596 : vec3<f32> = u_xlat4;
  let x_597 : vec3<f32> = ((vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(x_593.y, x_593.z, x_593.w)) + x_596);
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_602 : vec3<f32> = u_xlat5;
  let x_603 : vec4<f32> = u_xlat1;
  let x_605 : vec3<f32> = (x_602 + vec3<f32>(x_603.x, x_603.y, x_603.z));
  let x_606 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_609 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_609 == 1.0f);
  let x_611 : bool = u_xlatb8;
  let x_612 : bool = u_xlatb16;
  u_xlatb8 = (x_611 | x_612);
  let x_614 : bool = u_xlatb8;
  if (x_614) {
    let x_619 : f32 = u_xlat0.x;
    x_615 = x_619;
  } else {
    x_615 = 1.0f;
  }
  let x_621 : f32 = x_615;
  SV_Target0.w = x_621;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

