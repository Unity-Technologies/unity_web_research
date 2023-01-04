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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(4) var<uniform> x_329 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_402 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_495 : AdditionalLights;

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
  var u_xlat25 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlatb27 : bool;
  var u_xlatb4 : bool;
  var u_xlatu24 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati28 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
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
  let x_205 : vec2<f32> = vs_TEXCOORD1;
  let x_207 : f32 = x_43.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_205, x_207);
  u_xlat3 = x_208;
  let x_214 : vec2<f32> = vs_TEXCOORD1;
  let x_216 : f32 = x_43.x_GlobalMipBias.x;
  let x_217 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_214, x_216);
  u_xlat4 = vec3<f32>(x_217.x, x_217.y, x_217.z);
  let x_219 : vec4<f32> = u_xlat3;
  let x_223 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_224 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec3<f32> = u_xlat2;
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(x_226, vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : f32 = u_xlat24;
  u_xlat24 = (x_230 + 0.5f);
  let x_232 : f32 = u_xlat24;
  let x_234 : vec3<f32> = u_xlat4;
  let x_235 : vec3<f32> = (vec3<f32>(x_232, x_232, x_232) * x_234);
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : f32 = u_xlat3.w;
  u_xlat24 = max(x_239, 0.0001f);
  let x_241 : vec4<f32> = u_xlat3;
  let x_243 : f32 = u_xlat24;
  let x_245 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) / vec3<f32>(x_243, x_243, x_243));
  let x_246 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_251 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_252 : vec2<f32> = vec2<f32>(x_251.x, x_251.y);
  let x_256 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_252.x, x_252.y));
  let x_257 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_256.x, x_256.y, x_257.z);
  let x_259 : vec3<f32> = u_xlat4;
  let x_261 : vec4<f32> = hlslcc_FragCoord;
  let x_263 : vec2<f32> = (vec2<f32>(x_259.x, x_259.y) * vec2<f32>(x_261.x, x_261.y));
  let x_264 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_263.x, x_263.y, x_264.z);
  let x_267 : f32 = u_xlat4.y;
  let x_270 : f32 = x_43.x_ScaleBiasRt.x;
  let x_273 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat24 = ((x_267 * x_270) + x_273);
  let x_275 : f32 = u_xlat24;
  u_xlat4.z = (-(x_275) + 1.0f);
  let x_284 : vec3<f32> = u_xlat4;
  let x_287 : f32 = x_43.x_GlobalMipBias.x;
  let x_288 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_284.x, x_284.z), x_287);
  u_xlat24 = x_288.x;
  let x_291 : f32 = u_xlat24;
  u_xlat25 = (x_291 + -1.0f);
  let x_296 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_297 : f32 = u_xlat25;
  u_xlat25 = ((x_296 * x_297) + 1.0f);
  let x_300 : f32 = u_xlat24;
  u_xlat24 = min(x_300, 1.0f);
  let x_304 : vec4<f32> = vs_TEXCOORD6;
  let x_305 : vec2<f32> = vec2<f32>(x_304.x, x_304.y);
  let x_307 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_305.x, x_305.y, x_307);
  let x_320 : vec3<f32> = txVec0;
  let x_322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_320.xy, x_320.z);
  u_xlat26 = x_322;
  let x_331 : f32 = x_329.x_MainLightShadowParams.x;
  u_xlat27 = (-(x_331) + 1.0f);
  let x_334 : f32 = u_xlat26;
  let x_336 : f32 = x_329.x_MainLightShadowParams.x;
  let x_338 : f32 = u_xlat27;
  u_xlat26 = ((x_334 * x_336) + x_338);
  let x_342 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (0.0f >= x_342);
  let x_346 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_346 >= 1.0f);
  let x_348 : bool = u_xlatb27;
  let x_349 : bool = u_xlatb4;
  u_xlatb27 = (x_348 | x_349);
  let x_351 : bool = u_xlatb27;
  let x_352 : f32 = u_xlat26;
  u_xlat26 = select(x_352, 1.0f, x_351);
  let x_355 : vec4<f32> = vs_TEXCOORD2;
  let x_360 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (vec3<f32>(x_355.x, x_355.y, x_355.z) + -(x_360));
  let x_363 : vec3<f32> = u_xlat4;
  let x_364 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_363, x_364);
  let x_366 : f32 = u_xlat27;
  let x_368 : f32 = x_329.x_MainLightShadowParams.z;
  let x_371 : f32 = x_329.x_MainLightShadowParams.w;
  u_xlat27 = ((x_366 * x_368) + x_371);
  let x_373 : f32 = u_xlat27;
  u_xlat27 = clamp(x_373, 0.0f, 1.0f);
  let x_375 : f32 = u_xlat26;
  u_xlat4.x = (-(x_375) + 1.0f);
  let x_379 : f32 = u_xlat27;
  let x_381 : f32 = u_xlat4.x;
  let x_383 : f32 = u_xlat26;
  u_xlat26 = ((x_379 * x_381) + x_383);
  let x_385 : f32 = u_xlat25;
  let x_388 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_385, x_385, x_385) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : f32 = u_xlat24;
  let x_393 : vec4<f32> = u_xlat3;
  let x_395 : vec3<f32> = (vec3<f32>(x_391, x_391, x_391) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : f32 = u_xlat26;
  let x_404 : f32 = x_402.unity_LightData.z;
  u_xlat24 = (x_398 * x_404);
  let x_406 : f32 = u_xlat24;
  let x_408 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_406, x_406, x_406) * x_408);
  let x_410 : vec3<f32> = u_xlat2;
  let x_413 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(x_410, vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : f32 = u_xlat24;
  u_xlat24 = clamp(x_416, 0.0f, 1.0f);
  let x_418 : f32 = u_xlat24;
  let x_420 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_418, x_418, x_418) * x_420);
  let x_422 : vec4<f32> = u_xlat1;
  let x_424 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_422.x, x_422.y, x_422.z) * x_424);
  let x_428 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_430 : f32 = x_402.unity_LightData.y;
  u_xlat24 = min(x_428, x_430);
  let x_434 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_434));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_447 : u32 = u_xlatu_loop_1;
    let x_448 : u32 = u_xlatu24;
    if ((x_447 < x_448)) {
    } else {
      break;
    }
    let x_451 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_451 >> 2u);
    let x_455 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_455 & 3u));
    let x_458 : u32 = u_xlatu27;
    let x_461 : vec4<f32> = x_402.unity_LightIndices[bitcast<i32>(x_458)];
    let x_471 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_476 : vec4<u32> = indexable[x_471];
    u_xlat27 = dot(x_461, bitcast<vec4<f32>>(x_476));
    let x_480 : f32 = u_xlat27;
    u_xlati27 = i32(x_480);
    let x_483 : vec4<f32> = vs_TEXCOORD2;
    let x_496 : i32 = u_xlati27;
    let x_498 : vec4<f32> = x_495.x_AdditionalLightsPosition[x_496];
    let x_501 : i32 = u_xlati27;
    let x_503 : vec4<f32> = x_495.x_AdditionalLightsPosition[x_501];
    u_xlat6 = ((-(vec3<f32>(x_483.x, x_483.y, x_483.z)) * vec3<f32>(x_498.w, x_498.w, x_498.w)) + vec3<f32>(x_503.x, x_503.y, x_503.z));
    let x_507 : vec3<f32> = u_xlat6;
    let x_508 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_507, x_508);
    let x_510 : f32 = u_xlat28;
    u_xlat28 = max(x_510, 6.10351562e-05f);
    let x_514 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_514);
    let x_516 : f32 = u_xlat29;
    let x_518 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_516, x_516, x_516) * x_518);
    let x_520 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_520);
    let x_522 : f32 = u_xlat28;
    let x_523 : i32 = u_xlati27;
    let x_525 : f32 = x_495.x_AdditionalLightsAttenuation[x_523].x;
    u_xlat28 = (x_522 * x_525);
    let x_527 : f32 = u_xlat28;
    let x_529 : f32 = u_xlat28;
    u_xlat28 = ((-(x_527) * x_529) + 1.0f);
    let x_532 : f32 = u_xlat28;
    u_xlat28 = max(x_532, 0.0f);
    let x_534 : f32 = u_xlat28;
    let x_535 : f32 = u_xlat28;
    u_xlat28 = (x_534 * x_535);
    let x_537 : f32 = u_xlat28;
    let x_538 : f32 = u_xlat29;
    u_xlat28 = (x_537 * x_538);
    let x_540 : i32 = u_xlati27;
    let x_542 : vec4<f32> = x_495.x_AdditionalLightsSpotDir[x_540];
    let x_544 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_542.x, x_542.y, x_542.z), x_544);
    let x_546 : f32 = u_xlat29;
    let x_547 : i32 = u_xlati27;
    let x_549 : f32 = x_495.x_AdditionalLightsAttenuation[x_547].z;
    let x_551 : i32 = u_xlati27;
    let x_553 : f32 = x_495.x_AdditionalLightsAttenuation[x_551].w;
    u_xlat29 = ((x_546 * x_549) + x_553);
    let x_555 : f32 = u_xlat29;
    u_xlat29 = clamp(x_555, 0.0f, 1.0f);
    let x_557 : f32 = u_xlat29;
    let x_558 : f32 = u_xlat29;
    u_xlat29 = (x_557 * x_558);
    let x_560 : f32 = u_xlat28;
    let x_561 : f32 = u_xlat29;
    u_xlat28 = (x_560 * x_561);
    let x_564 : f32 = u_xlat25;
    let x_566 : i32 = u_xlati27;
    let x_568 : vec4<f32> = x_495.x_AdditionalLightsColor[x_566];
    u_xlat7 = (vec3<f32>(x_564, x_564, x_564) * vec3<f32>(x_568.x, x_568.y, x_568.z));
    let x_571 : f32 = u_xlat28;
    let x_573 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_571, x_571, x_571) * x_573);
    let x_575 : vec3<f32> = u_xlat2;
    let x_576 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_575, x_576);
    let x_578 : f32 = u_xlat27;
    u_xlat27 = clamp(x_578, 0.0f, 1.0f);
    let x_580 : f32 = u_xlat27;
    let x_582 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_580, x_580, x_580) * x_582);
    let x_584 : vec3<f32> = u_xlat6;
    let x_585 : vec4<f32> = u_xlat1;
    let x_588 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_584 * vec3<f32>(x_585.x, x_585.y, x_585.z)) + x_588);

    continuing {
      let x_590 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_590 + bitcast<u32>(1i));
    }
  }
  let x_592 : vec4<f32> = u_xlat3;
  let x_594 : vec4<f32> = u_xlat1;
  let x_597 : vec3<f32> = u_xlat4;
  let x_598 : vec3<f32> = ((vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(x_594.x, x_594.y, x_594.z)) + x_597);
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec3<f32> = u_xlat5;
  let x_602 : vec4<f32> = u_xlat1;
  let x_604 : vec3<f32> = (x_601 + vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_608 : f32 = u_xlat0.x;
  let x_610 : f32 = u_xlat0.x;
  u_xlat0.x = (x_608 * -(x_610));
  let x_615 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_615);
  let x_618 : vec4<f32> = u_xlat1;
  let x_622 : vec4<f32> = x_43.unity_FogColor;
  let x_625 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) + -(vec3<f32>(x_622.x, x_622.y, x_622.z)));
  let x_626 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_630 : vec4<f32> = u_xlat0;
  let x_632 : vec4<f32> = u_xlat1;
  let x_636 : vec4<f32> = x_43.unity_FogColor;
  let x_638 : vec3<f32> = ((vec3<f32>(x_630.x, x_630.x, x_630.x) * vec3<f32>(x_632.x, x_632.y, x_632.z)) + vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : bool = u_xlatb16;
  let x_642 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_642, x_641);
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

