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

@group(1) @binding(1) var<uniform> x_1084 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1186 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

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
  var x_1479 : f32;
  var x_1492 : f32;
  var x_1544 : f32;
  var x_1555 : vec3<f32>;
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
    let x_1048 : u32 = u_xlatu46;
    let x_1051 : vec4<f32> = x_267.unity_LightIndices[bitcast<i32>(x_1048)];
    let x_1061 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1066 : vec4<u32> = indexable[x_1061];
    u_xlat46 = dot(x_1051, bitcast<vec4<f32>>(x_1066));
    let x_1069 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1069));
    let x_1073 : vec3<f32> = vs_INTERP0;
    let x_1085 : u32 = u_xlatu46;
    let x_1088 : vec4<f32> = x_1084.x_AdditionalLightsPosition[bitcast<i32>(x_1085)];
    let x_1091 : u32 = u_xlatu46;
    let x_1094 : vec4<f32> = x_1084.x_AdditionalLightsPosition[bitcast<i32>(x_1091)];
    u_xlat9 = ((-(x_1073) * vec3<f32>(x_1088.w, x_1088.w, x_1088.w)) + vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
    let x_1097 : vec3<f32> = u_xlat9;
    let x_1098 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1097, x_1098);
    let x_1100 : f32 = u_xlat48;
    u_xlat48 = max(x_1100, 6.10351562e-05f);
    let x_1104 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1104);
    let x_1107 : f32 = u_xlat35;
    let x_1109 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1107, x_1107, x_1107) * x_1109);
    let x_1111 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1111);
    let x_1113 : f32 = u_xlat48;
    let x_1114 : u32 = u_xlatu46;
    let x_1117 : f32 = x_1084.x_AdditionalLightsAttenuation[bitcast<i32>(x_1114)].x;
    u_xlat48 = (x_1113 * x_1117);
    let x_1119 : f32 = u_xlat48;
    let x_1121 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1119) * x_1121) + 1.0f);
    let x_1124 : f32 = u_xlat48;
    u_xlat48 = max(x_1124, 0.0f);
    let x_1126 : f32 = u_xlat48;
    let x_1127 : f32 = u_xlat48;
    u_xlat48 = (x_1126 * x_1127);
    let x_1129 : f32 = u_xlat48;
    let x_1130 : f32 = u_xlat49;
    u_xlat48 = (x_1129 * x_1130);
    let x_1132 : u32 = u_xlatu46;
    let x_1135 : vec4<f32> = x_1084.x_AdditionalLightsSpotDir[bitcast<i32>(x_1132)];
    let x_1137 : vec3<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1135.x, x_1135.y, x_1135.z), x_1137);
    let x_1139 : f32 = u_xlat49;
    let x_1140 : u32 = u_xlatu46;
    let x_1143 : f32 = x_1084.x_AdditionalLightsAttenuation[bitcast<i32>(x_1140)].z;
    let x_1145 : u32 = u_xlatu46;
    let x_1148 : f32 = x_1084.x_AdditionalLightsAttenuation[bitcast<i32>(x_1145)].w;
    u_xlat49 = ((x_1139 * x_1143) + x_1148);
    let x_1150 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1150, 0.0f, 1.0f);
    let x_1152 : f32 = u_xlat49;
    let x_1153 : f32 = u_xlat49;
    u_xlat49 = (x_1152 * x_1153);
    let x_1155 : f32 = u_xlat48;
    let x_1156 : f32 = u_xlat49;
    u_xlat48 = (x_1155 * x_1156);
    let x_1159 : u32 = u_xlatu46;
    u_xlatu49 = (x_1159 >> 5u);
    let x_1162 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1162) & 31i)));
    let x_1168 : i32 = u_xlati50;
    let x_1170 : u32 = u_xlatu49;
    let x_1173 : f32 = x_642.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1170)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1168) & bitcast<u32>(x_1173)));
    let x_1177 : i32 = u_xlati49;
    if ((x_1177 != 0i)) {
      let x_1187 : u32 = u_xlatu46;
      let x_1190 : f32 = x_1186.x_AdditionalLightsLightTypes[bitcast<i32>(x_1187)].el;
      u_xlati49 = i32(x_1190);
      let x_1192 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1192 != 0i));
      let x_1196 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1196) << bitcast<u32>(2i));
      let x_1199 : i32 = u_xlati50;
      if ((x_1199 != 0i)) {
        let x_1204 : vec3<f32> = vs_INTERP0;
        let x_1206 : i32 = u_xlati51;
        let x_1209 : i32 = u_xlati51;
        let x_1213 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[((x_1206 + 1i) / 4i)][((x_1209 + 1i) % 4i)];
        let x_1215 : vec3<f32> = (vec3<f32>(x_1204.y, x_1204.y, x_1204.y) * vec3<f32>(x_1213.x, x_1213.y, x_1213.w));
        let x_1216 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
        let x_1218 : i32 = u_xlati51;
        let x_1220 : i32 = u_xlati51;
        let x_1223 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[(x_1218 / 4i)][(x_1220 % 4i)];
        let x_1225 : vec3<f32> = vs_INTERP0;
        let x_1228 : vec4<f32> = u_xlat11;
        let x_1230 : vec3<f32> = ((vec3<f32>(x_1223.x, x_1223.y, x_1223.w) * vec3<f32>(x_1225.x, x_1225.x, x_1225.x)) + vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
        let x_1231 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
        let x_1233 : i32 = u_xlati51;
        let x_1236 : i32 = u_xlati51;
        let x_1240 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[((x_1233 + 2i) / 4i)][((x_1236 + 2i) % 4i)];
        let x_1242 : vec3<f32> = vs_INTERP0;
        let x_1245 : vec4<f32> = u_xlat11;
        let x_1247 : vec3<f32> = ((vec3<f32>(x_1240.x, x_1240.y, x_1240.w) * vec3<f32>(x_1242.z, x_1242.z, x_1242.z)) + vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
        let x_1248 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
        let x_1250 : vec4<f32> = u_xlat11;
        let x_1252 : i32 = u_xlati51;
        let x_1255 : i32 = u_xlati51;
        let x_1259 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[((x_1252 + 3i) / 4i)][((x_1255 + 3i) % 4i)];
        let x_1261 : vec3<f32> = (vec3<f32>(x_1250.x, x_1250.y, x_1250.z) + vec3<f32>(x_1259.x, x_1259.y, x_1259.w));
        let x_1262 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1266 : vec4<f32> = u_xlat11;
        let x_1268 : vec2<f32> = (vec2<f32>(x_1264.x, x_1264.y) / vec2<f32>(x_1266.z, x_1266.z));
        let x_1269 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1268.x, x_1268.y, x_1269.z, x_1269.w);
        let x_1271 : vec4<f32> = u_xlat11;
        let x_1274 : vec2<f32> = ((vec2<f32>(x_1271.x, x_1271.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1275 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1274.x, x_1274.y, x_1275.z, x_1275.w);
        let x_1277 : vec4<f32> = u_xlat11;
        let x_1281 : vec2<f32> = clamp(vec2<f32>(x_1277.x, x_1277.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1282 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1281.x, x_1281.y, x_1282.z, x_1282.w);
        let x_1284 : u32 = u_xlatu46;
        let x_1287 : vec4<f32> = x_1186.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1284)];
        let x_1289 : vec4<f32> = u_xlat11;
        let x_1292 : u32 = u_xlatu46;
        let x_1295 : vec4<f32> = x_1186.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1292)];
        let x_1297 : vec2<f32> = ((vec2<f32>(x_1287.x, x_1287.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1295.z, x_1295.w));
        let x_1298 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1297.x, x_1297.y, x_1298.z, x_1298.w);
      } else {
        let x_1302 : i32 = u_xlati49;
        u_xlatb49 = (x_1302 == 1i);
        let x_1304 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1304);
        let x_1306 : i32 = u_xlati49;
        if ((x_1306 != 0i)) {
          let x_1311 : vec3<f32> = vs_INTERP0;
          let x_1313 : i32 = u_xlati51;
          let x_1316 : i32 = u_xlati51;
          let x_1320 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[((x_1313 + 1i) / 4i)][((x_1316 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1311.y, x_1311.y) * vec2<f32>(x_1320.x, x_1320.y));
          let x_1323 : i32 = u_xlati51;
          let x_1325 : i32 = u_xlati51;
          let x_1328 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[(x_1323 / 4i)][(x_1325 % 4i)];
          let x_1330 : vec3<f32> = vs_INTERP0;
          let x_1333 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1328.x, x_1328.y) * vec2<f32>(x_1330.x, x_1330.x)) + x_1333);
          let x_1335 : i32 = u_xlati51;
          let x_1338 : i32 = u_xlati51;
          let x_1342 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[((x_1335 + 2i) / 4i)][((x_1338 + 2i) % 4i)];
          let x_1344 : vec3<f32> = vs_INTERP0;
          let x_1347 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1342.x, x_1342.y) * vec2<f32>(x_1344.z, x_1344.z)) + x_1347);
          let x_1349 : vec2<f32> = u_xlat39;
          let x_1350 : i32 = u_xlati51;
          let x_1353 : i32 = u_xlati51;
          let x_1357 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[((x_1350 + 3i) / 4i)][((x_1353 + 3i) % 4i)];
          u_xlat39 = (x_1349 + vec2<f32>(x_1357.x, x_1357.y));
          let x_1360 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1360 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1363 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1363);
          let x_1365 : u32 = u_xlatu46;
          let x_1368 : vec4<f32> = x_1186.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1365)];
          let x_1370 : vec2<f32> = u_xlat39;
          let x_1372 : u32 = u_xlatu46;
          let x_1375 : vec4<f32> = x_1186.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1372)];
          let x_1377 : vec2<f32> = ((vec2<f32>(x_1368.x, x_1368.y) * x_1370) + vec2<f32>(x_1375.z, x_1375.w));
          let x_1378 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1377.x, x_1377.y, x_1378.z, x_1378.w);
        } else {
          let x_1382 : vec3<f32> = vs_INTERP0;
          let x_1384 : i32 = u_xlati51;
          let x_1387 : i32 = u_xlati51;
          let x_1391 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[((x_1384 + 1i) / 4i)][((x_1387 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1382.y, x_1382.y, x_1382.y, x_1382.y) * x_1391);
          let x_1393 : i32 = u_xlati51;
          let x_1395 : i32 = u_xlati51;
          let x_1398 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[(x_1393 / 4i)][(x_1395 % 4i)];
          let x_1399 : vec3<f32> = vs_INTERP0;
          let x_1402 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1398 * vec4<f32>(x_1399.x, x_1399.x, x_1399.x, x_1399.x)) + x_1402);
          let x_1404 : i32 = u_xlati51;
          let x_1407 : i32 = u_xlati51;
          let x_1411 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[((x_1404 + 2i) / 4i)][((x_1407 + 2i) % 4i)];
          let x_1412 : vec3<f32> = vs_INTERP0;
          let x_1415 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1411 * vec4<f32>(x_1412.z, x_1412.z, x_1412.z, x_1412.z)) + x_1415);
          let x_1417 : vec4<f32> = u_xlat12;
          let x_1418 : i32 = u_xlati51;
          let x_1421 : i32 = u_xlati51;
          let x_1425 : vec4<f32> = x_1186.x_AdditionalLightsWorldToLights[((x_1418 + 3i) / 4i)][((x_1421 + 3i) % 4i)];
          u_xlat12 = (x_1417 + x_1425);
          let x_1427 : vec4<f32> = u_xlat12;
          let x_1429 : vec4<f32> = u_xlat12;
          let x_1431 : vec3<f32> = (vec3<f32>(x_1427.x, x_1427.y, x_1427.z) / vec3<f32>(x_1429.w, x_1429.w, x_1429.w));
          let x_1432 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1432.w);
          let x_1434 : vec4<f32> = u_xlat12;
          let x_1436 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1434.x, x_1434.y, x_1434.z), vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
          let x_1439 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1439);
          let x_1441 : f32 = u_xlat49;
          let x_1443 : vec4<f32> = u_xlat12;
          let x_1445 : vec3<f32> = (vec3<f32>(x_1441, x_1441, x_1441) * vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
          let x_1446 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
          let x_1448 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1448.x, x_1448.y, x_1448.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1452 : f32 = u_xlat49;
          u_xlat49 = max(x_1452, 0.000001f);
          let x_1455 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1455);
          let x_1458 : f32 = u_xlat49;
          let x_1460 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1458, x_1458, x_1458) * vec3<f32>(x_1460.z, x_1460.x, x_1460.y));
          let x_1464 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1464);
          let x_1468 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1468, 0.0f, 1.0f);
          let x_1472 : vec3<f32> = u_xlat13;
          let x_1475 : vec4<bool> = (vec4<f32>(x_1472.y, x_1472.z, x_1472.y, x_1472.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1475.x, x_1475.y);
          let x_1478 : bool = u_xlatb39.x;
          if (x_1478) {
            let x_1483 : f32 = u_xlat13.x;
            x_1479 = x_1483;
          } else {
            let x_1486 : f32 = u_xlat13.x;
            x_1479 = -(x_1486);
          }
          let x_1488 : f32 = x_1479;
          u_xlat39.x = x_1488;
          let x_1491 : bool = u_xlatb39.y;
          if (x_1491) {
            let x_1496 : f32 = u_xlat13.x;
            x_1492 = x_1496;
          } else {
            let x_1499 : f32 = u_xlat13.x;
            x_1492 = -(x_1499);
          }
          let x_1501 : f32 = x_1492;
          u_xlat39.y = x_1501;
          let x_1503 : vec4<f32> = u_xlat12;
          let x_1505 : f32 = u_xlat49;
          let x_1508 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1503.x, x_1503.y) * vec2<f32>(x_1505, x_1505)) + x_1508);
          let x_1510 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1510 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1513 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1513, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1517 : u32 = u_xlatu46;
          let x_1520 : vec4<f32> = x_1186.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1517)];
          let x_1522 : vec2<f32> = u_xlat39;
          let x_1524 : u32 = u_xlatu46;
          let x_1527 : vec4<f32> = x_1186.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1524)];
          let x_1529 : vec2<f32> = ((vec2<f32>(x_1520.x, x_1520.y) * x_1522) + vec2<f32>(x_1527.z, x_1527.w));
          let x_1530 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1529.x, x_1529.y, x_1530.z, x_1530.w);
        }
      }
      let x_1537 : vec4<f32> = u_xlat11;
      let x_1540 : f32 = x_44.x_GlobalMipBias.x;
      let x_1541 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1537.x, x_1537.y), x_1540);
      u_xlat11 = x_1541;
      let x_1543 : bool = u_xlatb7.y;
      if (x_1543) {
        let x_1548 : f32 = u_xlat11.w;
        x_1544 = x_1548;
      } else {
        let x_1551 : f32 = u_xlat11.x;
        x_1544 = x_1551;
      }
      let x_1552 : f32 = x_1544;
      u_xlat49 = x_1552;
      let x_1554 : bool = u_xlatb7.x;
      if (x_1554) {
        let x_1558 : vec4<f32> = u_xlat11;
        x_1555 = vec3<f32>(x_1558.x, x_1558.y, x_1558.z);
      } else {
        let x_1561 : f32 = u_xlat49;
        x_1555 = vec3<f32>(x_1561, x_1561, x_1561);
      }
      let x_1563 : vec3<f32> = x_1555;
      let x_1564 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1563.x, x_1563.y, x_1563.z, x_1564.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1570 : vec4<f32> = u_xlat11;
    let x_1572 : u32 = u_xlatu46;
    let x_1575 : vec4<f32> = x_1084.x_AdditionalLightsColor[bitcast<i32>(x_1572)];
    let x_1577 : vec3<f32> = (vec3<f32>(x_1570.x, x_1570.y, x_1570.z) * vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
    let x_1578 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
    let x_1580 : vec3<f32> = u_xlat5;
    let x_1582 : vec4<f32> = u_xlat11;
    let x_1584 : vec3<f32> = (vec3<f32>(x_1580.x, x_1580.x, x_1580.x) * vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
    let x_1585 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
    let x_1587 : vec3<f32> = u_xlat15;
    let x_1588 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(x_1587, x_1588);
    let x_1590 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1590, 0.0f, 1.0f);
    let x_1592 : f32 = u_xlat46;
    let x_1593 : f32 = u_xlat48;
    u_xlat46 = (x_1592 * x_1593);
    let x_1595 : f32 = u_xlat46;
    let x_1597 : vec4<f32> = u_xlat11;
    let x_1599 : vec3<f32> = (vec3<f32>(x_1595, x_1595, x_1595) * vec3<f32>(x_1597.x, x_1597.y, x_1597.z));
    let x_1600 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1600.w);
    let x_1602 : vec3<f32> = u_xlat9;
    let x_1603 : f32 = u_xlat35;
    let x_1606 : vec3<f32> = u_xlat3;
    u_xlat9 = ((x_1602 * vec3<f32>(x_1603, x_1603, x_1603)) + x_1606);
    let x_1608 : vec3<f32> = u_xlat9;
    let x_1609 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1608, x_1609);
    let x_1611 : f32 = u_xlat46;
    u_xlat46 = max(x_1611, 1.17549435e-37f);
    let x_1613 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_1613);
    let x_1615 : f32 = u_xlat46;
    let x_1617 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1615, x_1615, x_1615) * x_1617);
    let x_1619 : vec3<f32> = u_xlat15;
    let x_1620 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1619, x_1620);
    let x_1622 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1622, 0.0f, 1.0f);
    let x_1624 : vec3<f32> = u_xlat10;
    let x_1625 : vec3<f32> = u_xlat9;
    u_xlat48 = dot(x_1624, x_1625);
    let x_1627 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1627, 0.0f, 1.0f);
    let x_1629 : f32 = u_xlat46;
    let x_1630 : f32 = u_xlat46;
    u_xlat46 = (x_1629 * x_1630);
    let x_1632 : f32 = u_xlat46;
    let x_1634 : f32 = u_xlat0.x;
    u_xlat46 = ((x_1632 * x_1634) + 1.000010014f);
    let x_1637 : f32 = u_xlat48;
    let x_1638 : f32 = u_xlat48;
    u_xlat48 = (x_1637 * x_1638);
    let x_1640 : f32 = u_xlat46;
    let x_1641 : f32 = u_xlat46;
    u_xlat46 = (x_1640 * x_1641);
    let x_1643 : f32 = u_xlat48;
    u_xlat48 = max(x_1643, 0.100000001f);
    let x_1645 : f32 = u_xlat46;
    let x_1646 : f32 = u_xlat48;
    u_xlat46 = (x_1645 * x_1646);
    let x_1648 : f32 = u_xlat45;
    let x_1649 : f32 = u_xlat46;
    u_xlat46 = (x_1648 * x_1649);
    let x_1652 : f32 = u_xlat1.x;
    let x_1653 : f32 = u_xlat46;
    u_xlat46 = (x_1652 / x_1653);
    let x_1655 : vec3<f32> = u_xlat2;
    let x_1656 : f32 = u_xlat46;
    let x_1659 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1655 * vec3<f32>(x_1656, x_1656, x_1656)) + x_1659);
    let x_1661 : vec3<f32> = u_xlat9;
    let x_1662 : vec4<f32> = u_xlat11;
    let x_1665 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1661 * vec3<f32>(x_1662.x, x_1662.y, x_1662.z)) + x_1665);

    continuing {
      let x_1667 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1667 + bitcast<u32>(1i));
    }
  }
  let x_1669 : vec3<f32> = u_xlat4;
  let x_1670 : f32 = u_xlat42;
  let x_1673 : vec3<f32> = u_xlat19;
  let x_1674 : vec3<f32> = ((x_1669 * vec3<f32>(x_1670, x_1670, x_1670)) + x_1673);
  let x_1675 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1674.x, x_1675.y, x_1674.y, x_1674.z);
  let x_1677 : vec3<f32> = u_xlat8;
  let x_1678 : vec4<f32> = u_xlat0;
  let x_1680 : vec3<f32> = (x_1677 + vec3<f32>(x_1678.x, x_1678.z, x_1678.w));
  let x_1681 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1680.x, x_1681.y, x_1680.y, x_1680.z);
  let x_1684 : f32 = u_xlat14.x;
  let x_1686 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1684 * -(x_1686));
  let x_1691 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_1691);
  let x_1694 : vec4<f32> = u_xlat0;
  let x_1698 : vec4<f32> = x_44.unity_FogColor;
  let x_1701 : vec3<f32> = (vec3<f32>(x_1694.x, x_1694.z, x_1694.w) + -(vec3<f32>(x_1698.x, x_1698.y, x_1698.z)));
  let x_1702 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1701.x, x_1702.y, x_1701.y, x_1701.z);
  let x_1706 : vec2<f32> = u_xlat14;
  let x_1708 : vec4<f32> = u_xlat0;
  let x_1712 : vec4<f32> = x_44.unity_FogColor;
  let x_1714 : vec3<f32> = ((vec3<f32>(x_1706.x, x_1706.x, x_1706.x) * vec3<f32>(x_1708.x, x_1708.z, x_1708.w)) + vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
  let x_1715 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1715.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

