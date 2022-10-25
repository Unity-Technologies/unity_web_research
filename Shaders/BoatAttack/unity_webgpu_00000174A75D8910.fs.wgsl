struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(3) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_137 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_590 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_780 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1034 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1138 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb15 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat15 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlat44 : f32;
  var u_xlatu44 : u32;
  var u_xlati44 : i32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat19 : f32;
  var u_xlat42 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlatb17 : vec2<bool>;
  var u_xlatb31 : bool;
  var x_536 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat31 : vec2<f32>;
  var x_659 : f32;
  var x_671 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati48 : i32;
  var u_xlat47 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat48 : f32;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var u_xlati49 : i32;
  var u_xlati51 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1432 : f32;
  var x_1445 : f32;
  var x_1497 : f32;
  var x_1508 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb15 = (x_70 == 0.0f);
  let x_77 : vec3<f32> = vs_TEXCOORD7;
  let x_82 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_77) + x_82);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat29;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_107;
  let x_110 : bool = u_xlatb15;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat2;
    x_111 = x_114;
  } else {
    let x_116 : vec4<f32> = u_xlat3;
    x_111 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  }
  let x_118 : vec3<f32> = x_111;
  u_xlat15 = x_118;
  let x_120 : vec3<f32> = vs_TEXCOORD3;
  let x_121 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_120, x_121);
  let x_125 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_125);
  let x_128 : vec3<f32> = u_xlat2;
  let x_130 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_132 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres0;
  let x_143 : vec3<f32> = (x_132 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_TEXCOORD7;
  let x_149 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres1;
  let x_152 : vec3<f32> = (x_147 + -(vec3<f32>(x_149.x, x_149.y, x_149.z)));
  let x_153 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : vec3<f32> = vs_TEXCOORD7;
  let x_159 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_156 + -(vec3<f32>(x_159.x, x_159.y, x_159.z)));
  let x_164 : vec3<f32> = vs_TEXCOORD7;
  let x_167 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_164 + -(vec3<f32>(x_167.x, x_167.y, x_167.z)));
  let x_171 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec4<f32> = u_xlat4;
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_183 : vec3<f32> = u_xlat5;
  let x_184 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_183, x_184);
  let x_187 : vec3<f32> = u_xlat6;
  let x_188 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_187, x_188);
  let x_194 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = x_137.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_194 < x_197);
  let x_200 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_200);
  let x_204 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_204);
  let x_208 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_208);
  let x_212 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_212);
  let x_216 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_216);
  let x_222 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_222);
  let x_226 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_226);
  let x_229 : vec4<f32> = u_xlat3;
  let x_231 : vec4<f32> = u_xlat4;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(x_231.y, x_231.z, x_231.w));
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = max(vec3<f32>(x_236.x, x_236.y, x_236.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_239.x, x_239.y, x_239.z);
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_243, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_249 : f32 = u_xlat44;
  u_xlat44 = (-(x_249) + 4.0f);
  let x_254 : f32 = u_xlat44;
  u_xlatu44 = u32(x_254);
  let x_258 : u32 = u_xlatu44;
  u_xlati44 = (bitcast<i32>(x_258) << bitcast<u32>(2i));
  let x_261 : vec3<f32> = vs_TEXCOORD7;
  let x_263 : i32 = u_xlati44;
  let x_266 : i32 = u_xlati44;
  let x_270 : vec4<f32> = x_137.x_MainLightWorldToShadow[((x_263 + 1i) / 4i)][((x_266 + 1i) % 4i)];
  let x_272 : vec3<f32> = (vec3<f32>(x_261.y, x_261.y, x_261.y) * vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : i32 = u_xlati44;
  let x_277 : i32 = u_xlati44;
  let x_280 : vec4<f32> = x_137.x_MainLightWorldToShadow[(x_275 / 4i)][(x_277 % 4i)];
  let x_282 : vec3<f32> = vs_TEXCOORD7;
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282.x, x_282.x, x_282.x)) + vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_290 : i32 = u_xlati44;
  let x_293 : i32 = u_xlati44;
  let x_297 : vec4<f32> = x_137.x_MainLightWorldToShadow[((x_290 + 2i) / 4i)][((x_293 + 2i) % 4i)];
  let x_299 : vec3<f32> = vs_TEXCOORD7;
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.z, x_299.z, x_299.z)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat3;
  let x_309 : i32 = u_xlati44;
  let x_312 : i32 = u_xlati44;
  let x_316 : vec4<f32> = x_137.x_MainLightWorldToShadow[((x_309 + 3i) / 4i)][((x_312 + 3i) % 4i)];
  let x_318 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : f32 = vs_TEXCOORD7.y;
  let x_324 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat44 = (x_322 * x_324);
  let x_327 : f32 = x_44.unity_MatrixV[0i].z;
  let x_329 : f32 = vs_TEXCOORD7.x;
  let x_331 : f32 = u_xlat44;
  u_xlat44 = ((x_327 * x_329) + x_331);
  let x_334 : f32 = x_44.unity_MatrixV[2i].z;
  let x_336 : f32 = vs_TEXCOORD7.z;
  let x_338 : f32 = u_xlat44;
  u_xlat44 = ((x_334 * x_336) + x_338);
  let x_340 : f32 = u_xlat44;
  let x_342 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat44 = (x_340 + x_342);
  let x_344 : f32 = u_xlat44;
  let x_348 : f32 = x_44.x_ProjectionParams.y;
  u_xlat44 = (-(x_344) + -(x_348));
  let x_351 : f32 = u_xlat44;
  u_xlat44 = max(x_351, 0.0f);
  let x_353 : f32 = u_xlat44;
  let x_356 : f32 = x_44.unity_FogParams.x;
  u_xlat44 = (x_353 * x_356);
  let x_363 : vec4<f32> = vs_TEXCOORD0;
  let x_366 : f32 = x_44.x_GlobalMipBias.x;
  let x_367 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_363.z, x_363.w), x_366);
  let x_368 : vec3<f32> = vec3<f32>(x_367.x, x_367.y, x_367.z);
  let x_369 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_373 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
  let x_378 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_374.x, x_374.y));
  let x_379 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : vec3<f32> = u_xlat5;
  let x_383 : vec4<f32> = hlslcc_FragCoord;
  let x_385 : vec2<f32> = (vec2<f32>(x_381.x, x_381.y) * vec2<f32>(x_383.x, x_383.y));
  let x_386 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_385.x, x_385.y, x_386.z);
  let x_390 : f32 = u_xlat5.y;
  let x_393 : f32 = x_44.x_ScaleBiasRt.x;
  let x_396 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat45 = ((x_390 * x_393) + x_396);
  let x_398 : f32 = u_xlat45;
  u_xlat5.z = (-(x_398) + 1.0f);
  let x_402 : f32 = u_xlat1;
  u_xlat45 = ((-(x_402) * 0.959999979f) + 0.959999979f);
  let x_408 : f32 = u_xlat45;
  u_xlat46 = (-(x_408) + 1.0f);
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : f32 = u_xlat45;
  u_xlat6 = (vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413, x_413, x_413));
  let x_416 : vec4<f32> = u_xlat0;
  let x_420 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : f32 = u_xlat1;
  let x_425 : vec4<f32> = u_xlat0;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423, x_423, x_423) * vec3<f32>(x_425.x, x_425.y, x_425.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_434) + 1.0f);
  let x_437 : f32 = u_xlat1;
  let x_438 : f32 = u_xlat1;
  u_xlat45 = (x_437 * x_438);
  let x_440 : f32 = u_xlat45;
  u_xlat45 = max(x_440, 0.0078125f);
  let x_444 : f32 = u_xlat45;
  let x_445 : f32 = u_xlat45;
  u_xlat19 = (x_444 * x_445);
  let x_449 : f32 = u_xlat0.w;
  let x_450 : f32 = u_xlat46;
  u_xlat42 = (x_449 + x_450);
  let x_452 : f32 = u_xlat42;
  u_xlat42 = clamp(x_452, 0.0f, 1.0f);
  let x_454 : f32 = u_xlat45;
  u_xlat46 = ((x_454 * 4.0f) + 2.0f);
  let x_462 : vec3<f32> = u_xlat5;
  let x_465 : f32 = x_44.x_GlobalMipBias.x;
  let x_466 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_462.x, x_462.z), x_465);
  u_xlat5.x = x_466.x;
  let x_471 : f32 = u_xlat5.x;
  u_xlat33 = (x_471 + -1.0f);
  let x_474 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_475 : f32 = u_xlat33;
  u_xlat33 = ((x_474 * x_475) + 1.0f);
  let x_479 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_479, 1.0f);
  let x_483 : vec4<f32> = u_xlat3;
  let x_484 : vec2<f32> = vec2<f32>(x_483.x, x_483.y);
  let x_486 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_484.x, x_484.y, x_486);
  let x_498 : vec3<f32> = txVec0;
  let x_500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_498.xy, x_498.z);
  u_xlat3.x = x_500;
  let x_505 : f32 = x_137.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_505) + 1.0f);
  let x_510 : f32 = u_xlat3.x;
  let x_512 : f32 = x_137.x_MainLightShadowParams.x;
  let x_515 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_510 * x_512) + x_515);
  let x_522 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_522);
  let x_527 : f32 = u_xlat3.z;
  u_xlatb31 = (x_527 >= 1.0f);
  let x_529 : bool = u_xlatb31;
  let x_531 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_529 | x_531);
  let x_535 : bool = u_xlatb17.x;
  if (x_535) {
    x_536 = 1.0f;
  } else {
    let x_541 : f32 = u_xlat3.x;
    x_536 = x_541;
  }
  let x_542 : f32 = x_536;
  u_xlat3.x = x_542;
  let x_545 : vec3<f32> = vs_TEXCOORD7;
  let x_547 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_549 : vec3<f32> = (x_545 + -(x_547));
  let x_550 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_552 : vec4<f32> = u_xlat7;
  let x_554 : vec4<f32> = u_xlat7;
  u_xlat17.x = dot(vec3<f32>(x_552.x, x_552.y, x_552.z), vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_559 : f32 = u_xlat17.x;
  let x_561 : f32 = x_137.x_MainLightShadowParams.z;
  let x_564 : f32 = x_137.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_559 * x_561) + x_564);
  let x_568 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_568, 0.0f, 1.0f);
  let x_573 : f32 = u_xlat3.x;
  u_xlat31.x = (-(x_573) + 1.0f);
  let x_578 : f32 = u_xlat17.x;
  let x_580 : f32 = u_xlat31.x;
  let x_583 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_578 * x_580) + x_583);
  let x_592 : f32 = x_590.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_592 == -1.0f));
  let x_596 : bool = u_xlatb17.x;
  if (x_596) {
    let x_599 : vec3<f32> = vs_TEXCOORD7;
    let x_602 : vec4<f32> = x_590.x_MainLightWorldToLight[1i];
    u_xlat17 = (vec2<f32>(x_599.y, x_599.y) * vec2<f32>(x_602.x, x_602.y));
    let x_606 : vec4<f32> = x_590.x_MainLightWorldToLight[0i];
    let x_608 : vec3<f32> = vs_TEXCOORD7;
    let x_611 : vec2<f32> = u_xlat17;
    u_xlat17 = ((vec2<f32>(x_606.x, x_606.y) * vec2<f32>(x_608.x, x_608.x)) + x_611);
    let x_614 : vec4<f32> = x_590.x_MainLightWorldToLight[2i];
    let x_616 : vec3<f32> = vs_TEXCOORD7;
    let x_619 : vec2<f32> = u_xlat17;
    u_xlat17 = ((vec2<f32>(x_614.x, x_614.y) * vec2<f32>(x_616.z, x_616.z)) + x_619);
    let x_621 : vec2<f32> = u_xlat17;
    let x_623 : vec4<f32> = x_590.x_MainLightWorldToLight[3i];
    u_xlat17 = (x_621 + vec2<f32>(x_623.x, x_623.y));
    let x_626 : vec2<f32> = u_xlat17;
    u_xlat17 = ((x_626 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_636 : vec2<f32> = u_xlat17;
    let x_638 : f32 = x_44.x_GlobalMipBias.x;
    let x_639 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_636, x_638);
    u_xlat7 = x_639;
    let x_641 : f32 = x_590.x_MainLightCookieTextureFormat;
    let x_643 : f32 = x_590.x_MainLightCookieTextureFormat;
    let x_645 : f32 = x_590.x_MainLightCookieTextureFormat;
    let x_647 : f32 = x_590.x_MainLightCookieTextureFormat;
    let x_648 : vec4<f32> = vec4<f32>(x_641, x_643, x_645, x_647);
    let x_655 : vec4<bool> = (vec4<f32>(x_648.x, x_648.y, x_648.z, x_648.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_655.x, x_655.y);
    let x_658 : bool = u_xlatb17.y;
    if (x_658) {
      let x_663 : f32 = u_xlat7.w;
      x_659 = x_663;
    } else {
      let x_666 : f32 = u_xlat7.x;
      x_659 = x_666;
    }
    let x_667 : f32 = x_659;
    u_xlat31.x = x_667;
    let x_670 : bool = u_xlatb17.x;
    if (x_670) {
      let x_674 : vec4<f32> = u_xlat7;
      x_671 = vec3<f32>(x_674.x, x_674.y, x_674.z);
    } else {
      let x_677 : vec2<f32> = u_xlat31;
      x_671 = vec3<f32>(x_677.x, x_677.x, x_677.x);
    }
    let x_679 : vec3<f32> = x_671;
    let x_680 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_686 : vec4<f32> = u_xlat7;
  let x_689 : vec4<f32> = x_44.x_MainLightColor;
  let x_691 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : f32 = u_xlat33;
  let x_696 : vec4<f32> = u_xlat7;
  let x_698 : vec3<f32> = (vec3<f32>(x_694, x_694, x_694) * vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec3<f32> = u_xlat15;
  let x_703 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(-(x_701), x_703);
  let x_707 : f32 = u_xlat17.x;
  let x_709 : f32 = u_xlat17.x;
  u_xlat17.x = (x_707 + x_709);
  let x_713 : vec3<f32> = u_xlat2;
  let x_714 : vec2<f32> = u_xlat17;
  let x_718 : vec3<f32> = u_xlat15;
  let x_720 : vec3<f32> = ((x_713 * -(vec3<f32>(x_714.x, x_714.x, x_714.x))) + -(x_718));
  let x_721 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec3<f32> = u_xlat2;
  let x_724 : vec3<f32> = u_xlat15;
  u_xlat17.x = dot(x_723, x_724);
  let x_728 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_728, 0.0f, 1.0f);
  let x_732 : f32 = u_xlat17.x;
  u_xlat17.x = (-(x_732) + 1.0f);
  let x_737 : f32 = u_xlat17.x;
  let x_739 : f32 = u_xlat17.x;
  u_xlat17.x = (x_737 * x_739);
  let x_743 : f32 = u_xlat17.x;
  let x_745 : f32 = u_xlat17.x;
  u_xlat17.x = (x_743 * x_745);
  let x_748 : f32 = u_xlat1;
  u_xlat31.x = ((-(x_748) * 0.699999988f) + 1.700000048f);
  let x_755 : f32 = u_xlat1;
  let x_757 : f32 = u_xlat31.x;
  u_xlat1 = (x_755 * x_757);
  let x_759 : f32 = u_xlat1;
  u_xlat1 = (x_759 * 6.0f);
  let x_770 : vec4<f32> = u_xlat8;
  let x_772 : f32 = u_xlat1;
  let x_773 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_770.x, x_770.y, x_770.z), x_772);
  u_xlat8 = x_773;
  let x_775 : f32 = u_xlat8.w;
  u_xlat1 = (x_775 + -1.0f);
  let x_782 : f32 = x_780.unity_SpecCube0_HDR.w;
  let x_783 : f32 = u_xlat1;
  u_xlat1 = ((x_782 * x_783) + 1.0f);
  let x_786 : f32 = u_xlat1;
  u_xlat1 = max(x_786, 0.0f);
  let x_788 : f32 = u_xlat1;
  u_xlat1 = log2(x_788);
  let x_790 : f32 = u_xlat1;
  let x_792 : f32 = x_780.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_790 * x_792);
  let x_794 : f32 = u_xlat1;
  u_xlat1 = exp2(x_794);
  let x_796 : f32 = u_xlat1;
  let x_798 : f32 = x_780.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_796 * x_798);
  let x_800 : vec4<f32> = u_xlat8;
  let x_802 : f32 = u_xlat1;
  let x_804 : vec3<f32> = (vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_802, x_802, x_802));
  let x_805 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : f32 = u_xlat45;
  let x_809 : f32 = u_xlat45;
  u_xlat31 = ((vec2<f32>(x_807, x_807) * vec2<f32>(x_809, x_809)) + vec2<f32>(-1.0f, 1.0f));
  let x_815 : f32 = u_xlat31.y;
  u_xlat1 = (1.0f / x_815);
  let x_818 : vec4<f32> = u_xlat0;
  let x_821 : f32 = u_xlat42;
  u_xlat9 = (-(vec3<f32>(x_818.x, x_818.y, x_818.z)) + vec3<f32>(x_821, x_821, x_821));
  let x_824 : vec2<f32> = u_xlat17;
  let x_826 : vec3<f32> = u_xlat9;
  let x_828 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_824.x, x_824.x, x_824.x) * x_826) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : f32 = u_xlat1;
  let x_833 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_831, x_831, x_831) * x_833);
  let x_835 : vec4<f32> = u_xlat8;
  let x_837 : vec3<f32> = u_xlat9;
  let x_838 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) * x_837);
  let x_839 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat4;
  let x_843 : vec3<f32> = u_xlat6;
  let x_845 : vec4<f32> = u_xlat8;
  let x_847 : vec3<f32> = ((vec3<f32>(x_841.x, x_841.y, x_841.z) * x_843) + vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_851 : f32 = u_xlat3.x;
  let x_853 : f32 = x_780.unity_LightData.z;
  u_xlat42 = (x_851 * x_853);
  let x_855 : vec3<f32> = u_xlat2;
  let x_857 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_855, vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_860 : f32 = u_xlat1;
  u_xlat1 = clamp(x_860, 0.0f, 1.0f);
  let x_862 : f32 = u_xlat42;
  let x_863 : f32 = u_xlat1;
  u_xlat42 = (x_862 * x_863);
  let x_865 : f32 = u_xlat42;
  let x_867 : vec4<f32> = u_xlat7;
  let x_869 : vec3<f32> = (vec3<f32>(x_865, x_865, x_865) * vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_869.z);
  let x_872 : vec3<f32> = u_xlat15;
  let x_874 : vec4<f32> = x_44.x_MainLightPosition;
  let x_876 : vec3<f32> = (x_872 + vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat7;
  let x_881 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_879.x, x_879.y, x_879.z), vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : f32 = u_xlat42;
  u_xlat42 = max(x_884, 1.17549435e-37f);
  let x_887 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_887);
  let x_889 : f32 = u_xlat42;
  let x_891 : vec4<f32> = u_xlat7;
  let x_893 : vec3<f32> = (vec3<f32>(x_889, x_889, x_889) * vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_896 : vec3<f32> = u_xlat2;
  let x_897 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_896, vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : f32 = u_xlat42;
  u_xlat42 = clamp(x_900, 0.0f, 1.0f);
  let x_903 : vec4<f32> = x_44.x_MainLightPosition;
  let x_905 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_903.x, x_903.y, x_903.z), vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : f32 = u_xlat1;
  u_xlat1 = clamp(x_908, 0.0f, 1.0f);
  let x_910 : f32 = u_xlat42;
  let x_911 : f32 = u_xlat42;
  u_xlat42 = (x_910 * x_911);
  let x_913 : f32 = u_xlat42;
  let x_915 : f32 = u_xlat31.x;
  u_xlat42 = ((x_913 * x_915) + 1.000010014f);
  let x_919 : f32 = u_xlat1;
  let x_920 : f32 = u_xlat1;
  u_xlat1 = (x_919 * x_920);
  let x_922 : f32 = u_xlat42;
  let x_923 : f32 = u_xlat42;
  u_xlat42 = (x_922 * x_923);
  let x_925 : f32 = u_xlat1;
  u_xlat1 = max(x_925, 0.100000001f);
  let x_928 : f32 = u_xlat42;
  let x_929 : f32 = u_xlat1;
  u_xlat42 = (x_928 * x_929);
  let x_931 : f32 = u_xlat46;
  let x_932 : f32 = u_xlat42;
  u_xlat42 = (x_931 * x_932);
  let x_934 : f32 = u_xlat19;
  let x_935 : f32 = u_xlat42;
  u_xlat42 = (x_934 / x_935);
  let x_937 : vec4<f32> = u_xlat0;
  let x_939 : f32 = u_xlat42;
  let x_942 : vec3<f32> = u_xlat6;
  let x_943 : vec3<f32> = ((vec3<f32>(x_937.x, x_937.y, x_937.z) * vec3<f32>(x_939, x_939, x_939)) + x_942);
  let x_944 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec4<f32> = u_xlat3;
  let x_948 : vec4<f32> = u_xlat7;
  let x_950 : vec3<f32> = (vec3<f32>(x_946.x, x_946.y, x_946.w) * vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_950.x, x_950.y, x_951.z, x_950.z);
  let x_954 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_956 : f32 = x_780.unity_LightData.y;
  u_xlat42 = min(x_954, x_956);
  let x_959 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_959));
  let x_964 : f32 = x_590.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_966 : f32 = x_590.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_968 : f32 = x_590.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_970 : f32 = x_590.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_971 : vec4<f32> = vec4<f32>(x_964, x_966, x_968, x_970);
  let x_977 : vec4<bool> = (vec4<f32>(x_971.x, x_971.y, x_971.z, x_971.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_977.x, x_977.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_988 : u32 = u_xlatu_loop_1;
    let x_989 : u32 = u_xlatu42;
    if ((x_988 < x_989)) {
    } else {
      break;
    }
    let x_992 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_992 >> 2u);
    let x_995 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_995 & 3u));
    let x_999 : u32 = u_xlatu47;
    let x_1002 : vec4<f32> = x_780.unity_LightIndices[bitcast<i32>(x_999)];
    let x_1012 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1017 : vec4<u32> = indexable[x_1012];
    u_xlat47 = dot(x_1002, bitcast<vec4<f32>>(x_1017));
    let x_1020 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1020));
    let x_1023 : vec3<f32> = vs_TEXCOORD7;
    let x_1035 : u32 = u_xlatu47;
    let x_1038 : vec4<f32> = x_1034.x_AdditionalLightsPosition[bitcast<i32>(x_1035)];
    let x_1041 : u32 = u_xlatu47;
    let x_1044 : vec4<f32> = x_1034.x_AdditionalLightsPosition[bitcast<i32>(x_1041)];
    u_xlat9 = ((-(x_1023) * vec3<f32>(x_1038.w, x_1038.w, x_1038.w)) + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
    let x_1048 : vec3<f32> = u_xlat9;
    let x_1049 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1048, x_1049);
    let x_1051 : f32 = u_xlat48;
    u_xlat48 = max(x_1051, 6.10351562e-05f);
    let x_1055 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1055);
    let x_1058 : f32 = u_xlat35;
    let x_1060 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1058, x_1058, x_1058) * x_1060);
    let x_1063 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1063);
    let x_1065 : f32 = u_xlat48;
    let x_1066 : u32 = u_xlatu47;
    let x_1069 : f32 = x_1034.x_AdditionalLightsAttenuation[bitcast<i32>(x_1066)].x;
    u_xlat48 = (x_1065 * x_1069);
    let x_1071 : f32 = u_xlat48;
    let x_1073 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1071) * x_1073) + 1.0f);
    let x_1076 : f32 = u_xlat48;
    u_xlat48 = max(x_1076, 0.0f);
    let x_1078 : f32 = u_xlat48;
    let x_1079 : f32 = u_xlat48;
    u_xlat48 = (x_1078 * x_1079);
    let x_1081 : f32 = u_xlat48;
    let x_1082 : f32 = u_xlat49;
    u_xlat48 = (x_1081 * x_1082);
    let x_1084 : u32 = u_xlatu47;
    let x_1087 : vec4<f32> = x_1034.x_AdditionalLightsSpotDir[bitcast<i32>(x_1084)];
    let x_1089 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1087.x, x_1087.y, x_1087.z), x_1089);
    let x_1091 : f32 = u_xlat49;
    let x_1092 : u32 = u_xlatu47;
    let x_1095 : f32 = x_1034.x_AdditionalLightsAttenuation[bitcast<i32>(x_1092)].z;
    let x_1097 : u32 = u_xlatu47;
    let x_1100 : f32 = x_1034.x_AdditionalLightsAttenuation[bitcast<i32>(x_1097)].w;
    u_xlat49 = ((x_1091 * x_1095) + x_1100);
    let x_1102 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1102, 0.0f, 1.0f);
    let x_1104 : f32 = u_xlat49;
    let x_1105 : f32 = u_xlat49;
    u_xlat49 = (x_1104 * x_1105);
    let x_1107 : f32 = u_xlat48;
    let x_1108 : f32 = u_xlat49;
    u_xlat48 = (x_1107 * x_1108);
    let x_1111 : u32 = u_xlatu47;
    u_xlatu49 = (x_1111 >> 5u);
    let x_1114 : u32 = u_xlatu47;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1114) & 31i)));
    let x_1120 : i32 = u_xlati50;
    let x_1122 : u32 = u_xlatu49;
    let x_1125 : f32 = x_590.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1122)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1120) & bitcast<u32>(x_1125)));
    let x_1129 : i32 = u_xlati49;
    if ((x_1129 != 0i)) {
      let x_1139 : u32 = u_xlatu47;
      let x_1142 : f32 = x_1138.x_AdditionalLightsLightTypes[bitcast<i32>(x_1139)].el;
      u_xlati49 = i32(x_1142);
      let x_1144 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1144 != 0i));
      let x_1148 : u32 = u_xlatu47;
      u_xlati51 = (bitcast<i32>(x_1148) << bitcast<u32>(2i));
      let x_1151 : i32 = u_xlati50;
      if ((x_1151 != 0i)) {
        let x_1156 : vec3<f32> = vs_TEXCOORD7;
        let x_1158 : i32 = u_xlati51;
        let x_1161 : i32 = u_xlati51;
        let x_1165 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[((x_1158 + 1i) / 4i)][((x_1161 + 1i) % 4i)];
        let x_1167 : vec3<f32> = (vec3<f32>(x_1156.y, x_1156.y, x_1156.y) * vec3<f32>(x_1165.x, x_1165.y, x_1165.w));
        let x_1168 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
        let x_1170 : i32 = u_xlati51;
        let x_1172 : i32 = u_xlati51;
        let x_1175 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[(x_1170 / 4i)][(x_1172 % 4i)];
        let x_1177 : vec3<f32> = vs_TEXCOORD7;
        let x_1180 : vec4<f32> = u_xlat11;
        let x_1182 : vec3<f32> = ((vec3<f32>(x_1175.x, x_1175.y, x_1175.w) * vec3<f32>(x_1177.x, x_1177.x, x_1177.x)) + vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
        let x_1183 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
        let x_1185 : i32 = u_xlati51;
        let x_1188 : i32 = u_xlati51;
        let x_1192 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[((x_1185 + 2i) / 4i)][((x_1188 + 2i) % 4i)];
        let x_1194 : vec3<f32> = vs_TEXCOORD7;
        let x_1197 : vec4<f32> = u_xlat11;
        let x_1199 : vec3<f32> = ((vec3<f32>(x_1192.x, x_1192.y, x_1192.w) * vec3<f32>(x_1194.z, x_1194.z, x_1194.z)) + vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
        let x_1200 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
        let x_1202 : vec4<f32> = u_xlat11;
        let x_1204 : i32 = u_xlati51;
        let x_1207 : i32 = u_xlati51;
        let x_1211 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[((x_1204 + 3i) / 4i)][((x_1207 + 3i) % 4i)];
        let x_1213 : vec3<f32> = (vec3<f32>(x_1202.x, x_1202.y, x_1202.z) + vec3<f32>(x_1211.x, x_1211.y, x_1211.w));
        let x_1214 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat11;
        let x_1218 : vec4<f32> = u_xlat11;
        let x_1220 : vec2<f32> = (vec2<f32>(x_1216.x, x_1216.y) / vec2<f32>(x_1218.z, x_1218.z));
        let x_1221 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat11;
        let x_1226 : vec2<f32> = ((vec2<f32>(x_1223.x, x_1223.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1227 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1227.w);
        let x_1229 : vec4<f32> = u_xlat11;
        let x_1233 : vec2<f32> = clamp(vec2<f32>(x_1229.x, x_1229.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1234 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1233.x, x_1233.y, x_1234.z, x_1234.w);
        let x_1236 : u32 = u_xlatu47;
        let x_1239 : vec4<f32> = x_1138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1236)];
        let x_1241 : vec4<f32> = u_xlat11;
        let x_1244 : u32 = u_xlatu47;
        let x_1247 : vec4<f32> = x_1138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1244)];
        let x_1249 : vec2<f32> = ((vec2<f32>(x_1239.x, x_1239.y) * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1247.z, x_1247.w));
        let x_1250 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
      } else {
        let x_1254 : i32 = u_xlati49;
        u_xlatb49 = (x_1254 == 1i);
        let x_1256 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1256);
        let x_1258 : i32 = u_xlati49;
        if ((x_1258 != 0i)) {
          let x_1263 : vec3<f32> = vs_TEXCOORD7;
          let x_1265 : i32 = u_xlati51;
          let x_1268 : i32 = u_xlati51;
          let x_1272 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[((x_1265 + 1i) / 4i)][((x_1268 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1263.y, x_1263.y) * vec2<f32>(x_1272.x, x_1272.y));
          let x_1275 : i32 = u_xlati51;
          let x_1277 : i32 = u_xlati51;
          let x_1280 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[(x_1275 / 4i)][(x_1277 % 4i)];
          let x_1282 : vec3<f32> = vs_TEXCOORD7;
          let x_1285 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1282.x, x_1282.x)) + x_1285);
          let x_1287 : i32 = u_xlati51;
          let x_1290 : i32 = u_xlati51;
          let x_1294 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[((x_1287 + 2i) / 4i)][((x_1290 + 2i) % 4i)];
          let x_1296 : vec3<f32> = vs_TEXCOORD7;
          let x_1299 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1296.z, x_1296.z)) + x_1299);
          let x_1301 : vec2<f32> = u_xlat39;
          let x_1302 : i32 = u_xlati51;
          let x_1305 : i32 = u_xlati51;
          let x_1309 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[((x_1302 + 3i) / 4i)][((x_1305 + 3i) % 4i)];
          u_xlat39 = (x_1301 + vec2<f32>(x_1309.x, x_1309.y));
          let x_1312 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1312 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1315 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1315);
          let x_1317 : u32 = u_xlatu47;
          let x_1320 : vec4<f32> = x_1138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1317)];
          let x_1322 : vec2<f32> = u_xlat39;
          let x_1324 : u32 = u_xlatu47;
          let x_1327 : vec4<f32> = x_1138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1324)];
          let x_1329 : vec2<f32> = ((vec2<f32>(x_1320.x, x_1320.y) * x_1322) + vec2<f32>(x_1327.z, x_1327.w));
          let x_1330 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
        } else {
          let x_1334 : vec3<f32> = vs_TEXCOORD7;
          let x_1336 : i32 = u_xlati51;
          let x_1339 : i32 = u_xlati51;
          let x_1343 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[((x_1336 + 1i) / 4i)][((x_1339 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1334.y, x_1334.y, x_1334.y, x_1334.y) * x_1343);
          let x_1345 : i32 = u_xlati51;
          let x_1347 : i32 = u_xlati51;
          let x_1350 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[(x_1345 / 4i)][(x_1347 % 4i)];
          let x_1351 : vec3<f32> = vs_TEXCOORD7;
          let x_1354 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1350 * vec4<f32>(x_1351.x, x_1351.x, x_1351.x, x_1351.x)) + x_1354);
          let x_1356 : i32 = u_xlati51;
          let x_1359 : i32 = u_xlati51;
          let x_1363 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[((x_1356 + 2i) / 4i)][((x_1359 + 2i) % 4i)];
          let x_1364 : vec3<f32> = vs_TEXCOORD7;
          let x_1367 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1363 * vec4<f32>(x_1364.z, x_1364.z, x_1364.z, x_1364.z)) + x_1367);
          let x_1369 : vec4<f32> = u_xlat12;
          let x_1370 : i32 = u_xlati51;
          let x_1373 : i32 = u_xlati51;
          let x_1377 : vec4<f32> = x_1138.x_AdditionalLightsWorldToLights[((x_1370 + 3i) / 4i)][((x_1373 + 3i) % 4i)];
          u_xlat12 = (x_1369 + x_1377);
          let x_1379 : vec4<f32> = u_xlat12;
          let x_1381 : vec4<f32> = u_xlat12;
          let x_1383 : vec3<f32> = (vec3<f32>(x_1379.x, x_1379.y, x_1379.z) / vec3<f32>(x_1381.w, x_1381.w, x_1381.w));
          let x_1384 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
          let x_1386 : vec4<f32> = u_xlat12;
          let x_1388 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1386.x, x_1386.y, x_1386.z), vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
          let x_1391 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1391);
          let x_1393 : f32 = u_xlat49;
          let x_1395 : vec4<f32> = u_xlat12;
          let x_1397 : vec3<f32> = (vec3<f32>(x_1393, x_1393, x_1393) * vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
          let x_1398 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
          let x_1400 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1400.x, x_1400.y, x_1400.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1405 : f32 = u_xlat49;
          u_xlat49 = max(x_1405, 0.000001f);
          let x_1408 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1408);
          let x_1411 : f32 = u_xlat49;
          let x_1413 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1411, x_1411, x_1411) * vec3<f32>(x_1413.z, x_1413.x, x_1413.y));
          let x_1417 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1417);
          let x_1421 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1421, 0.0f, 1.0f);
          let x_1425 : vec3<f32> = u_xlat13;
          let x_1428 : vec4<bool> = (vec4<f32>(x_1425.y, x_1425.z, x_1425.y, x_1425.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1428.x, x_1428.y);
          let x_1431 : bool = u_xlatb39.x;
          if (x_1431) {
            let x_1436 : f32 = u_xlat13.x;
            x_1432 = x_1436;
          } else {
            let x_1439 : f32 = u_xlat13.x;
            x_1432 = -(x_1439);
          }
          let x_1441 : f32 = x_1432;
          u_xlat39.x = x_1441;
          let x_1444 : bool = u_xlatb39.y;
          if (x_1444) {
            let x_1449 : f32 = u_xlat13.x;
            x_1445 = x_1449;
          } else {
            let x_1452 : f32 = u_xlat13.x;
            x_1445 = -(x_1452);
          }
          let x_1454 : f32 = x_1445;
          u_xlat39.y = x_1454;
          let x_1456 : vec4<f32> = u_xlat12;
          let x_1458 : f32 = u_xlat49;
          let x_1461 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1456.x, x_1456.y) * vec2<f32>(x_1458, x_1458)) + x_1461);
          let x_1463 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1463 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1466 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1466, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1470 : u32 = u_xlatu47;
          let x_1473 : vec4<f32> = x_1138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1470)];
          let x_1475 : vec2<f32> = u_xlat39;
          let x_1477 : u32 = u_xlatu47;
          let x_1480 : vec4<f32> = x_1138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1477)];
          let x_1482 : vec2<f32> = ((vec2<f32>(x_1473.x, x_1473.y) * x_1475) + vec2<f32>(x_1480.z, x_1480.w));
          let x_1483 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1482.x, x_1482.y, x_1483.z, x_1483.w);
        }
      }
      let x_1490 : vec4<f32> = u_xlat11;
      let x_1493 : f32 = x_44.x_GlobalMipBias.x;
      let x_1494 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1490.x, x_1490.y), x_1493);
      u_xlat11 = x_1494;
      let x_1496 : bool = u_xlatb7.y;
      if (x_1496) {
        let x_1501 : f32 = u_xlat11.w;
        x_1497 = x_1501;
      } else {
        let x_1504 : f32 = u_xlat11.x;
        x_1497 = x_1504;
      }
      let x_1505 : f32 = x_1497;
      u_xlat49 = x_1505;
      let x_1507 : bool = u_xlatb7.x;
      if (x_1507) {
        let x_1511 : vec4<f32> = u_xlat11;
        x_1508 = vec3<f32>(x_1511.x, x_1511.y, x_1511.z);
      } else {
        let x_1514 : f32 = u_xlat49;
        x_1508 = vec3<f32>(x_1514, x_1514, x_1514);
      }
      let x_1516 : vec3<f32> = x_1508;
      let x_1517 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1517.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1523 : vec4<f32> = u_xlat11;
    let x_1525 : u32 = u_xlatu47;
    let x_1528 : vec4<f32> = x_1034.x_AdditionalLightsColor[bitcast<i32>(x_1525)];
    let x_1530 : vec3<f32> = (vec3<f32>(x_1523.x, x_1523.y, x_1523.z) * vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
    let x_1531 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
    let x_1533 : f32 = u_xlat33;
    let x_1535 : vec4<f32> = u_xlat11;
    let x_1537 : vec3<f32> = (vec3<f32>(x_1533, x_1533, x_1533) * vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
    let x_1538 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
    let x_1540 : vec3<f32> = u_xlat2;
    let x_1541 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1540, x_1541);
    let x_1543 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1543, 0.0f, 1.0f);
    let x_1545 : f32 = u_xlat47;
    let x_1546 : f32 = u_xlat48;
    u_xlat47 = (x_1545 * x_1546);
    let x_1548 : f32 = u_xlat47;
    let x_1550 : vec4<f32> = u_xlat11;
    let x_1552 : vec3<f32> = (vec3<f32>(x_1548, x_1548, x_1548) * vec3<f32>(x_1550.x, x_1550.y, x_1550.z));
    let x_1553 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1553.w);
    let x_1555 : vec3<f32> = u_xlat9;
    let x_1556 : f32 = u_xlat35;
    let x_1559 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1555 * vec3<f32>(x_1556, x_1556, x_1556)) + x_1559);
    let x_1561 : vec3<f32> = u_xlat9;
    let x_1562 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1561, x_1562);
    let x_1564 : f32 = u_xlat47;
    u_xlat47 = max(x_1564, 1.17549435e-37f);
    let x_1566 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1566);
    let x_1568 : f32 = u_xlat47;
    let x_1570 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1568, x_1568, x_1568) * x_1570);
    let x_1572 : vec3<f32> = u_xlat2;
    let x_1573 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1572, x_1573);
    let x_1575 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1575, 0.0f, 1.0f);
    let x_1577 : vec3<f32> = u_xlat10;
    let x_1578 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1577, x_1578);
    let x_1580 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1580, 0.0f, 1.0f);
    let x_1582 : f32 = u_xlat47;
    let x_1583 : f32 = u_xlat47;
    u_xlat47 = (x_1582 * x_1583);
    let x_1585 : f32 = u_xlat47;
    let x_1587 : f32 = u_xlat31.x;
    u_xlat47 = ((x_1585 * x_1587) + 1.000010014f);
    let x_1590 : f32 = u_xlat48;
    let x_1591 : f32 = u_xlat48;
    u_xlat48 = (x_1590 * x_1591);
    let x_1593 : f32 = u_xlat47;
    let x_1594 : f32 = u_xlat47;
    u_xlat47 = (x_1593 * x_1594);
    let x_1596 : f32 = u_xlat48;
    u_xlat48 = max(x_1596, 0.100000001f);
    let x_1598 : f32 = u_xlat47;
    let x_1599 : f32 = u_xlat48;
    u_xlat47 = (x_1598 * x_1599);
    let x_1601 : f32 = u_xlat46;
    let x_1602 : f32 = u_xlat47;
    u_xlat47 = (x_1601 * x_1602);
    let x_1604 : f32 = u_xlat19;
    let x_1605 : f32 = u_xlat47;
    u_xlat47 = (x_1604 / x_1605);
    let x_1607 : vec4<f32> = u_xlat0;
    let x_1609 : f32 = u_xlat47;
    let x_1612 : vec3<f32> = u_xlat6;
    u_xlat9 = ((vec3<f32>(x_1607.x, x_1607.y, x_1607.z) * vec3<f32>(x_1609, x_1609, x_1609)) + x_1612);
    let x_1614 : vec3<f32> = u_xlat9;
    let x_1615 : vec4<f32> = u_xlat11;
    let x_1618 : vec4<f32> = u_xlat8;
    let x_1620 : vec3<f32> = ((x_1614 * vec3<f32>(x_1615.x, x_1615.y, x_1615.z)) + vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
    let x_1621 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);

    continuing {
      let x_1623 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1623 + bitcast<u32>(1i));
    }
  }
  let x_1625 : vec4<f32> = u_xlat4;
  let x_1627 : vec3<f32> = u_xlat5;
  let x_1630 : vec4<f32> = u_xlat3;
  let x_1632 : vec3<f32> = ((vec3<f32>(x_1625.x, x_1625.y, x_1625.z) * vec3<f32>(x_1627.x, x_1627.x, x_1627.x)) + vec3<f32>(x_1630.x, x_1630.y, x_1630.w));
  let x_1633 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
  let x_1635 : vec4<f32> = u_xlat8;
  let x_1637 : vec4<f32> = u_xlat0;
  let x_1639 : vec3<f32> = (vec3<f32>(x_1635.x, x_1635.y, x_1635.z) + vec3<f32>(x_1637.x, x_1637.y, x_1637.z));
  let x_1640 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
  let x_1642 : f32 = u_xlat44;
  let x_1643 : f32 = u_xlat44;
  u_xlat42 = (x_1642 * -(x_1643));
  let x_1646 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1646);
  let x_1648 : vec4<f32> = u_xlat0;
  let x_1652 : vec4<f32> = x_44.unity_FogColor;
  let x_1655 : vec3<f32> = (vec3<f32>(x_1648.x, x_1648.y, x_1648.z) + -(vec3<f32>(x_1652.x, x_1652.y, x_1652.z)));
  let x_1656 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
  let x_1660 : f32 = u_xlat42;
  let x_1662 : vec4<f32> = u_xlat0;
  let x_1666 : vec4<f32> = x_44.unity_FogColor;
  let x_1668 : vec3<f32> = ((vec3<f32>(x_1660, x_1660, x_1660) * vec3<f32>(x_1662.x, x_1662.y, x_1662.z)) + vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
  let x_1669 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1669.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

