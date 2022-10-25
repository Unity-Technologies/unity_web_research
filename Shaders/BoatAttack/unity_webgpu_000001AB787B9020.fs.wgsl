struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_MainTex_TexelSize : vec4<f32>,
  x_MRLL_TexelSize : vec4<f32>,
  x_BumpMap_TexelSize : vec4<f32>,
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
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

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(15) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(7) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(8) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_267 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_573 : MainLightShadows;

@group(1) @binding(4) var<uniform> x_642 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1085 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1187 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlatb15 : vec3<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat28 : f32;
  var x_371 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : vec2<bool>;
  var u_xlatb33 : bool;
  var u_xlat33 : f32;
  var u_xlat7 : vec4<f32>;
  var x_726 : f32;
  var x_737 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
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
  var x_1480 : f32;
  var x_1493 : f32;
  var x_1545 : f32;
  var x_1556 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_INTERP3;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_57 : vec4<f32> = vs_INTERP3;
  let x_60 : f32 = x_44.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat1 = x_61;
  let x_64 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = x_68.x_Color2;
  u_xlat2 = (vec3<f32>(x_64.w, x_64.w, x_64.w) * vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_77 : vec4<f32> = x_68.x_Color1;
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(x_79.z, x_79.z, x_79.z)) + x_82);
  let x_87 : f32 = u_xlat1.w;
  let x_90 : f32 = u_xlat1.z;
  u_xlat29 = (x_87 + x_90);
  let x_92 : f32 = u_xlat29;
  u_xlat29 = clamp(x_92, 0.0f, 1.0f);
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat3 = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec3<f32> = u_xlat3;
  let x_102 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_101 + x_102);
  let x_105 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec3<f32> = u_xlat3;
  let x_110 : vec3<f32> = u_xlat4;
  u_xlat3 = ((-(x_108) * x_110) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_113.x, x_113.y, x_113.z) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec3<f32> = u_xlat2;
  let x_119 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_118 * x_119);
  let x_127 : vec4<f32> = u_xlat0;
  let x_130 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_127.x, x_127.y, x_127.z, x_127.x));
  u_xlatb4 = vec3<bool>(x_130.x, x_130.y, x_130.z);
  let x_135 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_135);
  let x_140 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_140);
  let x_144 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_144);
  let x_148 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_148);
  let x_152 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_152);
  let x_156 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_156);
  let x_159 : vec3<f32> = u_xlat3;
  let x_160 : vec3<f32> = u_xlat4;
  u_xlat3 = (x_159 * x_160);
  let x_162 : vec3<f32> = u_xlat2;
  let x_163 : vec3<f32> = u_xlat5;
  let x_165 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_162 * x_163) + x_165);
  let x_167 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_167.x, x_167.y, x_167.z)) + x_170);
  let x_172 : f32 = u_xlat29;
  let x_174 : vec3<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_172, x_172, x_172) * x_174) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : f32 = u_xlat0.x;
  u_xlat0.x = (x_180 + -0.150000006f);
  let x_185 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_189) + 1.0f);
  let x_193 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_193.x, x_193.x, x_193.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_198);
  let x_204 : vec4<f32> = vs_INTERP3;
  let x_207 : f32 = x_44.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_204.x, x_204.y), x_207);
  u_xlat3 = vec3<f32>(x_208.x, x_208.y, x_208.w);
  let x_211 : f32 = u_xlat3.x;
  let x_213 : f32 = u_xlat3.z;
  u_xlat3.x = (x_211 * x_213);
  let x_218 : vec3<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_218.x, x_218.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_226 : vec2<f32> = u_xlat14;
  let x_227 : vec2<f32> = u_xlat14;
  u_xlat29 = dot(x_226, x_227);
  let x_229 : f32 = u_xlat29;
  u_xlat29 = min(x_229, 1.0f);
  let x_231 : f32 = u_xlat29;
  u_xlat29 = (-(x_231) + 1.0f);
  let x_234 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_234);
  let x_236 : f32 = u_xlat29;
  u_xlat29 = max(x_236, 1.00000002e-16f);
  let x_240 : f32 = u_xlat1.x;
  let x_242 : f32 = u_xlat0.x;
  u_xlat0.x = (x_240 + x_242);
  let x_246 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_246, 0.0f, 1.0f);
  let x_250 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_250, 0.0f);
  let x_254 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_254, 0.850000024f);
  let x_261 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_261);
  let x_269 : f32 = x_267.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_269 >= 0.0f);
  let x_274 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_274);
  let x_278 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_278);
  let x_282 : f32 = u_xlat15.z;
  let x_284 : f32 = u_xlat15.x;
  u_xlat15.x = (x_282 * x_284);
  let x_289 : vec3<f32> = vs_INTERP1;
  let x_291 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_289.z, x_289.x, x_289.y) * vec3<f32>(x_291.y, x_291.z, x_291.x));
  let x_294 : vec3<f32> = vs_INTERP1;
  let x_296 : vec4<f32> = vs_INTERP2;
  let x_299 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_294.y, x_294.z, x_294.x) * vec3<f32>(x_296.z, x_296.x, x_296.y)) + -(x_299));
  let x_302 : vec3<f32> = u_xlat15;
  let x_304 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304);
  let x_306 : vec2<f32> = u_xlat14;
  let x_308 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_306.y, x_306.y, x_306.y) * x_308);
  let x_310 : vec2<f32> = u_xlat14;
  let x_312 : vec4<f32> = vs_INTERP2;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_312.x, x_312.y, x_312.z)) + x_315);
  let x_317 : f32 = u_xlat29;
  let x_319 : vec3<f32> = vs_INTERP1;
  let x_321 : vec3<f32> = u_xlat3;
  u_xlat15 = ((vec3<f32>(x_317, x_317, x_317) * x_319) + x_321);
  let x_323 : vec3<f32> = u_xlat15;
  let x_324 : vec3<f32> = u_xlat15;
  u_xlat14.x = dot(x_323, x_324);
  let x_328 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_328);
  let x_331 : vec2<f32> = u_xlat14;
  let x_333 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_331.x, x_331.x, x_331.x) * x_333);
  let x_338 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_338 == 0.0f);
  let x_341 : vec3<f32> = vs_INTERP0;
  let x_346 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_341) + x_346);
  let x_349 : vec3<f32> = u_xlat3;
  let x_350 : vec3<f32> = u_xlat3;
  u_xlat28 = dot(x_349, x_350);
  let x_352 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_352);
  let x_354 : f32 = u_xlat28;
  let x_356 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_354, x_354, x_354) * x_356);
  let x_361 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_361;
  let x_364 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_364;
  let x_368 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_368;
  let x_370 : bool = u_xlatb14;
  if (x_370) {
    let x_374 : vec3<f32> = u_xlat3;
    x_371 = x_374;
  } else {
    let x_376 : vec3<f32> = u_xlat4;
    x_371 = x_376;
  }
  let x_377 : vec3<f32> = x_371;
  u_xlat3 = x_377;
  let x_379 : f32 = vs_INTERP0.y;
  let x_381 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat14.x = (x_379 * x_381);
  let x_385 : f32 = x_44.unity_MatrixV[0i].z;
  let x_387 : f32 = vs_INTERP0.x;
  let x_390 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_385 * x_387) + x_390);
  let x_394 : f32 = x_44.unity_MatrixV[2i].z;
  let x_396 : f32 = vs_INTERP0.z;
  let x_399 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_394 * x_396) + x_399);
  let x_403 : f32 = u_xlat14.x;
  let x_405 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat14.x = (x_403 + x_405);
  let x_409 : f32 = u_xlat14.x;
  let x_413 : f32 = x_44.x_ProjectionParams.y;
  u_xlat14.x = (-(x_409) + -(x_413));
  let x_418 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_418, 0.0f);
  let x_422 : f32 = u_xlat14.x;
  let x_425 : f32 = x_44.unity_FogParams.x;
  u_xlat14.x = (x_422 * x_425);
  let x_435 : vec2<f32> = vs_INTERP4;
  let x_437 : f32 = x_44.x_GlobalMipBias.x;
  let x_438 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_435, x_437);
  u_xlat4 = vec3<f32>(x_438.x, x_438.y, x_438.z);
  let x_442 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_443 : vec2<f32> = vec2<f32>(x_442.x, x_442.y);
  let x_447 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_443.x, x_443.y));
  let x_448 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_447.x, x_447.y, x_448.z);
  let x_450 : vec3<f32> = u_xlat5;
  let x_452 : vec4<f32> = hlslcc_FragCoord;
  let x_454 : vec2<f32> = (vec2<f32>(x_450.x, x_450.y) * vec2<f32>(x_452.x, x_452.y));
  let x_455 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_454.x, x_454.y, x_455.z);
  let x_458 : f32 = u_xlat5.y;
  let x_461 : f32 = x_44.x_ScaleBiasRt.x;
  let x_464 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat28 = ((x_458 * x_461) + x_464);
  let x_466 : f32 = u_xlat28;
  u_xlat5.z = (-(x_466) + 1.0f);
  let x_471 : f32 = u_xlat0.x;
  u_xlat28 = ((-(x_471) * 0.959999979f) + 0.959999979f);
  let x_477 : f32 = u_xlat28;
  let x_480 : f32 = u_xlat1.x;
  u_xlat44 = (-(x_477) + x_480);
  let x_483 : f32 = u_xlat28;
  let x_485 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_483, x_483, x_483) * x_485);
  let x_487 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_487 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_491.x, x_491.x, x_491.x) * x_493) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_499 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_499) + 1.0f);
  let x_504 : f32 = u_xlat0.x;
  let x_506 : f32 = u_xlat0.x;
  u_xlat28 = (x_504 * x_506);
  let x_508 : f32 = u_xlat28;
  let x_509 : f32 = u_xlat28;
  u_xlat1.x = (x_508 * x_509);
  let x_512 : f32 = u_xlat44;
  u_xlat44 = (x_512 + 1.0f);
  let x_514 : f32 = u_xlat44;
  u_xlat44 = min(x_514, 1.0f);
  let x_517 : f32 = u_xlat28;
  u_xlat45 = ((x_517 * 4.0f) + 2.0f);
  let x_527 : vec3<f32> = u_xlat5;
  let x_530 : f32 = x_44.x_GlobalMipBias.x;
  let x_531 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_527.x, x_527.z), x_530);
  u_xlat46 = x_531.x;
  let x_533 : f32 = u_xlat46;
  u_xlat5.x = (x_533 + -1.0f);
  let x_537 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_539 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_537 * x_539) + 1.0f);
  let x_545 : f32 = u_xlat0.w;
  let x_546 : f32 = u_xlat46;
  u_xlat42 = min(x_545, x_546);
  let x_550 : vec4<f32> = vs_INTERP8;
  let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
  let x_553 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_551.x, x_551.y, x_553);
  let x_565 : vec3<f32> = txVec0;
  let x_567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_565.xy, x_565.z);
  u_xlat46 = x_567;
  let x_575 : f32 = x_573.x_MainLightShadowParams.x;
  u_xlat19.x = (-(x_575) + 1.0f);
  let x_579 : f32 = u_xlat46;
  let x_581 : f32 = x_573.x_MainLightShadowParams.x;
  let x_584 : f32 = u_xlat19.x;
  u_xlat46 = ((x_579 * x_581) + x_584);
  let x_590 : f32 = vs_INTERP8.z;
  u_xlatb19.x = (0.0f >= x_590);
  let x_595 : f32 = vs_INTERP8.z;
  u_xlatb33 = (x_595 >= 1.0f);
  let x_597 : bool = u_xlatb33;
  let x_599 : bool = u_xlatb19.x;
  u_xlatb19.x = (x_597 | x_599);
  let x_603 : bool = u_xlatb19.x;
  let x_604 : f32 = u_xlat46;
  u_xlat46 = select(x_604, 1.0f, x_603);
  let x_606 : vec3<f32> = vs_INTERP0;
  let x_608 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat19 = (x_606 + -(x_608));
  let x_611 : vec3<f32> = u_xlat19;
  let x_612 : vec3<f32> = u_xlat19;
  u_xlat19.x = dot(x_611, x_612);
  let x_616 : f32 = u_xlat19.x;
  let x_618 : f32 = x_573.x_MainLightShadowParams.z;
  let x_621 : f32 = x_573.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_616 * x_618) + x_621);
  let x_625 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_625, 0.0f, 1.0f);
  let x_629 : f32 = u_xlat46;
  u_xlat33 = (-(x_629) + 1.0f);
  let x_633 : f32 = u_xlat19.x;
  let x_634 : f32 = u_xlat33;
  let x_636 : f32 = u_xlat46;
  u_xlat46 = ((x_633 * x_634) + x_636);
  let x_644 : f32 = x_642.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_644 == -1.0f));
  let x_648 : bool = u_xlatb19.x;
  if (x_648) {
    let x_651 : vec3<f32> = vs_INTERP0;
    let x_654 : vec4<f32> = x_642.x_MainLightWorldToLight[1i];
    let x_656 : vec2<f32> = (vec2<f32>(x_651.y, x_651.y) * vec2<f32>(x_654.x, x_654.y));
    let x_657 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_656.x, x_656.y, x_657.z);
    let x_660 : vec4<f32> = x_642.x_MainLightWorldToLight[0i];
    let x_662 : vec3<f32> = vs_INTERP0;
    let x_665 : vec3<f32> = u_xlat19;
    let x_667 : vec2<f32> = ((vec2<f32>(x_660.x, x_660.y) * vec2<f32>(x_662.x, x_662.x)) + vec2<f32>(x_665.x, x_665.y));
    let x_668 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_667.x, x_667.y, x_668.z);
    let x_671 : vec4<f32> = x_642.x_MainLightWorldToLight[2i];
    let x_673 : vec3<f32> = vs_INTERP0;
    let x_676 : vec3<f32> = u_xlat19;
    let x_678 : vec2<f32> = ((vec2<f32>(x_671.x, x_671.y) * vec2<f32>(x_673.z, x_673.z)) + vec2<f32>(x_676.x, x_676.y));
    let x_679 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_678.x, x_678.y, x_679.z);
    let x_681 : vec3<f32> = u_xlat19;
    let x_684 : vec4<f32> = x_642.x_MainLightWorldToLight[3i];
    let x_686 : vec2<f32> = (vec2<f32>(x_681.x, x_681.y) + vec2<f32>(x_684.x, x_684.y));
    let x_687 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_686.x, x_686.y, x_687.z);
    let x_689 : vec3<f32> = u_xlat19;
    let x_693 : vec2<f32> = ((vec2<f32>(x_689.x, x_689.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_694 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_693.x, x_693.y, x_694.z);
    let x_702 : vec3<f32> = u_xlat19;
    let x_705 : f32 = x_44.x_GlobalMipBias.x;
    let x_706 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_702.x, x_702.y), x_705);
    u_xlat7 = x_706;
    let x_708 : f32 = x_642.x_MainLightCookieTextureFormat;
    let x_710 : f32 = x_642.x_MainLightCookieTextureFormat;
    let x_712 : f32 = x_642.x_MainLightCookieTextureFormat;
    let x_714 : f32 = x_642.x_MainLightCookieTextureFormat;
    let x_715 : vec4<f32> = vec4<f32>(x_708, x_710, x_712, x_714);
    let x_722 : vec4<bool> = (vec4<f32>(x_715.x, x_715.y, x_715.z, x_715.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_722.x, x_722.y);
    let x_725 : bool = u_xlatb19.y;
    if (x_725) {
      let x_730 : f32 = u_xlat7.w;
      x_726 = x_730;
    } else {
      let x_733 : f32 = u_xlat7.x;
      x_726 = x_733;
    }
    let x_734 : f32 = x_726;
    u_xlat33 = x_734;
    let x_736 : bool = u_xlatb19.x;
    if (x_736) {
      let x_740 : vec4<f32> = u_xlat7;
      x_737 = vec3<f32>(x_740.x, x_740.y, x_740.z);
    } else {
      let x_743 : f32 = u_xlat33;
      x_737 = vec3<f32>(x_743, x_743, x_743);
    }
    let x_745 : vec3<f32> = x_737;
    u_xlat19 = x_745;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_750 : vec3<f32> = u_xlat19;
  let x_752 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat19 = (x_750 * vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec3<f32> = u_xlat5;
  let x_757 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_755.x, x_755.x, x_755.x) * x_757);
  let x_760 : vec3<f32> = u_xlat3;
  let x_762 : vec3<f32> = u_xlat15;
  u_xlat48 = dot(-(x_760), x_762);
  let x_764 : f32 = u_xlat48;
  let x_765 : f32 = u_xlat48;
  u_xlat48 = (x_764 + x_765);
  let x_767 : vec3<f32> = u_xlat15;
  let x_768 : f32 = u_xlat48;
  let x_772 : vec3<f32> = u_xlat3;
  let x_774 : vec3<f32> = ((x_767 * -(vec3<f32>(x_768, x_768, x_768))) + -(x_772));
  let x_775 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec3<f32> = u_xlat15;
  let x_778 : vec3<f32> = u_xlat3;
  u_xlat48 = dot(x_777, x_778);
  let x_780 : f32 = u_xlat48;
  u_xlat48 = clamp(x_780, 0.0f, 1.0f);
  let x_782 : f32 = u_xlat48;
  u_xlat48 = (-(x_782) + 1.0f);
  let x_785 : f32 = u_xlat48;
  let x_786 : f32 = u_xlat48;
  u_xlat48 = (x_785 * x_786);
  let x_788 : f32 = u_xlat48;
  let x_789 : f32 = u_xlat48;
  u_xlat48 = (x_788 * x_789);
  let x_793 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_793) * 0.699999988f) + 1.700000048f);
  let x_800 : f32 = u_xlat0.x;
  let x_801 : f32 = u_xlat49;
  u_xlat0.x = (x_800 * x_801);
  let x_805 : f32 = u_xlat0.x;
  u_xlat0.x = (x_805 * 6.0f);
  let x_817 : vec4<f32> = u_xlat7;
  let x_820 : f32 = u_xlat0.x;
  let x_821 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_817.x, x_817.y, x_817.z), x_820);
  u_xlat7 = x_821;
  let x_823 : f32 = u_xlat7.w;
  u_xlat0.x = (x_823 + -1.0f);
  let x_827 : f32 = x_267.unity_SpecCube0_HDR.w;
  let x_829 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_827 * x_829) + 1.0f);
  let x_834 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_834, 0.0f);
  let x_838 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_838);
  let x_842 : f32 = u_xlat0.x;
  let x_844 : f32 = x_267.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_842 * x_844);
  let x_848 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_848);
  let x_852 : f32 = u_xlat0.x;
  let x_854 : f32 = x_267.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_852 * x_854);
  let x_857 : vec4<f32> = u_xlat7;
  let x_859 : vec4<f32> = u_xlat0;
  let x_861 : vec3<f32> = (vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(x_859.x, x_859.x, x_859.x));
  let x_862 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : f32 = u_xlat28;
  let x_866 : f32 = u_xlat28;
  let x_870 : vec2<f32> = ((vec2<f32>(x_864, x_864) * vec2<f32>(x_866, x_866)) + vec2<f32>(-1.0f, 1.0f));
  let x_871 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_870.x, x_871.y, x_870.y, x_871.w);
  let x_874 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_874);
  let x_877 : vec3<f32> = u_xlat2;
  let x_879 : f32 = u_xlat44;
  u_xlat8 = (-(x_877) + vec3<f32>(x_879, x_879, x_879));
  let x_882 : f32 = u_xlat48;
  let x_884 : vec3<f32> = u_xlat8;
  let x_886 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_882, x_882, x_882) * x_884) + x_886);
  let x_888 : f32 = u_xlat28;
  let x_890 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_888, x_888, x_888) * x_890);
  let x_892 : vec4<f32> = u_xlat7;
  let x_894 : vec3<f32> = u_xlat8;
  let x_895 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * x_894);
  let x_896 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec3<f32> = u_xlat4;
  let x_899 : vec3<f32> = u_xlat6;
  let x_901 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_898 * x_899) + vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : f32 = u_xlat46;
  let x_907 : f32 = x_267.unity_LightData.z;
  u_xlat28 = (x_904 * x_907);
  let x_909 : vec3<f32> = u_xlat15;
  let x_911 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat44 = dot(x_909, vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : f32 = u_xlat44;
  u_xlat44 = clamp(x_914, 0.0f, 1.0f);
  let x_916 : f32 = u_xlat28;
  let x_917 : f32 = u_xlat44;
  u_xlat28 = (x_916 * x_917);
  let x_919 : f32 = u_xlat28;
  let x_921 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_919, x_919, x_919) * x_921);
  let x_923 : vec3<f32> = u_xlat3;
  let x_925 : vec4<f32> = x_44.x_MainLightPosition;
  let x_927 : vec3<f32> = (x_923 + vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : vec4<f32> = u_xlat7;
  let x_932 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_930.x, x_930.y, x_930.z), vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : f32 = u_xlat28;
  u_xlat28 = max(x_935, 1.17549435e-37f);
  let x_938 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_938);
  let x_940 : f32 = u_xlat28;
  let x_942 : vec4<f32> = u_xlat7;
  let x_944 : vec3<f32> = (vec3<f32>(x_940, x_940, x_940) * vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : vec3<f32> = u_xlat15;
  let x_948 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_947, vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_951 : f32 = u_xlat28;
  u_xlat28 = clamp(x_951, 0.0f, 1.0f);
  let x_954 : vec4<f32> = x_44.x_MainLightPosition;
  let x_956 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_954.x, x_954.y, x_954.z), vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : f32 = u_xlat44;
  u_xlat44 = clamp(x_959, 0.0f, 1.0f);
  let x_961 : f32 = u_xlat28;
  let x_962 : f32 = u_xlat28;
  u_xlat28 = (x_961 * x_962);
  let x_964 : f32 = u_xlat28;
  let x_966 : f32 = u_xlat0.x;
  u_xlat28 = ((x_964 * x_966) + 1.000010014f);
  let x_970 : f32 = u_xlat44;
  let x_971 : f32 = u_xlat44;
  u_xlat44 = (x_970 * x_971);
  let x_973 : f32 = u_xlat28;
  let x_974 : f32 = u_xlat28;
  u_xlat28 = (x_973 * x_974);
  let x_976 : f32 = u_xlat44;
  u_xlat44 = max(x_976, 0.100000001f);
  let x_979 : f32 = u_xlat28;
  let x_980 : f32 = u_xlat44;
  u_xlat28 = (x_979 * x_980);
  let x_982 : f32 = u_xlat45;
  let x_983 : f32 = u_xlat28;
  u_xlat28 = (x_982 * x_983);
  let x_986 : f32 = u_xlat1.x;
  let x_987 : f32 = u_xlat28;
  u_xlat28 = (x_986 / x_987);
  let x_989 : vec3<f32> = u_xlat2;
  let x_990 : f32 = u_xlat28;
  let x_993 : vec3<f32> = u_xlat6;
  let x_994 : vec3<f32> = ((x_989 * vec3<f32>(x_990, x_990, x_990)) + x_993);
  let x_995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec3<f32> = u_xlat19;
  let x_998 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_997 * vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1002 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1004 : f32 = x_267.unity_LightData.y;
  u_xlat28 = min(x_1002, x_1004);
  let x_1008 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1008));
  let x_1013 : f32 = x_642.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1015 : f32 = x_642.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1017 : f32 = x_642.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1019 : f32 = x_642.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1020 : vec4<f32> = vec4<f32>(x_1013, x_1015, x_1017, x_1019);
  let x_1026 : vec4<bool> = (vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1020.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1026.x, x_1026.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1037 : u32 = u_xlatu_loop_1;
    let x_1038 : u32 = u_xlatu28;
    if ((x_1037 < x_1038)) {
    } else {
      break;
    }
    let x_1041 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1041 >> 2u);
    let x_1045 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1045 & 3u));
    let x_1049 : u32 = u_xlatu46;
    let x_1052 : vec4<f32> = x_267.unity_LightIndices[bitcast<i32>(x_1049)];
    let x_1062 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1067 : vec4<u32> = indexable[x_1062];
    u_xlat46 = dot(x_1052, bitcast<vec4<f32>>(x_1067));
    let x_1070 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1070));
    let x_1074 : vec3<f32> = vs_INTERP0;
    let x_1086 : u32 = u_xlatu46;
    let x_1089 : vec4<f32> = x_1085.x_AdditionalLightsPosition[bitcast<i32>(x_1086)];
    let x_1092 : u32 = u_xlatu46;
    let x_1095 : vec4<f32> = x_1085.x_AdditionalLightsPosition[bitcast<i32>(x_1092)];
    u_xlat9 = ((-(x_1074) * vec3<f32>(x_1089.w, x_1089.w, x_1089.w)) + vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
    let x_1098 : vec3<f32> = u_xlat9;
    let x_1099 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1098, x_1099);
    let x_1101 : f32 = u_xlat48;
    u_xlat48 = max(x_1101, 6.10351562e-05f);
    let x_1105 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1105);
    let x_1108 : f32 = u_xlat35;
    let x_1110 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1108, x_1108, x_1108) * x_1110);
    let x_1112 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1112);
    let x_1114 : f32 = u_xlat48;
    let x_1115 : u32 = u_xlatu46;
    let x_1118 : f32 = x_1085.x_AdditionalLightsAttenuation[bitcast<i32>(x_1115)].x;
    u_xlat48 = (x_1114 * x_1118);
    let x_1120 : f32 = u_xlat48;
    let x_1122 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1120) * x_1122) + 1.0f);
    let x_1125 : f32 = u_xlat48;
    u_xlat48 = max(x_1125, 0.0f);
    let x_1127 : f32 = u_xlat48;
    let x_1128 : f32 = u_xlat48;
    u_xlat48 = (x_1127 * x_1128);
    let x_1130 : f32 = u_xlat48;
    let x_1131 : f32 = u_xlat49;
    u_xlat48 = (x_1130 * x_1131);
    let x_1133 : u32 = u_xlatu46;
    let x_1136 : vec4<f32> = x_1085.x_AdditionalLightsSpotDir[bitcast<i32>(x_1133)];
    let x_1138 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1136.x, x_1136.y, x_1136.z), x_1138);
    let x_1140 : f32 = u_xlat49;
    let x_1141 : u32 = u_xlatu46;
    let x_1144 : f32 = x_1085.x_AdditionalLightsAttenuation[bitcast<i32>(x_1141)].z;
    let x_1146 : u32 = u_xlatu46;
    let x_1149 : f32 = x_1085.x_AdditionalLightsAttenuation[bitcast<i32>(x_1146)].w;
    u_xlat49 = ((x_1140 * x_1144) + x_1149);
    let x_1151 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1151, 0.0f, 1.0f);
    let x_1153 : f32 = u_xlat49;
    let x_1154 : f32 = u_xlat49;
    u_xlat49 = (x_1153 * x_1154);
    let x_1156 : f32 = u_xlat48;
    let x_1157 : f32 = u_xlat49;
    u_xlat48 = (x_1156 * x_1157);
    let x_1160 : u32 = u_xlatu46;
    u_xlatu49 = (x_1160 >> 5u);
    let x_1163 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1163) & 31i)));
    let x_1169 : i32 = u_xlati50;
    let x_1171 : u32 = u_xlatu49;
    let x_1174 : f32 = x_642.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1171)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1169) & bitcast<u32>(x_1174)));
    let x_1178 : i32 = u_xlati49;
    if ((x_1178 != 0i)) {
      let x_1188 : u32 = u_xlatu46;
      let x_1191 : f32 = x_1187.x_AdditionalLightsLightTypes[bitcast<i32>(x_1188)].el;
      u_xlati49 = i32(x_1191);
      let x_1193 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1193 != 0i));
      let x_1197 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1197) << bitcast<u32>(2i));
      let x_1200 : i32 = u_xlati50;
      if ((x_1200 != 0i)) {
        let x_1205 : vec3<f32> = vs_INTERP0;
        let x_1207 : i32 = u_xlati51;
        let x_1210 : i32 = u_xlati51;
        let x_1214 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[((x_1207 + 1i) / 4i)][((x_1210 + 1i) % 4i)];
        let x_1216 : vec3<f32> = (vec3<f32>(x_1205.y, x_1205.y, x_1205.y) * vec3<f32>(x_1214.x, x_1214.y, x_1214.w));
        let x_1217 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
        let x_1219 : i32 = u_xlati51;
        let x_1221 : i32 = u_xlati51;
        let x_1224 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[(x_1219 / 4i)][(x_1221 % 4i)];
        let x_1226 : vec3<f32> = vs_INTERP0;
        let x_1229 : vec4<f32> = u_xlat11;
        let x_1231 : vec3<f32> = ((vec3<f32>(x_1224.x, x_1224.y, x_1224.w) * vec3<f32>(x_1226.x, x_1226.x, x_1226.x)) + vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
        let x_1232 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
        let x_1234 : i32 = u_xlati51;
        let x_1237 : i32 = u_xlati51;
        let x_1241 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[((x_1234 + 2i) / 4i)][((x_1237 + 2i) % 4i)];
        let x_1243 : vec3<f32> = vs_INTERP0;
        let x_1246 : vec4<f32> = u_xlat11;
        let x_1248 : vec3<f32> = ((vec3<f32>(x_1241.x, x_1241.y, x_1241.w) * vec3<f32>(x_1243.z, x_1243.z, x_1243.z)) + vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
        let x_1249 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
        let x_1251 : vec4<f32> = u_xlat11;
        let x_1253 : i32 = u_xlati51;
        let x_1256 : i32 = u_xlati51;
        let x_1260 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[((x_1253 + 3i) / 4i)][((x_1256 + 3i) % 4i)];
        let x_1262 : vec3<f32> = (vec3<f32>(x_1251.x, x_1251.y, x_1251.z) + vec3<f32>(x_1260.x, x_1260.y, x_1260.w));
        let x_1263 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
        let x_1265 : vec4<f32> = u_xlat11;
        let x_1267 : vec4<f32> = u_xlat11;
        let x_1269 : vec2<f32> = (vec2<f32>(x_1265.x, x_1265.y) / vec2<f32>(x_1267.z, x_1267.z));
        let x_1270 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1269.x, x_1269.y, x_1270.z, x_1270.w);
        let x_1272 : vec4<f32> = u_xlat11;
        let x_1275 : vec2<f32> = ((vec2<f32>(x_1272.x, x_1272.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1276 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat11;
        let x_1282 : vec2<f32> = clamp(vec2<f32>(x_1278.x, x_1278.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1283 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1283.w);
        let x_1285 : u32 = u_xlatu46;
        let x_1288 : vec4<f32> = x_1187.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1285)];
        let x_1290 : vec4<f32> = u_xlat11;
        let x_1293 : u32 = u_xlatu46;
        let x_1296 : vec4<f32> = x_1187.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1293)];
        let x_1298 : vec2<f32> = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(x_1290.x, x_1290.y)) + vec2<f32>(x_1296.z, x_1296.w));
        let x_1299 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
      } else {
        let x_1303 : i32 = u_xlati49;
        u_xlatb49 = (x_1303 == 1i);
        let x_1305 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1305);
        let x_1307 : i32 = u_xlati49;
        if ((x_1307 != 0i)) {
          let x_1312 : vec3<f32> = vs_INTERP0;
          let x_1314 : i32 = u_xlati51;
          let x_1317 : i32 = u_xlati51;
          let x_1321 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[((x_1314 + 1i) / 4i)][((x_1317 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1312.y, x_1312.y) * vec2<f32>(x_1321.x, x_1321.y));
          let x_1324 : i32 = u_xlati51;
          let x_1326 : i32 = u_xlati51;
          let x_1329 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[(x_1324 / 4i)][(x_1326 % 4i)];
          let x_1331 : vec3<f32> = vs_INTERP0;
          let x_1334 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1331.x, x_1331.x)) + x_1334);
          let x_1336 : i32 = u_xlati51;
          let x_1339 : i32 = u_xlati51;
          let x_1343 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[((x_1336 + 2i) / 4i)][((x_1339 + 2i) % 4i)];
          let x_1345 : vec3<f32> = vs_INTERP0;
          let x_1348 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1343.x, x_1343.y) * vec2<f32>(x_1345.z, x_1345.z)) + x_1348);
          let x_1350 : vec2<f32> = u_xlat39;
          let x_1351 : i32 = u_xlati51;
          let x_1354 : i32 = u_xlati51;
          let x_1358 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[((x_1351 + 3i) / 4i)][((x_1354 + 3i) % 4i)];
          u_xlat39 = (x_1350 + vec2<f32>(x_1358.x, x_1358.y));
          let x_1361 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1361 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1364 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1364);
          let x_1366 : u32 = u_xlatu46;
          let x_1369 : vec4<f32> = x_1187.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1366)];
          let x_1371 : vec2<f32> = u_xlat39;
          let x_1373 : u32 = u_xlatu46;
          let x_1376 : vec4<f32> = x_1187.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1373)];
          let x_1378 : vec2<f32> = ((vec2<f32>(x_1369.x, x_1369.y) * x_1371) + vec2<f32>(x_1376.z, x_1376.w));
          let x_1379 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1378.x, x_1378.y, x_1379.z, x_1379.w);
        } else {
          let x_1383 : vec3<f32> = vs_INTERP0;
          let x_1385 : i32 = u_xlati51;
          let x_1388 : i32 = u_xlati51;
          let x_1392 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[((x_1385 + 1i) / 4i)][((x_1388 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1383.y, x_1383.y, x_1383.y, x_1383.y) * x_1392);
          let x_1394 : i32 = u_xlati51;
          let x_1396 : i32 = u_xlati51;
          let x_1399 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[(x_1394 / 4i)][(x_1396 % 4i)];
          let x_1400 : vec3<f32> = vs_INTERP0;
          let x_1403 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1399 * vec4<f32>(x_1400.x, x_1400.x, x_1400.x, x_1400.x)) + x_1403);
          let x_1405 : i32 = u_xlati51;
          let x_1408 : i32 = u_xlati51;
          let x_1412 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[((x_1405 + 2i) / 4i)][((x_1408 + 2i) % 4i)];
          let x_1413 : vec3<f32> = vs_INTERP0;
          let x_1416 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1412 * vec4<f32>(x_1413.z, x_1413.z, x_1413.z, x_1413.z)) + x_1416);
          let x_1418 : vec4<f32> = u_xlat12;
          let x_1419 : i32 = u_xlati51;
          let x_1422 : i32 = u_xlati51;
          let x_1426 : vec4<f32> = x_1187.x_AdditionalLightsWorldToLights[((x_1419 + 3i) / 4i)][((x_1422 + 3i) % 4i)];
          u_xlat12 = (x_1418 + x_1426);
          let x_1428 : vec4<f32> = u_xlat12;
          let x_1430 : vec4<f32> = u_xlat12;
          let x_1432 : vec3<f32> = (vec3<f32>(x_1428.x, x_1428.y, x_1428.z) / vec3<f32>(x_1430.w, x_1430.w, x_1430.w));
          let x_1433 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
          let x_1435 : vec4<f32> = u_xlat12;
          let x_1437 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1435.x, x_1435.y, x_1435.z), vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
          let x_1440 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1440);
          let x_1442 : f32 = u_xlat49;
          let x_1444 : vec4<f32> = u_xlat12;
          let x_1446 : vec3<f32> = (vec3<f32>(x_1442, x_1442, x_1442) * vec3<f32>(x_1444.x, x_1444.y, x_1444.z));
          let x_1447 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
          let x_1449 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1449.x, x_1449.y, x_1449.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1453 : f32 = u_xlat49;
          u_xlat49 = max(x_1453, 0.000001f);
          let x_1456 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1456);
          let x_1459 : f32 = u_xlat49;
          let x_1461 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1459, x_1459, x_1459) * vec3<f32>(x_1461.z, x_1461.x, x_1461.y));
          let x_1465 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1465);
          let x_1469 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1469, 0.0f, 1.0f);
          let x_1473 : vec3<f32> = u_xlat13;
          let x_1476 : vec4<bool> = (vec4<f32>(x_1473.y, x_1473.z, x_1473.y, x_1473.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1476.x, x_1476.y);
          let x_1479 : bool = u_xlatb39.x;
          if (x_1479) {
            let x_1484 : f32 = u_xlat13.x;
            x_1480 = x_1484;
          } else {
            let x_1487 : f32 = u_xlat13.x;
            x_1480 = -(x_1487);
          }
          let x_1489 : f32 = x_1480;
          u_xlat39.x = x_1489;
          let x_1492 : bool = u_xlatb39.y;
          if (x_1492) {
            let x_1497 : f32 = u_xlat13.x;
            x_1493 = x_1497;
          } else {
            let x_1500 : f32 = u_xlat13.x;
            x_1493 = -(x_1500);
          }
          let x_1502 : f32 = x_1493;
          u_xlat39.y = x_1502;
          let x_1504 : vec4<f32> = u_xlat12;
          let x_1506 : f32 = u_xlat49;
          let x_1509 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1504.x, x_1504.y) * vec2<f32>(x_1506, x_1506)) + x_1509);
          let x_1511 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1511 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1514 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1514, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1518 : u32 = u_xlatu46;
          let x_1521 : vec4<f32> = x_1187.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1518)];
          let x_1523 : vec2<f32> = u_xlat39;
          let x_1525 : u32 = u_xlatu46;
          let x_1528 : vec4<f32> = x_1187.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1525)];
          let x_1530 : vec2<f32> = ((vec2<f32>(x_1521.x, x_1521.y) * x_1523) + vec2<f32>(x_1528.z, x_1528.w));
          let x_1531 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1530.x, x_1530.y, x_1531.z, x_1531.w);
        }
      }
      let x_1538 : vec4<f32> = u_xlat11;
      let x_1541 : f32 = x_44.x_GlobalMipBias.x;
      let x_1542 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1538.x, x_1538.y), x_1541);
      u_xlat11 = x_1542;
      let x_1544 : bool = u_xlatb7.y;
      if (x_1544) {
        let x_1549 : f32 = u_xlat11.w;
        x_1545 = x_1549;
      } else {
        let x_1552 : f32 = u_xlat11.x;
        x_1545 = x_1552;
      }
      let x_1553 : f32 = x_1545;
      u_xlat49 = x_1553;
      let x_1555 : bool = u_xlatb7.x;
      if (x_1555) {
        let x_1559 : vec4<f32> = u_xlat11;
        x_1556 = vec3<f32>(x_1559.x, x_1559.y, x_1559.z);
      } else {
        let x_1562 : f32 = u_xlat49;
        x_1556 = vec3<f32>(x_1562, x_1562, x_1562);
      }
      let x_1564 : vec3<f32> = x_1556;
      let x_1565 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1571 : vec4<f32> = u_xlat11;
    let x_1573 : u32 = u_xlatu46;
    let x_1576 : vec4<f32> = x_1085.x_AdditionalLightsColor[bitcast<i32>(x_1573)];
    let x_1578 : vec3<f32> = (vec3<f32>(x_1571.x, x_1571.y, x_1571.z) * vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
    let x_1579 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
    let x_1581 : vec3<f32> = u_xlat5;
    let x_1583 : vec4<f32> = u_xlat11;
    let x_1585 : vec3<f32> = (vec3<f32>(x_1581.x, x_1581.x, x_1581.x) * vec3<f32>(x_1583.x, x_1583.y, x_1583.z));
    let x_1586 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1585.x, x_1585.y, x_1585.z, x_1586.w);
    let x_1588 : vec3<f32> = u_xlat15;
    let x_1589 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(x_1588, x_1589);
    let x_1591 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1591, 0.0f, 1.0f);
    let x_1593 : f32 = u_xlat46;
    let x_1594 : f32 = u_xlat48;
    u_xlat46 = (x_1593 * x_1594);
    let x_1596 : f32 = u_xlat46;
    let x_1598 : vec4<f32> = u_xlat11;
    let x_1600 : vec3<f32> = (vec3<f32>(x_1596, x_1596, x_1596) * vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
    let x_1601 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1600.x, x_1600.y, x_1600.z, x_1601.w);
    let x_1603 : vec3<f32> = u_xlat9;
    let x_1604 : f32 = u_xlat35;
    let x_1607 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1603 * vec3<f32>(x_1604, x_1604, x_1604)) + x_1607);
    let x_1609 : vec3<f32> = u_xlat9;
    let x_1610 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1609, x_1610);
    let x_1612 : f32 = u_xlat46;
    u_xlat46 = max(x_1612, 1.17549435e-37f);
    let x_1614 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1614);
    let x_1616 : f32 = u_xlat46;
    let x_1618 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1616, x_1616, x_1616) * x_1618);
    let x_1620 : vec3<f32> = u_xlat15;
    let x_1621 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1620, x_1621);
    let x_1623 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1623, 0.0f, 1.0f);
    let x_1625 : vec3<f32> = u_xlat10;
    let x_1626 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1625, x_1626);
    let x_1628 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1628, 0.0f, 1.0f);
    let x_1630 : f32 = u_xlat46;
    let x_1631 : f32 = u_xlat46;
    u_xlat46 = (x_1630 * x_1631);
    let x_1633 : f32 = u_xlat46;
    let x_1635 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1633 * x_1635) + 1.000010014f);
    let x_1638 : f32 = u_xlat48;
    let x_1639 : f32 = u_xlat48;
    u_xlat48 = (x_1638 * x_1639);
    let x_1641 : f32 = u_xlat46;
    let x_1642 : f32 = u_xlat46;
    u_xlat46 = (x_1641 * x_1642);
    let x_1644 : f32 = u_xlat48;
    u_xlat48 = max(x_1644, 0.100000001f);
    let x_1646 : f32 = u_xlat46;
    let x_1647 : f32 = u_xlat48;
    u_xlat46 = (x_1646 * x_1647);
    let x_1649 : f32 = u_xlat45;
    let x_1650 : f32 = u_xlat46;
    u_xlat46 = (x_1649 * x_1650);
    let x_1653 : f32 = u_xlat1.x;
    let x_1654 : f32 = u_xlat46;
    u_xlat46 = (x_1653 / x_1654);
    let x_1656 : vec3<f32> = u_xlat2;
    let x_1657 : f32 = u_xlat46;
    let x_1660 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1656 * vec3<f32>(x_1657, x_1657, x_1657)) + x_1660);
    let x_1662 : vec3<f32> = u_xlat9;
    let x_1663 : vec4<f32> = u_xlat11;
    let x_1666 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1662 * vec3<f32>(x_1663.x, x_1663.y, x_1663.z)) + x_1666);

    continuing {
      let x_1668 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1668 + bitcast<u32>(1i));
    }
  }
  let x_1670 : vec3<f32> = u_xlat4;
  let x_1671 : f32 = u_xlat42;
  let x_1674 : vec3<f32> = u_xlat19;
  let x_1675 : vec3<f32> = ((x_1670 * vec3<f32>(x_1671, x_1671, x_1671)) + x_1674);
  let x_1676 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1675.x, x_1676.y, x_1675.y, x_1675.z);
  let x_1678 : vec3<f32> = u_xlat8;
  let x_1679 : vec4<f32> = u_xlat0;
  let x_1681 : vec3<f32> = (x_1678 + vec3<f32>(x_1679.x, x_1679.z, x_1679.w));
  let x_1682 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1681.x, x_1682.y, x_1681.y, x_1681.z);
  let x_1685 : f32 = u_xlat14.x;
  let x_1687 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1685 * -(x_1687));
  let x_1692 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_1692);
  let x_1695 : vec4<f32> = u_xlat0;
  let x_1699 : vec4<f32> = x_44.unity_FogColor;
  let x_1702 : vec3<f32> = (vec3<f32>(x_1695.x, x_1695.z, x_1695.w) + -(vec3<f32>(x_1699.x, x_1699.y, x_1699.z)));
  let x_1703 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1702.x, x_1703.y, x_1702.y, x_1702.z);
  let x_1707 : vec2<f32> = u_xlat14;
  let x_1709 : vec4<f32> = u_xlat0;
  let x_1713 : vec4<f32> = x_44.unity_FogColor;
  let x_1715 : vec3<f32> = ((vec3<f32>(x_1707.x, x_1707.x, x_1707.x) * vec3<f32>(x_1709.x, x_1709.z, x_1709.w)) + vec3<f32>(x_1713.x, x_1713.y, x_1713.z));
  let x_1716 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
  let x_1721 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1723 : f32 = x_267.unity_RenderingLayer.x;
  u_xlatu0 = (x_1721 & bitcast<u32>(x_1723));
  let x_1726 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1726);
  let x_1731 : f32 = u_xlat0.x;
  let x_1734 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1731 * x_1734);
  let x_1739 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1739, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1744 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1744.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

