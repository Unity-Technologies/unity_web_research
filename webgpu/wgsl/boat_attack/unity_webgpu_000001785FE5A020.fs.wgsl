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

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_170 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_602 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_700 : AdditionalLights;

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
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var u_xlat25 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb11 : bool;
  var u_xlat11 : f32;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati28 : i32;
  var u_xlat27 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
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
  let x_163 : vec4<f32> = vs_TEXCOORD2;
  let x_173 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres0;
  let x_176 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + -(vec3<f32>(x_173.x, x_173.y, x_173.z)));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = vs_TEXCOORD2;
  let x_183 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres1;
  let x_186 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = vs_TEXCOORD2;
  let x_194 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (vec3<f32>(x_190.x, x_190.y, x_190.z) + -(vec3<f32>(x_194.x, x_194.y, x_194.z)));
  let x_199 : vec4<f32> = vs_TEXCOORD2;
  let x_202 : vec4<f32> = x_170.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (vec3<f32>(x_199.x, x_199.y, x_199.z) + -(vec3<f32>(x_202.x, x_202.y, x_202.z)));
  let x_206 : vec4<f32> = u_xlat3;
  let x_208 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_206.x, x_206.y, x_206.z), vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_212 : vec4<f32> = u_xlat4;
  let x_214 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_212.x, x_212.y, x_212.z), vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_219 : vec3<f32> = u_xlat5;
  let x_220 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_219, x_220);
  let x_224 : vec3<f32> = u_xlat6;
  let x_225 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_224, x_225);
  let x_231 : vec4<f32> = u_xlat3;
  let x_234 : vec4<f32> = x_170.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_231 < x_234);
  let x_237 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_237);
  let x_241 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_241);
  let x_245 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_245);
  let x_249 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_249);
  let x_253 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_253);
  let x_259 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_259);
  let x_263 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_263);
  let x_266 : vec4<f32> = u_xlat3;
  let x_268 : vec4<f32> = u_xlat4;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) + vec3<f32>(x_268.y, x_268.z, x_268.w));
  let x_271 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat3;
  let x_276 : vec3<f32> = max(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_277.x, x_276.x, x_276.y, x_276.z);
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_279, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_287 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_287) + 4.0f);
  let x_294 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_294);
  let x_298 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_298) << bitcast<u32>(2i));
  let x_301 : vec4<f32> = vs_TEXCOORD2;
  let x_303 : i32 = u_xlati0;
  let x_306 : i32 = u_xlati0;
  let x_310 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_303 + 1i) / 4i)][((x_306 + 1i) % 4i)];
  let x_312 : vec3<f32> = (vec3<f32>(x_301.y, x_301.y, x_301.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : i32 = u_xlati0;
  let x_317 : i32 = u_xlati0;
  let x_320 : vec4<f32> = x_170.x_MainLightWorldToShadow[(x_315 / 4i)][(x_317 % 4i)];
  let x_322 : vec4<f32> = vs_TEXCOORD2;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.x, x_322.x)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : i32 = u_xlati0;
  let x_333 : i32 = u_xlati0;
  let x_337 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_330 + 2i) / 4i)][((x_333 + 2i) % 4i)];
  let x_339 : vec4<f32> = vs_TEXCOORD2;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.z, x_339.z, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat3;
  let x_349 : i32 = u_xlati0;
  let x_352 : i32 = u_xlati0;
  let x_356 : vec4<f32> = x_170.x_MainLightWorldToShadow[((x_349 + 3i) / 4i)][((x_352 + 3i) % 4i)];
  let x_358 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : f32 = hlslcc_FragCoord.w;
  let x_364 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_362 * x_364);
  let x_368 : f32 = u_xlat0.x;
  let x_371 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_368 / x_371);
  let x_375 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_375) + 1.0f);
  let x_380 : f32 = u_xlat0.x;
  let x_382 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_380 * x_382);
  let x_386 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_386, 0.0f);
  let x_390 : f32 = u_xlat0.x;
  let x_393 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_390 * x_393);
  let x_402 : vec2<f32> = vs_TEXCOORD1;
  let x_404 : f32 = x_43.x_GlobalMipBias.x;
  let x_405 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_402, x_404);
  u_xlat4 = x_405;
  let x_410 : vec2<f32> = vs_TEXCOORD1;
  let x_412 : f32 = x_43.x_GlobalMipBias.x;
  let x_413 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_410, x_412);
  u_xlat5 = vec3<f32>(x_413.x, x_413.y, x_413.z);
  let x_415 : vec4<f32> = u_xlat4;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec3<f32> = u_xlat2;
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(x_422, vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : f32 = u_xlat24;
  u_xlat24 = (x_426 + 0.5f);
  let x_428 : f32 = u_xlat24;
  let x_430 : vec3<f32> = u_xlat5;
  let x_431 : vec3<f32> = (vec3<f32>(x_428, x_428, x_428) * x_430);
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_435 : f32 = u_xlat4.w;
  u_xlat24 = max(x_435, 0.0001f);
  let x_437 : vec4<f32> = u_xlat4;
  let x_439 : f32 = u_xlat24;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) / vec3<f32>(x_439, x_439, x_439));
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_447 : vec2<f32> = vec2<f32>(x_446.x, x_446.y);
  let x_451 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_447.x, x_447.y));
  let x_452 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_451.x, x_451.y, x_452.z);
  let x_454 : vec3<f32> = u_xlat5;
  let x_456 : vec4<f32> = hlslcc_FragCoord;
  let x_458 : vec2<f32> = (vec2<f32>(x_454.x, x_454.y) * vec2<f32>(x_456.x, x_456.y));
  let x_459 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_458.x, x_458.y, x_459.z);
  let x_462 : f32 = u_xlat5.y;
  let x_465 : f32 = x_43.x_ScaleBiasRt.x;
  let x_468 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat24 = ((x_462 * x_465) + x_468);
  let x_470 : f32 = u_xlat24;
  u_xlat5.z = (-(x_470) + 1.0f);
  let x_479 : vec3<f32> = u_xlat5;
  let x_482 : f32 = x_43.x_GlobalMipBias.x;
  let x_483 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_479.x, x_479.z), x_482);
  u_xlat24 = x_483.x;
  let x_486 : f32 = u_xlat24;
  u_xlat25 = (x_486 + -1.0f);
  let x_489 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_490 : f32 = u_xlat25;
  u_xlat25 = ((x_489 * x_490) + 1.0f);
  let x_493 : f32 = u_xlat24;
  u_xlat24 = min(x_493, 1.0f);
  let x_496 : vec4<f32> = u_xlat3;
  let x_497 : vec2<f32> = vec2<f32>(x_496.x, x_496.y);
  let x_499 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_497.x, x_497.y, x_499);
  let x_512 : vec3<f32> = txVec0;
  let x_514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_512.xy, x_512.z);
  u_xlat26 = x_514;
  let x_516 : f32 = x_170.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_516) + 1.0f);
  let x_520 : f32 = u_xlat26;
  let x_522 : f32 = x_170.x_MainLightShadowParams.x;
  let x_525 : f32 = u_xlat3.x;
  u_xlat26 = ((x_520 * x_522) + x_525);
  let x_528 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_528);
  let x_533 : f32 = u_xlat3.z;
  u_xlatb11 = (x_533 >= 1.0f);
  let x_535 : bool = u_xlatb11;
  let x_537 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_535 | x_537);
  let x_541 : bool = u_xlatb3.x;
  let x_542 : f32 = u_xlat26;
  u_xlat26 = select(x_542, 1.0f, x_541);
  let x_544 : vec4<f32> = vs_TEXCOORD2;
  let x_549 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_551 : vec3<f32> = (vec3<f32>(x_544.x, x_544.y, x_544.z) + -(x_549));
  let x_552 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : vec4<f32> = u_xlat3;
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_561 : f32 = u_xlat3.x;
  let x_563 : f32 = x_170.x_MainLightShadowParams.z;
  let x_566 : f32 = x_170.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_561 * x_563) + x_566);
  let x_570 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_570, 0.0f, 1.0f);
  let x_574 : f32 = u_xlat26;
  u_xlat11 = (-(x_574) + 1.0f);
  let x_578 : f32 = u_xlat3.x;
  let x_579 : f32 = u_xlat11;
  let x_581 : f32 = u_xlat26;
  u_xlat26 = ((x_578 * x_579) + x_581);
  let x_583 : f32 = u_xlat25;
  let x_586 : vec4<f32> = x_43.x_MainLightColor;
  let x_588 : vec3<f32> = (vec3<f32>(x_583, x_583, x_583) * vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : f32 = u_xlat24;
  let x_593 : vec4<f32> = u_xlat4;
  let x_595 : vec3<f32> = (vec3<f32>(x_591, x_591, x_591) * vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : f32 = u_xlat26;
  let x_604 : f32 = x_602.unity_LightData.z;
  u_xlat24 = (x_598 * x_604);
  let x_606 : f32 = u_xlat24;
  let x_608 : vec4<f32> = u_xlat3;
  let x_610 : vec3<f32> = (vec3<f32>(x_606, x_606, x_606) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec3<f32> = u_xlat2;
  let x_615 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(x_613, vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : f32 = u_xlat24;
  u_xlat24 = clamp(x_618, 0.0f, 1.0f);
  let x_620 : f32 = u_xlat24;
  let x_622 : vec4<f32> = u_xlat3;
  let x_624 : vec3<f32> = (vec3<f32>(x_620, x_620, x_620) * vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat1;
  let x_629 : vec4<f32> = u_xlat3;
  let x_631 : vec3<f32> = (vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_636 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_638 : f32 = x_602.unity_LightData.y;
  u_xlat24 = min(x_636, x_638);
  let x_641 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_641));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_653 : u32 = u_xlatu_loop_1;
    let x_654 : u32 = u_xlatu24;
    if ((x_653 < x_654)) {
    } else {
      break;
    }
    let x_657 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_657 >> 2u);
    let x_660 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_660 & 3u));
    let x_664 : u32 = u_xlatu27;
    let x_667 : vec4<f32> = x_602.unity_LightIndices[bitcast<i32>(x_664)];
    let x_677 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_682 : vec4<u32> = indexable[x_677];
    u_xlat27 = dot(x_667, bitcast<vec4<f32>>(x_682));
    let x_686 : f32 = u_xlat27;
    u_xlati27 = i32(x_686);
    let x_688 : vec4<f32> = vs_TEXCOORD2;
    let x_701 : i32 = u_xlati27;
    let x_703 : vec4<f32> = x_700.x_AdditionalLightsPosition[x_701];
    let x_706 : i32 = u_xlati27;
    let x_708 : vec4<f32> = x_700.x_AdditionalLightsPosition[x_706];
    u_xlat6 = ((-(vec3<f32>(x_688.x, x_688.y, x_688.z)) * vec3<f32>(x_703.w, x_703.w, x_703.w)) + vec3<f32>(x_708.x, x_708.y, x_708.z));
    let x_712 : vec3<f32> = u_xlat6;
    let x_713 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_712, x_713);
    let x_715 : f32 = u_xlat28;
    u_xlat28 = max(x_715, 6.10351562e-05f);
    let x_719 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_719);
    let x_721 : f32 = u_xlat29;
    let x_723 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_721, x_721, x_721) * x_723);
    let x_725 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_725);
    let x_727 : f32 = u_xlat28;
    let x_728 : i32 = u_xlati27;
    let x_730 : f32 = x_700.x_AdditionalLightsAttenuation[x_728].x;
    u_xlat28 = (x_727 * x_730);
    let x_732 : f32 = u_xlat28;
    let x_734 : f32 = u_xlat28;
    u_xlat28 = ((-(x_732) * x_734) + 1.0f);
    let x_737 : f32 = u_xlat28;
    u_xlat28 = max(x_737, 0.0f);
    let x_739 : f32 = u_xlat28;
    let x_740 : f32 = u_xlat28;
    u_xlat28 = (x_739 * x_740);
    let x_742 : f32 = u_xlat28;
    let x_743 : f32 = u_xlat29;
    u_xlat28 = (x_742 * x_743);
    let x_745 : i32 = u_xlati27;
    let x_747 : vec4<f32> = x_700.x_AdditionalLightsSpotDir[x_745];
    let x_749 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_747.x, x_747.y, x_747.z), x_749);
    let x_751 : f32 = u_xlat29;
    let x_752 : i32 = u_xlati27;
    let x_754 : f32 = x_700.x_AdditionalLightsAttenuation[x_752].z;
    let x_756 : i32 = u_xlati27;
    let x_758 : f32 = x_700.x_AdditionalLightsAttenuation[x_756].w;
    u_xlat29 = ((x_751 * x_754) + x_758);
    let x_760 : f32 = u_xlat29;
    u_xlat29 = clamp(x_760, 0.0f, 1.0f);
    let x_762 : f32 = u_xlat29;
    let x_763 : f32 = u_xlat29;
    u_xlat29 = (x_762 * x_763);
    let x_765 : f32 = u_xlat28;
    let x_766 : f32 = u_xlat29;
    u_xlat28 = (x_765 * x_766);
    let x_769 : f32 = u_xlat25;
    let x_771 : i32 = u_xlati27;
    let x_773 : vec4<f32> = x_700.x_AdditionalLightsColor[x_771];
    u_xlat7 = (vec3<f32>(x_769, x_769, x_769) * vec3<f32>(x_773.x, x_773.y, x_773.z));
    let x_776 : f32 = u_xlat28;
    let x_778 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_776, x_776, x_776) * x_778);
    let x_780 : vec3<f32> = u_xlat2;
    let x_781 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_780, x_781);
    let x_783 : f32 = u_xlat27;
    u_xlat27 = clamp(x_783, 0.0f, 1.0f);
    let x_785 : f32 = u_xlat27;
    let x_787 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_785, x_785, x_785) * x_787);
    let x_789 : vec3<f32> = u_xlat6;
    let x_790 : vec4<f32> = u_xlat1;
    let x_793 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_789 * vec3<f32>(x_790.x, x_790.y, x_790.z)) + x_793);

    continuing {
      let x_795 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_795 + bitcast<u32>(1i));
    }
  }
  let x_797 : vec4<f32> = u_xlat4;
  let x_799 : vec4<f32> = u_xlat1;
  let x_802 : vec4<f32> = u_xlat3;
  let x_804 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(x_799.x, x_799.y, x_799.z)) + vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec3<f32> = u_xlat5;
  let x_808 : vec4<f32> = u_xlat1;
  let x_810 : vec3<f32> = (x_807 + vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_814 : f32 = u_xlat0.x;
  let x_816 : f32 = u_xlat0.x;
  u_xlat0.x = (x_814 * -(x_816));
  let x_821 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_821);
  let x_824 : vec4<f32> = u_xlat1;
  let x_828 : vec4<f32> = x_43.unity_FogColor;
  let x_831 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) + -(vec3<f32>(x_828.x, x_828.y, x_828.z)));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_836 : vec4<f32> = u_xlat0;
  let x_838 : vec4<f32> = u_xlat1;
  let x_842 : vec4<f32> = x_43.unity_FogColor;
  let x_844 : vec3<f32> = ((vec3<f32>(x_836.x, x_836.x, x_836.x) * vec3<f32>(x_838.x, x_838.y, x_838.z)) + vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : bool = u_xlatb16;
  let x_848 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_848, x_847);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

