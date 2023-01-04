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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_137 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_628 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_817 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1071 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1175 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_574 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat31 : vec2<f32>;
  var x_696 : f32;
  var x_708 : vec3<f32>;
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
  var x_1469 : f32;
  var x_1482 : f32;
  var x_1534 : f32;
  var x_1545 : vec3<f32>;
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
  let x_367 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_363.z, x_363.w), x_366);
  u_xlat4 = x_367;
  let x_372 : vec4<f32> = vs_TEXCOORD0;
  let x_375 : f32 = x_44.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_372.z, x_372.w), x_375);
  u_xlat5 = vec3<f32>(x_376.x, x_376.y, x_376.z);
  let x_378 : vec4<f32> = u_xlat4;
  let x_382 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : vec3<f32> = u_xlat2;
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(x_386, vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : f32 = u_xlat45;
  u_xlat45 = (x_390 + 0.5f);
  let x_393 : f32 = u_xlat45;
  let x_395 : vec3<f32> = u_xlat5;
  let x_396 : vec3<f32> = (vec3<f32>(x_393, x_393, x_393) * x_395);
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_400 : f32 = u_xlat4.w;
  u_xlat45 = max(x_400, 0.0001f);
  let x_403 : vec4<f32> = u_xlat4;
  let x_405 : f32 = u_xlat45;
  let x_407 : vec3<f32> = (vec3<f32>(x_403.x, x_403.y, x_403.z) / vec3<f32>(x_405, x_405, x_405));
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_412 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_413 : vec2<f32> = vec2<f32>(x_412.x, x_412.y);
  let x_417 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_413.x, x_413.y));
  let x_418 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_417.x, x_417.y, x_418.z);
  let x_420 : vec3<f32> = u_xlat5;
  let x_422 : vec4<f32> = hlslcc_FragCoord;
  let x_424 : vec2<f32> = (vec2<f32>(x_420.x, x_420.y) * vec2<f32>(x_422.x, x_422.y));
  let x_425 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_424.x, x_424.y, x_425.z);
  let x_428 : f32 = u_xlat5.y;
  let x_431 : f32 = x_44.x_ScaleBiasRt.x;
  let x_434 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat45 = ((x_428 * x_431) + x_434);
  let x_436 : f32 = u_xlat45;
  u_xlat5.z = (-(x_436) + 1.0f);
  let x_440 : f32 = u_xlat1;
  u_xlat45 = ((-(x_440) * 0.959999979f) + 0.959999979f);
  let x_446 : f32 = u_xlat45;
  u_xlat46 = (-(x_446) + 1.0f);
  let x_449 : vec4<f32> = u_xlat0;
  let x_451 : f32 = u_xlat45;
  u_xlat6 = (vec3<f32>(x_449.x, x_449.y, x_449.z) * vec3<f32>(x_451, x_451, x_451));
  let x_454 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_459 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : f32 = u_xlat1;
  let x_463 : vec4<f32> = u_xlat0;
  let x_468 : vec3<f32> = ((vec3<f32>(x_461, x_461, x_461) * vec3<f32>(x_463.x, x_463.y, x_463.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_469 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat1;
  let x_476 : f32 = u_xlat1;
  u_xlat45 = (x_475 * x_476);
  let x_478 : f32 = u_xlat45;
  u_xlat45 = max(x_478, 0.0078125f);
  let x_482 : f32 = u_xlat45;
  let x_483 : f32 = u_xlat45;
  u_xlat19 = (x_482 * x_483);
  let x_487 : f32 = u_xlat0.w;
  let x_488 : f32 = u_xlat46;
  u_xlat42 = (x_487 + x_488);
  let x_490 : f32 = u_xlat42;
  u_xlat42 = clamp(x_490, 0.0f, 1.0f);
  let x_492 : f32 = u_xlat45;
  u_xlat46 = ((x_492 * 4.0f) + 2.0f);
  let x_500 : vec3<f32> = u_xlat5;
  let x_503 : f32 = x_44.x_GlobalMipBias.x;
  let x_504 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_500.x, x_500.z), x_503);
  u_xlat5.x = x_504.x;
  let x_509 : f32 = u_xlat5.x;
  u_xlat33 = (x_509 + -1.0f);
  let x_512 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_513 : f32 = u_xlat33;
  u_xlat33 = ((x_512 * x_513) + 1.0f);
  let x_517 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_517, 1.0f);
  let x_521 : vec4<f32> = u_xlat3;
  let x_522 : vec2<f32> = vec2<f32>(x_521.x, x_521.y);
  let x_524 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_522.x, x_522.y, x_524);
  let x_536 : vec3<f32> = txVec0;
  let x_538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_536.xy, x_536.z);
  u_xlat3.x = x_538;
  let x_543 : f32 = x_137.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_543) + 1.0f);
  let x_548 : f32 = u_xlat3.x;
  let x_550 : f32 = x_137.x_MainLightShadowParams.x;
  let x_553 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_548 * x_550) + x_553);
  let x_560 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_560);
  let x_565 : f32 = u_xlat3.z;
  u_xlatb31 = (x_565 >= 1.0f);
  let x_567 : bool = u_xlatb31;
  let x_569 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_567 | x_569);
  let x_573 : bool = u_xlatb17.x;
  if (x_573) {
    x_574 = 1.0f;
  } else {
    let x_579 : f32 = u_xlat3.x;
    x_574 = x_579;
  }
  let x_580 : f32 = x_574;
  u_xlat3.x = x_580;
  let x_583 : vec3<f32> = vs_TEXCOORD7;
  let x_585 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_587 : vec3<f32> = (x_583 + -(x_585));
  let x_588 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat7;
  let x_592 : vec4<f32> = u_xlat7;
  u_xlat17.x = dot(vec3<f32>(x_590.x, x_590.y, x_590.z), vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_597 : f32 = u_xlat17.x;
  let x_599 : f32 = x_137.x_MainLightShadowParams.z;
  let x_602 : f32 = x_137.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_597 * x_599) + x_602);
  let x_606 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_606, 0.0f, 1.0f);
  let x_611 : f32 = u_xlat3.x;
  u_xlat31.x = (-(x_611) + 1.0f);
  let x_616 : f32 = u_xlat17.x;
  let x_618 : f32 = u_xlat31.x;
  let x_621 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_616 * x_618) + x_621);
  let x_630 : f32 = x_628.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_630 == -1.0f));
  let x_634 : bool = u_xlatb17.x;
  if (x_634) {
    let x_637 : vec3<f32> = vs_TEXCOORD7;
    let x_640 : vec4<f32> = x_628.x_MainLightWorldToLight[1i];
    u_xlat17 = (vec2<f32>(x_637.y, x_637.y) * vec2<f32>(x_640.x, x_640.y));
    let x_644 : vec4<f32> = x_628.x_MainLightWorldToLight[0i];
    let x_646 : vec3<f32> = vs_TEXCOORD7;
    let x_649 : vec2<f32> = u_xlat17;
    u_xlat17 = ((vec2<f32>(x_644.x, x_644.y) * vec2<f32>(x_646.x, x_646.x)) + x_649);
    let x_652 : vec4<f32> = x_628.x_MainLightWorldToLight[2i];
    let x_654 : vec3<f32> = vs_TEXCOORD7;
    let x_657 : vec2<f32> = u_xlat17;
    u_xlat17 = ((vec2<f32>(x_652.x, x_652.y) * vec2<f32>(x_654.z, x_654.z)) + x_657);
    let x_659 : vec2<f32> = u_xlat17;
    let x_661 : vec4<f32> = x_628.x_MainLightWorldToLight[3i];
    u_xlat17 = (x_659 + vec2<f32>(x_661.x, x_661.y));
    let x_664 : vec2<f32> = u_xlat17;
    u_xlat17 = ((x_664 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_673 : vec2<f32> = u_xlat17;
    let x_675 : f32 = x_44.x_GlobalMipBias.x;
    let x_676 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_673, x_675);
    u_xlat7 = x_676;
    let x_678 : f32 = x_628.x_MainLightCookieTextureFormat;
    let x_680 : f32 = x_628.x_MainLightCookieTextureFormat;
    let x_682 : f32 = x_628.x_MainLightCookieTextureFormat;
    let x_684 : f32 = x_628.x_MainLightCookieTextureFormat;
    let x_685 : vec4<f32> = vec4<f32>(x_678, x_680, x_682, x_684);
    let x_692 : vec4<bool> = (vec4<f32>(x_685.x, x_685.y, x_685.z, x_685.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_692.x, x_692.y);
    let x_695 : bool = u_xlatb17.y;
    if (x_695) {
      let x_700 : f32 = u_xlat7.w;
      x_696 = x_700;
    } else {
      let x_703 : f32 = u_xlat7.x;
      x_696 = x_703;
    }
    let x_704 : f32 = x_696;
    u_xlat31.x = x_704;
    let x_707 : bool = u_xlatb17.x;
    if (x_707) {
      let x_711 : vec4<f32> = u_xlat7;
      x_708 = vec3<f32>(x_711.x, x_711.y, x_711.z);
    } else {
      let x_714 : vec2<f32> = u_xlat31;
      x_708 = vec3<f32>(x_714.x, x_714.x, x_714.x);
    }
    let x_716 : vec3<f32> = x_708;
    let x_717 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_723 : vec4<f32> = u_xlat7;
  let x_726 : vec4<f32> = x_44.x_MainLightColor;
  let x_728 : vec3<f32> = (vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : f32 = u_xlat33;
  let x_733 : vec4<f32> = u_xlat7;
  let x_735 : vec3<f32> = (vec3<f32>(x_731, x_731, x_731) * vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : vec3<f32> = u_xlat15;
  let x_740 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(-(x_738), x_740);
  let x_744 : f32 = u_xlat17.x;
  let x_746 : f32 = u_xlat17.x;
  u_xlat17.x = (x_744 + x_746);
  let x_750 : vec3<f32> = u_xlat2;
  let x_751 : vec2<f32> = u_xlat17;
  let x_755 : vec3<f32> = u_xlat15;
  let x_757 : vec3<f32> = ((x_750 * -(vec3<f32>(x_751.x, x_751.x, x_751.x))) + -(x_755));
  let x_758 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec3<f32> = u_xlat2;
  let x_761 : vec3<f32> = u_xlat15;
  u_xlat17.x = dot(x_760, x_761);
  let x_765 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_765, 0.0f, 1.0f);
  let x_769 : f32 = u_xlat17.x;
  u_xlat17.x = (-(x_769) + 1.0f);
  let x_774 : f32 = u_xlat17.x;
  let x_776 : f32 = u_xlat17.x;
  u_xlat17.x = (x_774 * x_776);
  let x_780 : f32 = u_xlat17.x;
  let x_782 : f32 = u_xlat17.x;
  u_xlat17.x = (x_780 * x_782);
  let x_785 : f32 = u_xlat1;
  u_xlat31.x = ((-(x_785) * 0.699999988f) + 1.700000048f);
  let x_792 : f32 = u_xlat1;
  let x_794 : f32 = u_xlat31.x;
  u_xlat1 = (x_792 * x_794);
  let x_796 : f32 = u_xlat1;
  u_xlat1 = (x_796 * 6.0f);
  let x_807 : vec4<f32> = u_xlat8;
  let x_809 : f32 = u_xlat1;
  let x_810 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_807.x, x_807.y, x_807.z), x_809);
  u_xlat8 = x_810;
  let x_812 : f32 = u_xlat8.w;
  u_xlat1 = (x_812 + -1.0f);
  let x_819 : f32 = x_817.unity_SpecCube0_HDR.w;
  let x_820 : f32 = u_xlat1;
  u_xlat1 = ((x_819 * x_820) + 1.0f);
  let x_823 : f32 = u_xlat1;
  u_xlat1 = max(x_823, 0.0f);
  let x_825 : f32 = u_xlat1;
  u_xlat1 = log2(x_825);
  let x_827 : f32 = u_xlat1;
  let x_829 : f32 = x_817.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_827 * x_829);
  let x_831 : f32 = u_xlat1;
  u_xlat1 = exp2(x_831);
  let x_833 : f32 = u_xlat1;
  let x_835 : f32 = x_817.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_833 * x_835);
  let x_837 : vec4<f32> = u_xlat8;
  let x_839 : f32 = u_xlat1;
  let x_841 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(x_839, x_839, x_839));
  let x_842 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : f32 = u_xlat45;
  let x_846 : f32 = u_xlat45;
  u_xlat31 = ((vec2<f32>(x_844, x_844) * vec2<f32>(x_846, x_846)) + vec2<f32>(-1.0f, 1.0f));
  let x_852 : f32 = u_xlat31.y;
  u_xlat1 = (1.0f / x_852);
  let x_855 : vec4<f32> = u_xlat0;
  let x_858 : f32 = u_xlat42;
  u_xlat9 = (-(vec3<f32>(x_855.x, x_855.y, x_855.z)) + vec3<f32>(x_858, x_858, x_858));
  let x_861 : vec2<f32> = u_xlat17;
  let x_863 : vec3<f32> = u_xlat9;
  let x_865 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_861.x, x_861.x, x_861.x) * x_863) + vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat1;
  let x_870 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_868, x_868, x_868) * x_870);
  let x_872 : vec4<f32> = u_xlat8;
  let x_874 : vec3<f32> = u_xlat9;
  let x_875 : vec3<f32> = (vec3<f32>(x_872.x, x_872.y, x_872.z) * x_874);
  let x_876 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = u_xlat4;
  let x_880 : vec3<f32> = u_xlat6;
  let x_882 : vec4<f32> = u_xlat8;
  let x_884 : vec3<f32> = ((vec3<f32>(x_878.x, x_878.y, x_878.z) * x_880) + vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_885 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_888 : f32 = u_xlat3.x;
  let x_890 : f32 = x_817.unity_LightData.z;
  u_xlat42 = (x_888 * x_890);
  let x_892 : vec3<f32> = u_xlat2;
  let x_894 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_892, vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_897 : f32 = u_xlat1;
  u_xlat1 = clamp(x_897, 0.0f, 1.0f);
  let x_899 : f32 = u_xlat42;
  let x_900 : f32 = u_xlat1;
  u_xlat42 = (x_899 * x_900);
  let x_902 : f32 = u_xlat42;
  let x_904 : vec4<f32> = u_xlat7;
  let x_906 : vec3<f32> = (vec3<f32>(x_902, x_902, x_902) * vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_907 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_906.z);
  let x_909 : vec3<f32> = u_xlat15;
  let x_911 : vec4<f32> = x_44.x_MainLightPosition;
  let x_913 : vec3<f32> = (x_909 + vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat7;
  let x_918 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_916.x, x_916.y, x_916.z), vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : f32 = u_xlat42;
  u_xlat42 = max(x_921, 1.17549435e-37f);
  let x_924 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_924);
  let x_926 : f32 = u_xlat42;
  let x_928 : vec4<f32> = u_xlat7;
  let x_930 : vec3<f32> = (vec3<f32>(x_926, x_926, x_926) * vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_931 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec3<f32> = u_xlat2;
  let x_934 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_933, vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_937 : f32 = u_xlat42;
  u_xlat42 = clamp(x_937, 0.0f, 1.0f);
  let x_940 : vec4<f32> = x_44.x_MainLightPosition;
  let x_942 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_940.x, x_940.y, x_940.z), vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : f32 = u_xlat1;
  u_xlat1 = clamp(x_945, 0.0f, 1.0f);
  let x_947 : f32 = u_xlat42;
  let x_948 : f32 = u_xlat42;
  u_xlat42 = (x_947 * x_948);
  let x_950 : f32 = u_xlat42;
  let x_952 : f32 = u_xlat31.x;
  u_xlat42 = ((x_950 * x_952) + 1.000010014f);
  let x_956 : f32 = u_xlat1;
  let x_957 : f32 = u_xlat1;
  u_xlat1 = (x_956 * x_957);
  let x_959 : f32 = u_xlat42;
  let x_960 : f32 = u_xlat42;
  u_xlat42 = (x_959 * x_960);
  let x_962 : f32 = u_xlat1;
  u_xlat1 = max(x_962, 0.100000001f);
  let x_965 : f32 = u_xlat42;
  let x_966 : f32 = u_xlat1;
  u_xlat42 = (x_965 * x_966);
  let x_968 : f32 = u_xlat46;
  let x_969 : f32 = u_xlat42;
  u_xlat42 = (x_968 * x_969);
  let x_971 : f32 = u_xlat19;
  let x_972 : f32 = u_xlat42;
  u_xlat42 = (x_971 / x_972);
  let x_974 : vec4<f32> = u_xlat0;
  let x_976 : f32 = u_xlat42;
  let x_979 : vec3<f32> = u_xlat6;
  let x_980 : vec3<f32> = ((vec3<f32>(x_974.x, x_974.y, x_974.z) * vec3<f32>(x_976, x_976, x_976)) + x_979);
  let x_981 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
  let x_983 : vec4<f32> = u_xlat3;
  let x_985 : vec4<f32> = u_xlat7;
  let x_987 : vec3<f32> = (vec3<f32>(x_983.x, x_983.y, x_983.w) * vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_987.z);
  let x_991 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_993 : f32 = x_817.unity_LightData.y;
  u_xlat42 = min(x_991, x_993);
  let x_996 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_996));
  let x_1001 : f32 = x_628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1003 : f32 = x_628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1005 : f32 = x_628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1007 : f32 = x_628.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1008 : vec4<f32> = vec4<f32>(x_1001, x_1003, x_1005, x_1007);
  let x_1014 : vec4<bool> = (vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1008.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1014.x, x_1014.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1025 : u32 = u_xlatu_loop_1;
    let x_1026 : u32 = u_xlatu42;
    if ((x_1025 < x_1026)) {
    } else {
      break;
    }
    let x_1029 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1029 >> 2u);
    let x_1032 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1032 & 3u));
    let x_1036 : u32 = u_xlatu47;
    let x_1039 : vec4<f32> = x_817.unity_LightIndices[bitcast<i32>(x_1036)];
    let x_1049 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1054 : vec4<u32> = indexable[x_1049];
    u_xlat47 = dot(x_1039, bitcast<vec4<f32>>(x_1054));
    let x_1057 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1057));
    let x_1060 : vec3<f32> = vs_TEXCOORD7;
    let x_1072 : u32 = u_xlatu47;
    let x_1075 : vec4<f32> = x_1071.x_AdditionalLightsPosition[bitcast<i32>(x_1072)];
    let x_1078 : u32 = u_xlatu47;
    let x_1081 : vec4<f32> = x_1071.x_AdditionalLightsPosition[bitcast<i32>(x_1078)];
    u_xlat9 = ((-(x_1060) * vec3<f32>(x_1075.w, x_1075.w, x_1075.w)) + vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
    let x_1085 : vec3<f32> = u_xlat9;
    let x_1086 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1085, x_1086);
    let x_1088 : f32 = u_xlat48;
    u_xlat48 = max(x_1088, 6.10351562e-05f);
    let x_1092 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1092);
    let x_1095 : f32 = u_xlat35;
    let x_1097 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1095, x_1095, x_1095) * x_1097);
    let x_1100 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1100);
    let x_1102 : f32 = u_xlat48;
    let x_1103 : u32 = u_xlatu47;
    let x_1106 : f32 = x_1071.x_AdditionalLightsAttenuation[bitcast<i32>(x_1103)].x;
    u_xlat48 = (x_1102 * x_1106);
    let x_1108 : f32 = u_xlat48;
    let x_1110 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1108) * x_1110) + 1.0f);
    let x_1113 : f32 = u_xlat48;
    u_xlat48 = max(x_1113, 0.0f);
    let x_1115 : f32 = u_xlat48;
    let x_1116 : f32 = u_xlat48;
    u_xlat48 = (x_1115 * x_1116);
    let x_1118 : f32 = u_xlat48;
    let x_1119 : f32 = u_xlat49;
    u_xlat48 = (x_1118 * x_1119);
    let x_1121 : u32 = u_xlatu47;
    let x_1124 : vec4<f32> = x_1071.x_AdditionalLightsSpotDir[bitcast<i32>(x_1121)];
    let x_1126 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1124.x, x_1124.y, x_1124.z), x_1126);
    let x_1128 : f32 = u_xlat49;
    let x_1129 : u32 = u_xlatu47;
    let x_1132 : f32 = x_1071.x_AdditionalLightsAttenuation[bitcast<i32>(x_1129)].z;
    let x_1134 : u32 = u_xlatu47;
    let x_1137 : f32 = x_1071.x_AdditionalLightsAttenuation[bitcast<i32>(x_1134)].w;
    u_xlat49 = ((x_1128 * x_1132) + x_1137);
    let x_1139 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1139, 0.0f, 1.0f);
    let x_1141 : f32 = u_xlat49;
    let x_1142 : f32 = u_xlat49;
    u_xlat49 = (x_1141 * x_1142);
    let x_1144 : f32 = u_xlat48;
    let x_1145 : f32 = u_xlat49;
    u_xlat48 = (x_1144 * x_1145);
    let x_1148 : u32 = u_xlatu47;
    u_xlatu49 = (x_1148 >> 5u);
    let x_1151 : u32 = u_xlatu47;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1151) & 31i)));
    let x_1157 : i32 = u_xlati50;
    let x_1159 : u32 = u_xlatu49;
    let x_1162 : f32 = x_628.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1159)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1157) & bitcast<u32>(x_1162)));
    let x_1166 : i32 = u_xlati49;
    if ((x_1166 != 0i)) {
      let x_1176 : u32 = u_xlatu47;
      let x_1179 : f32 = x_1175.x_AdditionalLightsLightTypes[bitcast<i32>(x_1176)].el;
      u_xlati49 = i32(x_1179);
      let x_1181 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1181 != 0i));
      let x_1185 : u32 = u_xlatu47;
      u_xlati51 = (bitcast<i32>(x_1185) << bitcast<u32>(2i));
      let x_1188 : i32 = u_xlati50;
      if ((x_1188 != 0i)) {
        let x_1193 : vec3<f32> = vs_TEXCOORD7;
        let x_1195 : i32 = u_xlati51;
        let x_1198 : i32 = u_xlati51;
        let x_1202 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[((x_1195 + 1i) / 4i)][((x_1198 + 1i) % 4i)];
        let x_1204 : vec3<f32> = (vec3<f32>(x_1193.y, x_1193.y, x_1193.y) * vec3<f32>(x_1202.x, x_1202.y, x_1202.w));
        let x_1205 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
        let x_1207 : i32 = u_xlati51;
        let x_1209 : i32 = u_xlati51;
        let x_1212 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[(x_1207 / 4i)][(x_1209 % 4i)];
        let x_1214 : vec3<f32> = vs_TEXCOORD7;
        let x_1217 : vec4<f32> = u_xlat11;
        let x_1219 : vec3<f32> = ((vec3<f32>(x_1212.x, x_1212.y, x_1212.w) * vec3<f32>(x_1214.x, x_1214.x, x_1214.x)) + vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
        let x_1220 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
        let x_1222 : i32 = u_xlati51;
        let x_1225 : i32 = u_xlati51;
        let x_1229 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[((x_1222 + 2i) / 4i)][((x_1225 + 2i) % 4i)];
        let x_1231 : vec3<f32> = vs_TEXCOORD7;
        let x_1234 : vec4<f32> = u_xlat11;
        let x_1236 : vec3<f32> = ((vec3<f32>(x_1229.x, x_1229.y, x_1229.w) * vec3<f32>(x_1231.z, x_1231.z, x_1231.z)) + vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
        let x_1237 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
        let x_1239 : vec4<f32> = u_xlat11;
        let x_1241 : i32 = u_xlati51;
        let x_1244 : i32 = u_xlati51;
        let x_1248 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[((x_1241 + 3i) / 4i)][((x_1244 + 3i) % 4i)];
        let x_1250 : vec3<f32> = (vec3<f32>(x_1239.x, x_1239.y, x_1239.z) + vec3<f32>(x_1248.x, x_1248.y, x_1248.w));
        let x_1251 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
        let x_1253 : vec4<f32> = u_xlat11;
        let x_1255 : vec4<f32> = u_xlat11;
        let x_1257 : vec2<f32> = (vec2<f32>(x_1253.x, x_1253.y) / vec2<f32>(x_1255.z, x_1255.z));
        let x_1258 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1257.x, x_1257.y, x_1258.z, x_1258.w);
        let x_1260 : vec4<f32> = u_xlat11;
        let x_1263 : vec2<f32> = ((vec2<f32>(x_1260.x, x_1260.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1263.x, x_1263.y, x_1264.z, x_1264.w);
        let x_1266 : vec4<f32> = u_xlat11;
        let x_1270 : vec2<f32> = clamp(vec2<f32>(x_1266.x, x_1266.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1271 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
        let x_1273 : u32 = u_xlatu47;
        let x_1276 : vec4<f32> = x_1175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1273)];
        let x_1278 : vec4<f32> = u_xlat11;
        let x_1281 : u32 = u_xlatu47;
        let x_1284 : vec4<f32> = x_1175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1281)];
        let x_1286 : vec2<f32> = ((vec2<f32>(x_1276.x, x_1276.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1284.z, x_1284.w));
        let x_1287 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1286.x, x_1286.y, x_1287.z, x_1287.w);
      } else {
        let x_1291 : i32 = u_xlati49;
        u_xlatb49 = (x_1291 == 1i);
        let x_1293 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1293);
        let x_1295 : i32 = u_xlati49;
        if ((x_1295 != 0i)) {
          let x_1300 : vec3<f32> = vs_TEXCOORD7;
          let x_1302 : i32 = u_xlati51;
          let x_1305 : i32 = u_xlati51;
          let x_1309 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[((x_1302 + 1i) / 4i)][((x_1305 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1300.y, x_1300.y) * vec2<f32>(x_1309.x, x_1309.y));
          let x_1312 : i32 = u_xlati51;
          let x_1314 : i32 = u_xlati51;
          let x_1317 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[(x_1312 / 4i)][(x_1314 % 4i)];
          let x_1319 : vec3<f32> = vs_TEXCOORD7;
          let x_1322 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1319.x, x_1319.x)) + x_1322);
          let x_1324 : i32 = u_xlati51;
          let x_1327 : i32 = u_xlati51;
          let x_1331 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[((x_1324 + 2i) / 4i)][((x_1327 + 2i) % 4i)];
          let x_1333 : vec3<f32> = vs_TEXCOORD7;
          let x_1336 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1331.x, x_1331.y) * vec2<f32>(x_1333.z, x_1333.z)) + x_1336);
          let x_1338 : vec2<f32> = u_xlat39;
          let x_1339 : i32 = u_xlati51;
          let x_1342 : i32 = u_xlati51;
          let x_1346 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[((x_1339 + 3i) / 4i)][((x_1342 + 3i) % 4i)];
          u_xlat39 = (x_1338 + vec2<f32>(x_1346.x, x_1346.y));
          let x_1349 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1349 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1352 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1352);
          let x_1354 : u32 = u_xlatu47;
          let x_1357 : vec4<f32> = x_1175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1354)];
          let x_1359 : vec2<f32> = u_xlat39;
          let x_1361 : u32 = u_xlatu47;
          let x_1364 : vec4<f32> = x_1175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1361)];
          let x_1366 : vec2<f32> = ((vec2<f32>(x_1357.x, x_1357.y) * x_1359) + vec2<f32>(x_1364.z, x_1364.w));
          let x_1367 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1367.w);
        } else {
          let x_1371 : vec3<f32> = vs_TEXCOORD7;
          let x_1373 : i32 = u_xlati51;
          let x_1376 : i32 = u_xlati51;
          let x_1380 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[((x_1373 + 1i) / 4i)][((x_1376 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1371.y, x_1371.y, x_1371.y, x_1371.y) * x_1380);
          let x_1382 : i32 = u_xlati51;
          let x_1384 : i32 = u_xlati51;
          let x_1387 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[(x_1382 / 4i)][(x_1384 % 4i)];
          let x_1388 : vec3<f32> = vs_TEXCOORD7;
          let x_1391 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1387 * vec4<f32>(x_1388.x, x_1388.x, x_1388.x, x_1388.x)) + x_1391);
          let x_1393 : i32 = u_xlati51;
          let x_1396 : i32 = u_xlati51;
          let x_1400 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[((x_1393 + 2i) / 4i)][((x_1396 + 2i) % 4i)];
          let x_1401 : vec3<f32> = vs_TEXCOORD7;
          let x_1404 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1400 * vec4<f32>(x_1401.z, x_1401.z, x_1401.z, x_1401.z)) + x_1404);
          let x_1406 : vec4<f32> = u_xlat12;
          let x_1407 : i32 = u_xlati51;
          let x_1410 : i32 = u_xlati51;
          let x_1414 : vec4<f32> = x_1175.x_AdditionalLightsWorldToLights[((x_1407 + 3i) / 4i)][((x_1410 + 3i) % 4i)];
          u_xlat12 = (x_1406 + x_1414);
          let x_1416 : vec4<f32> = u_xlat12;
          let x_1418 : vec4<f32> = u_xlat12;
          let x_1420 : vec3<f32> = (vec3<f32>(x_1416.x, x_1416.y, x_1416.z) / vec3<f32>(x_1418.w, x_1418.w, x_1418.w));
          let x_1421 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
          let x_1423 : vec4<f32> = u_xlat12;
          let x_1425 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1423.x, x_1423.y, x_1423.z), vec3<f32>(x_1425.x, x_1425.y, x_1425.z));
          let x_1428 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1428);
          let x_1430 : f32 = u_xlat49;
          let x_1432 : vec4<f32> = u_xlat12;
          let x_1434 : vec3<f32> = (vec3<f32>(x_1430, x_1430, x_1430) * vec3<f32>(x_1432.x, x_1432.y, x_1432.z));
          let x_1435 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
          let x_1437 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1437.x, x_1437.y, x_1437.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1442 : f32 = u_xlat49;
          u_xlat49 = max(x_1442, 0.000001f);
          let x_1445 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1445);
          let x_1448 : f32 = u_xlat49;
          let x_1450 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1448, x_1448, x_1448) * vec3<f32>(x_1450.z, x_1450.x, x_1450.y));
          let x_1454 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1454);
          let x_1458 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1458, 0.0f, 1.0f);
          let x_1462 : vec3<f32> = u_xlat13;
          let x_1465 : vec4<bool> = (vec4<f32>(x_1462.y, x_1462.z, x_1462.y, x_1462.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1465.x, x_1465.y);
          let x_1468 : bool = u_xlatb39.x;
          if (x_1468) {
            let x_1473 : f32 = u_xlat13.x;
            x_1469 = x_1473;
          } else {
            let x_1476 : f32 = u_xlat13.x;
            x_1469 = -(x_1476);
          }
          let x_1478 : f32 = x_1469;
          u_xlat39.x = x_1478;
          let x_1481 : bool = u_xlatb39.y;
          if (x_1481) {
            let x_1486 : f32 = u_xlat13.x;
            x_1482 = x_1486;
          } else {
            let x_1489 : f32 = u_xlat13.x;
            x_1482 = -(x_1489);
          }
          let x_1491 : f32 = x_1482;
          u_xlat39.y = x_1491;
          let x_1493 : vec4<f32> = u_xlat12;
          let x_1495 : f32 = u_xlat49;
          let x_1498 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1495, x_1495)) + x_1498);
          let x_1500 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1500 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1503 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1503, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1507 : u32 = u_xlatu47;
          let x_1510 : vec4<f32> = x_1175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1507)];
          let x_1512 : vec2<f32> = u_xlat39;
          let x_1514 : u32 = u_xlatu47;
          let x_1517 : vec4<f32> = x_1175.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1514)];
          let x_1519 : vec2<f32> = ((vec2<f32>(x_1510.x, x_1510.y) * x_1512) + vec2<f32>(x_1517.z, x_1517.w));
          let x_1520 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1519.x, x_1519.y, x_1520.z, x_1520.w);
        }
      }
      let x_1527 : vec4<f32> = u_xlat11;
      let x_1530 : f32 = x_44.x_GlobalMipBias.x;
      let x_1531 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1527.x, x_1527.y), x_1530);
      u_xlat11 = x_1531;
      let x_1533 : bool = u_xlatb7.y;
      if (x_1533) {
        let x_1538 : f32 = u_xlat11.w;
        x_1534 = x_1538;
      } else {
        let x_1541 : f32 = u_xlat11.x;
        x_1534 = x_1541;
      }
      let x_1542 : f32 = x_1534;
      u_xlat49 = x_1542;
      let x_1544 : bool = u_xlatb7.x;
      if (x_1544) {
        let x_1548 : vec4<f32> = u_xlat11;
        x_1545 = vec3<f32>(x_1548.x, x_1548.y, x_1548.z);
      } else {
        let x_1551 : f32 = u_xlat49;
        x_1545 = vec3<f32>(x_1551, x_1551, x_1551);
      }
      let x_1553 : vec3<f32> = x_1545;
      let x_1554 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1554.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1560 : vec4<f32> = u_xlat11;
    let x_1562 : u32 = u_xlatu47;
    let x_1565 : vec4<f32> = x_1071.x_AdditionalLightsColor[bitcast<i32>(x_1562)];
    let x_1567 : vec3<f32> = (vec3<f32>(x_1560.x, x_1560.y, x_1560.z) * vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
    let x_1568 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1567.x, x_1567.y, x_1567.z, x_1568.w);
    let x_1570 : f32 = u_xlat33;
    let x_1572 : vec4<f32> = u_xlat11;
    let x_1574 : vec3<f32> = (vec3<f32>(x_1570, x_1570, x_1570) * vec3<f32>(x_1572.x, x_1572.y, x_1572.z));
    let x_1575 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1575.w);
    let x_1577 : vec3<f32> = u_xlat2;
    let x_1578 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1577, x_1578);
    let x_1580 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1580, 0.0f, 1.0f);
    let x_1582 : f32 = u_xlat47;
    let x_1583 : f32 = u_xlat48;
    u_xlat47 = (x_1582 * x_1583);
    let x_1585 : f32 = u_xlat47;
    let x_1587 : vec4<f32> = u_xlat11;
    let x_1589 : vec3<f32> = (vec3<f32>(x_1585, x_1585, x_1585) * vec3<f32>(x_1587.x, x_1587.y, x_1587.z));
    let x_1590 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
    let x_1592 : vec3<f32> = u_xlat9;
    let x_1593 : f32 = u_xlat35;
    let x_1596 : vec3<f32> = u_xlat15;
    u_xlat9 = ((x_1592 * vec3<f32>(x_1593, x_1593, x_1593)) + x_1596);
    let x_1598 : vec3<f32> = u_xlat9;
    let x_1599 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1598, x_1599);
    let x_1601 : f32 = u_xlat47;
    u_xlat47 = max(x_1601, 1.17549435e-37f);
    let x_1603 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1603);
    let x_1605 : f32 = u_xlat47;
    let x_1607 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1605, x_1605, x_1605) * x_1607);
    let x_1609 : vec3<f32> = u_xlat2;
    let x_1610 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1609, x_1610);
    let x_1612 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1612, 0.0f, 1.0f);
    let x_1614 : vec3<f32> = u_xlat10;
    let x_1615 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1614, x_1615);
    let x_1617 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1617, 0.0f, 1.0f);
    let x_1619 : f32 = u_xlat47;
    let x_1620 : f32 = u_xlat47;
    u_xlat47 = (x_1619 * x_1620);
    let x_1622 : f32 = u_xlat47;
    let x_1624 : f32 = u_xlat31.x;
    u_xlat47 = ((x_1622 * x_1624) + 1.000010014f);
    let x_1627 : f32 = u_xlat48;
    let x_1628 : f32 = u_xlat48;
    u_xlat48 = (x_1627 * x_1628);
    let x_1630 : f32 = u_xlat47;
    let x_1631 : f32 = u_xlat47;
    u_xlat47 = (x_1630 * x_1631);
    let x_1633 : f32 = u_xlat48;
    u_xlat48 = max(x_1633, 0.100000001f);
    let x_1635 : f32 = u_xlat47;
    let x_1636 : f32 = u_xlat48;
    u_xlat47 = (x_1635 * x_1636);
    let x_1638 : f32 = u_xlat46;
    let x_1639 : f32 = u_xlat47;
    u_xlat47 = (x_1638 * x_1639);
    let x_1641 : f32 = u_xlat19;
    let x_1642 : f32 = u_xlat47;
    u_xlat47 = (x_1641 / x_1642);
    let x_1644 : vec4<f32> = u_xlat0;
    let x_1646 : f32 = u_xlat47;
    let x_1649 : vec3<f32> = u_xlat6;
    u_xlat9 = ((vec3<f32>(x_1644.x, x_1644.y, x_1644.z) * vec3<f32>(x_1646, x_1646, x_1646)) + x_1649);
    let x_1651 : vec3<f32> = u_xlat9;
    let x_1652 : vec4<f32> = u_xlat11;
    let x_1655 : vec4<f32> = u_xlat8;
    let x_1657 : vec3<f32> = ((x_1651 * vec3<f32>(x_1652.x, x_1652.y, x_1652.z)) + vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
    let x_1658 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);

    continuing {
      let x_1660 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1660 + bitcast<u32>(1i));
    }
  }
  let x_1662 : vec4<f32> = u_xlat4;
  let x_1664 : vec3<f32> = u_xlat5;
  let x_1667 : vec4<f32> = u_xlat3;
  let x_1669 : vec3<f32> = ((vec3<f32>(x_1662.x, x_1662.y, x_1662.z) * vec3<f32>(x_1664.x, x_1664.x, x_1664.x)) + vec3<f32>(x_1667.x, x_1667.y, x_1667.w));
  let x_1670 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1669.x, x_1669.y, x_1669.z, x_1670.w);
  let x_1672 : vec4<f32> = u_xlat8;
  let x_1674 : vec4<f32> = u_xlat0;
  let x_1676 : vec3<f32> = (vec3<f32>(x_1672.x, x_1672.y, x_1672.z) + vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
  let x_1677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
  let x_1679 : f32 = u_xlat44;
  let x_1680 : f32 = u_xlat44;
  u_xlat42 = (x_1679 * -(x_1680));
  let x_1683 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1683);
  let x_1685 : vec4<f32> = u_xlat0;
  let x_1689 : vec4<f32> = x_44.unity_FogColor;
  let x_1692 : vec3<f32> = (vec3<f32>(x_1685.x, x_1685.y, x_1685.z) + -(vec3<f32>(x_1689.x, x_1689.y, x_1689.z)));
  let x_1693 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1697 : f32 = u_xlat42;
  let x_1699 : vec4<f32> = u_xlat0;
  let x_1703 : vec4<f32> = x_44.unity_FogColor;
  let x_1705 : vec3<f32> = ((vec3<f32>(x_1697, x_1697, x_1697) * vec3<f32>(x_1699.x, x_1699.y, x_1699.z)) + vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
  let x_1706 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
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

