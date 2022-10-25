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

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_136 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_367 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_679 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1124 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1228 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb42 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat3 : vec4<f32>;
  var x_109 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var u_xlat45 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var u_xlat34 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlatb18 : vec2<bool>;
  var u_xlatb32 : bool;
  var x_626 : f32;
  var u_xlat32 : vec2<f32>;
  var x_748 : f32;
  var x_760 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu44 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu48 : u32;
  var u_xlati35 : i32;
  var u_xlat48 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat35 : f32;
  var u_xlat49 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1522 : f32;
  var x_1535 : f32;
  var x_1587 : f32;
  var x_1598 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1769 : f32;
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
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb42 = (x_69 == 0.0f);
  let x_76 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_76) + x_81);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat44 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat44;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_106 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_106;
  let x_108 : bool = u_xlatb42;
  if (x_108) {
    let x_112 : vec3<f32> = u_xlat2;
    x_109 = x_112;
  } else {
    let x_114 : vec4<f32> = u_xlat3;
    x_109 = vec3<f32>(x_114.x, x_114.y, x_114.z);
  }
  let x_116 : vec3<f32> = x_109;
  u_xlat2 = x_116;
  let x_119 : vec3<f32> = vs_TEXCOORD2;
  let x_120 : vec3<f32> = vs_TEXCOORD2;
  u_xlat42 = dot(x_119, x_120);
  let x_122 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_122);
  let x_124 : f32 = u_xlat42;
  let x_126 : vec3<f32> = vs_TEXCOORD2;
  let x_127 : vec3<f32> = (vec3<f32>(x_124, x_124, x_124) * x_126);
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_131 : vec3<f32> = vs_TEXCOORD1;
  let x_138 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres0;
  let x_141 : vec3<f32> = (x_131 + -(vec3<f32>(x_138.x, x_138.y, x_138.z)));
  let x_142 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres1;
  let x_150 : vec3<f32> = (x_145 + -(vec3<f32>(x_147.x, x_147.y, x_147.z)));
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : vec3<f32> = vs_TEXCOORD1;
  let x_157 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres2;
  let x_160 : vec3<f32> = (x_154 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_167 : vec4<f32> = x_136.x_CascadeShadowSplitSpheres3;
  let x_170 : vec3<f32> = (x_164 + -(vec3<f32>(x_167.x, x_167.y, x_167.z)));
  let x_171 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec4<f32> = u_xlat4;
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_173.x, x_173.y, x_173.z), vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_179 : vec4<f32> = u_xlat5;
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_185 : vec4<f32> = u_xlat6;
  let x_187 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec4<f32> = u_xlat7;
  let x_193 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_200 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = x_136.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_200 < x_203);
  let x_206 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_206);
  let x_210 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_214);
  let x_218 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_218);
  let x_222 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_222);
  let x_228 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_228);
  let x_232 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_232);
  let x_235 : vec4<f32> = u_xlat4;
  let x_237 : vec4<f32> = u_xlat5;
  let x_239 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) + vec3<f32>(x_237.y, x_237.z, x_237.w));
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat4;
  let x_245 : vec3<f32> = max(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_246 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_246.x, x_245.x, x_245.y, x_245.z);
  let x_248 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_248, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_254 : f32 = u_xlat42;
  u_xlat42 = (-(x_254) + 4.0f);
  let x_259 : f32 = u_xlat42;
  u_xlatu42 = u32(x_259);
  let x_263 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_263) << bitcast<u32>(2i));
  let x_266 : vec3<f32> = vs_TEXCOORD1;
  let x_268 : i32 = u_xlati42;
  let x_271 : i32 = u_xlati42;
  let x_275 : vec4<f32> = x_136.x_MainLightWorldToShadow[((x_268 + 1i) / 4i)][((x_271 + 1i) % 4i)];
  let x_277 : vec3<f32> = (vec3<f32>(x_266.y, x_266.y, x_266.y) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : i32 = u_xlati42;
  let x_282 : i32 = u_xlati42;
  let x_285 : vec4<f32> = x_136.x_MainLightWorldToShadow[(x_280 / 4i)][(x_282 % 4i)];
  let x_287 : vec3<f32> = vs_TEXCOORD1;
  let x_290 : vec4<f32> = u_xlat4;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287.x, x_287.x, x_287.x)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : i32 = u_xlati42;
  let x_298 : i32 = u_xlati42;
  let x_302 : vec4<f32> = x_136.x_MainLightWorldToShadow[((x_295 + 2i) / 4i)][((x_298 + 2i) % 4i)];
  let x_304 : vec3<f32> = vs_TEXCOORD1;
  let x_307 : vec4<f32> = u_xlat4;
  let x_309 : vec3<f32> = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304.z, x_304.z, x_304.z)) + vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat4;
  let x_314 : i32 = u_xlati42;
  let x_317 : i32 = u_xlati42;
  let x_321 : vec4<f32> = x_136.x_MainLightWorldToShadow[((x_314 + 3i) / 4i)][((x_317 + 3i) % 4i)];
  let x_323 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : f32 = vs_TEXCOORD1.y;
  let x_329 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat42 = (x_327 * x_329);
  let x_332 : f32 = x_44.unity_MatrixV[0i].z;
  let x_334 : f32 = vs_TEXCOORD1.x;
  let x_336 : f32 = u_xlat42;
  u_xlat42 = ((x_332 * x_334) + x_336);
  let x_339 : f32 = x_44.unity_MatrixV[2i].z;
  let x_341 : f32 = vs_TEXCOORD1.z;
  let x_343 : f32 = u_xlat42;
  u_xlat42 = ((x_339 * x_341) + x_343);
  let x_345 : f32 = u_xlat42;
  let x_347 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat42 = (x_345 + x_347);
  let x_349 : f32 = u_xlat42;
  let x_353 : f32 = x_44.x_ProjectionParams.y;
  u_xlat42 = (-(x_349) + -(x_353));
  let x_356 : f32 = u_xlat42;
  u_xlat42 = max(x_356, 0.0f);
  let x_358 : f32 = u_xlat42;
  let x_361 : f32 = x_44.unity_FogParams.x;
  u_xlat42 = (x_358 * x_361);
  u_xlat3.w = 1.0f;
  let x_370 : vec4<f32> = x_367.unity_SHAr;
  let x_371 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_370, x_371);
  let x_376 : vec4<f32> = x_367.unity_SHAg;
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_376, x_377);
  let x_382 : vec4<f32> = x_367.unity_SHAb;
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_382, x_383);
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_386.y, x_386.z, x_386.z, x_386.x) * vec4<f32>(x_388.x, x_388.y, x_388.z, x_388.z));
  let x_393 : vec4<f32> = x_367.unity_SHBr;
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_393, x_394);
  let x_399 : vec4<f32> = x_367.unity_SHBg;
  let x_400 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_399, x_400);
  let x_405 : vec4<f32> = x_367.unity_SHBb;
  let x_406 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_405, x_406);
  let x_410 : f32 = u_xlat3.y;
  let x_412 : f32 = u_xlat3.y;
  u_xlat44 = (x_410 * x_412);
  let x_415 : f32 = u_xlat3.x;
  let x_417 : f32 = u_xlat3.x;
  let x_419 : f32 = u_xlat44;
  u_xlat44 = ((x_415 * x_417) + -(x_419));
  let x_424 : vec4<f32> = x_367.unity_SHC;
  let x_426 : f32 = u_xlat44;
  let x_429 : vec4<f32> = u_xlat7;
  let x_431 : vec3<f32> = ((vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_426, x_426, x_426)) + vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat5;
  let x_436 : vec4<f32> = u_xlat6;
  let x_438 : vec3<f32> = (vec3<f32>(x_434.x, x_434.y, x_434.z) + vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat5;
  let x_443 : vec3<f32> = max(vec3<f32>(x_441.x, x_441.y, x_441.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_444 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_448 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_449 : vec2<f32> = vec2<f32>(x_448.x, x_448.y);
  let x_453 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_449.x, x_449.y));
  let x_454 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat6;
  let x_458 : vec4<f32> = hlslcc_FragCoord;
  let x_460 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) * vec2<f32>(x_458.x, x_458.y));
  let x_461 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
  let x_464 : f32 = u_xlat6.y;
  let x_467 : f32 = x_44.x_ScaleBiasRt.x;
  let x_470 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat44 = ((x_464 * x_467) + x_470);
  let x_472 : f32 = u_xlat44;
  u_xlat6.z = (-(x_472) + 1.0f);
  let x_477 : f32 = x_57.x_Metallic;
  u_xlat44 = ((-(x_477) * 0.959999979f) + 0.959999979f);
  let x_483 : f32 = u_xlat44;
  u_xlat45 = (-(x_483) + 1.0f);
  let x_487 : vec4<f32> = u_xlat1;
  let x_489 : f32 = u_xlat44;
  u_xlat15 = (vec3<f32>(x_487.y, x_487.z, x_487.w) * vec3<f32>(x_489, x_489, x_489));
  let x_492 : vec4<f32> = u_xlat0;
  let x_495 : vec4<f32> = x_57.x_BaseColor;
  let x_500 : vec3<f32> = ((vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(x_495.x, x_495.y, x_495.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_501 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_504 : f32 = x_57.x_Metallic;
  let x_506 : f32 = x_57.x_Metallic;
  let x_508 : f32 = x_57.x_Metallic;
  let x_509 : vec3<f32> = vec3<f32>(x_504, x_506, x_508);
  let x_514 : vec4<f32> = u_xlat0;
  let x_519 : vec3<f32> = ((vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_514.x, x_514.y, x_514.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = x_57.x_Smoothness;
  u_xlat44 = (-(x_523) + 1.0f);
  let x_527 : f32 = u_xlat44;
  let x_528 : f32 = u_xlat44;
  u_xlat46 = (x_527 * x_528);
  let x_530 : f32 = u_xlat46;
  u_xlat46 = max(x_530, 0.0078125f);
  let x_534 : f32 = u_xlat46;
  let x_535 : f32 = u_xlat46;
  u_xlat47 = (x_534 * x_535);
  let x_537 : f32 = u_xlat45;
  let x_539 : f32 = x_57.x_Smoothness;
  u_xlat45 = (x_537 + x_539);
  let x_541 : f32 = u_xlat45;
  u_xlat45 = clamp(x_541, 0.0f, 1.0f);
  let x_544 : f32 = u_xlat46;
  u_xlat20 = ((x_544 * 4.0f) + 2.0f);
  let x_552 : vec4<f32> = u_xlat6;
  let x_555 : f32 = x_44.x_GlobalMipBias.x;
  let x_556 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_552.x, x_552.z), x_555);
  u_xlat6.x = x_556.x;
  let x_561 : f32 = u_xlat6.x;
  u_xlat34 = (x_561 + -1.0f);
  let x_564 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_565 : f32 = u_xlat34;
  u_xlat34 = ((x_564 * x_565) + 1.0f);
  let x_569 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_569, 1.0f);
  let x_573 : vec4<f32> = u_xlat4;
  let x_574 : vec2<f32> = vec2<f32>(x_573.x, x_573.y);
  let x_576 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_574.x, x_574.y, x_576);
  let x_588 : vec3<f32> = txVec0;
  let x_590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_588.xy, x_588.z);
  u_xlat4.x = x_590;
  let x_595 : f32 = x_136.x_MainLightShadowParams.x;
  u_xlat18.x = (-(x_595) + 1.0f);
  let x_600 : f32 = u_xlat4.x;
  let x_602 : f32 = x_136.x_MainLightShadowParams.x;
  let x_605 : f32 = u_xlat18.x;
  u_xlat4.x = ((x_600 * x_602) + x_605);
  let x_612 : f32 = u_xlat4.z;
  u_xlatb18.x = (0.0f >= x_612);
  let x_617 : f32 = u_xlat4.z;
  u_xlatb32 = (x_617 >= 1.0f);
  let x_619 : bool = u_xlatb32;
  let x_621 : bool = u_xlatb18.x;
  u_xlatb18.x = (x_619 | x_621);
  let x_625 : bool = u_xlatb18.x;
  if (x_625) {
    x_626 = 1.0f;
  } else {
    let x_631 : f32 = u_xlat4.x;
    x_626 = x_631;
  }
  let x_632 : f32 = x_626;
  u_xlat4.x = x_632;
  let x_634 : vec3<f32> = vs_TEXCOORD1;
  let x_636 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_638 : vec3<f32> = (x_634 + -(x_636));
  let x_639 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat7;
  let x_643 : vec4<f32> = u_xlat7;
  u_xlat18.x = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_648 : f32 = u_xlat18.x;
  let x_650 : f32 = x_136.x_MainLightShadowParams.z;
  let x_653 : f32 = x_136.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_648 * x_650) + x_653);
  let x_657 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_657, 0.0f, 1.0f);
  let x_662 : f32 = u_xlat4.x;
  u_xlat32.x = (-(x_662) + 1.0f);
  let x_667 : f32 = u_xlat18.x;
  let x_669 : f32 = u_xlat32.x;
  let x_672 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_667 * x_669) + x_672);
  let x_681 : f32 = x_679.x_MainLightCookieTextureFormat;
  u_xlatb18.x = !((x_681 == -1.0f));
  let x_685 : bool = u_xlatb18.x;
  if (x_685) {
    let x_688 : vec3<f32> = vs_TEXCOORD1;
    let x_691 : vec4<f32> = x_679.x_MainLightWorldToLight[1i];
    u_xlat18 = (vec2<f32>(x_688.y, x_688.y) * vec2<f32>(x_691.x, x_691.y));
    let x_695 : vec4<f32> = x_679.x_MainLightWorldToLight[0i];
    let x_697 : vec3<f32> = vs_TEXCOORD1;
    let x_700 : vec2<f32> = u_xlat18;
    u_xlat18 = ((vec2<f32>(x_695.x, x_695.y) * vec2<f32>(x_697.x, x_697.x)) + x_700);
    let x_703 : vec4<f32> = x_679.x_MainLightWorldToLight[2i];
    let x_705 : vec3<f32> = vs_TEXCOORD1;
    let x_708 : vec2<f32> = u_xlat18;
    u_xlat18 = ((vec2<f32>(x_703.x, x_703.y) * vec2<f32>(x_705.z, x_705.z)) + x_708);
    let x_710 : vec2<f32> = u_xlat18;
    let x_712 : vec4<f32> = x_679.x_MainLightWorldToLight[3i];
    u_xlat18 = (x_710 + vec2<f32>(x_712.x, x_712.y));
    let x_715 : vec2<f32> = u_xlat18;
    u_xlat18 = ((x_715 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_725 : vec2<f32> = u_xlat18;
    let x_727 : f32 = x_44.x_GlobalMipBias.x;
    let x_728 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_725, x_727);
    u_xlat7 = x_728;
    let x_730 : f32 = x_679.x_MainLightCookieTextureFormat;
    let x_732 : f32 = x_679.x_MainLightCookieTextureFormat;
    let x_734 : f32 = x_679.x_MainLightCookieTextureFormat;
    let x_736 : f32 = x_679.x_MainLightCookieTextureFormat;
    let x_737 : vec4<f32> = vec4<f32>(x_730, x_732, x_734, x_736);
    let x_744 : vec4<bool> = (vec4<f32>(x_737.x, x_737.y, x_737.z, x_737.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb18 = vec2<bool>(x_744.x, x_744.y);
    let x_747 : bool = u_xlatb18.y;
    if (x_747) {
      let x_752 : f32 = u_xlat7.w;
      x_748 = x_752;
    } else {
      let x_755 : f32 = u_xlat7.x;
      x_748 = x_755;
    }
    let x_756 : f32 = x_748;
    u_xlat32.x = x_756;
    let x_759 : bool = u_xlatb18.x;
    if (x_759) {
      let x_763 : vec4<f32> = u_xlat7;
      x_760 = vec3<f32>(x_763.x, x_763.y, x_763.z);
    } else {
      let x_766 : vec2<f32> = u_xlat32;
      x_760 = vec3<f32>(x_766.x, x_766.x, x_766.x);
    }
    let x_768 : vec3<f32> = x_760;
    let x_769 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_775 : vec4<f32> = u_xlat7;
  let x_778 : vec4<f32> = x_44.x_MainLightColor;
  let x_780 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : f32 = u_xlat34;
  let x_785 : vec4<f32> = u_xlat7;
  let x_787 : vec3<f32> = (vec3<f32>(x_783, x_783, x_783) * vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec3<f32> = u_xlat2;
  let x_792 : vec4<f32> = u_xlat3;
  u_xlat18.x = dot(-(x_790), vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_797 : f32 = u_xlat18.x;
  let x_799 : f32 = u_xlat18.x;
  u_xlat18.x = (x_797 + x_799);
  let x_803 : vec4<f32> = u_xlat3;
  let x_805 : vec2<f32> = u_xlat18;
  let x_809 : vec3<f32> = u_xlat2;
  let x_811 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * -(vec3<f32>(x_805.x, x_805.x, x_805.x))) + -(x_809));
  let x_812 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat3;
  let x_816 : vec3<f32> = u_xlat2;
  u_xlat18.x = dot(vec3<f32>(x_814.x, x_814.y, x_814.z), x_816);
  let x_820 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_820, 0.0f, 1.0f);
  let x_824 : f32 = u_xlat18.x;
  u_xlat18.x = (-(x_824) + 1.0f);
  let x_829 : f32 = u_xlat18.x;
  let x_831 : f32 = u_xlat18.x;
  u_xlat18.x = (x_829 * x_831);
  let x_835 : f32 = u_xlat18.x;
  let x_837 : f32 = u_xlat18.x;
  u_xlat18.x = (x_835 * x_837);
  let x_840 : f32 = u_xlat44;
  u_xlat32.x = ((-(x_840) * 0.699999988f) + 1.700000048f);
  let x_847 : f32 = u_xlat44;
  let x_849 : f32 = u_xlat32.x;
  u_xlat44 = (x_847 * x_849);
  let x_851 : f32 = u_xlat44;
  u_xlat44 = (x_851 * 6.0f);
  let x_862 : vec4<f32> = u_xlat8;
  let x_864 : f32 = u_xlat44;
  let x_865 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_862.x, x_862.y, x_862.z), x_864);
  u_xlat8 = x_865;
  let x_867 : f32 = u_xlat8.w;
  u_xlat44 = (x_867 + -1.0f);
  let x_870 : f32 = x_367.unity_SpecCube0_HDR.w;
  let x_871 : f32 = u_xlat44;
  u_xlat44 = ((x_870 * x_871) + 1.0f);
  let x_874 : f32 = u_xlat44;
  u_xlat44 = max(x_874, 0.0f);
  let x_876 : f32 = u_xlat44;
  u_xlat44 = log2(x_876);
  let x_878 : f32 = u_xlat44;
  let x_880 : f32 = x_367.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_878 * x_880);
  let x_882 : f32 = u_xlat44;
  u_xlat44 = exp2(x_882);
  let x_884 : f32 = u_xlat44;
  let x_886 : f32 = x_367.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_884 * x_886);
  let x_888 : vec4<f32> = u_xlat8;
  let x_890 : f32 = u_xlat44;
  let x_892 : vec3<f32> = (vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(x_890, x_890, x_890));
  let x_893 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : f32 = u_xlat46;
  let x_897 : f32 = u_xlat46;
  u_xlat32 = ((vec2<f32>(x_895, x_895) * vec2<f32>(x_897, x_897)) + vec2<f32>(-1.0f, 1.0f));
  let x_903 : f32 = u_xlat32.y;
  u_xlat44 = (1.0f / x_903);
  let x_906 : vec4<f32> = u_xlat0;
  let x_909 : f32 = u_xlat45;
  u_xlat9 = (-(vec3<f32>(x_906.x, x_906.y, x_906.z)) + vec3<f32>(x_909, x_909, x_909));
  let x_912 : vec2<f32> = u_xlat18;
  let x_914 : vec3<f32> = u_xlat9;
  let x_916 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_912.x, x_912.x, x_912.x) * x_914) + vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : f32 = u_xlat44;
  let x_921 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_919, x_919, x_919) * x_921);
  let x_923 : vec4<f32> = u_xlat8;
  let x_925 : vec3<f32> = u_xlat9;
  let x_926 : vec3<f32> = (vec3<f32>(x_923.x, x_923.y, x_923.z) * x_925);
  let x_927 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat5;
  let x_931 : vec3<f32> = u_xlat15;
  let x_933 : vec4<f32> = u_xlat8;
  let x_935 : vec3<f32> = ((vec3<f32>(x_929.x, x_929.y, x_929.z) * x_931) + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_939 : f32 = u_xlat4.x;
  let x_941 : f32 = x_367.unity_LightData.z;
  u_xlat44 = (x_939 * x_941);
  let x_943 : vec4<f32> = u_xlat3;
  let x_946 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat45 = dot(vec3<f32>(x_943.x, x_943.y, x_943.z), vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : f32 = u_xlat45;
  u_xlat45 = clamp(x_949, 0.0f, 1.0f);
  let x_951 : f32 = u_xlat44;
  let x_952 : f32 = u_xlat45;
  u_xlat44 = (x_951 * x_952);
  let x_954 : f32 = u_xlat44;
  let x_956 : vec4<f32> = u_xlat7;
  let x_958 : vec3<f32> = (vec3<f32>(x_954, x_954, x_954) * vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_958.z);
  let x_961 : vec3<f32> = u_xlat2;
  let x_963 : vec4<f32> = x_44.x_MainLightPosition;
  let x_965 : vec3<f32> = (x_961 + vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : vec4<f32> = u_xlat7;
  let x_970 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_968.x, x_968.y, x_968.z), vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_973 : f32 = u_xlat44;
  u_xlat44 = max(x_973, 1.17549435e-37f);
  let x_976 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_976);
  let x_978 : f32 = u_xlat44;
  let x_980 : vec4<f32> = u_xlat7;
  let x_982 : vec3<f32> = (vec3<f32>(x_978, x_978, x_978) * vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : vec4<f32> = u_xlat3;
  let x_987 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_985.x, x_985.y, x_985.z), vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_990 : f32 = u_xlat44;
  u_xlat44 = clamp(x_990, 0.0f, 1.0f);
  let x_993 : vec4<f32> = x_44.x_MainLightPosition;
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : f32 = u_xlat45;
  u_xlat45 = clamp(x_998, 0.0f, 1.0f);
  let x_1000 : f32 = u_xlat44;
  let x_1001 : f32 = u_xlat44;
  u_xlat44 = (x_1000 * x_1001);
  let x_1003 : f32 = u_xlat44;
  let x_1005 : f32 = u_xlat32.x;
  u_xlat44 = ((x_1003 * x_1005) + 1.000010014f);
  let x_1009 : f32 = u_xlat45;
  let x_1010 : f32 = u_xlat45;
  u_xlat45 = (x_1009 * x_1010);
  let x_1012 : f32 = u_xlat44;
  let x_1013 : f32 = u_xlat44;
  u_xlat44 = (x_1012 * x_1013);
  let x_1015 : f32 = u_xlat45;
  u_xlat45 = max(x_1015, 0.100000001f);
  let x_1018 : f32 = u_xlat44;
  let x_1019 : f32 = u_xlat45;
  u_xlat44 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat20;
  let x_1022 : f32 = u_xlat44;
  u_xlat44 = (x_1021 * x_1022);
  let x_1024 : f32 = u_xlat47;
  let x_1025 : f32 = u_xlat44;
  u_xlat44 = (x_1024 / x_1025);
  let x_1027 : vec4<f32> = u_xlat0;
  let x_1029 : f32 = u_xlat44;
  let x_1032 : vec3<f32> = u_xlat15;
  let x_1033 : vec3<f32> = ((vec3<f32>(x_1027.x, x_1027.y, x_1027.z) * vec3<f32>(x_1029, x_1029, x_1029)) + x_1032);
  let x_1034 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1036 : vec4<f32> = u_xlat4;
  let x_1038 : vec4<f32> = u_xlat7;
  let x_1040 : vec3<f32> = (vec3<f32>(x_1036.x, x_1036.y, x_1036.w) * vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1040.z);
  let x_1044 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1046 : f32 = x_367.unity_LightData.y;
  u_xlat44 = min(x_1044, x_1046);
  let x_1049 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_1049));
  let x_1054 : f32 = x_679.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1056 : f32 = x_679.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1058 : f32 = x_679.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1060 : f32 = x_679.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1061 : vec4<f32> = vec4<f32>(x_1054, x_1056, x_1058, x_1060);
  let x_1067 : vec4<bool> = (vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1061.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1067.x, x_1067.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1078 : u32 = u_xlatu_loop_1;
    let x_1079 : u32 = u_xlatu44;
    if ((x_1078 < x_1079)) {
    } else {
      break;
    }
    let x_1082 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1082 >> 2u);
    let x_1085 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1085 & 3u));
    let x_1089 : u32 = u_xlatu48;
    let x_1092 : vec4<f32> = x_367.unity_LightIndices[bitcast<i32>(x_1089)];
    let x_1102 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1107 : vec4<u32> = indexable[x_1102];
    u_xlat48 = dot(x_1092, bitcast<vec4<f32>>(x_1107));
    let x_1110 : f32 = u_xlat48;
    u_xlatu48 = bitcast<u32>(i32(x_1110));
    let x_1113 : vec3<f32> = vs_TEXCOORD1;
    let x_1125 : u32 = u_xlatu48;
    let x_1128 : vec4<f32> = x_1124.x_AdditionalLightsPosition[bitcast<i32>(x_1125)];
    let x_1131 : u32 = u_xlatu48;
    let x_1134 : vec4<f32> = x_1124.x_AdditionalLightsPosition[bitcast<i32>(x_1131)];
    u_xlat9 = ((-(x_1113) * vec3<f32>(x_1128.w, x_1128.w, x_1128.w)) + vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
    let x_1138 : vec3<f32> = u_xlat9;
    let x_1139 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1138, x_1139);
    let x_1141 : f32 = u_xlat35;
    u_xlat35 = max(x_1141, 6.10351562e-05f);
    let x_1145 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1145);
    let x_1148 : f32 = u_xlat49;
    let x_1150 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1148, x_1148, x_1148) * x_1150);
    let x_1153 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1153);
    let x_1155 : f32 = u_xlat35;
    let x_1156 : u32 = u_xlatu48;
    let x_1159 : f32 = x_1124.x_AdditionalLightsAttenuation[bitcast<i32>(x_1156)].x;
    u_xlat35 = (x_1155 * x_1159);
    let x_1161 : f32 = u_xlat35;
    let x_1163 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1161) * x_1163) + 1.0f);
    let x_1166 : f32 = u_xlat35;
    u_xlat35 = max(x_1166, 0.0f);
    let x_1168 : f32 = u_xlat35;
    let x_1169 : f32 = u_xlat35;
    u_xlat35 = (x_1168 * x_1169);
    let x_1171 : f32 = u_xlat35;
    let x_1172 : f32 = u_xlat50;
    u_xlat35 = (x_1171 * x_1172);
    let x_1174 : u32 = u_xlatu48;
    let x_1177 : vec4<f32> = x_1124.x_AdditionalLightsSpotDir[bitcast<i32>(x_1174)];
    let x_1179 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1177.x, x_1177.y, x_1177.z), x_1179);
    let x_1181 : f32 = u_xlat50;
    let x_1182 : u32 = u_xlatu48;
    let x_1185 : f32 = x_1124.x_AdditionalLightsAttenuation[bitcast<i32>(x_1182)].z;
    let x_1187 : u32 = u_xlatu48;
    let x_1190 : f32 = x_1124.x_AdditionalLightsAttenuation[bitcast<i32>(x_1187)].w;
    u_xlat50 = ((x_1181 * x_1185) + x_1190);
    let x_1192 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1192, 0.0f, 1.0f);
    let x_1194 : f32 = u_xlat50;
    let x_1195 : f32 = u_xlat50;
    u_xlat50 = (x_1194 * x_1195);
    let x_1197 : f32 = u_xlat35;
    let x_1198 : f32 = u_xlat50;
    u_xlat35 = (x_1197 * x_1198);
    let x_1201 : u32 = u_xlatu48;
    u_xlatu50 = (x_1201 >> 5u);
    let x_1204 : u32 = u_xlatu48;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1204) & 31i)));
    let x_1210 : i32 = u_xlati51;
    let x_1212 : u32 = u_xlatu50;
    let x_1215 : f32 = x_679.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1212)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1210) & bitcast<u32>(x_1215)));
    let x_1219 : i32 = u_xlati50;
    if ((x_1219 != 0i)) {
      let x_1229 : u32 = u_xlatu48;
      let x_1232 : f32 = x_1228.x_AdditionalLightsLightTypes[bitcast<i32>(x_1229)].el;
      u_xlati50 = i32(x_1232);
      let x_1234 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1234 != 0i));
      let x_1238 : u32 = u_xlatu48;
      u_xlati52 = (bitcast<i32>(x_1238) << bitcast<u32>(2i));
      let x_1241 : i32 = u_xlati51;
      if ((x_1241 != 0i)) {
        let x_1246 : vec3<f32> = vs_TEXCOORD1;
        let x_1248 : i32 = u_xlati52;
        let x_1251 : i32 = u_xlati52;
        let x_1255 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[((x_1248 + 1i) / 4i)][((x_1251 + 1i) % 4i)];
        let x_1257 : vec3<f32> = (vec3<f32>(x_1246.y, x_1246.y, x_1246.y) * vec3<f32>(x_1255.x, x_1255.y, x_1255.w));
        let x_1258 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
        let x_1260 : i32 = u_xlati52;
        let x_1262 : i32 = u_xlati52;
        let x_1265 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[(x_1260 / 4i)][(x_1262 % 4i)];
        let x_1267 : vec3<f32> = vs_TEXCOORD1;
        let x_1270 : vec4<f32> = u_xlat11;
        let x_1272 : vec3<f32> = ((vec3<f32>(x_1265.x, x_1265.y, x_1265.w) * vec3<f32>(x_1267.x, x_1267.x, x_1267.x)) + vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
        let x_1273 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
        let x_1275 : i32 = u_xlati52;
        let x_1278 : i32 = u_xlati52;
        let x_1282 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[((x_1275 + 2i) / 4i)][((x_1278 + 2i) % 4i)];
        let x_1284 : vec3<f32> = vs_TEXCOORD1;
        let x_1287 : vec4<f32> = u_xlat11;
        let x_1289 : vec3<f32> = ((vec3<f32>(x_1282.x, x_1282.y, x_1282.w) * vec3<f32>(x_1284.z, x_1284.z, x_1284.z)) + vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
        let x_1290 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
        let x_1292 : vec4<f32> = u_xlat11;
        let x_1294 : i32 = u_xlati52;
        let x_1297 : i32 = u_xlati52;
        let x_1301 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[((x_1294 + 3i) / 4i)][((x_1297 + 3i) % 4i)];
        let x_1303 : vec3<f32> = (vec3<f32>(x_1292.x, x_1292.y, x_1292.z) + vec3<f32>(x_1301.x, x_1301.y, x_1301.w));
        let x_1304 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
        let x_1306 : vec4<f32> = u_xlat11;
        let x_1308 : vec4<f32> = u_xlat11;
        let x_1310 : vec2<f32> = (vec2<f32>(x_1306.x, x_1306.y) / vec2<f32>(x_1308.z, x_1308.z));
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1311.w);
        let x_1313 : vec4<f32> = u_xlat11;
        let x_1316 : vec2<f32> = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1317 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1316.x, x_1316.y, x_1317.z, x_1317.w);
        let x_1319 : vec4<f32> = u_xlat11;
        let x_1323 : vec2<f32> = clamp(vec2<f32>(x_1319.x, x_1319.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1324 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
        let x_1326 : u32 = u_xlatu48;
        let x_1329 : vec4<f32> = x_1228.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1326)];
        let x_1331 : vec4<f32> = u_xlat11;
        let x_1334 : u32 = u_xlatu48;
        let x_1337 : vec4<f32> = x_1228.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1334)];
        let x_1339 : vec2<f32> = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1331.x, x_1331.y)) + vec2<f32>(x_1337.z, x_1337.w));
        let x_1340 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
      } else {
        let x_1344 : i32 = u_xlati50;
        u_xlatb50 = (x_1344 == 1i);
        let x_1346 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1346);
        let x_1348 : i32 = u_xlati50;
        if ((x_1348 != 0i)) {
          let x_1353 : vec3<f32> = vs_TEXCOORD1;
          let x_1355 : i32 = u_xlati52;
          let x_1358 : i32 = u_xlati52;
          let x_1362 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[((x_1355 + 1i) / 4i)][((x_1358 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1353.y, x_1353.y) * vec2<f32>(x_1362.x, x_1362.y));
          let x_1365 : i32 = u_xlati52;
          let x_1367 : i32 = u_xlati52;
          let x_1370 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[(x_1365 / 4i)][(x_1367 % 4i)];
          let x_1372 : vec3<f32> = vs_TEXCOORD1;
          let x_1375 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1370.x, x_1370.y) * vec2<f32>(x_1372.x, x_1372.x)) + x_1375);
          let x_1377 : i32 = u_xlati52;
          let x_1380 : i32 = u_xlati52;
          let x_1384 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[((x_1377 + 2i) / 4i)][((x_1380 + 2i) % 4i)];
          let x_1386 : vec3<f32> = vs_TEXCOORD1;
          let x_1389 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1384.x, x_1384.y) * vec2<f32>(x_1386.z, x_1386.z)) + x_1389);
          let x_1391 : vec2<f32> = u_xlat39;
          let x_1392 : i32 = u_xlati52;
          let x_1395 : i32 = u_xlati52;
          let x_1399 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[((x_1392 + 3i) / 4i)][((x_1395 + 3i) % 4i)];
          u_xlat39 = (x_1391 + vec2<f32>(x_1399.x, x_1399.y));
          let x_1402 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1402 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1405 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1405);
          let x_1407 : u32 = u_xlatu48;
          let x_1410 : vec4<f32> = x_1228.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1407)];
          let x_1412 : vec2<f32> = u_xlat39;
          let x_1414 : u32 = u_xlatu48;
          let x_1417 : vec4<f32> = x_1228.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1414)];
          let x_1419 : vec2<f32> = ((vec2<f32>(x_1410.x, x_1410.y) * x_1412) + vec2<f32>(x_1417.z, x_1417.w));
          let x_1420 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1419.x, x_1419.y, x_1420.z, x_1420.w);
        } else {
          let x_1424 : vec3<f32> = vs_TEXCOORD1;
          let x_1426 : i32 = u_xlati52;
          let x_1429 : i32 = u_xlati52;
          let x_1433 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[((x_1426 + 1i) / 4i)][((x_1429 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1424.y, x_1424.y, x_1424.y, x_1424.y) * x_1433);
          let x_1435 : i32 = u_xlati52;
          let x_1437 : i32 = u_xlati52;
          let x_1440 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[(x_1435 / 4i)][(x_1437 % 4i)];
          let x_1441 : vec3<f32> = vs_TEXCOORD1;
          let x_1444 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1440 * vec4<f32>(x_1441.x, x_1441.x, x_1441.x, x_1441.x)) + x_1444);
          let x_1446 : i32 = u_xlati52;
          let x_1449 : i32 = u_xlati52;
          let x_1453 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[((x_1446 + 2i) / 4i)][((x_1449 + 2i) % 4i)];
          let x_1454 : vec3<f32> = vs_TEXCOORD1;
          let x_1457 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1453 * vec4<f32>(x_1454.z, x_1454.z, x_1454.z, x_1454.z)) + x_1457);
          let x_1459 : vec4<f32> = u_xlat12;
          let x_1460 : i32 = u_xlati52;
          let x_1463 : i32 = u_xlati52;
          let x_1467 : vec4<f32> = x_1228.x_AdditionalLightsWorldToLights[((x_1460 + 3i) / 4i)][((x_1463 + 3i) % 4i)];
          u_xlat12 = (x_1459 + x_1467);
          let x_1469 : vec4<f32> = u_xlat12;
          let x_1471 : vec4<f32> = u_xlat12;
          let x_1473 : vec3<f32> = (vec3<f32>(x_1469.x, x_1469.y, x_1469.z) / vec3<f32>(x_1471.w, x_1471.w, x_1471.w));
          let x_1474 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
          let x_1476 : vec4<f32> = u_xlat12;
          let x_1478 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1476.x, x_1476.y, x_1476.z), vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
          let x_1481 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1481);
          let x_1483 : f32 = u_xlat50;
          let x_1485 : vec4<f32> = u_xlat12;
          let x_1487 : vec3<f32> = (vec3<f32>(x_1483, x_1483, x_1483) * vec3<f32>(x_1485.x, x_1485.y, x_1485.z));
          let x_1488 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1488.w);
          let x_1490 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1490.x, x_1490.y, x_1490.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1495 : f32 = u_xlat50;
          u_xlat50 = max(x_1495, 0.000001f);
          let x_1498 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1498);
          let x_1501 : f32 = u_xlat50;
          let x_1503 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1501, x_1501, x_1501) * vec3<f32>(x_1503.z, x_1503.x, x_1503.y));
          let x_1507 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1507);
          let x_1511 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1511, 0.0f, 1.0f);
          let x_1515 : vec3<f32> = u_xlat13;
          let x_1518 : vec4<bool> = (vec4<f32>(x_1515.y, x_1515.z, x_1515.y, x_1515.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1518.x, x_1518.y);
          let x_1521 : bool = u_xlatb39.x;
          if (x_1521) {
            let x_1526 : f32 = u_xlat13.x;
            x_1522 = x_1526;
          } else {
            let x_1529 : f32 = u_xlat13.x;
            x_1522 = -(x_1529);
          }
          let x_1531 : f32 = x_1522;
          u_xlat39.x = x_1531;
          let x_1534 : bool = u_xlatb39.y;
          if (x_1534) {
            let x_1539 : f32 = u_xlat13.x;
            x_1535 = x_1539;
          } else {
            let x_1542 : f32 = u_xlat13.x;
            x_1535 = -(x_1542);
          }
          let x_1544 : f32 = x_1535;
          u_xlat39.y = x_1544;
          let x_1546 : vec4<f32> = u_xlat12;
          let x_1548 : f32 = u_xlat50;
          let x_1551 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1546.x, x_1546.y) * vec2<f32>(x_1548, x_1548)) + x_1551);
          let x_1553 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1553 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1556 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1556, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1560 : u32 = u_xlatu48;
          let x_1563 : vec4<f32> = x_1228.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1560)];
          let x_1565 : vec2<f32> = u_xlat39;
          let x_1567 : u32 = u_xlatu48;
          let x_1570 : vec4<f32> = x_1228.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1567)];
          let x_1572 : vec2<f32> = ((vec2<f32>(x_1563.x, x_1563.y) * x_1565) + vec2<f32>(x_1570.z, x_1570.w));
          let x_1573 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1572.x, x_1572.y, x_1573.z, x_1573.w);
        }
      }
      let x_1580 : vec4<f32> = u_xlat11;
      let x_1583 : f32 = x_44.x_GlobalMipBias.x;
      let x_1584 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1580.x, x_1580.y), x_1583);
      u_xlat11 = x_1584;
      let x_1586 : bool = u_xlatb7.y;
      if (x_1586) {
        let x_1591 : f32 = u_xlat11.w;
        x_1587 = x_1591;
      } else {
        let x_1594 : f32 = u_xlat11.x;
        x_1587 = x_1594;
      }
      let x_1595 : f32 = x_1587;
      u_xlat50 = x_1595;
      let x_1597 : bool = u_xlatb7.x;
      if (x_1597) {
        let x_1601 : vec4<f32> = u_xlat11;
        x_1598 = vec3<f32>(x_1601.x, x_1601.y, x_1601.z);
      } else {
        let x_1604 : f32 = u_xlat50;
        x_1598 = vec3<f32>(x_1604, x_1604, x_1604);
      }
      let x_1606 : vec3<f32> = x_1598;
      let x_1607 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1606.x, x_1606.y, x_1606.z, x_1607.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1613 : vec4<f32> = u_xlat11;
    let x_1615 : u32 = u_xlatu48;
    let x_1618 : vec4<f32> = x_1124.x_AdditionalLightsColor[bitcast<i32>(x_1615)];
    let x_1620 : vec3<f32> = (vec3<f32>(x_1613.x, x_1613.y, x_1613.z) * vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
    let x_1621 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
    let x_1623 : f32 = u_xlat34;
    let x_1625 : vec4<f32> = u_xlat11;
    let x_1627 : vec3<f32> = (vec3<f32>(x_1623, x_1623, x_1623) * vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
    let x_1628 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
    let x_1630 : vec4<f32> = u_xlat3;
    let x_1632 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1630.x, x_1630.y, x_1630.z), x_1632);
    let x_1634 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1634, 0.0f, 1.0f);
    let x_1636 : f32 = u_xlat48;
    let x_1637 : f32 = u_xlat35;
    u_xlat48 = (x_1636 * x_1637);
    let x_1639 : f32 = u_xlat48;
    let x_1641 : vec4<f32> = u_xlat11;
    let x_1643 : vec3<f32> = (vec3<f32>(x_1639, x_1639, x_1639) * vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
    let x_1644 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
    let x_1646 : vec3<f32> = u_xlat9;
    let x_1647 : f32 = u_xlat49;
    let x_1650 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1646 * vec3<f32>(x_1647, x_1647, x_1647)) + x_1650);
    let x_1652 : vec3<f32> = u_xlat9;
    let x_1653 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1652, x_1653);
    let x_1655 : f32 = u_xlat48;
    u_xlat48 = max(x_1655, 1.17549435e-37f);
    let x_1657 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_1657);
    let x_1659 : f32 = u_xlat48;
    let x_1661 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1659, x_1659, x_1659) * x_1661);
    let x_1663 : vec4<f32> = u_xlat3;
    let x_1665 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1663.x, x_1663.y, x_1663.z), x_1665);
    let x_1667 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1667, 0.0f, 1.0f);
    let x_1669 : vec3<f32> = u_xlat10;
    let x_1670 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1669, x_1670);
    let x_1672 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1672, 0.0f, 1.0f);
    let x_1674 : f32 = u_xlat48;
    let x_1675 : f32 = u_xlat48;
    u_xlat48 = (x_1674 * x_1675);
    let x_1677 : f32 = u_xlat48;
    let x_1679 : f32 = u_xlat32.x;
    u_xlat48 = ((x_1677 * x_1679) + 1.000010014f);
    let x_1682 : f32 = u_xlat35;
    let x_1683 : f32 = u_xlat35;
    u_xlat35 = (x_1682 * x_1683);
    let x_1685 : f32 = u_xlat48;
    let x_1686 : f32 = u_xlat48;
    u_xlat48 = (x_1685 * x_1686);
    let x_1688 : f32 = u_xlat35;
    u_xlat35 = max(x_1688, 0.100000001f);
    let x_1690 : f32 = u_xlat48;
    let x_1691 : f32 = u_xlat35;
    u_xlat48 = (x_1690 * x_1691);
    let x_1693 : f32 = u_xlat20;
    let x_1694 : f32 = u_xlat48;
    u_xlat48 = (x_1693 * x_1694);
    let x_1696 : f32 = u_xlat47;
    let x_1697 : f32 = u_xlat48;
    u_xlat48 = (x_1696 / x_1697);
    let x_1699 : vec4<f32> = u_xlat0;
    let x_1701 : f32 = u_xlat48;
    let x_1704 : vec3<f32> = u_xlat15;
    u_xlat9 = ((vec3<f32>(x_1699.x, x_1699.y, x_1699.z) * vec3<f32>(x_1701, x_1701, x_1701)) + x_1704);
    let x_1706 : vec3<f32> = u_xlat9;
    let x_1707 : vec4<f32> = u_xlat11;
    let x_1710 : vec4<f32> = u_xlat8;
    let x_1712 : vec3<f32> = ((x_1706 * vec3<f32>(x_1707.x, x_1707.y, x_1707.z)) + vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
    let x_1713 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);

    continuing {
      let x_1715 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1715 + bitcast<u32>(1i));
    }
  }
  let x_1717 : vec4<f32> = u_xlat5;
  let x_1719 : vec4<f32> = u_xlat6;
  let x_1722 : vec4<f32> = u_xlat4;
  let x_1724 : vec3<f32> = ((vec3<f32>(x_1717.x, x_1717.y, x_1717.z) * vec3<f32>(x_1719.x, x_1719.x, x_1719.x)) + vec3<f32>(x_1722.x, x_1722.y, x_1722.w));
  let x_1725 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1724.x, x_1724.y, x_1724.z, x_1725.w);
  let x_1727 : vec4<f32> = u_xlat8;
  let x_1729 : vec4<f32> = u_xlat0;
  let x_1731 : vec3<f32> = (vec3<f32>(x_1727.x, x_1727.y, x_1727.z) + vec3<f32>(x_1729.x, x_1729.y, x_1729.z));
  let x_1732 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
  let x_1734 : f32 = u_xlat42;
  let x_1735 : f32 = u_xlat42;
  u_xlat42 = (x_1734 * -(x_1735));
  let x_1738 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1738);
  let x_1740 : vec4<f32> = u_xlat0;
  let x_1744 : vec4<f32> = x_44.unity_FogColor;
  let x_1747 : vec3<f32> = (vec3<f32>(x_1740.x, x_1740.y, x_1740.z) + -(vec3<f32>(x_1744.x, x_1744.y, x_1744.z)));
  let x_1748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1748.w);
  let x_1752 : f32 = u_xlat42;
  let x_1754 : vec4<f32> = u_xlat0;
  let x_1758 : vec4<f32> = x_44.unity_FogColor;
  let x_1760 : vec3<f32> = ((vec3<f32>(x_1752, x_1752, x_1752) * vec3<f32>(x_1754.x, x_1754.y, x_1754.z)) + vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
  let x_1761 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1761.w);
  let x_1766 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1766 == 1.0f);
  let x_1768 : bool = u_xlatb0;
  if (x_1768) {
    let x_1773 : f32 = u_xlat1.x;
    x_1769 = x_1773;
  } else {
    x_1769 = 1.0f;
  }
  let x_1775 : f32 = x_1769;
  SV_Target0.w = x_1775;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

