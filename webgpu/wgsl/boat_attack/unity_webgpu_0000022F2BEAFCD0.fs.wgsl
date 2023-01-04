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
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_338 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_882 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat30 : f32;
  var u_xlatb20 : bool;
  var x_131 : f32;
  var u_xlatb10 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlatb12 : bool;
  var x_241 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu30 : u32;
  var u_xlati30 : i32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlatb14 : bool;
  var u_xlat14 : f32;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var u_xlat35 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var x_1077 : f32;
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
  u_xlat10.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat30;
  let x_105 : f32 = u_xlat20;
  u_xlat20 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat20;
  u_xlat20 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat10.x;
  let x_113 : f32 = u_xlat20;
  u_xlat10.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat10.x;
  u_xlat10.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb20;
  if (x_130) {
    let x_135 : f32 = u_xlat10.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat10.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat10.x;
  u_xlatb10 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb10;
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
  let x_185 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_184.x, x_185.y, x_184.y);
  let x_187 : vec3<f32> = u_xlat10;
  let x_189 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_187.x, x_187.z), vec2<f32>(x_189.x, x_189.z));
  let x_194 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_194, 1.0f);
  let x_198 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_198) + 1.0f);
  let x_203 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_203);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_207, 1.00000002e-16f);
  let x_211 : vec4<f32> = hlslcc_FragCoord;
  let x_215 : f32 = x_44.x_DitheringTextureInvSize;
  let x_217 : vec2<f32> = (vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_215, x_215));
  let x_218 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_217.x, x_217.y, x_218.z);
  let x_225 : vec3<f32> = u_xlat2;
  let x_228 : f32 = x_44.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_225.x, x_225.y), x_228);
  u_xlat2.x = x_229.w;
  let x_238 : f32 = x_236.unity_LODFade.x;
  u_xlatb12 = (x_238 >= 0.0f);
  let x_240 : bool = u_xlatb12;
  if (x_240) {
    let x_245 : f32 = u_xlat2.x;
    x_241 = abs(x_245);
  } else {
    let x_249 : f32 = u_xlat2.x;
    x_241 = -(abs(x_249));
  }
  let x_252 : f32 = x_241;
  u_xlat2.x = x_252;
  let x_255 : f32 = u_xlat2.x;
  let x_258 : f32 = x_236.unity_LODFade.x;
  u_xlat2.x = (-(x_255) + x_258);
  let x_263 : f32 = u_xlat2.x;
  u_xlatb2 = (x_263 < 0.0f);
  let x_265 : bool = u_xlatb2;
  if (((select(0i, 1i, x_265) * -1i) != 0i)) {
    discard;
  }
  let x_272 : vec3<f32> = u_xlat10;
  let x_275 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_272.z, x_272.z, x_272.z) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec3<f32> = u_xlat10;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_278.x, x_278.x, x_278.x) * vec3<f32>(x_281.x, x_281.y, x_281.z)) + x_284);
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = vs_TEXCOORD2;
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z)) + x_292);
  let x_294 : vec3<f32> = u_xlat2;
  let x_295 : vec3<f32> = u_xlat2;
  u_xlat10.x = dot(x_294, x_295);
  let x_299 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_299);
  let x_302 : vec3<f32> = u_xlat10;
  let x_304 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304);
  let x_308 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_308;
  let x_311 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_311;
  let x_315 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_315;
  let x_317 : vec3<f32> = u_xlat3;
  let x_318 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_317, x_318);
  let x_322 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_322, 1.17549435e-37f);
  let x_327 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_327);
  let x_333 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres0;
  let x_343 : vec3<f32> = (x_333 + -(vec3<f32>(x_340.x, x_340.y, x_340.z)));
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : vec3<f32> = vs_TEXCOORD1;
  let x_349 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres1;
  let x_352 : vec3<f32> = (x_347 + -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_356 : vec3<f32> = vs_TEXCOORD1;
  let x_359 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_356 + -(vec3<f32>(x_359.x, x_359.y, x_359.z)));
  let x_364 : vec3<f32> = vs_TEXCOORD1;
  let x_366 : vec4<f32> = x_338.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_364 + -(vec3<f32>(x_366.x, x_366.y, x_366.z)));
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_376 : vec4<f32> = u_xlat5;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_376.x, x_376.y, x_376.z), vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_382 : vec3<f32> = u_xlat6;
  let x_383 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_382, x_383);
  let x_386 : vec3<f32> = u_xlat7;
  let x_387 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_386, x_387);
  let x_393 : vec4<f32> = u_xlat4;
  let x_396 : vec4<f32> = x_338.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_393 < x_396);
  let x_399 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_399);
  let x_403 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_403);
  let x_407 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_407);
  let x_411 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_411);
  let x_415 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_415);
  let x_420 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_420);
  let x_424 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_424);
  let x_427 : vec4<f32> = u_xlat4;
  let x_429 : vec4<f32> = u_xlat5;
  let x_431 : vec3<f32> = (vec3<f32>(x_427.x, x_427.y, x_427.z) + vec3<f32>(x_429.y, x_429.z, x_429.w));
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat4;
  let x_437 : vec3<f32> = max(vec3<f32>(x_434.x, x_434.y, x_434.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_438.x, x_437.x, x_437.y, x_437.z);
  let x_440 : vec4<f32> = u_xlat5;
  u_xlat30 = dot(x_440, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_445 : f32 = u_xlat30;
  u_xlat30 = (-(x_445) + 4.0f);
  let x_450 : f32 = u_xlat30;
  u_xlatu30 = u32(x_450);
  let x_454 : u32 = u_xlatu30;
  u_xlati30 = (bitcast<i32>(x_454) << bitcast<u32>(2i));
  let x_457 : vec3<f32> = vs_TEXCOORD1;
  let x_459 : i32 = u_xlati30;
  let x_462 : i32 = u_xlati30;
  let x_466 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_459 + 1i) / 4i)][((x_462 + 1i) % 4i)];
  let x_468 : vec3<f32> = (vec3<f32>(x_457.y, x_457.y, x_457.y) * vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : i32 = u_xlati30;
  let x_473 : i32 = u_xlati30;
  let x_476 : vec4<f32> = x_338.x_MainLightWorldToShadow[(x_471 / 4i)][(x_473 % 4i)];
  let x_478 : vec3<f32> = vs_TEXCOORD1;
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_478.x, x_478.x, x_478.x)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : i32 = u_xlati30;
  let x_489 : i32 = u_xlati30;
  let x_493 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_486 + 2i) / 4i)][((x_489 + 2i) % 4i)];
  let x_495 : vec3<f32> = vs_TEXCOORD1;
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec3<f32> = ((vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_495.z, x_495.z, x_495.z)) + vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat4;
  let x_505 : i32 = u_xlati30;
  let x_508 : i32 = u_xlati30;
  let x_512 : vec4<f32> = x_338.x_MainLightWorldToShadow[((x_505 + 3i) / 4i)][((x_508 + 3i) % 4i)];
  let x_514 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : f32 = vs_TEXCOORD1.y;
  let x_521 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat30 = (x_518 * x_521);
  let x_524 : f32 = x_44.unity_MatrixV[0i].z;
  let x_526 : f32 = vs_TEXCOORD1.x;
  let x_528 : f32 = u_xlat30;
  u_xlat30 = ((x_524 * x_526) + x_528);
  let x_531 : f32 = x_44.unity_MatrixV[2i].z;
  let x_533 : f32 = vs_TEXCOORD1.z;
  let x_535 : f32 = u_xlat30;
  u_xlat30 = ((x_531 * x_533) + x_535);
  let x_537 : f32 = u_xlat30;
  let x_539 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat30 = (x_537 + x_539);
  let x_541 : f32 = u_xlat30;
  let x_545 : f32 = x_44.x_ProjectionParams.y;
  u_xlat30 = (-(x_541) + -(x_545));
  let x_548 : f32 = u_xlat30;
  u_xlat30 = max(x_548, 0.0f);
  let x_550 : f32 = u_xlat30;
  let x_553 : f32 = x_44.unity_FogParams.x;
  u_xlat30 = (x_550 * x_553);
  let x_561 : vec2<f32> = vs_TEXCOORD7;
  let x_563 : f32 = x_44.x_GlobalMipBias.x;
  let x_564 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_561, x_563);
  let x_565 : vec3<f32> = vec3<f32>(x_564.x, x_564.y, x_564.z);
  let x_566 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_570 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_571 : vec2<f32> = vec2<f32>(x_570.x, x_570.y);
  let x_575 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_571.x, x_571.y));
  let x_576 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_575.x, x_575.y, x_576.z);
  let x_578 : vec3<f32> = u_xlat6;
  let x_580 : vec4<f32> = hlslcc_FragCoord;
  let x_582 : vec2<f32> = (vec2<f32>(x_578.x, x_578.y) * vec2<f32>(x_580.x, x_580.y));
  let x_583 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_582.x, x_582.y, x_583.z);
  let x_586 : f32 = u_xlat6.y;
  let x_589 : f32 = x_44.x_ScaleBiasRt.x;
  let x_592 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_586 * x_589) + x_592);
  let x_596 : f32 = u_xlat1.x;
  u_xlat6.z = (-(x_596) + 1.0f);
  let x_605 : vec3<f32> = u_xlat6;
  let x_608 : f32 = x_44.x_GlobalMipBias.x;
  let x_609 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_605.x, x_605.z), x_608);
  u_xlat1.x = x_609.x;
  let x_614 : f32 = u_xlat1.x;
  u_xlat32 = (x_614 + -1.0f);
  let x_617 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_618 : f32 = u_xlat32;
  u_xlat32 = ((x_617 * x_618) + 1.0f);
  let x_622 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_622, 1.0f);
  let x_626 : vec4<f32> = u_xlat4;
  let x_627 : vec2<f32> = vec2<f32>(x_626.x, x_626.y);
  let x_629 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_627.x, x_627.y, x_629);
  let x_642 : vec3<f32> = txVec0;
  let x_644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_642.xy, x_642.z);
  u_xlat33 = x_644;
  let x_646 : f32 = x_338.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_646) + 1.0f);
  let x_650 : f32 = u_xlat33;
  let x_652 : f32 = x_338.x_MainLightShadowParams.x;
  let x_655 : f32 = u_xlat4.x;
  u_xlat33 = ((x_650 * x_652) + x_655);
  let x_658 : f32 = u_xlat4.z;
  u_xlatb4.x = (0.0f >= x_658);
  let x_663 : f32 = u_xlat4.z;
  u_xlatb14 = (x_663 >= 1.0f);
  let x_665 : bool = u_xlatb14;
  let x_667 : bool = u_xlatb4.x;
  u_xlatb4.x = (x_665 | x_667);
  let x_671 : bool = u_xlatb4.x;
  let x_672 : f32 = u_xlat33;
  u_xlat33 = select(x_672, 1.0f, x_671);
  let x_674 : vec3<f32> = vs_TEXCOORD1;
  let x_678 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_680 : vec3<f32> = (x_674 + -(x_678));
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec4<f32> = u_xlat4;
  let x_685 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_683.x, x_683.y, x_683.z), vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_690 : f32 = u_xlat4.x;
  let x_692 : f32 = x_338.x_MainLightShadowParams.z;
  let x_695 : f32 = x_338.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_690 * x_692) + x_695);
  let x_699 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_699, 0.0f, 1.0f);
  let x_703 : f32 = u_xlat33;
  u_xlat14 = (-(x_703) + 1.0f);
  let x_707 : f32 = u_xlat4.x;
  let x_708 : f32 = u_xlat14;
  let x_710 : f32 = u_xlat33;
  u_xlat33 = ((x_707 * x_708) + x_710);
  let x_712 : f32 = u_xlat32;
  let x_715 : vec4<f32> = x_44.x_MainLightColor;
  let x_717 : vec3<f32> = (vec3<f32>(x_712, x_712, x_712) * vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat1;
  let x_722 : vec4<f32> = u_xlat5;
  let x_724 : vec3<f32> = (vec3<f32>(x_720.x, x_720.x, x_720.x) * vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : f32 = u_xlat33;
  let x_729 : f32 = x_236.unity_LightData.z;
  u_xlat1.x = (x_727 * x_729);
  let x_732 : vec4<f32> = u_xlat1;
  let x_734 : vec4<f32> = u_xlat4;
  let x_736 : vec3<f32> = (vec3<f32>(x_732.x, x_732.x, x_732.x) * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec3<f32> = u_xlat2;
  let x_741 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_739, vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_746 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_746, 0.0f, 1.0f);
  let x_749 : vec4<f32> = u_xlat1;
  let x_751 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec3<f32>(x_749.x, x_749.x, x_749.x) * vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_755 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_755 * 10.0f) + 1.0f);
  let x_761 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_761);
  let x_764 : vec3<f32> = u_xlat3;
  let x_765 : vec3<f32> = u_xlat10;
  let x_769 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_764 * vec3<f32>(x_765.x, x_765.x, x_765.x)) + vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec3<f32> = u_xlat7;
  let x_773 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_772, x_773);
  let x_775 : f32 = u_xlat33;
  u_xlat33 = max(x_775, 1.17549435e-37f);
  let x_777 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_777);
  let x_779 : f32 = u_xlat33;
  let x_781 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_779, x_779, x_779) * x_781);
  let x_783 : vec3<f32> = u_xlat2;
  let x_784 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_783, x_784);
  let x_786 : f32 = u_xlat33;
  u_xlat33 = clamp(x_786, 0.0f, 1.0f);
  let x_788 : f32 = u_xlat33;
  u_xlat33 = log2(x_788);
  let x_791 : f32 = u_xlat1.x;
  let x_792 : f32 = u_xlat33;
  u_xlat33 = (x_791 * x_792);
  let x_794 : f32 = u_xlat33;
  u_xlat33 = exp2(x_794);
  let x_796 : f32 = u_xlat33;
  let x_799 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_796, x_796, x_796) * vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : vec4<f32> = u_xlat4;
  let x_804 : vec3<f32> = u_xlat7;
  let x_805 : vec3<f32> = (vec3<f32>(x_802.x, x_802.y, x_802.z) * x_804);
  let x_806 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec3<f32> = u_xlat6;
  let x_809 : vec4<f32> = u_xlat1;
  let x_812 : vec4<f32> = u_xlat4;
  let x_814 : vec3<f32> = ((x_808 * vec3<f32>(x_809.y, x_809.z, x_809.w)) + vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_819 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_821 : f32 = x_236.unity_LightData.y;
  u_xlat33 = min(x_819, x_821);
  let x_824 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_824));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_836 : u32 = u_xlatu_loop_1;
    let x_837 : u32 = u_xlatu33;
    if ((x_836 < x_837)) {
    } else {
      break;
    }
    let x_840 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_840 >> 2u);
    let x_843 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_843 & 3u));
    let x_847 : u32 = u_xlatu35;
    let x_850 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_847)];
    let x_860 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_865 : vec4<u32> = indexable[x_860];
    u_xlat35 = dot(x_850, bitcast<vec4<f32>>(x_865));
    let x_869 : f32 = u_xlat35;
    u_xlati35 = i32(x_869);
    let x_871 : vec3<f32> = vs_TEXCOORD1;
    let x_883 : i32 = u_xlati35;
    let x_885 : vec4<f32> = x_882.x_AdditionalLightsPosition[x_883];
    let x_888 : i32 = u_xlati35;
    let x_890 : vec4<f32> = x_882.x_AdditionalLightsPosition[x_888];
    u_xlat7 = ((-(x_871) * vec3<f32>(x_885.w, x_885.w, x_885.w)) + vec3<f32>(x_890.x, x_890.y, x_890.z));
    let x_894 : vec3<f32> = u_xlat7;
    let x_895 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_894, x_895);
    let x_897 : f32 = u_xlat36;
    u_xlat36 = max(x_897, 6.10351562e-05f);
    let x_901 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_901);
    let x_903 : f32 = u_xlat37;
    let x_905 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_903, x_903, x_903) * x_905);
    let x_907 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_907);
    let x_909 : f32 = u_xlat36;
    let x_910 : i32 = u_xlati35;
    let x_912 : f32 = x_882.x_AdditionalLightsAttenuation[x_910].x;
    u_xlat36 = (x_909 * x_912);
    let x_914 : f32 = u_xlat36;
    let x_916 : f32 = u_xlat36;
    u_xlat36 = ((-(x_914) * x_916) + 1.0f);
    let x_919 : f32 = u_xlat36;
    u_xlat36 = max(x_919, 0.0f);
    let x_921 : f32 = u_xlat36;
    let x_922 : f32 = u_xlat36;
    u_xlat36 = (x_921 * x_922);
    let x_924 : f32 = u_xlat36;
    let x_925 : f32 = u_xlat37;
    u_xlat36 = (x_924 * x_925);
    let x_927 : i32 = u_xlati35;
    let x_929 : vec4<f32> = x_882.x_AdditionalLightsSpotDir[x_927];
    let x_931 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_929.x, x_929.y, x_929.z), x_931);
    let x_933 : f32 = u_xlat37;
    let x_934 : i32 = u_xlati35;
    let x_936 : f32 = x_882.x_AdditionalLightsAttenuation[x_934].z;
    let x_938 : i32 = u_xlati35;
    let x_940 : f32 = x_882.x_AdditionalLightsAttenuation[x_938].w;
    u_xlat37 = ((x_933 * x_936) + x_940);
    let x_942 : f32 = u_xlat37;
    u_xlat37 = clamp(x_942, 0.0f, 1.0f);
    let x_944 : f32 = u_xlat37;
    let x_945 : f32 = u_xlat37;
    u_xlat37 = (x_944 * x_945);
    let x_947 : f32 = u_xlat36;
    let x_948 : f32 = u_xlat37;
    u_xlat36 = (x_947 * x_948);
    let x_951 : f32 = u_xlat32;
    let x_953 : i32 = u_xlati35;
    let x_955 : vec4<f32> = x_882.x_AdditionalLightsColor[x_953];
    u_xlat8 = (vec3<f32>(x_951, x_951, x_951) * vec3<f32>(x_955.x, x_955.y, x_955.z));
    let x_958 : f32 = u_xlat36;
    let x_960 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_958, x_958, x_958) * x_960);
    let x_962 : vec3<f32> = u_xlat2;
    let x_963 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_962, x_963);
    let x_965 : f32 = u_xlat35;
    u_xlat35 = clamp(x_965, 0.0f, 1.0f);
    let x_968 : f32 = u_xlat35;
    let x_970 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_968, x_968, x_968) * x_970);
    let x_972 : vec3<f32> = u_xlat3;
    let x_973 : vec3<f32> = u_xlat10;
    let x_976 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_972 * vec3<f32>(x_973.x, x_973.x, x_973.x)) + x_976);
    let x_978 : vec3<f32> = u_xlat7;
    let x_979 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_978, x_979);
    let x_981 : f32 = u_xlat35;
    u_xlat35 = max(x_981, 1.17549435e-37f);
    let x_983 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_983);
    let x_985 : f32 = u_xlat35;
    let x_987 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_985, x_985, x_985) * x_987);
    let x_989 : vec3<f32> = u_xlat2;
    let x_990 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_989, x_990);
    let x_992 : f32 = u_xlat35;
    u_xlat35 = clamp(x_992, 0.0f, 1.0f);
    let x_994 : f32 = u_xlat35;
    u_xlat35 = log2(x_994);
    let x_997 : f32 = u_xlat1.x;
    let x_998 : f32 = u_xlat35;
    u_xlat35 = (x_997 * x_998);
    let x_1000 : f32 = u_xlat35;
    u_xlat35 = exp2(x_1000);
    let x_1002 : f32 = u_xlat35;
    let x_1005 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1002, x_1002, x_1002) * vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
    let x_1008 : vec3<f32> = u_xlat7;
    let x_1009 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_1008 * x_1009);
    let x_1011 : vec3<f32> = u_xlat9;
    let x_1012 : vec4<f32> = u_xlat1;
    let x_1015 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1011 * vec3<f32>(x_1012.y, x_1012.z, x_1012.w)) + x_1015);
    let x_1017 : vec3<f32> = u_xlat6;
    let x_1018 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1017 + x_1018);

    continuing {
      let x_1020 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1020 + bitcast<u32>(1i));
    }
  }
  let x_1022 : vec4<f32> = u_xlat5;
  let x_1024 : vec4<f32> = u_xlat1;
  let x_1027 : vec4<f32> = u_xlat4;
  let x_1029 : vec3<f32> = ((vec3<f32>(x_1022.x, x_1022.y, x_1022.z) * vec3<f32>(x_1024.y, x_1024.z, x_1024.w)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec3<f32> = u_xlat6;
  let x_1033 : vec4<f32> = u_xlat1;
  let x_1035 : vec3<f32> = (x_1032 + vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : f32 = u_xlat30;
  let x_1039 : f32 = u_xlat30;
  u_xlat10.x = (x_1038 * -(x_1039));
  let x_1044 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_1044);
  let x_1047 : vec4<f32> = u_xlat1;
  let x_1051 : vec4<f32> = x_44.unity_FogColor;
  let x_1054 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) + -(vec3<f32>(x_1051.x, x_1051.y, x_1051.z)));
  let x_1055 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1059 : vec3<f32> = u_xlat10;
  let x_1061 : vec4<f32> = u_xlat1;
  let x_1065 : vec4<f32> = x_44.unity_FogColor;
  let x_1067 : vec3<f32> = ((vec3<f32>(x_1059.x, x_1059.x, x_1059.x) * vec3<f32>(x_1061.x, x_1061.y, x_1061.z)) + vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1071 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_1071 == 1.0f);
  let x_1073 : bool = u_xlatb10;
  let x_1074 : bool = u_xlatb20;
  u_xlatb10 = (x_1073 | x_1074);
  let x_1076 : bool = u_xlatb10;
  if (x_1076) {
    let x_1081 : f32 = u_xlat0.x;
    x_1077 = x_1081;
  } else {
    x_1077 = 1.0f;
  }
  let x_1083 : f32 = x_1077;
  SV_Target0.w = x_1083;
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

