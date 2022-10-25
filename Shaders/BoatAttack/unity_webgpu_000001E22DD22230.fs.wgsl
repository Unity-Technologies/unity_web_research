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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_170 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_587 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_726 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_840 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_955 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_119 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var u_xlat34 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlatb14 : bool;
  var u_xlat14 : f32;
  var u_xlatb5 : vec2<bool>;
  var u_xlat36 : f32;
  var x_674 : f32;
  var x_685 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlatu27 : u32;
  var u_xlati38 : i32;
  var u_xlati27 : i32;
  var u_xlati39 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb27 : bool;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb30 : vec2<bool>;
  var u_xlat30 : vec2<f32>;
  var x_1257 : f32;
  var x_1270 : f32;
  var x_1322 : f32;
  var x_1334 : vec3<f32>;
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
  u_xlat11 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat22 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat33 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat33;
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat22;
  u_xlat22 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat11;
  let x_106 : f32 = u_xlat22;
  u_xlat11 = (x_105 / x_106);
  let x_108 : f32 = u_xlat11;
  u_xlat11 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat11;
  u_xlat11 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb22;
  if (x_118) {
    let x_122 : f32 = u_xlat11;
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
  u_xlat33 = dot(x_422, vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : f32 = u_xlat33;
  u_xlat33 = (x_426 + 0.5f);
  let x_428 : f32 = u_xlat33;
  let x_430 : vec3<f32> = u_xlat5;
  let x_431 : vec3<f32> = (vec3<f32>(x_428, x_428, x_428) * x_430);
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_435 : f32 = u_xlat4.w;
  u_xlat33 = max(x_435, 0.0001f);
  let x_437 : vec4<f32> = u_xlat4;
  let x_439 : f32 = u_xlat33;
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
  u_xlat33 = ((x_462 * x_465) + x_468);
  let x_470 : f32 = u_xlat33;
  u_xlat5.z = (-(x_470) + 1.0f);
  let x_479 : vec3<f32> = u_xlat5;
  let x_482 : f32 = x_43.x_GlobalMipBias.x;
  let x_483 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_479.x, x_479.z), x_482);
  u_xlat33 = x_483.x;
  let x_486 : f32 = u_xlat33;
  u_xlat34 = (x_486 + -1.0f);
  let x_489 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_490 : f32 = u_xlat34;
  u_xlat34 = ((x_489 * x_490) + 1.0f);
  let x_493 : f32 = u_xlat33;
  u_xlat33 = min(x_493, 1.0f);
  let x_496 : vec4<f32> = u_xlat3;
  let x_497 : vec2<f32> = vec2<f32>(x_496.x, x_496.y);
  let x_499 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_497.x, x_497.y, x_499);
  let x_512 : vec3<f32> = txVec0;
  let x_514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_512.xy, x_512.z);
  u_xlat35 = x_514;
  let x_516 : f32 = x_170.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_516) + 1.0f);
  let x_520 : f32 = u_xlat35;
  let x_522 : f32 = x_170.x_MainLightShadowParams.x;
  let x_525 : f32 = u_xlat3.x;
  u_xlat35 = ((x_520 * x_522) + x_525);
  let x_528 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_528);
  let x_533 : f32 = u_xlat3.z;
  u_xlatb14 = (x_533 >= 1.0f);
  let x_535 : bool = u_xlatb14;
  let x_537 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_535 | x_537);
  let x_541 : bool = u_xlatb3.x;
  let x_542 : f32 = u_xlat35;
  u_xlat35 = select(x_542, 1.0f, x_541);
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
  let x_574 : f32 = u_xlat35;
  u_xlat14 = (-(x_574) + 1.0f);
  let x_578 : f32 = u_xlat3.x;
  let x_579 : f32 = u_xlat14;
  let x_581 : f32 = u_xlat35;
  u_xlat35 = ((x_578 * x_579) + x_581);
  let x_589 : f32 = x_587.x_MainLightCookieTextureFormat;
  u_xlatb3.x = !((x_589 == -1.0f));
  let x_593 : bool = u_xlatb3.x;
  if (x_593) {
    let x_596 : vec4<f32> = vs_TEXCOORD2;
    let x_599 : vec4<f32> = x_587.x_MainLightWorldToLight[1i];
    let x_601 : vec2<f32> = (vec2<f32>(x_596.y, x_596.y) * vec2<f32>(x_599.x, x_599.y));
    let x_602 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
    let x_605 : vec4<f32> = x_587.x_MainLightWorldToLight[0i];
    let x_607 : vec4<f32> = vs_TEXCOORD2;
    let x_610 : vec4<f32> = u_xlat3;
    let x_612 : vec2<f32> = ((vec2<f32>(x_605.x, x_605.y) * vec2<f32>(x_607.x, x_607.x)) + vec2<f32>(x_610.x, x_610.y));
    let x_613 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
    let x_616 : vec4<f32> = x_587.x_MainLightWorldToLight[2i];
    let x_618 : vec4<f32> = vs_TEXCOORD2;
    let x_621 : vec4<f32> = u_xlat3;
    let x_623 : vec2<f32> = ((vec2<f32>(x_616.x, x_616.y) * vec2<f32>(x_618.z, x_618.z)) + vec2<f32>(x_621.x, x_621.y));
    let x_624 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
    let x_626 : vec4<f32> = u_xlat3;
    let x_629 : vec4<f32> = x_587.x_MainLightWorldToLight[3i];
    let x_631 : vec2<f32> = (vec2<f32>(x_626.x, x_626.y) + vec2<f32>(x_629.x, x_629.y));
    let x_632 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_631.x, x_631.y, x_632.z, x_632.w);
    let x_634 : vec4<f32> = u_xlat3;
    let x_638 : vec2<f32> = ((vec2<f32>(x_634.x, x_634.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_639 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
    let x_646 : vec4<f32> = u_xlat3;
    let x_649 : f32 = x_43.x_GlobalMipBias.x;
    let x_650 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_646.x, x_646.y), x_649);
    u_xlat3 = x_650;
    let x_655 : f32 = x_587.x_MainLightCookieTextureFormat;
    let x_657 : f32 = x_587.x_MainLightCookieTextureFormat;
    let x_659 : f32 = x_587.x_MainLightCookieTextureFormat;
    let x_661 : f32 = x_587.x_MainLightCookieTextureFormat;
    let x_662 : vec4<f32> = vec4<f32>(x_655, x_657, x_659, x_661);
    let x_669 : vec4<bool> = (vec4<f32>(x_662.x, x_662.y, x_662.z, x_662.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_669.x, x_669.y);
    let x_673 : bool = u_xlatb5.y;
    if (x_673) {
      let x_678 : f32 = u_xlat3.w;
      x_674 = x_678;
    } else {
      let x_681 : f32 = u_xlat3.x;
      x_674 = x_681;
    }
    let x_682 : f32 = x_674;
    u_xlat36 = x_682;
    let x_684 : bool = u_xlatb5.x;
    if (x_684) {
      let x_688 : vec4<f32> = u_xlat3;
      x_685 = vec3<f32>(x_688.x, x_688.y, x_688.z);
    } else {
      let x_691 : f32 = u_xlat36;
      x_685 = vec3<f32>(x_691, x_691, x_691);
    }
    let x_693 : vec3<f32> = x_685;
    let x_694 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_700 : vec4<f32> = u_xlat3;
  let x_703 : vec4<f32> = x_43.x_MainLightColor;
  let x_705 : vec3<f32> = (vec3<f32>(x_700.x, x_700.y, x_700.z) * vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_706 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : f32 = u_xlat34;
  let x_710 : vec4<f32> = u_xlat3;
  let x_712 : vec3<f32> = (vec3<f32>(x_708, x_708, x_708) * vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_713 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : f32 = u_xlat33;
  let x_717 : vec4<f32> = u_xlat4;
  let x_719 : vec3<f32> = (vec3<f32>(x_715, x_715, x_715) * vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : f32 = u_xlat35;
  let x_728 : f32 = x_726.unity_LightData.z;
  u_xlat33 = (x_722 * x_728);
  let x_730 : f32 = u_xlat33;
  let x_732 : vec4<f32> = u_xlat3;
  let x_734 : vec3<f32> = (vec3<f32>(x_730, x_730, x_730) * vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec3<f32> = u_xlat2;
  let x_739 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat33 = dot(x_737, vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : f32 = u_xlat33;
  u_xlat33 = clamp(x_742, 0.0f, 1.0f);
  let x_744 : f32 = u_xlat33;
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec3<f32> = (vec3<f32>(x_744, x_744, x_744) * vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat1;
  let x_753 : vec4<f32> = u_xlat3;
  let x_755 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_760 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_762 : f32 = x_726.unity_LightData.y;
  u_xlat33 = min(x_760, x_762);
  let x_765 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_765));
  let x_769 : f32 = x_587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_771 : f32 = x_587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_773 : f32 = x_587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_775 : f32 = x_587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_776 : vec4<f32> = vec4<f32>(x_769, x_771, x_773, x_775);
  let x_782 : vec4<bool> = (vec4<f32>(x_776.x, x_776.y, x_776.z, x_776.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_782.x, x_782.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_793 : u32 = u_xlatu_loop_1;
    let x_794 : u32 = u_xlatu33;
    if ((x_793 < x_794)) {
    } else {
      break;
    }
    let x_797 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_797 >> 2u);
    let x_800 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_800 & 3u));
    let x_803 : u32 = u_xlatu36;
    let x_806 : vec4<f32> = x_726.unity_LightIndices[bitcast<i32>(x_803)];
    let x_816 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_821 : vec4<u32> = indexable[x_816];
    u_xlat36 = dot(x_806, bitcast<vec4<f32>>(x_821));
    let x_824 : f32 = u_xlat36;
    u_xlatu36 = bitcast<u32>(i32(x_824));
    let x_828 : vec4<f32> = vs_TEXCOORD2;
    let x_841 : u32 = u_xlatu36;
    let x_844 : vec4<f32> = x_840.x_AdditionalLightsPosition[bitcast<i32>(x_841)];
    let x_847 : u32 = u_xlatu36;
    let x_850 : vec4<f32> = x_840.x_AdditionalLightsPosition[bitcast<i32>(x_847)];
    u_xlat7 = ((-(vec3<f32>(x_828.x, x_828.y, x_828.z)) * vec3<f32>(x_844.w, x_844.w, x_844.w)) + vec3<f32>(x_850.x, x_850.y, x_850.z));
    let x_854 : vec3<f32> = u_xlat7;
    let x_855 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(x_854, x_855);
    let x_857 : f32 = u_xlat37;
    u_xlat37 = max(x_857, 6.10351562e-05f);
    let x_862 : f32 = u_xlat37;
    u_xlat27.x = inverseSqrt(x_862);
    let x_865 : vec2<f32> = u_xlat27;
    let x_867 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_865.x, x_865.x, x_865.x) * x_867);
    let x_869 : f32 = u_xlat37;
    u_xlat27.x = (1.0f / x_869);
    let x_872 : f32 = u_xlat37;
    let x_873 : u32 = u_xlatu36;
    let x_876 : f32 = x_840.x_AdditionalLightsAttenuation[bitcast<i32>(x_873)].x;
    u_xlat37 = (x_872 * x_876);
    let x_878 : f32 = u_xlat37;
    let x_880 : f32 = u_xlat37;
    u_xlat37 = ((-(x_878) * x_880) + 1.0f);
    let x_883 : f32 = u_xlat37;
    u_xlat37 = max(x_883, 0.0f);
    let x_885 : f32 = u_xlat37;
    let x_886 : f32 = u_xlat37;
    u_xlat37 = (x_885 * x_886);
    let x_888 : f32 = u_xlat37;
    let x_890 : f32 = u_xlat27.x;
    u_xlat37 = (x_888 * x_890);
    let x_892 : u32 = u_xlatu36;
    let x_895 : vec4<f32> = x_840.x_AdditionalLightsSpotDir[bitcast<i32>(x_892)];
    let x_897 : vec3<f32> = u_xlat7;
    u_xlat27.x = dot(vec3<f32>(x_895.x, x_895.y, x_895.z), x_897);
    let x_901 : f32 = u_xlat27.x;
    let x_902 : u32 = u_xlatu36;
    let x_905 : f32 = x_840.x_AdditionalLightsAttenuation[bitcast<i32>(x_902)].z;
    let x_907 : u32 = u_xlatu36;
    let x_910 : f32 = x_840.x_AdditionalLightsAttenuation[bitcast<i32>(x_907)].w;
    u_xlat27.x = ((x_901 * x_905) + x_910);
    let x_914 : f32 = u_xlat27.x;
    u_xlat27.x = clamp(x_914, 0.0f, 1.0f);
    let x_918 : f32 = u_xlat27.x;
    let x_920 : f32 = u_xlat27.x;
    u_xlat27.x = (x_918 * x_920);
    let x_923 : f32 = u_xlat37;
    let x_925 : f32 = u_xlat27.x;
    u_xlat37 = (x_923 * x_925);
    let x_928 : u32 = u_xlatu36;
    u_xlatu27 = (x_928 >> 5u);
    let x_931 : u32 = u_xlatu36;
    u_xlati38 = (1i << bitcast<u32>((bitcast<i32>(x_931) & 31i)));
    let x_937 : i32 = u_xlati38;
    let x_939 : u32 = u_xlatu27;
    let x_942 : f32 = x_587.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_939)].el;
    u_xlati27 = bitcast<i32>((bitcast<u32>(x_937) & bitcast<u32>(x_942)));
    let x_946 : i32 = u_xlati27;
    if ((x_946 != 0i)) {
      let x_956 : u32 = u_xlatu36;
      let x_959 : f32 = x_955.x_AdditionalLightsLightTypes[bitcast<i32>(x_956)].el;
      u_xlati27 = i32(x_959);
      let x_961 : i32 = u_xlati27;
      u_xlati38 = select(1i, 0i, (x_961 != 0i));
      let x_965 : u32 = u_xlatu36;
      u_xlati39 = (bitcast<i32>(x_965) << bitcast<u32>(2i));
      let x_968 : i32 = u_xlati38;
      if ((x_968 != 0i)) {
        let x_973 : vec4<f32> = vs_TEXCOORD2;
        let x_975 : i32 = u_xlati39;
        let x_978 : i32 = u_xlati39;
        let x_982 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_975 + 1i) / 4i)][((x_978 + 1i) % 4i)];
        let x_984 : vec3<f32> = (vec3<f32>(x_973.y, x_973.y, x_973.y) * vec3<f32>(x_982.x, x_982.y, x_982.w));
        let x_985 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
        let x_987 : i32 = u_xlati39;
        let x_989 : i32 = u_xlati39;
        let x_992 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[(x_987 / 4i)][(x_989 % 4i)];
        let x_994 : vec4<f32> = vs_TEXCOORD2;
        let x_997 : vec4<f32> = u_xlat8;
        let x_999 : vec3<f32> = ((vec3<f32>(x_992.x, x_992.y, x_992.w) * vec3<f32>(x_994.x, x_994.x, x_994.x)) + vec3<f32>(x_997.x, x_997.y, x_997.z));
        let x_1000 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
        let x_1002 : i32 = u_xlati39;
        let x_1005 : i32 = u_xlati39;
        let x_1009 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1002 + 2i) / 4i)][((x_1005 + 2i) % 4i)];
        let x_1011 : vec4<f32> = vs_TEXCOORD2;
        let x_1014 : vec4<f32> = u_xlat8;
        let x_1016 : vec3<f32> = ((vec3<f32>(x_1009.x, x_1009.y, x_1009.w) * vec3<f32>(x_1011.z, x_1011.z, x_1011.z)) + vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
        let x_1017 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
        let x_1019 : vec4<f32> = u_xlat8;
        let x_1021 : i32 = u_xlati39;
        let x_1024 : i32 = u_xlati39;
        let x_1028 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1021 + 3i) / 4i)][((x_1024 + 3i) % 4i)];
        let x_1030 : vec3<f32> = (vec3<f32>(x_1019.x, x_1019.y, x_1019.z) + vec3<f32>(x_1028.x, x_1028.y, x_1028.w));
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
        let x_1033 : vec4<f32> = u_xlat8;
        let x_1035 : vec4<f32> = u_xlat8;
        let x_1037 : vec2<f32> = (vec2<f32>(x_1033.x, x_1033.y) / vec2<f32>(x_1035.z, x_1035.z));
        let x_1038 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1037.x, x_1037.y, x_1038.z, x_1038.w);
        let x_1040 : vec4<f32> = u_xlat8;
        let x_1043 : vec2<f32> = ((vec2<f32>(x_1040.x, x_1040.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1044 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1046 : vec4<f32> = u_xlat8;
        let x_1050 : vec2<f32> = clamp(vec2<f32>(x_1046.x, x_1046.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
        let x_1053 : u32 = u_xlatu36;
        let x_1056 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1053)];
        let x_1058 : vec4<f32> = u_xlat8;
        let x_1061 : u32 = u_xlatu36;
        let x_1064 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1061)];
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1056.x, x_1056.y) * vec2<f32>(x_1058.x, x_1058.y)) + vec2<f32>(x_1064.z, x_1064.w));
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
      } else {
        let x_1071 : i32 = u_xlati27;
        u_xlatb27 = (x_1071 == 1i);
        let x_1073 : bool = u_xlatb27;
        u_xlati27 = select(0i, 1i, x_1073);
        let x_1075 : i32 = u_xlati27;
        if ((x_1075 != 0i)) {
          let x_1079 : vec4<f32> = vs_TEXCOORD2;
          let x_1081 : i32 = u_xlati39;
          let x_1084 : i32 = u_xlati39;
          let x_1088 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1081 + 1i) / 4i)][((x_1084 + 1i) % 4i)];
          u_xlat27 = (vec2<f32>(x_1079.y, x_1079.y) * vec2<f32>(x_1088.x, x_1088.y));
          let x_1091 : i32 = u_xlati39;
          let x_1093 : i32 = u_xlati39;
          let x_1096 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[(x_1091 / 4i)][(x_1093 % 4i)];
          let x_1098 : vec4<f32> = vs_TEXCOORD2;
          let x_1101 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(x_1098.x, x_1098.x)) + x_1101);
          let x_1103 : i32 = u_xlati39;
          let x_1106 : i32 = u_xlati39;
          let x_1110 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1103 + 2i) / 4i)][((x_1106 + 2i) % 4i)];
          let x_1112 : vec4<f32> = vs_TEXCOORD2;
          let x_1115 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1112.z, x_1112.z)) + x_1115);
          let x_1117 : vec2<f32> = u_xlat27;
          let x_1118 : i32 = u_xlati39;
          let x_1121 : i32 = u_xlati39;
          let x_1125 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1118 + 3i) / 4i)][((x_1121 + 3i) % 4i)];
          u_xlat27 = (x_1117 + vec2<f32>(x_1125.x, x_1125.y));
          let x_1128 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1128 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1131 : vec2<f32> = u_xlat27;
          u_xlat27 = fract(x_1131);
          let x_1133 : u32 = u_xlatu36;
          let x_1136 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1133)];
          let x_1138 : vec2<f32> = u_xlat27;
          let x_1140 : u32 = u_xlatu36;
          let x_1143 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1140)];
          let x_1145 : vec2<f32> = ((vec2<f32>(x_1136.x, x_1136.y) * x_1138) + vec2<f32>(x_1143.z, x_1143.w));
          let x_1146 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
        } else {
          let x_1150 : vec4<f32> = vs_TEXCOORD2;
          let x_1152 : i32 = u_xlati39;
          let x_1155 : i32 = u_xlati39;
          let x_1159 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1152 + 1i) / 4i)][((x_1155 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1150.y, x_1150.y, x_1150.y, x_1150.y) * x_1159);
          let x_1161 : i32 = u_xlati39;
          let x_1163 : i32 = u_xlati39;
          let x_1166 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[(x_1161 / 4i)][(x_1163 % 4i)];
          let x_1167 : vec4<f32> = vs_TEXCOORD2;
          let x_1170 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1166 * vec4<f32>(x_1167.x, x_1167.x, x_1167.x, x_1167.x)) + x_1170);
          let x_1172 : i32 = u_xlati39;
          let x_1175 : i32 = u_xlati39;
          let x_1179 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1172 + 2i) / 4i)][((x_1175 + 2i) % 4i)];
          let x_1180 : vec4<f32> = vs_TEXCOORD2;
          let x_1183 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1179 * vec4<f32>(x_1180.z, x_1180.z, x_1180.z, x_1180.z)) + x_1183);
          let x_1185 : vec4<f32> = u_xlat9;
          let x_1186 : i32 = u_xlati39;
          let x_1189 : i32 = u_xlati39;
          let x_1193 : vec4<f32> = x_955.x_AdditionalLightsWorldToLights[((x_1186 + 3i) / 4i)][((x_1189 + 3i) % 4i)];
          u_xlat9 = (x_1185 + x_1193);
          let x_1195 : vec4<f32> = u_xlat9;
          let x_1197 : vec4<f32> = u_xlat9;
          let x_1199 : vec3<f32> = (vec3<f32>(x_1195.x, x_1195.y, x_1195.z) / vec3<f32>(x_1197.w, x_1197.w, x_1197.w));
          let x_1200 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
          let x_1202 : vec4<f32> = u_xlat9;
          let x_1204 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
          let x_1209 : f32 = u_xlat27.x;
          u_xlat27.x = inverseSqrt(x_1209);
          let x_1212 : vec2<f32> = u_xlat27;
          let x_1214 : vec4<f32> = u_xlat9;
          let x_1216 : vec3<f32> = (vec3<f32>(x_1212.x, x_1212.x, x_1212.x) * vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
          let x_1217 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
          let x_1219 : vec4<f32> = u_xlat9;
          u_xlat27.x = dot(abs(vec3<f32>(x_1219.x, x_1219.y, x_1219.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1226 : f32 = u_xlat27.x;
          u_xlat27.x = max(x_1226, 0.000001f);
          let x_1231 : f32 = u_xlat27.x;
          u_xlat27.x = (1.0f / x_1231);
          let x_1235 : vec2<f32> = u_xlat27;
          let x_1237 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1235.x, x_1235.x, x_1235.x) * vec3<f32>(x_1237.z, x_1237.x, x_1237.y));
          let x_1241 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1241);
          let x_1245 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1245, 0.0f, 1.0f);
          let x_1249 : vec3<f32> = u_xlat10;
          let x_1252 : vec4<bool> = (vec4<f32>(x_1249.y, x_1249.z, x_1249.y, x_1249.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb30 = vec2<bool>(x_1252.x, x_1252.y);
          let x_1256 : bool = u_xlatb30.x;
          if (x_1256) {
            let x_1261 : f32 = u_xlat10.x;
            x_1257 = x_1261;
          } else {
            let x_1264 : f32 = u_xlat10.x;
            x_1257 = -(x_1264);
          }
          let x_1266 : f32 = x_1257;
          u_xlat30.x = x_1266;
          let x_1269 : bool = u_xlatb30.y;
          if (x_1269) {
            let x_1274 : f32 = u_xlat10.x;
            x_1270 = x_1274;
          } else {
            let x_1277 : f32 = u_xlat10.x;
            x_1270 = -(x_1277);
          }
          let x_1279 : f32 = x_1270;
          u_xlat30.y = x_1279;
          let x_1281 : vec4<f32> = u_xlat9;
          let x_1283 : vec2<f32> = u_xlat27;
          let x_1286 : vec2<f32> = u_xlat30;
          u_xlat27 = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(x_1283.x, x_1283.x)) + x_1286);
          let x_1288 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1288 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1291 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1291, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1295 : u32 = u_xlatu36;
          let x_1298 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1295)];
          let x_1300 : vec2<f32> = u_xlat27;
          let x_1302 : u32 = u_xlatu36;
          let x_1305 : vec4<f32> = x_955.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1302)];
          let x_1307 : vec2<f32> = ((vec2<f32>(x_1298.x, x_1298.y) * x_1300) + vec2<f32>(x_1305.z, x_1305.w));
          let x_1308 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        }
      }
      let x_1315 : vec4<f32> = u_xlat8;
      let x_1318 : f32 = x_43.x_GlobalMipBias.x;
      let x_1319 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1315.x, x_1315.y), x_1318);
      u_xlat8 = x_1319;
      let x_1321 : bool = u_xlatb5.y;
      if (x_1321) {
        let x_1326 : f32 = u_xlat8.w;
        x_1322 = x_1326;
      } else {
        let x_1329 : f32 = u_xlat8.x;
        x_1322 = x_1329;
      }
      let x_1330 : f32 = x_1322;
      u_xlat27.x = x_1330;
      let x_1333 : bool = u_xlatb5.x;
      if (x_1333) {
        let x_1337 : vec4<f32> = u_xlat8;
        x_1334 = vec3<f32>(x_1337.x, x_1337.y, x_1337.z);
      } else {
        let x_1340 : vec2<f32> = u_xlat27;
        x_1334 = vec3<f32>(x_1340.x, x_1340.x, x_1340.x);
      }
      let x_1342 : vec3<f32> = x_1334;
      let x_1343 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1349 : vec4<f32> = u_xlat8;
    let x_1351 : u32 = u_xlatu36;
    let x_1354 : vec4<f32> = x_840.x_AdditionalLightsColor[bitcast<i32>(x_1351)];
    let x_1356 : vec3<f32> = (vec3<f32>(x_1349.x, x_1349.y, x_1349.z) * vec3<f32>(x_1354.x, x_1354.y, x_1354.z));
    let x_1357 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1357.w);
    let x_1359 : f32 = u_xlat34;
    let x_1361 : vec4<f32> = u_xlat8;
    let x_1363 : vec3<f32> = (vec3<f32>(x_1359, x_1359, x_1359) * vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
    let x_1364 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
    let x_1366 : f32 = u_xlat37;
    let x_1368 : vec4<f32> = u_xlat8;
    let x_1370 : vec3<f32> = (vec3<f32>(x_1366, x_1366, x_1366) * vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
    let x_1371 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
    let x_1373 : vec3<f32> = u_xlat2;
    let x_1374 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_1373, x_1374);
    let x_1376 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1376, 0.0f, 1.0f);
    let x_1378 : f32 = u_xlat36;
    let x_1380 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1378, x_1378, x_1378) * vec3<f32>(x_1380.x, x_1380.y, x_1380.z));
    let x_1383 : vec3<f32> = u_xlat7;
    let x_1384 : vec4<f32> = u_xlat1;
    let x_1387 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1383 * vec3<f32>(x_1384.x, x_1384.y, x_1384.z)) + x_1387);

    continuing {
      let x_1389 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1389 + bitcast<u32>(1i));
    }
  }
  let x_1391 : vec4<f32> = u_xlat4;
  let x_1393 : vec4<f32> = u_xlat1;
  let x_1396 : vec4<f32> = u_xlat3;
  let x_1398 : vec3<f32> = ((vec3<f32>(x_1391.x, x_1391.y, x_1391.z) * vec3<f32>(x_1393.x, x_1393.y, x_1393.z)) + vec3<f32>(x_1396.x, x_1396.y, x_1396.z));
  let x_1399 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
  let x_1401 : vec3<f32> = u_xlat6;
  let x_1402 : vec4<f32> = u_xlat1;
  let x_1404 : vec3<f32> = (x_1401 + vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
  let x_1405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);
  let x_1408 : f32 = u_xlat0.x;
  let x_1410 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1408 * -(x_1410));
  let x_1415 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1415);
  let x_1418 : vec4<f32> = u_xlat1;
  let x_1422 : vec4<f32> = x_43.unity_FogColor;
  let x_1425 : vec3<f32> = (vec3<f32>(x_1418.x, x_1418.y, x_1418.z) + -(vec3<f32>(x_1422.x, x_1422.y, x_1422.z)));
  let x_1426 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
  let x_1430 : vec4<f32> = u_xlat0;
  let x_1432 : vec4<f32> = u_xlat1;
  let x_1436 : vec4<f32> = x_43.unity_FogColor;
  let x_1438 : vec3<f32> = ((vec3<f32>(x_1430.x, x_1430.x, x_1430.x) * vec3<f32>(x_1432.x, x_1432.y, x_1432.z)) + vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
  let x_1439 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
  let x_1441 : bool = u_xlatb22;
  let x_1442 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1442, x_1441);
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

