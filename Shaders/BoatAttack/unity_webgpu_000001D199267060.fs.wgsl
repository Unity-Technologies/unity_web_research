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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_282 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_436 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_842 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1314 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1416 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlatb15 : vec3<bool>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat28 : f32;
  var x_396 : f32;
  var x_409 : f32;
  var x_420 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu14 : u32;
  var u_xlati14 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : vec2<bool>;
  var u_xlatb31 : bool;
  var x_795 : f32;
  var u_xlat31 : f32;
  var x_925 : f32;
  var x_936 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatu48 : u32;
  var u_xlati49 : i32;
  var u_xlati48 : i32;
  var u_xlati50 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb48 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1709 : f32;
  var x_1722 : f32;
  var x_1774 : f32;
  var x_1785 : vec3<f32>;
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
  let x_100 : vec3<f32> = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat3;
  let x_105 : vec4<f32> = u_xlat3;
  let x_107 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) + vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_111) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat3;
  let x_117 : vec3<f32> = u_xlat4;
  let x_119 : vec3<f32> = ((-(vec3<f32>(x_114.x, x_114.y, x_114.z)) * x_117) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat0;
  let x_124 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_122.x, x_122.y, x_122.z) * x_124);
  let x_126 : vec3<f32> = u_xlat2;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_126 + x_127);
  let x_135 : vec4<f32> = u_xlat0;
  let x_138 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_135.x, x_135.y, x_135.z, x_135.x));
  u_xlatb4 = vec3<bool>(x_138.x, x_138.y, x_138.z);
  let x_143 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_143);
  let x_148 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_148);
  let x_152 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_152);
  let x_156 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_156);
  let x_160 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_160);
  let x_164 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_164);
  let x_167 : vec4<f32> = u_xlat3;
  let x_169 : vec3<f32> = u_xlat4;
  let x_170 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) * x_169);
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec3<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat5;
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_173 * vec3<f32>(x_174.x, x_174.y, x_174.z)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat0;
  let x_183 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_180.x, x_180.y, x_180.z)) + x_183);
  let x_185 : f32 = u_xlat29;
  let x_187 : vec3<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_185, x_185, x_185) * x_187) + vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : f32 = u_xlat0.x;
  u_xlat0.x = (x_193 + -0.150000006f);
  let x_198 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_198);
  let x_202 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_202) + 1.0f);
  let x_206 : vec4<f32> = u_xlat0;
  let x_211 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_206.x, x_206.x, x_206.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_211);
  let x_217 : vec4<f32> = vs_INTERP3;
  let x_220 : f32 = x_44.x_GlobalMipBias.x;
  let x_221 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_217.x, x_217.y), x_220);
  let x_222 : vec3<f32> = vec3<f32>(x_221.x, x_221.y, x_221.w);
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : f32 = u_xlat3.x;
  let x_228 : f32 = u_xlat3.z;
  u_xlat3.x = (x_226 * x_228);
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_233.x, x_233.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_241 : vec2<f32> = u_xlat14;
  let x_242 : vec2<f32> = u_xlat14;
  u_xlat29 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat29;
  u_xlat29 = min(x_244, 1.0f);
  let x_246 : f32 = u_xlat29;
  u_xlat29 = (-(x_246) + 1.0f);
  let x_249 : f32 = u_xlat29;
  u_xlat29 = sqrt(x_249);
  let x_251 : f32 = u_xlat29;
  u_xlat29 = max(x_251, 1.00000002e-16f);
  let x_255 : f32 = u_xlat1.x;
  let x_257 : f32 = u_xlat0.x;
  u_xlat0.x = (x_255 + x_257);
  let x_261 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_261, 0.0f, 1.0f);
  let x_265 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_265, 0.0f);
  let x_269 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_269, 0.850000024f);
  let x_276 : f32 = vs_INTERP2.w;
  u_xlatb15.x = (0.0f < x_276);
  let x_284 : f32 = x_282.unity_WorldTransformParams.w;
  u_xlatb15.z = (x_284 >= 0.0f);
  let x_289 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_289);
  let x_293 : bool = u_xlatb15.z;
  u_xlat15.z = select(-1.0f, 1.0f, x_293);
  let x_297 : f32 = u_xlat15.z;
  let x_299 : f32 = u_xlat15.x;
  u_xlat15.x = (x_297 * x_299);
  let x_304 : vec3<f32> = vs_INTERP1;
  let x_306 : vec4<f32> = vs_INTERP2;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.z, x_304.x, x_304.y) * vec3<f32>(x_306.y, x_306.z, x_306.x));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = vs_INTERP1;
  let x_313 : vec4<f32> = vs_INTERP2;
  let x_316 : vec4<f32> = u_xlat3;
  let x_319 : vec3<f32> = ((vec3<f32>(x_311.y, x_311.z, x_311.x) * vec3<f32>(x_313.z, x_313.x, x_313.y)) + -(vec3<f32>(x_316.x, x_316.y, x_316.z)));
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = u_xlat15;
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec2<f32> = u_xlat14;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec2<f32> = u_xlat14;
  let x_338 : vec4<f32> = vs_INTERP2;
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.x, x_336.x) * vec3<f32>(x_338.x, x_338.y, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : f32 = u_xlat29;
  let x_348 : vec3<f32> = vs_INTERP1;
  let x_350 : vec4<f32> = u_xlat3;
  u_xlat15 = ((vec3<f32>(x_346, x_346, x_346) * x_348) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec3<f32> = u_xlat15;
  let x_354 : vec3<f32> = u_xlat15;
  u_xlat14.x = dot(x_353, x_354);
  let x_358 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_358);
  let x_361 : vec2<f32> = u_xlat14;
  let x_363 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_361.x, x_361.x, x_361.x) * x_363);
  let x_368 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_368 == 0.0f);
  let x_371 : vec3<f32> = vs_INTERP0;
  let x_376 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_377 : vec3<f32> = (-(x_371) + x_376);
  let x_378 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat28 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_386);
  let x_388 : f32 = u_xlat28;
  let x_390 : vec4<f32> = u_xlat3;
  let x_392 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : bool = u_xlatb14;
  if (x_395) {
    let x_400 : f32 = u_xlat3.x;
    x_396 = x_400;
  } else {
    let x_405 : f32 = x_44.unity_MatrixV[0i].z;
    x_396 = x_405;
  }
  let x_406 : f32 = x_396;
  u_xlat4.x = x_406;
  let x_408 : bool = u_xlatb14;
  if (x_408) {
    let x_413 : f32 = u_xlat3.y;
    x_409 = x_413;
  } else {
    let x_416 : f32 = x_44.unity_MatrixV[1i].z;
    x_409 = x_416;
  }
  let x_417 : f32 = x_409;
  u_xlat4.y = x_417;
  let x_419 : bool = u_xlatb14;
  if (x_419) {
    let x_424 : f32 = u_xlat3.z;
    x_420 = x_424;
  } else {
    let x_428 : f32 = x_44.unity_MatrixV[2i].z;
    x_420 = x_428;
  }
  let x_429 : f32 = x_420;
  u_xlat4.z = x_429;
  let x_431 : vec3<f32> = vs_INTERP0;
  let x_438 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres0;
  let x_441 : vec3<f32> = (x_431 + -(vec3<f32>(x_438.x, x_438.y, x_438.z)));
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec3<f32> = vs_INTERP0;
  let x_446 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres1;
  let x_449 : vec3<f32> = (x_444 + -(vec3<f32>(x_446.x, x_446.y, x_446.z)));
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : vec3<f32> = vs_INTERP0;
  let x_455 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres2;
  let x_458 : vec3<f32> = (x_453 + -(vec3<f32>(x_455.x, x_455.y, x_455.z)));
  let x_459 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_462 : vec3<f32> = vs_INTERP0;
  let x_464 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_462 + -(vec3<f32>(x_464.x, x_464.y, x_464.z)));
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_474 : vec4<f32> = u_xlat5;
  let x_476 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_474.x, x_474.y, x_474.z), vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_480 : vec4<f32> = u_xlat6;
  let x_482 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_480.x, x_480.y, x_480.z), vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_486 : vec3<f32> = u_xlat7;
  let x_487 : vec3<f32> = u_xlat7;
  u_xlat3.w = dot(x_486, x_487);
  let x_492 : vec4<f32> = u_xlat3;
  let x_495 : vec4<f32> = x_436.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_492 < x_495);
  let x_498 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_498);
  let x_502 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_502);
  let x_506 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_506);
  let x_510 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_510);
  let x_514 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_514);
  let x_519 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_519);
  let x_523 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_523);
  let x_526 : vec4<f32> = u_xlat3;
  let x_528 : vec4<f32> = u_xlat5;
  let x_530 : vec3<f32> = (vec3<f32>(x_526.x, x_526.y, x_526.z) + vec3<f32>(x_528.y, x_528.z, x_528.w));
  let x_531 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat3;
  let x_536 : vec3<f32> = max(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_537 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_537.x, x_536.x, x_536.y, x_536.z);
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(x_539, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_546 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_546) + 4.0f);
  let x_553 : f32 = u_xlat14.x;
  u_xlatu14 = u32(x_553);
  let x_557 : u32 = u_xlatu14;
  u_xlati14 = (bitcast<i32>(x_557) << bitcast<u32>(2i));
  let x_560 : vec3<f32> = vs_INTERP0;
  let x_562 : i32 = u_xlati14;
  let x_565 : i32 = u_xlati14;
  let x_569 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_562 + 1i) / 4i)][((x_565 + 1i) % 4i)];
  let x_571 : vec3<f32> = (vec3<f32>(x_560.y, x_560.y, x_560.y) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : i32 = u_xlati14;
  let x_576 : i32 = u_xlati14;
  let x_579 : vec4<f32> = x_436.x_MainLightWorldToShadow[(x_574 / 4i)][(x_576 % 4i)];
  let x_581 : vec3<f32> = vs_INTERP0;
  let x_584 : vec4<f32> = u_xlat3;
  let x_586 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.y, x_579.z) * vec3<f32>(x_581.x, x_581.x, x_581.x)) + vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_589 : i32 = u_xlati14;
  let x_592 : i32 = u_xlati14;
  let x_596 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_589 + 2i) / 4i)][((x_592 + 2i) % 4i)];
  let x_598 : vec3<f32> = vs_INTERP0;
  let x_601 : vec4<f32> = u_xlat3;
  let x_603 : vec3<f32> = ((vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(x_598.z, x_598.z, x_598.z)) + vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat3;
  let x_608 : i32 = u_xlati14;
  let x_611 : i32 = u_xlati14;
  let x_615 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_608 + 3i) / 4i)][((x_611 + 3i) % 4i)];
  let x_617 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) + vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_627 : vec2<f32> = vs_INTERP4;
  let x_629 : f32 = x_44.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_627, x_629);
  let x_631 : vec3<f32> = vec3<f32>(x_630.x, x_630.y, x_630.z);
  let x_632 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_636 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_637 : vec2<f32> = vec2<f32>(x_636.x, x_636.y);
  u_xlat14 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_637.x, x_637.y));
  let x_642 : vec2<f32> = u_xlat14;
  let x_643 : vec4<f32> = hlslcc_FragCoord;
  let x_645 : vec2<f32> = (x_642 * vec2<f32>(x_643.x, x_643.y));
  let x_646 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
  let x_649 : f32 = u_xlat6.y;
  let x_652 : f32 = x_44.x_ScaleBiasRt.x;
  let x_655 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_649 * x_652) + x_655);
  let x_659 : f32 = u_xlat14.x;
  u_xlat6.z = (-(x_659) + 1.0f);
  let x_664 : f32 = u_xlat0.x;
  u_xlat14.x = ((-(x_664) * 0.959999979f) + 0.959999979f);
  let x_671 : f32 = u_xlat14.x;
  let x_674 : f32 = u_xlat1.x;
  u_xlat28 = (-(x_671) + x_674);
  let x_676 : vec2<f32> = u_xlat14;
  let x_678 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_676.x, x_676.x, x_676.x) * x_678);
  let x_680 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_680 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_684.x, x_684.x, x_684.x) * x_686) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_692 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_692) + 1.0f);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = u_xlat0.x;
  u_xlat14.x = (x_697 * x_699);
  let x_703 : f32 = u_xlat14.x;
  let x_705 : f32 = u_xlat14.x;
  u_xlat1.x = (x_703 * x_705);
  let x_708 : f32 = u_xlat28;
  u_xlat28 = (x_708 + 1.0f);
  let x_710 : f32 = u_xlat28;
  u_xlat28 = min(x_710, 1.0f);
  let x_714 : f32 = u_xlat14.x;
  u_xlat44 = ((x_714 * 4.0f) + 2.0f);
  let x_723 : vec4<f32> = u_xlat6;
  let x_726 : f32 = x_44.x_GlobalMipBias.x;
  let x_727 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_723.x, x_723.z), x_726);
  u_xlat45 = x_727.x;
  let x_730 : f32 = u_xlat45;
  u_xlat46 = (x_730 + -1.0f);
  let x_733 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_734 : f32 = u_xlat46;
  u_xlat46 = ((x_733 * x_734) + 1.0f);
  let x_739 : f32 = u_xlat0.w;
  let x_740 : f32 = u_xlat45;
  u_xlat42 = min(x_739, x_740);
  let x_743 : vec4<f32> = u_xlat3;
  let x_744 : vec2<f32> = vec2<f32>(x_743.x, x_743.y);
  let x_746 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_744.x, x_744.y, x_746);
  let x_758 : vec3<f32> = txVec0;
  let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_758.xy, x_758.z);
  u_xlat3.x = x_760;
  let x_764 : f32 = x_436.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_764) + 1.0f);
  let x_769 : f32 = u_xlat3.x;
  let x_771 : f32 = x_436.x_MainLightShadowParams.x;
  let x_774 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_769 * x_771) + x_774);
  let x_781 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_781);
  let x_786 : f32 = u_xlat3.z;
  u_xlatb31 = (x_786 >= 1.0f);
  let x_788 : bool = u_xlatb31;
  let x_790 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_788 | x_790);
  let x_794 : bool = u_xlatb17.x;
  if (x_794) {
    x_795 = 1.0f;
  } else {
    let x_800 : f32 = u_xlat3.x;
    x_795 = x_800;
  }
  let x_801 : f32 = x_795;
  u_xlat3.x = x_801;
  let x_803 : vec3<f32> = vs_INTERP0;
  let x_805 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_803 + -(x_805));
  let x_808 : vec3<f32> = u_xlat17;
  let x_809 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_808, x_809);
  let x_813 : f32 = u_xlat17.x;
  let x_815 : f32 = x_436.x_MainLightShadowParams.z;
  let x_818 : f32 = x_436.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_813 * x_815) + x_818);
  let x_822 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_822, 0.0f, 1.0f);
  let x_827 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_827) + 1.0f);
  let x_831 : f32 = u_xlat17.x;
  let x_832 : f32 = u_xlat31;
  let x_835 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_831 * x_832) + x_835);
  let x_844 : f32 = x_842.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_844 == -1.0f));
  let x_848 : bool = u_xlatb17.x;
  if (x_848) {
    let x_851 : vec3<f32> = vs_INTERP0;
    let x_854 : vec4<f32> = x_842.x_MainLightWorldToLight[1i];
    let x_856 : vec2<f32> = (vec2<f32>(x_851.y, x_851.y) * vec2<f32>(x_854.x, x_854.y));
    let x_857 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_856.x, x_856.y, x_857.z);
    let x_860 : vec4<f32> = x_842.x_MainLightWorldToLight[0i];
    let x_862 : vec3<f32> = vs_INTERP0;
    let x_865 : vec3<f32> = u_xlat17;
    let x_867 : vec2<f32> = ((vec2<f32>(x_860.x, x_860.y) * vec2<f32>(x_862.x, x_862.x)) + vec2<f32>(x_865.x, x_865.y));
    let x_868 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_867.x, x_867.y, x_868.z);
    let x_871 : vec4<f32> = x_842.x_MainLightWorldToLight[2i];
    let x_873 : vec3<f32> = vs_INTERP0;
    let x_876 : vec3<f32> = u_xlat17;
    let x_878 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.y) * vec2<f32>(x_873.z, x_873.z)) + vec2<f32>(x_876.x, x_876.y));
    let x_879 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_878.x, x_878.y, x_879.z);
    let x_881 : vec3<f32> = u_xlat17;
    let x_884 : vec4<f32> = x_842.x_MainLightWorldToLight[3i];
    let x_886 : vec2<f32> = (vec2<f32>(x_881.x, x_881.y) + vec2<f32>(x_884.x, x_884.y));
    let x_887 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_886.x, x_886.y, x_887.z);
    let x_889 : vec3<f32> = u_xlat17;
    let x_893 : vec2<f32> = ((vec2<f32>(x_889.x, x_889.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_894 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_893.x, x_893.y, x_894.z);
    let x_901 : vec3<f32> = u_xlat17;
    let x_904 : f32 = x_44.x_GlobalMipBias.x;
    let x_905 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_901.x, x_901.y), x_904);
    u_xlat6 = x_905;
    let x_907 : f32 = x_842.x_MainLightCookieTextureFormat;
    let x_909 : f32 = x_842.x_MainLightCookieTextureFormat;
    let x_911 : f32 = x_842.x_MainLightCookieTextureFormat;
    let x_913 : f32 = x_842.x_MainLightCookieTextureFormat;
    let x_914 : vec4<f32> = vec4<f32>(x_907, x_909, x_911, x_913);
    let x_921 : vec4<bool> = (vec4<f32>(x_914.x, x_914.y, x_914.z, x_914.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_921.x, x_921.y);
    let x_924 : bool = u_xlatb17.y;
    if (x_924) {
      let x_929 : f32 = u_xlat6.w;
      x_925 = x_929;
    } else {
      let x_932 : f32 = u_xlat6.x;
      x_925 = x_932;
    }
    let x_933 : f32 = x_925;
    u_xlat31 = x_933;
    let x_935 : bool = u_xlatb17.x;
    if (x_935) {
      let x_939 : vec4<f32> = u_xlat6;
      x_936 = vec3<f32>(x_939.x, x_939.y, x_939.z);
    } else {
      let x_942 : f32 = u_xlat31;
      x_936 = vec3<f32>(x_942, x_942, x_942);
    }
    let x_944 : vec3<f32> = x_936;
    u_xlat17 = x_944;
  } else {
    u_xlat17.x = 1.0f;
    u_xlat17.y = 1.0f;
    u_xlat17.z = 1.0f;
  }
  let x_949 : vec3<f32> = u_xlat17;
  let x_951 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (x_949 * vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : f32 = u_xlat46;
  let x_956 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_954, x_954, x_954) * x_956);
  let x_959 : vec3<f32> = u_xlat4;
  let x_961 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(-(x_959), x_961);
  let x_963 : f32 = u_xlat47;
  let x_964 : f32 = u_xlat47;
  u_xlat47 = (x_963 + x_964);
  let x_966 : vec3<f32> = u_xlat15;
  let x_967 : f32 = u_xlat47;
  let x_971 : vec3<f32> = u_xlat4;
  let x_973 : vec3<f32> = ((x_966 * -(vec3<f32>(x_967, x_967, x_967))) + -(x_971));
  let x_974 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec3<f32> = u_xlat15;
  let x_977 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(x_976, x_977);
  let x_979 : f32 = u_xlat47;
  u_xlat47 = clamp(x_979, 0.0f, 1.0f);
  let x_981 : f32 = u_xlat47;
  u_xlat47 = (-(x_981) + 1.0f);
  let x_984 : f32 = u_xlat47;
  let x_985 : f32 = u_xlat47;
  u_xlat47 = (x_984 * x_985);
  let x_987 : f32 = u_xlat47;
  let x_988 : f32 = u_xlat47;
  u_xlat47 = (x_987 * x_988);
  let x_992 : f32 = u_xlat0.x;
  u_xlat48 = ((-(x_992) * 0.699999988f) + 1.700000048f);
  let x_999 : f32 = u_xlat0.x;
  let x_1000 : f32 = u_xlat48;
  u_xlat0.x = (x_999 * x_1000);
  let x_1004 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1004 * 6.0f);
  let x_1016 : vec4<f32> = u_xlat6;
  let x_1019 : f32 = u_xlat0.x;
  let x_1020 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1016.x, x_1016.y, x_1016.z), x_1019);
  u_xlat6 = x_1020;
  let x_1022 : f32 = u_xlat6.w;
  u_xlat0.x = (x_1022 + -1.0f);
  let x_1026 : f32 = x_282.unity_SpecCube0_HDR.w;
  let x_1028 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1026 * x_1028) + 1.0f);
  let x_1033 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1033, 0.0f);
  let x_1037 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1037);
  let x_1041 : f32 = u_xlat0.x;
  let x_1043 : f32 = x_282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1041 * x_1043);
  let x_1047 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1047);
  let x_1051 : f32 = u_xlat0.x;
  let x_1053 : f32 = x_282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1051 * x_1053);
  let x_1056 : vec4<f32> = u_xlat6;
  let x_1058 : vec4<f32> = u_xlat0;
  let x_1060 : vec3<f32> = (vec3<f32>(x_1056.x, x_1056.y, x_1056.z) * vec3<f32>(x_1058.x, x_1058.x, x_1058.x));
  let x_1061 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec2<f32> = u_xlat14;
  let x_1065 : vec2<f32> = u_xlat14;
  let x_1069 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.x) * vec2<f32>(x_1065.x, x_1065.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1070 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
  let x_1073 : f32 = u_xlat0.y;
  u_xlat14.x = (1.0f / x_1073);
  let x_1077 : vec3<f32> = u_xlat2;
  let x_1079 : f32 = u_xlat28;
  u_xlat8 = (-(x_1077) + vec3<f32>(x_1079, x_1079, x_1079));
  let x_1082 : f32 = u_xlat47;
  let x_1084 : vec3<f32> = u_xlat8;
  let x_1086 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_1082, x_1082, x_1082) * x_1084) + x_1086);
  let x_1088 : vec2<f32> = u_xlat14;
  let x_1090 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_1088.x, x_1088.x, x_1088.x) * x_1090);
  let x_1092 : vec4<f32> = u_xlat6;
  let x_1094 : vec3<f32> = u_xlat8;
  let x_1095 : vec3<f32> = (vec3<f32>(x_1092.x, x_1092.y, x_1092.z) * x_1094);
  let x_1096 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1098 : vec4<f32> = u_xlat5;
  let x_1100 : vec3<f32> = u_xlat7;
  let x_1102 : vec4<f32> = u_xlat6;
  let x_1104 : vec3<f32> = ((vec3<f32>(x_1098.x, x_1098.y, x_1098.z) * x_1100) + vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1108 : f32 = u_xlat3.x;
  let x_1110 : f32 = x_282.unity_LightData.z;
  u_xlat14.x = (x_1108 * x_1110);
  let x_1113 : vec3<f32> = u_xlat15;
  let x_1115 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat28 = dot(x_1113, vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1118, 0.0f, 1.0f);
  let x_1120 : f32 = u_xlat28;
  let x_1122 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1120 * x_1122);
  let x_1125 : vec2<f32> = u_xlat14;
  let x_1127 : vec3<f32> = u_xlat17;
  let x_1128 : vec3<f32> = (vec3<f32>(x_1125.x, x_1125.x, x_1125.x) * x_1127);
  let x_1129 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1131 : vec3<f32> = u_xlat4;
  let x_1133 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1135 : vec3<f32> = (x_1131 + vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat6;
  let x_1140 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1145 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1145, 1.17549435e-37f);
  let x_1150 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_1150);
  let x_1153 : vec2<f32> = u_xlat14;
  let x_1155 : vec4<f32> = u_xlat6;
  let x_1157 : vec3<f32> = (vec3<f32>(x_1153.x, x_1153.x, x_1153.x) * vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1158 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : vec3<f32> = u_xlat15;
  let x_1161 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(x_1160, vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1166 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1166, 0.0f, 1.0f);
  let x_1170 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1172 : vec4<f32> = u_xlat6;
  u_xlat14.y = dot(vec3<f32>(x_1170.x, x_1170.y, x_1170.z), vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
  let x_1177 : f32 = u_xlat14.y;
  u_xlat14.y = clamp(x_1177, 0.0f, 1.0f);
  let x_1180 : vec2<f32> = u_xlat14;
  let x_1181 : vec2<f32> = u_xlat14;
  u_xlat14 = (x_1180 * x_1181);
  let x_1184 : f32 = u_xlat14.x;
  let x_1186 : f32 = u_xlat0.x;
  u_xlat14.x = ((x_1184 * x_1186) + 1.000010014f);
  let x_1192 : f32 = u_xlat14.x;
  let x_1194 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1192 * x_1194);
  let x_1198 : f32 = u_xlat14.y;
  u_xlat28 = max(x_1198, 0.100000001f);
  let x_1201 : f32 = u_xlat28;
  let x_1203 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1201 * x_1203);
  let x_1206 : f32 = u_xlat44;
  let x_1208 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1206 * x_1208);
  let x_1212 : f32 = u_xlat1.x;
  let x_1214 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1212 / x_1214);
  let x_1217 : vec3<f32> = u_xlat2;
  let x_1218 : vec2<f32> = u_xlat14;
  let x_1221 : vec3<f32> = u_xlat7;
  let x_1222 : vec3<f32> = ((x_1217 * vec3<f32>(x_1218.x, x_1218.x, x_1218.x)) + x_1221);
  let x_1223 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1225 : vec4<f32> = u_xlat3;
  let x_1227 : vec4<f32> = u_xlat6;
  let x_1229 : vec3<f32> = (vec3<f32>(x_1225.x, x_1225.y, x_1225.z) * vec3<f32>(x_1227.x, x_1227.y, x_1227.z));
  let x_1230 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
  let x_1233 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1235 : f32 = x_282.unity_LightData.y;
  u_xlat14.x = min(x_1233, x_1235);
  let x_1239 : f32 = u_xlat14.x;
  u_xlatu14 = bitcast<u32>(i32(x_1239));
  let x_1244 : f32 = x_842.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1246 : f32 = x_842.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1248 : f32 = x_842.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1250 : f32 = x_842.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1251 : vec4<f32> = vec4<f32>(x_1244, x_1246, x_1248, x_1250);
  let x_1257 : vec4<bool> = (vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1251.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1257.x, x_1257.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1268 : u32 = u_xlatu_loop_1;
    let x_1269 : u32 = u_xlatu14;
    if ((x_1268 < x_1269)) {
    } else {
      break;
    }
    let x_1272 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1272 >> 2u);
    let x_1275 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1275 & 3u));
    let x_1278 : u32 = u_xlatu45;
    let x_1281 : vec4<f32> = x_282.unity_LightIndices[bitcast<i32>(x_1278)];
    let x_1291 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1296 : vec4<u32> = indexable[x_1291];
    u_xlat45 = dot(x_1281, bitcast<vec4<f32>>(x_1296));
    let x_1299 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1299));
    let x_1303 : vec3<f32> = vs_INTERP0;
    let x_1315 : u32 = u_xlatu45;
    let x_1318 : vec4<f32> = x_1314.x_AdditionalLightsPosition[bitcast<i32>(x_1315)];
    let x_1321 : u32 = u_xlatu45;
    let x_1324 : vec4<f32> = x_1314.x_AdditionalLightsPosition[bitcast<i32>(x_1321)];
    u_xlat9 = ((-(x_1303) * vec3<f32>(x_1318.w, x_1318.w, x_1318.w)) + vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
    let x_1327 : vec3<f32> = u_xlat9;
    let x_1328 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1327, x_1328);
    let x_1330 : f32 = u_xlat47;
    u_xlat47 = max(x_1330, 6.10351562e-05f);
    let x_1334 : f32 = u_xlat47;
    u_xlat34 = inverseSqrt(x_1334);
    let x_1337 : f32 = u_xlat34;
    let x_1339 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1337, x_1337, x_1337) * x_1339);
    let x_1341 : f32 = u_xlat47;
    u_xlat48 = (1.0f / x_1341);
    let x_1343 : f32 = u_xlat47;
    let x_1344 : u32 = u_xlatu45;
    let x_1347 : f32 = x_1314.x_AdditionalLightsAttenuation[bitcast<i32>(x_1344)].x;
    u_xlat47 = (x_1343 * x_1347);
    let x_1349 : f32 = u_xlat47;
    let x_1351 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1349) * x_1351) + 1.0f);
    let x_1354 : f32 = u_xlat47;
    u_xlat47 = max(x_1354, 0.0f);
    let x_1356 : f32 = u_xlat47;
    let x_1357 : f32 = u_xlat47;
    u_xlat47 = (x_1356 * x_1357);
    let x_1359 : f32 = u_xlat47;
    let x_1360 : f32 = u_xlat48;
    u_xlat47 = (x_1359 * x_1360);
    let x_1362 : u32 = u_xlatu45;
    let x_1365 : vec4<f32> = x_1314.x_AdditionalLightsSpotDir[bitcast<i32>(x_1362)];
    let x_1367 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1365.x, x_1365.y, x_1365.z), x_1367);
    let x_1369 : f32 = u_xlat48;
    let x_1370 : u32 = u_xlatu45;
    let x_1373 : f32 = x_1314.x_AdditionalLightsAttenuation[bitcast<i32>(x_1370)].z;
    let x_1375 : u32 = u_xlatu45;
    let x_1378 : f32 = x_1314.x_AdditionalLightsAttenuation[bitcast<i32>(x_1375)].w;
    u_xlat48 = ((x_1369 * x_1373) + x_1378);
    let x_1380 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1380, 0.0f, 1.0f);
    let x_1382 : f32 = u_xlat48;
    let x_1383 : f32 = u_xlat48;
    u_xlat48 = (x_1382 * x_1383);
    let x_1385 : f32 = u_xlat47;
    let x_1386 : f32 = u_xlat48;
    u_xlat47 = (x_1385 * x_1386);
    let x_1389 : u32 = u_xlatu45;
    u_xlatu48 = (x_1389 >> 5u);
    let x_1392 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1392) & 31i)));
    let x_1398 : i32 = u_xlati49;
    let x_1400 : u32 = u_xlatu48;
    let x_1403 : f32 = x_842.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1400)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_1398) & bitcast<u32>(x_1403)));
    let x_1407 : i32 = u_xlati48;
    if ((x_1407 != 0i)) {
      let x_1417 : u32 = u_xlatu45;
      let x_1420 : f32 = x_1416.x_AdditionalLightsLightTypes[bitcast<i32>(x_1417)].el;
      u_xlati48 = i32(x_1420);
      let x_1422 : i32 = u_xlati48;
      u_xlati49 = select(1i, 0i, (x_1422 != 0i));
      let x_1426 : u32 = u_xlatu45;
      u_xlati50 = (bitcast<i32>(x_1426) << bitcast<u32>(2i));
      let x_1429 : i32 = u_xlati49;
      if ((x_1429 != 0i)) {
        let x_1434 : vec3<f32> = vs_INTERP0;
        let x_1436 : i32 = u_xlati50;
        let x_1439 : i32 = u_xlati50;
        let x_1443 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[((x_1436 + 1i) / 4i)][((x_1439 + 1i) % 4i)];
        let x_1445 : vec3<f32> = (vec3<f32>(x_1434.y, x_1434.y, x_1434.y) * vec3<f32>(x_1443.x, x_1443.y, x_1443.w));
        let x_1446 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
        let x_1448 : i32 = u_xlati50;
        let x_1450 : i32 = u_xlati50;
        let x_1453 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[(x_1448 / 4i)][(x_1450 % 4i)];
        let x_1455 : vec3<f32> = vs_INTERP0;
        let x_1458 : vec4<f32> = u_xlat11;
        let x_1460 : vec3<f32> = ((vec3<f32>(x_1453.x, x_1453.y, x_1453.w) * vec3<f32>(x_1455.x, x_1455.x, x_1455.x)) + vec3<f32>(x_1458.x, x_1458.y, x_1458.z));
        let x_1461 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1460.x, x_1460.y, x_1460.z, x_1461.w);
        let x_1463 : i32 = u_xlati50;
        let x_1466 : i32 = u_xlati50;
        let x_1470 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[((x_1463 + 2i) / 4i)][((x_1466 + 2i) % 4i)];
        let x_1472 : vec3<f32> = vs_INTERP0;
        let x_1475 : vec4<f32> = u_xlat11;
        let x_1477 : vec3<f32> = ((vec3<f32>(x_1470.x, x_1470.y, x_1470.w) * vec3<f32>(x_1472.z, x_1472.z, x_1472.z)) + vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
        let x_1478 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1478.w);
        let x_1480 : vec4<f32> = u_xlat11;
        let x_1482 : i32 = u_xlati50;
        let x_1485 : i32 = u_xlati50;
        let x_1489 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[((x_1482 + 3i) / 4i)][((x_1485 + 3i) % 4i)];
        let x_1491 : vec3<f32> = (vec3<f32>(x_1480.x, x_1480.y, x_1480.z) + vec3<f32>(x_1489.x, x_1489.y, x_1489.w));
        let x_1492 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1491.x, x_1491.y, x_1491.z, x_1492.w);
        let x_1494 : vec4<f32> = u_xlat11;
        let x_1496 : vec4<f32> = u_xlat11;
        let x_1498 : vec2<f32> = (vec2<f32>(x_1494.x, x_1494.y) / vec2<f32>(x_1496.z, x_1496.z));
        let x_1499 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1498.x, x_1498.y, x_1499.z, x_1499.w);
        let x_1501 : vec4<f32> = u_xlat11;
        let x_1504 : vec2<f32> = ((vec2<f32>(x_1501.x, x_1501.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1505 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1504.x, x_1504.y, x_1505.z, x_1505.w);
        let x_1507 : vec4<f32> = u_xlat11;
        let x_1511 : vec2<f32> = clamp(vec2<f32>(x_1507.x, x_1507.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1512 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1511.x, x_1511.y, x_1512.z, x_1512.w);
        let x_1514 : u32 = u_xlatu45;
        let x_1517 : vec4<f32> = x_1416.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1514)];
        let x_1519 : vec4<f32> = u_xlat11;
        let x_1522 : u32 = u_xlatu45;
        let x_1525 : vec4<f32> = x_1416.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1522)];
        let x_1527 : vec2<f32> = ((vec2<f32>(x_1517.x, x_1517.y) * vec2<f32>(x_1519.x, x_1519.y)) + vec2<f32>(x_1525.z, x_1525.w));
        let x_1528 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1527.x, x_1527.y, x_1528.z, x_1528.w);
      } else {
        let x_1532 : i32 = u_xlati48;
        u_xlatb48 = (x_1532 == 1i);
        let x_1534 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1534);
        let x_1536 : i32 = u_xlati48;
        if ((x_1536 != 0i)) {
          let x_1541 : vec3<f32> = vs_INTERP0;
          let x_1543 : i32 = u_xlati50;
          let x_1546 : i32 = u_xlati50;
          let x_1550 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[((x_1543 + 1i) / 4i)][((x_1546 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1541.y, x_1541.y) * vec2<f32>(x_1550.x, x_1550.y));
          let x_1553 : i32 = u_xlati50;
          let x_1555 : i32 = u_xlati50;
          let x_1558 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[(x_1553 / 4i)][(x_1555 % 4i)];
          let x_1560 : vec3<f32> = vs_INTERP0;
          let x_1563 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1558.x, x_1558.y) * vec2<f32>(x_1560.x, x_1560.x)) + x_1563);
          let x_1565 : i32 = u_xlati50;
          let x_1568 : i32 = u_xlati50;
          let x_1572 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[((x_1565 + 2i) / 4i)][((x_1568 + 2i) % 4i)];
          let x_1574 : vec3<f32> = vs_INTERP0;
          let x_1577 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1572.x, x_1572.y) * vec2<f32>(x_1574.z, x_1574.z)) + x_1577);
          let x_1579 : vec2<f32> = u_xlat39;
          let x_1580 : i32 = u_xlati50;
          let x_1583 : i32 = u_xlati50;
          let x_1587 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[((x_1580 + 3i) / 4i)][((x_1583 + 3i) % 4i)];
          u_xlat39 = (x_1579 + vec2<f32>(x_1587.x, x_1587.y));
          let x_1590 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1590 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1593 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1593);
          let x_1595 : u32 = u_xlatu45;
          let x_1598 : vec4<f32> = x_1416.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1595)];
          let x_1600 : vec2<f32> = u_xlat39;
          let x_1602 : u32 = u_xlatu45;
          let x_1605 : vec4<f32> = x_1416.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1602)];
          let x_1607 : vec2<f32> = ((vec2<f32>(x_1598.x, x_1598.y) * x_1600) + vec2<f32>(x_1605.z, x_1605.w));
          let x_1608 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1607.x, x_1607.y, x_1608.z, x_1608.w);
        } else {
          let x_1612 : vec3<f32> = vs_INTERP0;
          let x_1614 : i32 = u_xlati50;
          let x_1617 : i32 = u_xlati50;
          let x_1621 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[((x_1614 + 1i) / 4i)][((x_1617 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1612.y, x_1612.y, x_1612.y, x_1612.y) * x_1621);
          let x_1623 : i32 = u_xlati50;
          let x_1625 : i32 = u_xlati50;
          let x_1628 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[(x_1623 / 4i)][(x_1625 % 4i)];
          let x_1629 : vec3<f32> = vs_INTERP0;
          let x_1632 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1628 * vec4<f32>(x_1629.x, x_1629.x, x_1629.x, x_1629.x)) + x_1632);
          let x_1634 : i32 = u_xlati50;
          let x_1637 : i32 = u_xlati50;
          let x_1641 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[((x_1634 + 2i) / 4i)][((x_1637 + 2i) % 4i)];
          let x_1642 : vec3<f32> = vs_INTERP0;
          let x_1645 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1641 * vec4<f32>(x_1642.z, x_1642.z, x_1642.z, x_1642.z)) + x_1645);
          let x_1647 : vec4<f32> = u_xlat12;
          let x_1648 : i32 = u_xlati50;
          let x_1651 : i32 = u_xlati50;
          let x_1655 : vec4<f32> = x_1416.x_AdditionalLightsWorldToLights[((x_1648 + 3i) / 4i)][((x_1651 + 3i) % 4i)];
          u_xlat12 = (x_1647 + x_1655);
          let x_1657 : vec4<f32> = u_xlat12;
          let x_1659 : vec4<f32> = u_xlat12;
          let x_1661 : vec3<f32> = (vec3<f32>(x_1657.x, x_1657.y, x_1657.z) / vec3<f32>(x_1659.w, x_1659.w, x_1659.w));
          let x_1662 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1661.x, x_1661.y, x_1661.z, x_1662.w);
          let x_1664 : vec4<f32> = u_xlat12;
          let x_1666 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(vec3<f32>(x_1664.x, x_1664.y, x_1664.z), vec3<f32>(x_1666.x, x_1666.y, x_1666.z));
          let x_1669 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1669);
          let x_1671 : f32 = u_xlat48;
          let x_1673 : vec4<f32> = u_xlat12;
          let x_1675 : vec3<f32> = (vec3<f32>(x_1671, x_1671, x_1671) * vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
          let x_1676 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
          let x_1678 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(abs(vec3<f32>(x_1678.x, x_1678.y, x_1678.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1682 : f32 = u_xlat48;
          u_xlat48 = max(x_1682, 0.000001f);
          let x_1685 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1685);
          let x_1688 : f32 = u_xlat48;
          let x_1690 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1688, x_1688, x_1688) * vec3<f32>(x_1690.z, x_1690.x, x_1690.y));
          let x_1694 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1694);
          let x_1698 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1698, 0.0f, 1.0f);
          let x_1702 : vec3<f32> = u_xlat13;
          let x_1705 : vec4<bool> = (vec4<f32>(x_1702.y, x_1702.z, x_1702.y, x_1702.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1705.x, x_1705.y);
          let x_1708 : bool = u_xlatb39.x;
          if (x_1708) {
            let x_1713 : f32 = u_xlat13.x;
            x_1709 = x_1713;
          } else {
            let x_1716 : f32 = u_xlat13.x;
            x_1709 = -(x_1716);
          }
          let x_1718 : f32 = x_1709;
          u_xlat39.x = x_1718;
          let x_1721 : bool = u_xlatb39.y;
          if (x_1721) {
            let x_1726 : f32 = u_xlat13.x;
            x_1722 = x_1726;
          } else {
            let x_1729 : f32 = u_xlat13.x;
            x_1722 = -(x_1729);
          }
          let x_1731 : f32 = x_1722;
          u_xlat39.y = x_1731;
          let x_1733 : vec4<f32> = u_xlat12;
          let x_1735 : f32 = u_xlat48;
          let x_1738 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1733.x, x_1733.y) * vec2<f32>(x_1735, x_1735)) + x_1738);
          let x_1740 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1740 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1743 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1743, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1747 : u32 = u_xlatu45;
          let x_1750 : vec4<f32> = x_1416.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1747)];
          let x_1752 : vec2<f32> = u_xlat39;
          let x_1754 : u32 = u_xlatu45;
          let x_1757 : vec4<f32> = x_1416.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1754)];
          let x_1759 : vec2<f32> = ((vec2<f32>(x_1750.x, x_1750.y) * x_1752) + vec2<f32>(x_1757.z, x_1757.w));
          let x_1760 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1759.x, x_1759.y, x_1760.z, x_1760.w);
        }
      }
      let x_1767 : vec4<f32> = u_xlat11;
      let x_1770 : f32 = x_44.x_GlobalMipBias.x;
      let x_1771 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1767.x, x_1767.y), x_1770);
      u_xlat11 = x_1771;
      let x_1773 : bool = u_xlatb6.y;
      if (x_1773) {
        let x_1778 : f32 = u_xlat11.w;
        x_1774 = x_1778;
      } else {
        let x_1781 : f32 = u_xlat11.x;
        x_1774 = x_1781;
      }
      let x_1782 : f32 = x_1774;
      u_xlat48 = x_1782;
      let x_1784 : bool = u_xlatb6.x;
      if (x_1784) {
        let x_1788 : vec4<f32> = u_xlat11;
        x_1785 = vec3<f32>(x_1788.x, x_1788.y, x_1788.z);
      } else {
        let x_1791 : f32 = u_xlat48;
        x_1785 = vec3<f32>(x_1791, x_1791, x_1791);
      }
      let x_1793 : vec3<f32> = x_1785;
      let x_1794 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1794.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1800 : vec4<f32> = u_xlat11;
    let x_1802 : u32 = u_xlatu45;
    let x_1805 : vec4<f32> = x_1314.x_AdditionalLightsColor[bitcast<i32>(x_1802)];
    let x_1807 : vec3<f32> = (vec3<f32>(x_1800.x, x_1800.y, x_1800.z) * vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
    let x_1808 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
    let x_1810 : f32 = u_xlat46;
    let x_1812 : vec4<f32> = u_xlat11;
    let x_1814 : vec3<f32> = (vec3<f32>(x_1810, x_1810, x_1810) * vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
    let x_1815 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
    let x_1817 : vec3<f32> = u_xlat15;
    let x_1818 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1817, x_1818);
    let x_1820 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1820, 0.0f, 1.0f);
    let x_1822 : f32 = u_xlat45;
    let x_1823 : f32 = u_xlat47;
    u_xlat45 = (x_1822 * x_1823);
    let x_1825 : f32 = u_xlat45;
    let x_1827 : vec4<f32> = u_xlat11;
    let x_1829 : vec3<f32> = (vec3<f32>(x_1825, x_1825, x_1825) * vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
    let x_1830 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
    let x_1832 : vec3<f32> = u_xlat9;
    let x_1833 : f32 = u_xlat34;
    let x_1836 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1832 * vec3<f32>(x_1833, x_1833, x_1833)) + x_1836);
    let x_1838 : vec3<f32> = u_xlat9;
    let x_1839 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1838, x_1839);
    let x_1841 : f32 = u_xlat45;
    u_xlat45 = max(x_1841, 1.17549435e-37f);
    let x_1843 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1843);
    let x_1845 : f32 = u_xlat45;
    let x_1847 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1845, x_1845, x_1845) * x_1847);
    let x_1849 : vec3<f32> = u_xlat15;
    let x_1850 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1849, x_1850);
    let x_1852 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1852, 0.0f, 1.0f);
    let x_1854 : vec3<f32> = u_xlat10;
    let x_1855 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1854, x_1855);
    let x_1857 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1857, 0.0f, 1.0f);
    let x_1859 : f32 = u_xlat45;
    let x_1860 : f32 = u_xlat45;
    u_xlat45 = (x_1859 * x_1860);
    let x_1862 : f32 = u_xlat45;
    let x_1864 : f32 = u_xlat0.x;
    u_xlat45 = ((x_1862 * x_1864) + 1.000010014f);
    let x_1867 : f32 = u_xlat47;
    let x_1868 : f32 = u_xlat47;
    u_xlat47 = (x_1867 * x_1868);
    let x_1870 : f32 = u_xlat45;
    let x_1871 : f32 = u_xlat45;
    u_xlat45 = (x_1870 * x_1871);
    let x_1873 : f32 = u_xlat47;
    u_xlat47 = max(x_1873, 0.100000001f);
    let x_1875 : f32 = u_xlat45;
    let x_1876 : f32 = u_xlat47;
    u_xlat45 = (x_1875 * x_1876);
    let x_1878 : f32 = u_xlat44;
    let x_1879 : f32 = u_xlat45;
    u_xlat45 = (x_1878 * x_1879);
    let x_1882 : f32 = u_xlat1.x;
    let x_1883 : f32 = u_xlat45;
    u_xlat45 = (x_1882 / x_1883);
    let x_1885 : vec3<f32> = u_xlat2;
    let x_1886 : f32 = u_xlat45;
    let x_1889 : vec3<f32> = u_xlat7;
    u_xlat9 = ((x_1885 * vec3<f32>(x_1886, x_1886, x_1886)) + x_1889);
    let x_1891 : vec3<f32> = u_xlat9;
    let x_1892 : vec4<f32> = u_xlat11;
    let x_1895 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1891 * vec3<f32>(x_1892.x, x_1892.y, x_1892.z)) + x_1895);

    continuing {
      let x_1897 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1897 + bitcast<u32>(1i));
    }
  }
  let x_1899 : vec4<f32> = u_xlat5;
  let x_1901 : f32 = u_xlat42;
  let x_1904 : vec4<f32> = u_xlat3;
  let x_1906 : vec3<f32> = ((vec3<f32>(x_1899.x, x_1899.y, x_1899.z) * vec3<f32>(x_1901, x_1901, x_1901)) + vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
  let x_1907 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
  let x_1911 : vec3<f32> = u_xlat8;
  let x_1912 : vec4<f32> = u_xlat0;
  let x_1914 : vec3<f32> = (x_1911 + vec3<f32>(x_1912.x, x_1912.y, x_1912.z));
  let x_1915 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1915.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0);
}

