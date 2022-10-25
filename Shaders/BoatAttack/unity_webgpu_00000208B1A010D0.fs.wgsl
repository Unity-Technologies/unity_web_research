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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_170 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_514 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_650 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_769 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_871 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var txVec0 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat35 : f32;
  var u_xlatb35 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_598 : f32;
  var x_609 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1167 : f32;
  var x_1180 : f32;
  var x_1232 : f32;
  var x_1243 : vec3<f32>;
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
  let x_367 : vec2<f32> = vs_TEXCOORD1;
  let x_369 : f32 = x_43.x_GlobalMipBias.x;
  let x_370 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_367, x_369);
  let x_371 : vec3<f32> = vec3<f32>(x_370.x, x_370.y, x_370.z);
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_376 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_377 : vec2<f32> = vec2<f32>(x_376.x, x_376.y);
  let x_381 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_377.x, x_377.y));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_382.y, x_382.z, x_381.y);
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = hlslcc_FragCoord;
  let x_388 : vec2<f32> = (vec2<f32>(x_384.x, x_384.w) * vec2<f32>(x_386.x, x_386.y));
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_388.x, x_388.y, x_389.z);
  let x_392 : f32 = u_xlat5.y;
  let x_395 : f32 = x_43.x_ScaleBiasRt.x;
  let x_398 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_392 * x_395) + x_398);
  let x_402 : f32 = u_xlat0.x;
  u_xlat5.z = (-(x_402) + 1.0f);
  let x_411 : vec3<f32> = u_xlat5;
  let x_414 : f32 = x_43.x_GlobalMipBias.x;
  let x_415 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_411.x, x_411.z), x_414);
  u_xlat0.x = x_415.x;
  let x_419 : f32 = u_xlat0.x;
  u_xlat33 = (x_419 + -1.0f);
  let x_422 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_423 : f32 = u_xlat33;
  u_xlat33 = ((x_422 * x_423) + 1.0f);
  let x_427 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_427, 1.0f);
  let x_431 : vec4<f32> = u_xlat3;
  let x_432 : vec2<f32> = vec2<f32>(x_431.x, x_431.y);
  let x_434 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_432.x, x_432.y, x_434);
  let x_447 : vec3<f32> = txVec0;
  let x_449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_447.xy, x_447.z);
  u_xlat34 = x_449;
  let x_452 : f32 = x_170.x_MainLightShadowParams.x;
  u_xlat35 = (-(x_452) + 1.0f);
  let x_455 : f32 = u_xlat34;
  let x_457 : f32 = x_170.x_MainLightShadowParams.x;
  let x_459 : f32 = u_xlat35;
  u_xlat34 = ((x_455 * x_457) + x_459);
  let x_463 : f32 = u_xlat3.z;
  u_xlatb35 = (0.0f >= x_463);
  let x_466 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_466 >= 1.0f);
  let x_469 : bool = u_xlatb35;
  let x_471 : bool = u_xlatb3.x;
  u_xlatb35 = (x_469 | x_471);
  let x_473 : bool = u_xlatb35;
  let x_474 : f32 = u_xlat34;
  u_xlat34 = select(x_474, 1.0f, x_473);
  let x_476 : vec4<f32> = vs_TEXCOORD2;
  let x_481 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_483 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) + -(x_481));
  let x_484 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat3;
  let x_488 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : f32 = u_xlat35;
  let x_493 : f32 = x_170.x_MainLightShadowParams.z;
  let x_496 : f32 = x_170.x_MainLightShadowParams.w;
  u_xlat35 = ((x_491 * x_493) + x_496);
  let x_498 : f32 = u_xlat35;
  u_xlat35 = clamp(x_498, 0.0f, 1.0f);
  let x_500 : f32 = u_xlat34;
  u_xlat3.x = (-(x_500) + 1.0f);
  let x_504 : f32 = u_xlat35;
  let x_506 : f32 = u_xlat3.x;
  let x_508 : f32 = u_xlat34;
  u_xlat34 = ((x_504 * x_506) + x_508);
  let x_516 : f32 = x_514.x_MainLightCookieTextureFormat;
  u_xlatb35 = !((x_516 == -1.0f));
  let x_518 : bool = u_xlatb35;
  if (x_518) {
    let x_521 : vec4<f32> = vs_TEXCOORD2;
    let x_524 : vec4<f32> = x_514.x_MainLightWorldToLight[1i];
    let x_526 : vec2<f32> = (vec2<f32>(x_521.y, x_521.y) * vec2<f32>(x_524.x, x_524.y));
    let x_527 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
    let x_530 : vec4<f32> = x_514.x_MainLightWorldToLight[0i];
    let x_532 : vec4<f32> = vs_TEXCOORD2;
    let x_535 : vec4<f32> = u_xlat3;
    let x_537 : vec2<f32> = ((vec2<f32>(x_530.x, x_530.y) * vec2<f32>(x_532.x, x_532.x)) + vec2<f32>(x_535.x, x_535.y));
    let x_538 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
    let x_541 : vec4<f32> = x_514.x_MainLightWorldToLight[2i];
    let x_543 : vec4<f32> = vs_TEXCOORD2;
    let x_546 : vec4<f32> = u_xlat3;
    let x_548 : vec2<f32> = ((vec2<f32>(x_541.x, x_541.y) * vec2<f32>(x_543.z, x_543.z)) + vec2<f32>(x_546.x, x_546.y));
    let x_549 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
    let x_551 : vec4<f32> = u_xlat3;
    let x_554 : vec4<f32> = x_514.x_MainLightWorldToLight[3i];
    let x_556 : vec2<f32> = (vec2<f32>(x_551.x, x_551.y) + vec2<f32>(x_554.x, x_554.y));
    let x_557 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
    let x_559 : vec4<f32> = u_xlat3;
    let x_563 : vec2<f32> = ((vec2<f32>(x_559.x, x_559.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_564 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
    let x_571 : vec4<f32> = u_xlat3;
    let x_574 : f32 = x_43.x_GlobalMipBias.x;
    let x_575 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_571.x, x_571.y), x_574);
    u_xlat3 = x_575;
    let x_580 : f32 = x_514.x_MainLightCookieTextureFormat;
    let x_582 : f32 = x_514.x_MainLightCookieTextureFormat;
    let x_584 : f32 = x_514.x_MainLightCookieTextureFormat;
    let x_586 : f32 = x_514.x_MainLightCookieTextureFormat;
    let x_587 : vec4<f32> = vec4<f32>(x_580, x_582, x_584, x_586);
    let x_594 : vec4<bool> = (vec4<f32>(x_587.x, x_587.y, x_587.z, x_587.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_594.x, x_594.y);
    let x_597 : bool = u_xlatb5.y;
    if (x_597) {
      let x_602 : f32 = u_xlat3.w;
      x_598 = x_602;
    } else {
      let x_605 : f32 = u_xlat3.x;
      x_598 = x_605;
    }
    let x_606 : f32 = x_598;
    u_xlat35 = x_606;
    let x_608 : bool = u_xlatb5.x;
    if (x_608) {
      let x_612 : vec4<f32> = u_xlat3;
      x_609 = vec3<f32>(x_612.x, x_612.y, x_612.z);
    } else {
      let x_615 : f32 = u_xlat35;
      x_609 = vec3<f32>(x_615, x_615, x_615);
    }
    let x_617 : vec3<f32> = x_609;
    let x_618 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_624 : vec4<f32> = u_xlat3;
  let x_627 : vec4<f32> = x_43.x_MainLightColor;
  let x_629 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_630 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : f32 = u_xlat33;
  let x_634 : vec4<f32> = u_xlat3;
  let x_636 : vec3<f32> = (vec3<f32>(x_632, x_632, x_632) * vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat0;
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : vec3<f32> = (vec3<f32>(x_639.x, x_639.x, x_639.x) * vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : f32 = u_xlat34;
  let x_652 : f32 = x_650.unity_LightData.z;
  u_xlat0.x = (x_646 * x_652);
  let x_655 : vec4<f32> = u_xlat0;
  let x_657 : vec4<f32> = u_xlat3;
  let x_659 : vec3<f32> = (vec3<f32>(x_655.x, x_655.x, x_655.x) * vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec3<f32> = u_xlat2;
  let x_664 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_662, vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_669 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_669, 0.0f, 1.0f);
  let x_672 : vec4<f32> = u_xlat0;
  let x_674 : vec4<f32> = u_xlat3;
  let x_676 : vec3<f32> = (vec3<f32>(x_672.x, x_672.x, x_672.x) * vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat1;
  let x_681 : vec4<f32> = u_xlat3;
  let x_683 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) * vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_688 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_690 : f32 = x_650.unity_LightData.y;
  u_xlat0.x = min(x_688, x_690);
  let x_694 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_694));
  let x_698 : f32 = x_514.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_700 : f32 = x_514.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_702 : f32 = x_514.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_704 : f32 = x_514.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_705 : vec4<f32> = vec4<f32>(x_698, x_700, x_702, x_704);
  let x_711 : vec4<bool> = (vec4<f32>(x_705.x, x_705.y, x_705.z, x_705.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_711.x, x_711.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_722 : u32 = u_xlatu_loop_1;
    let x_723 : u32 = u_xlatu0;
    if ((x_722 < x_723)) {
    } else {
      break;
    }
    let x_726 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_726 >> 2u);
    let x_729 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_729 & 3u));
    let x_732 : u32 = u_xlatu35;
    let x_735 : vec4<f32> = x_650.unity_LightIndices[bitcast<i32>(x_732)];
    let x_745 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_750 : vec4<u32> = indexable[x_745];
    u_xlat35 = dot(x_735, bitcast<vec4<f32>>(x_750));
    let x_753 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_753));
    let x_757 : vec4<f32> = vs_TEXCOORD2;
    let x_770 : u32 = u_xlatu35;
    let x_773 : vec4<f32> = x_769.x_AdditionalLightsPosition[bitcast<i32>(x_770)];
    let x_776 : u32 = u_xlatu35;
    let x_779 : vec4<f32> = x_769.x_AdditionalLightsPosition[bitcast<i32>(x_776)];
    u_xlat7 = ((-(vec3<f32>(x_757.x, x_757.y, x_757.z)) * vec3<f32>(x_773.w, x_773.w, x_773.w)) + vec3<f32>(x_779.x, x_779.y, x_779.z));
    let x_783 : vec3<f32> = u_xlat7;
    let x_784 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_783, x_784);
    let x_786 : f32 = u_xlat36;
    u_xlat36 = max(x_786, 6.10351562e-05f);
    let x_790 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_790);
    let x_792 : f32 = u_xlat37;
    let x_794 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_792, x_792, x_792) * x_794);
    let x_796 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_796);
    let x_798 : f32 = u_xlat36;
    let x_799 : u32 = u_xlatu35;
    let x_802 : f32 = x_769.x_AdditionalLightsAttenuation[bitcast<i32>(x_799)].x;
    u_xlat36 = (x_798 * x_802);
    let x_804 : f32 = u_xlat36;
    let x_806 : f32 = u_xlat36;
    u_xlat36 = ((-(x_804) * x_806) + 1.0f);
    let x_809 : f32 = u_xlat36;
    u_xlat36 = max(x_809, 0.0f);
    let x_811 : f32 = u_xlat36;
    let x_812 : f32 = u_xlat36;
    u_xlat36 = (x_811 * x_812);
    let x_814 : f32 = u_xlat36;
    let x_815 : f32 = u_xlat37;
    u_xlat36 = (x_814 * x_815);
    let x_817 : u32 = u_xlatu35;
    let x_820 : vec4<f32> = x_769.x_AdditionalLightsSpotDir[bitcast<i32>(x_817)];
    let x_822 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), x_822);
    let x_824 : f32 = u_xlat37;
    let x_825 : u32 = u_xlatu35;
    let x_828 : f32 = x_769.x_AdditionalLightsAttenuation[bitcast<i32>(x_825)].z;
    let x_830 : u32 = u_xlatu35;
    let x_833 : f32 = x_769.x_AdditionalLightsAttenuation[bitcast<i32>(x_830)].w;
    u_xlat37 = ((x_824 * x_828) + x_833);
    let x_835 : f32 = u_xlat37;
    u_xlat37 = clamp(x_835, 0.0f, 1.0f);
    let x_837 : f32 = u_xlat37;
    let x_838 : f32 = u_xlat37;
    u_xlat37 = (x_837 * x_838);
    let x_840 : f32 = u_xlat36;
    let x_841 : f32 = u_xlat37;
    u_xlat36 = (x_840 * x_841);
    let x_844 : u32 = u_xlatu35;
    u_xlatu37 = (x_844 >> 5u);
    let x_847 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_847) & 31i)));
    let x_853 : i32 = u_xlati27;
    let x_855 : u32 = u_xlatu37;
    let x_858 : f32 = x_514.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_855)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_853) & bitcast<u32>(x_858)));
    let x_862 : i32 = u_xlati37;
    if ((x_862 != 0i)) {
      let x_872 : u32 = u_xlatu35;
      let x_875 : f32 = x_871.x_AdditionalLightsLightTypes[bitcast<i32>(x_872)].el;
      u_xlati37 = i32(x_875);
      let x_877 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_877 != 0i));
      let x_881 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_881) << bitcast<u32>(2i));
      let x_884 : i32 = u_xlati27;
      if ((x_884 != 0i)) {
        let x_889 : vec4<f32> = vs_TEXCOORD2;
        let x_891 : i32 = u_xlati38;
        let x_894 : i32 = u_xlati38;
        let x_898 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[((x_891 + 1i) / 4i)][((x_894 + 1i) % 4i)];
        let x_900 : vec3<f32> = (vec3<f32>(x_889.y, x_889.y, x_889.y) * vec3<f32>(x_898.x, x_898.y, x_898.w));
        let x_901 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
        let x_903 : i32 = u_xlati38;
        let x_905 : i32 = u_xlati38;
        let x_908 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[(x_903 / 4i)][(x_905 % 4i)];
        let x_910 : vec4<f32> = vs_TEXCOORD2;
        let x_913 : vec4<f32> = u_xlat8;
        let x_915 : vec3<f32> = ((vec3<f32>(x_908.x, x_908.y, x_908.w) * vec3<f32>(x_910.x, x_910.x, x_910.x)) + vec3<f32>(x_913.x, x_913.y, x_913.z));
        let x_916 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
        let x_918 : i32 = u_xlati38;
        let x_921 : i32 = u_xlati38;
        let x_925 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[((x_918 + 2i) / 4i)][((x_921 + 2i) % 4i)];
        let x_927 : vec4<f32> = vs_TEXCOORD2;
        let x_930 : vec4<f32> = u_xlat8;
        let x_932 : vec3<f32> = ((vec3<f32>(x_925.x, x_925.y, x_925.w) * vec3<f32>(x_927.z, x_927.z, x_927.z)) + vec3<f32>(x_930.x, x_930.y, x_930.z));
        let x_933 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
        let x_935 : vec4<f32> = u_xlat8;
        let x_937 : i32 = u_xlati38;
        let x_940 : i32 = u_xlati38;
        let x_944 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[((x_937 + 3i) / 4i)][((x_940 + 3i) % 4i)];
        let x_946 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) + vec3<f32>(x_944.x, x_944.y, x_944.w));
        let x_947 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat8;
        let x_951 : vec4<f32> = u_xlat8;
        let x_953 : vec2<f32> = (vec2<f32>(x_949.x, x_949.y) / vec2<f32>(x_951.z, x_951.z));
        let x_954 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat8;
        let x_959 : vec2<f32> = ((vec2<f32>(x_956.x, x_956.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_960 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat8;
        let x_966 : vec2<f32> = clamp(vec2<f32>(x_962.x, x_962.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_967 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_969 : u32 = u_xlatu35;
        let x_972 : vec4<f32> = x_871.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_969)];
        let x_974 : vec4<f32> = u_xlat8;
        let x_977 : u32 = u_xlatu35;
        let x_980 : vec4<f32> = x_871.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_977)];
        let x_982 : vec2<f32> = ((vec2<f32>(x_972.x, x_972.y) * vec2<f32>(x_974.x, x_974.y)) + vec2<f32>(x_980.z, x_980.w));
        let x_983 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
      } else {
        let x_987 : i32 = u_xlati37;
        u_xlatb37 = (x_987 == 1i);
        let x_989 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_989);
        let x_991 : i32 = u_xlati37;
        if ((x_991 != 0i)) {
          let x_997 : vec4<f32> = vs_TEXCOORD2;
          let x_999 : i32 = u_xlati38;
          let x_1002 : i32 = u_xlati38;
          let x_1006 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[((x_999 + 1i) / 4i)][((x_1002 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_997.y, x_997.y) * vec2<f32>(x_1006.x, x_1006.y));
          let x_1009 : i32 = u_xlati38;
          let x_1011 : i32 = u_xlati38;
          let x_1014 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[(x_1009 / 4i)][(x_1011 % 4i)];
          let x_1016 : vec4<f32> = vs_TEXCOORD2;
          let x_1019 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1014.x, x_1014.y) * vec2<f32>(x_1016.x, x_1016.x)) + x_1019);
          let x_1021 : i32 = u_xlati38;
          let x_1024 : i32 = u_xlati38;
          let x_1028 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[((x_1021 + 2i) / 4i)][((x_1024 + 2i) % 4i)];
          let x_1030 : vec4<f32> = vs_TEXCOORD2;
          let x_1033 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1030.z, x_1030.z)) + x_1033);
          let x_1035 : vec2<f32> = u_xlat30;
          let x_1036 : i32 = u_xlati38;
          let x_1039 : i32 = u_xlati38;
          let x_1043 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[((x_1036 + 3i) / 4i)][((x_1039 + 3i) % 4i)];
          u_xlat30 = (x_1035 + vec2<f32>(x_1043.x, x_1043.y));
          let x_1046 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1046 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1049 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1049);
          let x_1051 : u32 = u_xlatu35;
          let x_1054 : vec4<f32> = x_871.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1051)];
          let x_1056 : vec2<f32> = u_xlat30;
          let x_1058 : u32 = u_xlatu35;
          let x_1061 : vec4<f32> = x_871.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1058)];
          let x_1063 : vec2<f32> = ((vec2<f32>(x_1054.x, x_1054.y) * x_1056) + vec2<f32>(x_1061.z, x_1061.w));
          let x_1064 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1063.x, x_1063.y, x_1064.z, x_1064.w);
        } else {
          let x_1068 : vec4<f32> = vs_TEXCOORD2;
          let x_1070 : i32 = u_xlati38;
          let x_1073 : i32 = u_xlati38;
          let x_1077 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[((x_1070 + 1i) / 4i)][((x_1073 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1068.y, x_1068.y, x_1068.y, x_1068.y) * x_1077);
          let x_1079 : i32 = u_xlati38;
          let x_1081 : i32 = u_xlati38;
          let x_1084 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[(x_1079 / 4i)][(x_1081 % 4i)];
          let x_1085 : vec4<f32> = vs_TEXCOORD2;
          let x_1088 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1084 * vec4<f32>(x_1085.x, x_1085.x, x_1085.x, x_1085.x)) + x_1088);
          let x_1090 : i32 = u_xlati38;
          let x_1093 : i32 = u_xlati38;
          let x_1097 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[((x_1090 + 2i) / 4i)][((x_1093 + 2i) % 4i)];
          let x_1098 : vec4<f32> = vs_TEXCOORD2;
          let x_1101 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1097 * vec4<f32>(x_1098.z, x_1098.z, x_1098.z, x_1098.z)) + x_1101);
          let x_1103 : vec4<f32> = u_xlat9;
          let x_1104 : i32 = u_xlati38;
          let x_1107 : i32 = u_xlati38;
          let x_1111 : vec4<f32> = x_871.x_AdditionalLightsWorldToLights[((x_1104 + 3i) / 4i)][((x_1107 + 3i) % 4i)];
          u_xlat9 = (x_1103 + x_1111);
          let x_1113 : vec4<f32> = u_xlat9;
          let x_1115 : vec4<f32> = u_xlat9;
          let x_1117 : vec3<f32> = (vec3<f32>(x_1113.x, x_1113.y, x_1113.z) / vec3<f32>(x_1115.w, x_1115.w, x_1115.w));
          let x_1118 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
          let x_1120 : vec4<f32> = u_xlat9;
          let x_1122 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_1120.x, x_1120.y, x_1120.z), vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
          let x_1125 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_1125);
          let x_1127 : f32 = u_xlat37;
          let x_1129 : vec4<f32> = u_xlat9;
          let x_1131 : vec3<f32> = (vec3<f32>(x_1127, x_1127, x_1127) * vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
          let x_1132 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
          let x_1134 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_1134.x, x_1134.y, x_1134.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1139 : f32 = u_xlat37;
          u_xlat37 = max(x_1139, 0.000001f);
          let x_1142 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_1142);
          let x_1145 : f32 = u_xlat37;
          let x_1147 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1145, x_1145, x_1145) * vec3<f32>(x_1147.z, x_1147.x, x_1147.y));
          let x_1151 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1151);
          let x_1155 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1155, 0.0f, 1.0f);
          let x_1159 : vec3<f32> = u_xlat10;
          let x_1162 : vec4<bool> = (vec4<f32>(x_1159.y, x_1159.z, x_1159.y, x_1159.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1162.x, x_1162.y);
          let x_1166 : bool = u_xlatb27.x;
          if (x_1166) {
            let x_1171 : f32 = u_xlat10.x;
            x_1167 = x_1171;
          } else {
            let x_1174 : f32 = u_xlat10.x;
            x_1167 = -(x_1174);
          }
          let x_1176 : f32 = x_1167;
          u_xlat27.x = x_1176;
          let x_1179 : bool = u_xlatb27.y;
          if (x_1179) {
            let x_1184 : f32 = u_xlat10.x;
            x_1180 = x_1184;
          } else {
            let x_1187 : f32 = u_xlat10.x;
            x_1180 = -(x_1187);
          }
          let x_1189 : f32 = x_1180;
          u_xlat27.y = x_1189;
          let x_1191 : vec4<f32> = u_xlat9;
          let x_1193 : f32 = u_xlat37;
          let x_1196 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1193, x_1193)) + x_1196);
          let x_1198 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1198 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1201 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1201, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1205 : u32 = u_xlatu35;
          let x_1208 : vec4<f32> = x_871.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1205)];
          let x_1210 : vec2<f32> = u_xlat27;
          let x_1212 : u32 = u_xlatu35;
          let x_1215 : vec4<f32> = x_871.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1212)];
          let x_1217 : vec2<f32> = ((vec2<f32>(x_1208.x, x_1208.y) * x_1210) + vec2<f32>(x_1215.z, x_1215.w));
          let x_1218 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1217.x, x_1217.y, x_1218.z, x_1218.w);
        }
      }
      let x_1225 : vec4<f32> = u_xlat8;
      let x_1228 : f32 = x_43.x_GlobalMipBias.x;
      let x_1229 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1225.x, x_1225.y), x_1228);
      u_xlat8 = x_1229;
      let x_1231 : bool = u_xlatb5.y;
      if (x_1231) {
        let x_1236 : f32 = u_xlat8.w;
        x_1232 = x_1236;
      } else {
        let x_1239 : f32 = u_xlat8.x;
        x_1232 = x_1239;
      }
      let x_1240 : f32 = x_1232;
      u_xlat37 = x_1240;
      let x_1242 : bool = u_xlatb5.x;
      if (x_1242) {
        let x_1246 : vec4<f32> = u_xlat8;
        x_1243 = vec3<f32>(x_1246.x, x_1246.y, x_1246.z);
      } else {
        let x_1249 : f32 = u_xlat37;
        x_1243 = vec3<f32>(x_1249, x_1249, x_1249);
      }
      let x_1251 : vec3<f32> = x_1243;
      let x_1252 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1258 : vec4<f32> = u_xlat8;
    let x_1260 : u32 = u_xlatu35;
    let x_1263 : vec4<f32> = x_769.x_AdditionalLightsColor[bitcast<i32>(x_1260)];
    let x_1265 : vec3<f32> = (vec3<f32>(x_1258.x, x_1258.y, x_1258.z) * vec3<f32>(x_1263.x, x_1263.y, x_1263.z));
    let x_1266 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
    let x_1268 : f32 = u_xlat33;
    let x_1270 : vec4<f32> = u_xlat8;
    let x_1272 : vec3<f32> = (vec3<f32>(x_1268, x_1268, x_1268) * vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
    let x_1273 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
    let x_1275 : f32 = u_xlat36;
    let x_1277 : vec4<f32> = u_xlat8;
    let x_1279 : vec3<f32> = (vec3<f32>(x_1275, x_1275, x_1275) * vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
    let x_1280 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
    let x_1282 : vec3<f32> = u_xlat2;
    let x_1283 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1282, x_1283);
    let x_1285 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1285, 0.0f, 1.0f);
    let x_1287 : f32 = u_xlat35;
    let x_1289 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1287, x_1287, x_1287) * vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
    let x_1292 : vec3<f32> = u_xlat7;
    let x_1293 : vec4<f32> = u_xlat1;
    let x_1296 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1292 * vec3<f32>(x_1293.x, x_1293.y, x_1293.z)) + x_1296);

    continuing {
      let x_1298 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1298 + bitcast<u32>(1i));
    }
  }
  let x_1300 : vec4<f32> = u_xlat4;
  let x_1302 : vec4<f32> = u_xlat1;
  let x_1305 : vec4<f32> = u_xlat3;
  let x_1307 : vec3<f32> = ((vec3<f32>(x_1300.x, x_1300.y, x_1300.z) * vec3<f32>(x_1302.x, x_1302.y, x_1302.z)) + vec3<f32>(x_1305.x, x_1305.y, x_1305.z));
  let x_1308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
  let x_1312 : vec3<f32> = u_xlat6;
  let x_1313 : vec4<f32> = u_xlat1;
  let x_1315 : vec3<f32> = (x_1312 + vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1316 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : bool = u_xlatb22;
  let x_1319 : f32 = u_xlat11;
  SV_Target0.w = select(1.0f, x_1319, x_1318);
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

