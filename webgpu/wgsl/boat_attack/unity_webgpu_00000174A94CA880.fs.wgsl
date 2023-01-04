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
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_277 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_694 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_833 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1005 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1107 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat36 : f32;
  var u_xlatb24 : bool;
  var x_131 : f32;
  var u_xlatb12 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu36 : u32;
  var u_xlati36 : i32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlatb16 : bool;
  var u_xlat16 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlat40 : f32;
  var x_781 : f32;
  var x_792 : vec3<f32>;
  var u_xlatu39 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu41 : u32;
  var u_xlati30 : i32;
  var u_xlat41 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat8 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlatu42 : u32;
  var u_xlati43 : i32;
  var u_xlati42 : i32;
  var u_xlati44 : i32;
  var u_xlat9 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat33 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb33 : vec2<bool>;
  var x_1402 : f32;
  var x_1415 : f32;
  var x_1467 : f32;
  var x_1478 : vec3<f32>;
  var x_1636 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_57.x_BaseColor.w;
  let x_91 : f32 = x_57.x_Cutoff;
  u_xlat12.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat24 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat36 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat36;
  let x_105 : f32 = u_xlat24;
  u_xlat24 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat24;
  u_xlat24 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat12.x;
  let x_113 : f32 = u_xlat24;
  u_xlat12.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat12.x;
  u_xlat12.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb24 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb24;
  if (x_130) {
    let x_135 : f32 = u_xlat12.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat12.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat12.x;
  u_xlatb12 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb12;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_165, x_167);
  u_xlat2 = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_171 : f32 = u_xlat2.x;
  let x_174 : f32 = u_xlat2.z;
  u_xlat2.x = (x_171 * x_174);
  let x_177 : vec3<f32> = u_xlat2;
  let x_184 : vec2<f32> = ((vec2<f32>(x_177.x, x_177.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_185 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat12;
  let x_189 : vec3<f32> = u_xlat12;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 1.00000002e-16f);
  let x_211 : vec3<f32> = u_xlat12;
  let x_214 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_211.z, x_211.z, x_211.z) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec3<f32> = u_xlat12;
  let x_220 : vec4<f32> = vs_TEXCOORD3;
  let x_223 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_217.x, x_217.x, x_217.x) * vec3<f32>(x_220.x, x_220.y, x_220.z)) + x_223);
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = vs_TEXCOORD2;
  let x_231 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_225.x, x_225.x, x_225.x) * vec3<f32>(x_228.x, x_228.y, x_228.z)) + x_231);
  let x_233 : vec3<f32> = u_xlat2;
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat12.x = dot(x_233, x_234);
  let x_238 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_238);
  let x_241 : vec3<f32> = u_xlat12;
  let x_243 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_241.x, x_241.x, x_241.x) * x_243);
  let x_247 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_247;
  let x_250 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_250;
  let x_254 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_254;
  let x_256 : vec3<f32> = u_xlat3;
  let x_257 : vec3<f32> = u_xlat3;
  u_xlat12.x = dot(x_256, x_257);
  let x_261 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_261, 1.17549435e-37f);
  let x_266 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_266);
  let x_272 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres0;
  let x_282 : vec3<f32> = (x_272 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres1;
  let x_291 : vec3<f32> = (x_286 + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_292 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_295 : vec3<f32> = vs_TEXCOORD1;
  let x_298 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_295 + -(vec3<f32>(x_298.x, x_298.y, x_298.z)));
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_305 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_303 + -(vec3<f32>(x_305.x, x_305.y, x_305.z)));
  let x_309 : vec4<f32> = u_xlat4;
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_309.x, x_309.y, x_309.z), vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_315 : vec4<f32> = u_xlat5;
  let x_317 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_315.x, x_315.y, x_315.z), vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_321 : vec3<f32> = u_xlat6;
  let x_322 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_321, x_322);
  let x_325 : vec3<f32> = u_xlat7;
  let x_326 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_325, x_326);
  let x_332 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = x_277.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_332 < x_335);
  let x_338 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_338);
  let x_342 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_342);
  let x_346 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_346);
  let x_350 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_354);
  let x_359 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_359);
  let x_363 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_363);
  let x_366 : vec4<f32> = u_xlat4;
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.z) + vec3<f32>(x_368.y, x_368.z, x_368.w));
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat4;
  let x_376 : vec3<f32> = max(vec3<f32>(x_373.x, x_373.y, x_373.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_377.x, x_376.x, x_376.y, x_376.z);
  let x_379 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_379, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_384 : f32 = u_xlat36;
  u_xlat36 = (-(x_384) + 4.0f);
  let x_389 : f32 = u_xlat36;
  u_xlatu36 = u32(x_389);
  let x_393 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_393) << bitcast<u32>(2i));
  let x_396 : vec3<f32> = vs_TEXCOORD1;
  let x_398 : i32 = u_xlati36;
  let x_401 : i32 = u_xlati36;
  let x_405 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_398 + 1i) / 4i)][((x_401 + 1i) % 4i)];
  let x_407 : vec3<f32> = (vec3<f32>(x_396.y, x_396.y, x_396.y) * vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : i32 = u_xlati36;
  let x_412 : i32 = u_xlati36;
  let x_415 : vec4<f32> = x_277.x_MainLightWorldToShadow[(x_410 / 4i)][(x_412 % 4i)];
  let x_417 : vec3<f32> = vs_TEXCOORD1;
  let x_420 : vec4<f32> = u_xlat4;
  let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.x, x_417.x, x_417.x)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : i32 = u_xlati36;
  let x_428 : i32 = u_xlati36;
  let x_432 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_425 + 2i) / 4i)][((x_428 + 2i) % 4i)];
  let x_434 : vec3<f32> = vs_TEXCOORD1;
  let x_437 : vec4<f32> = u_xlat4;
  let x_439 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_434.z, x_434.z, x_434.z)) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat4;
  let x_444 : i32 = u_xlati36;
  let x_447 : i32 = u_xlati36;
  let x_451 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_444 + 3i) / 4i)][((x_447 + 3i) % 4i)];
  let x_453 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) + vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_457 : f32 = vs_TEXCOORD1.y;
  let x_460 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat36 = (x_457 * x_460);
  let x_463 : f32 = x_44.unity_MatrixV[0i].z;
  let x_465 : f32 = vs_TEXCOORD1.x;
  let x_467 : f32 = u_xlat36;
  u_xlat36 = ((x_463 * x_465) + x_467);
  let x_470 : f32 = x_44.unity_MatrixV[2i].z;
  let x_472 : f32 = vs_TEXCOORD1.z;
  let x_474 : f32 = u_xlat36;
  u_xlat36 = ((x_470 * x_472) + x_474);
  let x_476 : f32 = u_xlat36;
  let x_478 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat36 = (x_476 + x_478);
  let x_480 : f32 = u_xlat36;
  let x_484 : f32 = x_44.x_ProjectionParams.y;
  u_xlat36 = (-(x_480) + -(x_484));
  let x_487 : f32 = u_xlat36;
  u_xlat36 = max(x_487, 0.0f);
  let x_489 : f32 = u_xlat36;
  let x_492 : f32 = x_44.unity_FogParams.x;
  u_xlat36 = (x_489 * x_492);
  let x_500 : vec2<f32> = vs_TEXCOORD7;
  let x_502 : f32 = x_44.x_GlobalMipBias.x;
  let x_503 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_500, x_502);
  u_xlat5 = x_503;
  let x_508 : vec2<f32> = vs_TEXCOORD7;
  let x_510 : f32 = x_44.x_GlobalMipBias.x;
  let x_511 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_508, x_510);
  u_xlat6 = vec3<f32>(x_511.x, x_511.y, x_511.z);
  let x_513 : vec4<f32> = u_xlat5;
  let x_517 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_518 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec3<f32> = u_xlat2;
  let x_521 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(x_520, vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_526 : f32 = u_xlat1.x;
  u_xlat1.x = (x_526 + 0.5f);
  let x_529 : vec4<f32> = u_xlat1;
  let x_531 : vec3<f32> = u_xlat6;
  let x_532 : vec3<f32> = (vec3<f32>(x_529.x, x_529.x, x_529.x) * x_531);
  let x_533 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : f32 = u_xlat5.w;
  u_xlat1.x = max(x_536, 0.0001f);
  let x_539 : vec4<f32> = u_xlat5;
  let x_541 : vec4<f32> = u_xlat1;
  let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) / vec3<f32>(x_541.x, x_541.x, x_541.x));
  let x_544 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_548 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_549 : vec2<f32> = vec2<f32>(x_548.x, x_548.y);
  let x_553 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_549.x, x_549.y));
  let x_554 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_553.x, x_553.y, x_554.z);
  let x_556 : vec3<f32> = u_xlat6;
  let x_558 : vec4<f32> = hlslcc_FragCoord;
  let x_560 : vec2<f32> = (vec2<f32>(x_556.x, x_556.y) * vec2<f32>(x_558.x, x_558.y));
  let x_561 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_560.x, x_560.y, x_561.z);
  let x_564 : f32 = u_xlat6.y;
  let x_567 : f32 = x_44.x_ScaleBiasRt.x;
  let x_570 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_564 * x_567) + x_570);
  let x_574 : f32 = u_xlat1.x;
  u_xlat6.z = (-(x_574) + 1.0f);
  let x_583 : vec3<f32> = u_xlat6;
  let x_586 : f32 = x_44.x_GlobalMipBias.x;
  let x_587 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_583.x, x_583.z), x_586);
  u_xlat1.x = x_587.x;
  let x_592 : f32 = u_xlat1.x;
  u_xlat38 = (x_592 + -1.0f);
  let x_595 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_596 : f32 = u_xlat38;
  u_xlat38 = ((x_595 * x_596) + 1.0f);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_600, 1.0f);
  let x_604 : vec4<f32> = u_xlat4;
  let x_605 : vec2<f32> = vec2<f32>(x_604.x, x_604.y);
  let x_607 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_605.x, x_605.y, x_607);
  let x_620 : vec3<f32> = txVec0;
  let x_622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_620.xy, x_620.z);
  u_xlat39 = x_622;
  let x_624 : f32 = x_277.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_624) + 1.0f);
  let x_628 : f32 = u_xlat39;
  let x_630 : f32 = x_277.x_MainLightShadowParams.x;
  let x_633 : f32 = u_xlat4.x;
  u_xlat39 = ((x_628 * x_630) + x_633);
  let x_636 : f32 = u_xlat4.z;
  u_xlatb4.x = (0.0f >= x_636);
  let x_641 : f32 = u_xlat4.z;
  u_xlatb16 = (x_641 >= 1.0f);
  let x_643 : bool = u_xlatb16;
  let x_645 : bool = u_xlatb4.x;
  u_xlatb4.x = (x_643 | x_645);
  let x_649 : bool = u_xlatb4.x;
  let x_650 : f32 = u_xlat39;
  u_xlat39 = select(x_650, 1.0f, x_649);
  let x_652 : vec3<f32> = vs_TEXCOORD1;
  let x_656 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_658 : vec3<f32> = (x_652 + -(x_656));
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat4;
  let x_663 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_668 : f32 = u_xlat4.x;
  let x_670 : f32 = x_277.x_MainLightShadowParams.z;
  let x_673 : f32 = x_277.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_668 * x_670) + x_673);
  let x_677 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_677, 0.0f, 1.0f);
  let x_681 : f32 = u_xlat39;
  u_xlat16 = (-(x_681) + 1.0f);
  let x_685 : f32 = u_xlat4.x;
  let x_686 : f32 = u_xlat16;
  let x_688 : f32 = u_xlat39;
  u_xlat39 = ((x_685 * x_686) + x_688);
  let x_696 : f32 = x_694.x_MainLightCookieTextureFormat;
  u_xlatb4.x = !((x_696 == -1.0f));
  let x_700 : bool = u_xlatb4.x;
  if (x_700) {
    let x_703 : vec3<f32> = vs_TEXCOORD1;
    let x_706 : vec4<f32> = x_694.x_MainLightWorldToLight[1i];
    let x_708 : vec2<f32> = (vec2<f32>(x_703.y, x_703.y) * vec2<f32>(x_706.x, x_706.y));
    let x_709 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
    let x_712 : vec4<f32> = x_694.x_MainLightWorldToLight[0i];
    let x_714 : vec3<f32> = vs_TEXCOORD1;
    let x_717 : vec4<f32> = u_xlat4;
    let x_719 : vec2<f32> = ((vec2<f32>(x_712.x, x_712.y) * vec2<f32>(x_714.x, x_714.x)) + vec2<f32>(x_717.x, x_717.y));
    let x_720 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_719.x, x_719.y, x_720.z, x_720.w);
    let x_723 : vec4<f32> = x_694.x_MainLightWorldToLight[2i];
    let x_725 : vec3<f32> = vs_TEXCOORD1;
    let x_728 : vec4<f32> = u_xlat4;
    let x_730 : vec2<f32> = ((vec2<f32>(x_723.x, x_723.y) * vec2<f32>(x_725.z, x_725.z)) + vec2<f32>(x_728.x, x_728.y));
    let x_731 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
    let x_733 : vec4<f32> = u_xlat4;
    let x_736 : vec4<f32> = x_694.x_MainLightWorldToLight[3i];
    let x_738 : vec2<f32> = (vec2<f32>(x_733.x, x_733.y) + vec2<f32>(x_736.x, x_736.y));
    let x_739 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_738.x, x_738.y, x_739.z, x_739.w);
    let x_741 : vec4<f32> = u_xlat4;
    let x_745 : vec2<f32> = ((vec2<f32>(x_741.x, x_741.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_746 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
    let x_753 : vec4<f32> = u_xlat4;
    let x_756 : f32 = x_44.x_GlobalMipBias.x;
    let x_757 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_753.x, x_753.y), x_756);
    u_xlat4 = x_757;
    let x_762 : f32 = x_694.x_MainLightCookieTextureFormat;
    let x_764 : f32 = x_694.x_MainLightCookieTextureFormat;
    let x_766 : f32 = x_694.x_MainLightCookieTextureFormat;
    let x_768 : f32 = x_694.x_MainLightCookieTextureFormat;
    let x_769 : vec4<f32> = vec4<f32>(x_762, x_764, x_766, x_768);
    let x_776 : vec4<bool> = (vec4<f32>(x_769.x, x_769.y, x_769.z, x_769.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb6 = vec2<bool>(x_776.x, x_776.y);
    let x_780 : bool = u_xlatb6.y;
    if (x_780) {
      let x_785 : f32 = u_xlat4.w;
      x_781 = x_785;
    } else {
      let x_788 : f32 = u_xlat4.x;
      x_781 = x_788;
    }
    let x_789 : f32 = x_781;
    u_xlat40 = x_789;
    let x_791 : bool = u_xlatb6.x;
    if (x_791) {
      let x_795 : vec4<f32> = u_xlat4;
      x_792 = vec3<f32>(x_795.x, x_795.y, x_795.z);
    } else {
      let x_798 : f32 = u_xlat40;
      x_792 = vec3<f32>(x_798, x_798, x_798);
    }
    let x_800 : vec3<f32> = x_792;
    let x_801 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_807 : vec4<f32> = u_xlat4;
  let x_810 : vec4<f32> = x_44.x_MainLightColor;
  let x_812 : vec3<f32> = (vec3<f32>(x_807.x, x_807.y, x_807.z) * vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : f32 = u_xlat38;
  let x_817 : vec4<f32> = u_xlat4;
  let x_819 : vec3<f32> = (vec3<f32>(x_815, x_815, x_815) * vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat1;
  let x_824 : vec4<f32> = u_xlat5;
  let x_826 : vec3<f32> = (vec3<f32>(x_822.x, x_822.x, x_822.x) * vec3<f32>(x_824.x, x_824.y, x_824.z));
  let x_827 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : f32 = u_xlat39;
  let x_835 : f32 = x_833.unity_LightData.z;
  u_xlat1.x = (x_829 * x_835);
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec4<f32> = u_xlat4;
  let x_842 : vec3<f32> = (vec3<f32>(x_838.x, x_838.x, x_838.x) * vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec3<f32> = u_xlat2;
  let x_847 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_845, vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_852 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_852, 0.0f, 1.0f);
  let x_855 : vec4<f32> = u_xlat1;
  let x_857 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec3<f32>(x_855.x, x_855.x, x_855.x) * vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_861 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_861 * 10.0f) + 1.0f);
  let x_867 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_867);
  let x_870 : vec3<f32> = u_xlat3;
  let x_871 : vec3<f32> = u_xlat12;
  let x_875 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_870 * vec3<f32>(x_871.x, x_871.x, x_871.x)) + vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : vec3<f32> = u_xlat7;
  let x_879 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_878, x_879);
  let x_881 : f32 = u_xlat39;
  u_xlat39 = max(x_881, 1.17549435e-37f);
  let x_883 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_883);
  let x_885 : f32 = u_xlat39;
  let x_887 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_885, x_885, x_885) * x_887);
  let x_889 : vec3<f32> = u_xlat2;
  let x_890 : vec3<f32> = u_xlat7;
  u_xlat39 = dot(x_889, x_890);
  let x_892 : f32 = u_xlat39;
  u_xlat39 = clamp(x_892, 0.0f, 1.0f);
  let x_894 : f32 = u_xlat39;
  u_xlat39 = log2(x_894);
  let x_897 : f32 = u_xlat1.x;
  let x_898 : f32 = u_xlat39;
  u_xlat39 = (x_897 * x_898);
  let x_900 : f32 = u_xlat39;
  u_xlat39 = exp2(x_900);
  let x_902 : f32 = u_xlat39;
  let x_905 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_902, x_902, x_902) * vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = u_xlat4;
  let x_910 : vec3<f32> = u_xlat7;
  let x_911 : vec3<f32> = (vec3<f32>(x_908.x, x_908.y, x_908.z) * x_910);
  let x_912 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec3<f32> = u_xlat6;
  let x_915 : vec4<f32> = u_xlat1;
  let x_918 : vec4<f32> = u_xlat4;
  let x_920 : vec3<f32> = ((x_914 * vec3<f32>(x_915.y, x_915.z, x_915.w)) + vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_925 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_927 : f32 = x_833.unity_LightData.y;
  u_xlat39 = min(x_925, x_927);
  let x_930 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_930));
  let x_934 : f32 = x_694.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_936 : f32 = x_694.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_938 : f32 = x_694.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_940 : f32 = x_694.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_941 : vec4<f32> = vec4<f32>(x_934, x_936, x_938, x_940);
  let x_947 : vec4<bool> = (vec4<f32>(x_941.x, x_941.y, x_941.z, x_941.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_947.x, x_947.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_958 : u32 = u_xlatu_loop_1;
    let x_959 : u32 = u_xlatu39;
    if ((x_958 < x_959)) {
    } else {
      break;
    }
    let x_962 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_962 >> 2u);
    let x_965 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_965 & 3u));
    let x_969 : u32 = u_xlatu41;
    let x_972 : vec4<f32> = x_833.unity_LightIndices[bitcast<i32>(x_969)];
    let x_982 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_987 : vec4<u32> = indexable[x_982];
    u_xlat41 = dot(x_972, bitcast<vec4<f32>>(x_987));
    let x_990 : f32 = u_xlat41;
    u_xlatu41 = bitcast<u32>(i32(x_990));
    let x_994 : vec3<f32> = vs_TEXCOORD1;
    let x_1006 : u32 = u_xlatu41;
    let x_1009 : vec4<f32> = x_1005.x_AdditionalLightsPosition[bitcast<i32>(x_1006)];
    let x_1012 : u32 = u_xlatu41;
    let x_1015 : vec4<f32> = x_1005.x_AdditionalLightsPosition[bitcast<i32>(x_1012)];
    u_xlat8 = ((-(x_994) * vec3<f32>(x_1009.w, x_1009.w, x_1009.w)) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
    let x_1019 : vec3<f32> = u_xlat8;
    let x_1020 : vec3<f32> = u_xlat8;
    u_xlat30 = dot(x_1019, x_1020);
    let x_1022 : f32 = u_xlat30;
    u_xlat30 = max(x_1022, 6.10351562e-05f);
    let x_1026 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1026);
    let x_1028 : f32 = u_xlat42;
    let x_1030 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1028, x_1028, x_1028) * x_1030);
    let x_1032 : f32 = u_xlat30;
    u_xlat42 = (1.0f / x_1032);
    let x_1034 : f32 = u_xlat30;
    let x_1035 : u32 = u_xlatu41;
    let x_1038 : f32 = x_1005.x_AdditionalLightsAttenuation[bitcast<i32>(x_1035)].x;
    u_xlat30 = (x_1034 * x_1038);
    let x_1040 : f32 = u_xlat30;
    let x_1042 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1040) * x_1042) + 1.0f);
    let x_1045 : f32 = u_xlat30;
    u_xlat30 = max(x_1045, 0.0f);
    let x_1047 : f32 = u_xlat30;
    let x_1048 : f32 = u_xlat30;
    u_xlat30 = (x_1047 * x_1048);
    let x_1050 : f32 = u_xlat30;
    let x_1051 : f32 = u_xlat42;
    u_xlat30 = (x_1050 * x_1051);
    let x_1053 : u32 = u_xlatu41;
    let x_1056 : vec4<f32> = x_1005.x_AdditionalLightsSpotDir[bitcast<i32>(x_1053)];
    let x_1058 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1056.x, x_1056.y, x_1056.z), x_1058);
    let x_1060 : f32 = u_xlat42;
    let x_1061 : u32 = u_xlatu41;
    let x_1064 : f32 = x_1005.x_AdditionalLightsAttenuation[bitcast<i32>(x_1061)].z;
    let x_1066 : u32 = u_xlatu41;
    let x_1069 : f32 = x_1005.x_AdditionalLightsAttenuation[bitcast<i32>(x_1066)].w;
    u_xlat42 = ((x_1060 * x_1064) + x_1069);
    let x_1071 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1071, 0.0f, 1.0f);
    let x_1073 : f32 = u_xlat42;
    let x_1074 : f32 = u_xlat42;
    u_xlat42 = (x_1073 * x_1074);
    let x_1076 : f32 = u_xlat42;
    let x_1077 : f32 = u_xlat30;
    u_xlat30 = (x_1076 * x_1077);
    let x_1080 : u32 = u_xlatu41;
    u_xlatu42 = (x_1080 >> 5u);
    let x_1083 : u32 = u_xlatu41;
    u_xlati43 = (1i << bitcast<u32>((bitcast<i32>(x_1083) & 31i)));
    let x_1089 : i32 = u_xlati43;
    let x_1091 : u32 = u_xlatu42;
    let x_1094 : f32 = x_694.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1091)].el;
    u_xlati42 = bitcast<i32>((bitcast<u32>(x_1089) & bitcast<u32>(x_1094)));
    let x_1098 : i32 = u_xlati42;
    if ((x_1098 != 0i)) {
      let x_1108 : u32 = u_xlatu41;
      let x_1111 : f32 = x_1107.x_AdditionalLightsLightTypes[bitcast<i32>(x_1108)].el;
      u_xlati42 = i32(x_1111);
      let x_1113 : i32 = u_xlati42;
      u_xlati43 = select(1i, 0i, (x_1113 != 0i));
      let x_1117 : u32 = u_xlatu41;
      u_xlati44 = (bitcast<i32>(x_1117) << bitcast<u32>(2i));
      let x_1120 : i32 = u_xlati43;
      if ((x_1120 != 0i)) {
        let x_1125 : vec3<f32> = vs_TEXCOORD1;
        let x_1127 : i32 = u_xlati44;
        let x_1130 : i32 = u_xlati44;
        let x_1134 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1127 + 1i) / 4i)][((x_1130 + 1i) % 4i)];
        let x_1136 : vec3<f32> = (vec3<f32>(x_1125.y, x_1125.y, x_1125.y) * vec3<f32>(x_1134.x, x_1134.y, x_1134.w));
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
        let x_1139 : i32 = u_xlati44;
        let x_1141 : i32 = u_xlati44;
        let x_1144 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[(x_1139 / 4i)][(x_1141 % 4i)];
        let x_1146 : vec3<f32> = vs_TEXCOORD1;
        let x_1149 : vec4<f32> = u_xlat9;
        let x_1151 : vec3<f32> = ((vec3<f32>(x_1144.x, x_1144.y, x_1144.w) * vec3<f32>(x_1146.x, x_1146.x, x_1146.x)) + vec3<f32>(x_1149.x, x_1149.y, x_1149.z));
        let x_1152 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
        let x_1154 : i32 = u_xlati44;
        let x_1157 : i32 = u_xlati44;
        let x_1161 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1154 + 2i) / 4i)][((x_1157 + 2i) % 4i)];
        let x_1163 : vec3<f32> = vs_TEXCOORD1;
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1168 : vec3<f32> = ((vec3<f32>(x_1161.x, x_1161.y, x_1161.w) * vec3<f32>(x_1163.z, x_1163.z, x_1163.z)) + vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1173 : i32 = u_xlati44;
        let x_1176 : i32 = u_xlati44;
        let x_1180 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1173 + 3i) / 4i)][((x_1176 + 3i) % 4i)];
        let x_1182 : vec3<f32> = (vec3<f32>(x_1171.x, x_1171.y, x_1171.z) + vec3<f32>(x_1180.x, x_1180.y, x_1180.w));
        let x_1183 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat9;
        let x_1187 : vec4<f32> = u_xlat9;
        let x_1189 : vec2<f32> = (vec2<f32>(x_1185.x, x_1185.y) / vec2<f32>(x_1187.z, x_1187.z));
        let x_1190 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1195 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1196 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
        let x_1198 : vec4<f32> = u_xlat9;
        let x_1202 : vec2<f32> = clamp(vec2<f32>(x_1198.x, x_1198.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1203 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1203.w);
        let x_1205 : u32 = u_xlatu41;
        let x_1208 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1205)];
        let x_1210 : vec4<f32> = u_xlat9;
        let x_1213 : u32 = u_xlatu41;
        let x_1216 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1213)];
        let x_1218 : vec2<f32> = ((vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(x_1210.x, x_1210.y)) + vec2<f32>(x_1216.z, x_1216.w));
        let x_1219 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1218.x, x_1218.y, x_1219.z, x_1219.w);
      } else {
        let x_1223 : i32 = u_xlati42;
        u_xlatb42 = (x_1223 == 1i);
        let x_1225 : bool = u_xlatb42;
        u_xlati42 = select(0i, 1i, x_1225);
        let x_1227 : i32 = u_xlati42;
        if ((x_1227 != 0i)) {
          let x_1233 : vec3<f32> = vs_TEXCOORD1;
          let x_1235 : i32 = u_xlati44;
          let x_1238 : i32 = u_xlati44;
          let x_1242 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1235 + 1i) / 4i)][((x_1238 + 1i) % 4i)];
          u_xlat33 = (vec2<f32>(x_1233.y, x_1233.y) * vec2<f32>(x_1242.x, x_1242.y));
          let x_1245 : i32 = u_xlati44;
          let x_1247 : i32 = u_xlati44;
          let x_1250 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[(x_1245 / 4i)][(x_1247 % 4i)];
          let x_1252 : vec3<f32> = vs_TEXCOORD1;
          let x_1255 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1250.x, x_1250.y) * vec2<f32>(x_1252.x, x_1252.x)) + x_1255);
          let x_1257 : i32 = u_xlati44;
          let x_1260 : i32 = u_xlati44;
          let x_1264 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1257 + 2i) / 4i)][((x_1260 + 2i) % 4i)];
          let x_1266 : vec3<f32> = vs_TEXCOORD1;
          let x_1269 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1266.z, x_1266.z)) + x_1269);
          let x_1271 : vec2<f32> = u_xlat33;
          let x_1272 : i32 = u_xlati44;
          let x_1275 : i32 = u_xlati44;
          let x_1279 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1272 + 3i) / 4i)][((x_1275 + 3i) % 4i)];
          u_xlat33 = (x_1271 + vec2<f32>(x_1279.x, x_1279.y));
          let x_1282 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1282 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1285 : vec2<f32> = u_xlat33;
          u_xlat33 = fract(x_1285);
          let x_1287 : u32 = u_xlatu41;
          let x_1290 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1287)];
          let x_1292 : vec2<f32> = u_xlat33;
          let x_1294 : u32 = u_xlatu41;
          let x_1297 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1294)];
          let x_1299 : vec2<f32> = ((vec2<f32>(x_1290.x, x_1290.y) * x_1292) + vec2<f32>(x_1297.z, x_1297.w));
          let x_1300 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1300.w);
        } else {
          let x_1304 : vec3<f32> = vs_TEXCOORD1;
          let x_1306 : i32 = u_xlati44;
          let x_1309 : i32 = u_xlati44;
          let x_1313 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1306 + 1i) / 4i)][((x_1309 + 1i) % 4i)];
          u_xlat10 = (vec4<f32>(x_1304.y, x_1304.y, x_1304.y, x_1304.y) * x_1313);
          let x_1315 : i32 = u_xlati44;
          let x_1317 : i32 = u_xlati44;
          let x_1320 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[(x_1315 / 4i)][(x_1317 % 4i)];
          let x_1321 : vec3<f32> = vs_TEXCOORD1;
          let x_1324 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1320 * vec4<f32>(x_1321.x, x_1321.x, x_1321.x, x_1321.x)) + x_1324);
          let x_1326 : i32 = u_xlati44;
          let x_1329 : i32 = u_xlati44;
          let x_1333 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1326 + 2i) / 4i)][((x_1329 + 2i) % 4i)];
          let x_1334 : vec3<f32> = vs_TEXCOORD1;
          let x_1337 : vec4<f32> = u_xlat10;
          u_xlat10 = ((x_1333 * vec4<f32>(x_1334.z, x_1334.z, x_1334.z, x_1334.z)) + x_1337);
          let x_1339 : vec4<f32> = u_xlat10;
          let x_1340 : i32 = u_xlati44;
          let x_1343 : i32 = u_xlati44;
          let x_1347 : vec4<f32> = x_1107.x_AdditionalLightsWorldToLights[((x_1340 + 3i) / 4i)][((x_1343 + 3i) % 4i)];
          u_xlat10 = (x_1339 + x_1347);
          let x_1349 : vec4<f32> = u_xlat10;
          let x_1351 : vec4<f32> = u_xlat10;
          let x_1353 : vec3<f32> = (vec3<f32>(x_1349.x, x_1349.y, x_1349.z) / vec3<f32>(x_1351.w, x_1351.w, x_1351.w));
          let x_1354 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
          let x_1356 : vec4<f32> = u_xlat10;
          let x_1358 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(vec3<f32>(x_1356.x, x_1356.y, x_1356.z), vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
          let x_1361 : f32 = u_xlat42;
          u_xlat42 = inverseSqrt(x_1361);
          let x_1363 : f32 = u_xlat42;
          let x_1365 : vec4<f32> = u_xlat10;
          let x_1367 : vec3<f32> = (vec3<f32>(x_1363, x_1363, x_1363) * vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
          let x_1368 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
          let x_1370 : vec4<f32> = u_xlat10;
          u_xlat42 = dot(abs(vec3<f32>(x_1370.x, x_1370.y, x_1370.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1375 : f32 = u_xlat42;
          u_xlat42 = max(x_1375, 0.000001f);
          let x_1378 : f32 = u_xlat42;
          u_xlat42 = (1.0f / x_1378);
          let x_1381 : f32 = u_xlat42;
          let x_1383 : vec4<f32> = u_xlat10;
          u_xlat11 = (vec3<f32>(x_1381, x_1381, x_1381) * vec3<f32>(x_1383.z, x_1383.x, x_1383.y));
          let x_1387 : f32 = u_xlat11.x;
          u_xlat11.x = -(x_1387);
          let x_1391 : f32 = u_xlat11.x;
          u_xlat11.x = clamp(x_1391, 0.0f, 1.0f);
          let x_1395 : vec3<f32> = u_xlat11;
          let x_1398 : vec4<bool> = (vec4<f32>(x_1395.y, x_1395.z, x_1395.y, x_1395.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb33 = vec2<bool>(x_1398.x, x_1398.y);
          let x_1401 : bool = u_xlatb33.x;
          if (x_1401) {
            let x_1406 : f32 = u_xlat11.x;
            x_1402 = x_1406;
          } else {
            let x_1409 : f32 = u_xlat11.x;
            x_1402 = -(x_1409);
          }
          let x_1411 : f32 = x_1402;
          u_xlat33.x = x_1411;
          let x_1414 : bool = u_xlatb33.y;
          if (x_1414) {
            let x_1419 : f32 = u_xlat11.x;
            x_1415 = x_1419;
          } else {
            let x_1422 : f32 = u_xlat11.x;
            x_1415 = -(x_1422);
          }
          let x_1424 : f32 = x_1415;
          u_xlat33.y = x_1424;
          let x_1426 : vec4<f32> = u_xlat10;
          let x_1428 : f32 = u_xlat42;
          let x_1431 : vec2<f32> = u_xlat33;
          u_xlat33 = ((vec2<f32>(x_1426.x, x_1426.y) * vec2<f32>(x_1428, x_1428)) + x_1431);
          let x_1433 : vec2<f32> = u_xlat33;
          u_xlat33 = ((x_1433 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1436 : vec2<f32> = u_xlat33;
          u_xlat33 = clamp(x_1436, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1440 : u32 = u_xlatu41;
          let x_1443 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1440)];
          let x_1445 : vec2<f32> = u_xlat33;
          let x_1447 : u32 = u_xlatu41;
          let x_1450 : vec4<f32> = x_1107.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1447)];
          let x_1452 : vec2<f32> = ((vec2<f32>(x_1443.x, x_1443.y) * x_1445) + vec2<f32>(x_1450.z, x_1450.w));
          let x_1453 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1452.x, x_1452.y, x_1453.z, x_1453.w);
        }
      }
      let x_1460 : vec4<f32> = u_xlat9;
      let x_1463 : f32 = x_44.x_GlobalMipBias.x;
      let x_1464 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1460.x, x_1460.y), x_1463);
      u_xlat9 = x_1464;
      let x_1466 : bool = u_xlatb6.y;
      if (x_1466) {
        let x_1471 : f32 = u_xlat9.w;
        x_1467 = x_1471;
      } else {
        let x_1474 : f32 = u_xlat9.x;
        x_1467 = x_1474;
      }
      let x_1475 : f32 = x_1467;
      u_xlat42 = x_1475;
      let x_1477 : bool = u_xlatb6.x;
      if (x_1477) {
        let x_1481 : vec4<f32> = u_xlat9;
        x_1478 = vec3<f32>(x_1481.x, x_1481.y, x_1481.z);
      } else {
        let x_1484 : f32 = u_xlat42;
        x_1478 = vec3<f32>(x_1484, x_1484, x_1484);
      }
      let x_1486 : vec3<f32> = x_1478;
      let x_1487 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
    } else {
      u_xlat9.x = 1.0f;
      u_xlat9.y = 1.0f;
      u_xlat9.z = 1.0f;
    }
    let x_1493 : vec4<f32> = u_xlat9;
    let x_1495 : u32 = u_xlatu41;
    let x_1498 : vec4<f32> = x_1005.x_AdditionalLightsColor[bitcast<i32>(x_1495)];
    let x_1500 : vec3<f32> = (vec3<f32>(x_1493.x, x_1493.y, x_1493.z) * vec3<f32>(x_1498.x, x_1498.y, x_1498.z));
    let x_1501 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
    let x_1503 : f32 = u_xlat38;
    let x_1505 : vec4<f32> = u_xlat9;
    let x_1507 : vec3<f32> = (vec3<f32>(x_1503, x_1503, x_1503) * vec3<f32>(x_1505.x, x_1505.y, x_1505.z));
    let x_1508 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1507.x, x_1507.y, x_1507.z, x_1508.w);
    let x_1510 : f32 = u_xlat30;
    let x_1512 : vec4<f32> = u_xlat9;
    let x_1514 : vec3<f32> = (vec3<f32>(x_1510, x_1510, x_1510) * vec3<f32>(x_1512.x, x_1512.y, x_1512.z));
    let x_1515 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1514.x, x_1514.y, x_1514.z, x_1515.w);
    let x_1517 : vec3<f32> = u_xlat2;
    let x_1518 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1517, x_1518);
    let x_1520 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1520, 0.0f, 1.0f);
    let x_1522 : f32 = u_xlat41;
    let x_1524 : vec4<f32> = u_xlat9;
    let x_1526 : vec3<f32> = (vec3<f32>(x_1522, x_1522, x_1522) * vec3<f32>(x_1524.x, x_1524.y, x_1524.z));
    let x_1527 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1526.x, x_1526.y, x_1526.z, x_1527.w);
    let x_1529 : vec3<f32> = u_xlat3;
    let x_1530 : vec3<f32> = u_xlat12;
    let x_1533 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1529 * vec3<f32>(x_1530.x, x_1530.x, x_1530.x)) + x_1533);
    let x_1535 : vec3<f32> = u_xlat8;
    let x_1536 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1535, x_1536);
    let x_1538 : f32 = u_xlat41;
    u_xlat41 = max(x_1538, 1.17549435e-37f);
    let x_1540 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1540);
    let x_1542 : f32 = u_xlat41;
    let x_1544 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1542, x_1542, x_1542) * x_1544);
    let x_1546 : vec3<f32> = u_xlat2;
    let x_1547 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1546, x_1547);
    let x_1549 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1549, 0.0f, 1.0f);
    let x_1551 : f32 = u_xlat41;
    u_xlat41 = log2(x_1551);
    let x_1554 : f32 = u_xlat1.x;
    let x_1555 : f32 = u_xlat41;
    u_xlat41 = (x_1554 * x_1555);
    let x_1557 : f32 = u_xlat41;
    u_xlat41 = exp2(x_1557);
    let x_1559 : f32 = u_xlat41;
    let x_1562 : vec4<f32> = x_57.x_SpecColor;
    u_xlat8 = (vec3<f32>(x_1559, x_1559, x_1559) * vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
    let x_1565 : vec3<f32> = u_xlat8;
    let x_1566 : vec4<f32> = u_xlat9;
    u_xlat8 = (x_1565 * vec3<f32>(x_1566.x, x_1566.y, x_1566.z));
    let x_1569 : vec4<f32> = u_xlat10;
    let x_1571 : vec4<f32> = u_xlat1;
    let x_1574 : vec3<f32> = u_xlat8;
    u_xlat8 = ((vec3<f32>(x_1569.x, x_1569.y, x_1569.z) * vec3<f32>(x_1571.y, x_1571.z, x_1571.w)) + x_1574);
    let x_1576 : vec3<f32> = u_xlat7;
    let x_1577 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1576 + x_1577);

    continuing {
      let x_1579 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1579 + bitcast<u32>(1i));
    }
  }
  let x_1581 : vec4<f32> = u_xlat5;
  let x_1583 : vec4<f32> = u_xlat1;
  let x_1586 : vec4<f32> = u_xlat4;
  let x_1588 : vec3<f32> = ((vec3<f32>(x_1581.x, x_1581.y, x_1581.z) * vec3<f32>(x_1583.y, x_1583.z, x_1583.w)) + vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
  let x_1589 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1588.x, x_1588.y, x_1588.z, x_1589.w);
  let x_1591 : vec3<f32> = u_xlat7;
  let x_1592 : vec4<f32> = u_xlat1;
  let x_1594 : vec3<f32> = (x_1591 + vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
  let x_1595 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
  let x_1597 : f32 = u_xlat36;
  let x_1598 : f32 = u_xlat36;
  u_xlat12.x = (x_1597 * -(x_1598));
  let x_1603 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1603);
  let x_1606 : vec4<f32> = u_xlat1;
  let x_1610 : vec4<f32> = x_44.unity_FogColor;
  let x_1613 : vec3<f32> = (vec3<f32>(x_1606.x, x_1606.y, x_1606.z) + -(vec3<f32>(x_1610.x, x_1610.y, x_1610.z)));
  let x_1614 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1614.w);
  let x_1618 : vec3<f32> = u_xlat12;
  let x_1620 : vec4<f32> = u_xlat1;
  let x_1624 : vec4<f32> = x_44.unity_FogColor;
  let x_1626 : vec3<f32> = ((vec3<f32>(x_1618.x, x_1618.x, x_1618.x) * vec3<f32>(x_1620.x, x_1620.y, x_1620.z)) + vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
  let x_1627 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
  let x_1630 : f32 = x_57.x_Surface;
  u_xlatb12 = (x_1630 == 1.0f);
  let x_1632 : bool = u_xlatb12;
  let x_1633 : bool = u_xlatb24;
  u_xlatb12 = (x_1632 | x_1633);
  let x_1635 : bool = u_xlatb12;
  if (x_1635) {
    let x_1640 : f32 = u_xlat0.x;
    x_1636 = x_1640;
  } else {
    x_1636 = 1.0f;
  }
  let x_1642 : f32 = x_1636;
  SV_Target0.w = x_1642;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

