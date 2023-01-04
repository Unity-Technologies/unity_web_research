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

@group(0) @binding(7) var x_MainTex : texture_2d<f32>;

@group(0) @binding(16) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(8) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(9) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_282 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_436 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_885 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1358 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1460 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_838 : f32;
  var u_xlat31 : f32;
  var x_968 : f32;
  var x_979 : vec3<f32>;
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
  var x_1753 : f32;
  var x_1766 : f32;
  var x_1818 : f32;
  var x_1829 : vec3<f32>;
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
  let x_630 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_627, x_629);
  u_xlat5 = x_630;
  let x_635 : vec2<f32> = vs_INTERP4;
  let x_637 : f32 = x_44.x_GlobalMipBias.x;
  let x_638 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_635, x_637);
  let x_639 : vec3<f32> = vec3<f32>(x_638.x, x_638.y, x_638.z);
  let x_640 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat5;
  let x_646 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_647 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec3<f32> = u_xlat15;
  let x_650 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(x_649, vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_655 : f32 = u_xlat14.x;
  u_xlat14.x = (x_655 + 0.5f);
  let x_658 : vec2<f32> = u_xlat14;
  let x_660 : vec4<f32> = u_xlat6;
  let x_662 : vec3<f32> = (vec3<f32>(x_658.x, x_658.x, x_658.x) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_666 : f32 = u_xlat5.w;
  u_xlat14.x = max(x_666, 0.0001f);
  let x_670 : vec4<f32> = u_xlat5;
  let x_672 : vec2<f32> = u_xlat14;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) / vec3<f32>(x_672.x, x_672.x, x_672.x));
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_679 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
  u_xlat14 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_680.x, x_680.y));
  let x_685 : vec2<f32> = u_xlat14;
  let x_686 : vec4<f32> = hlslcc_FragCoord;
  let x_688 : vec2<f32> = (x_685 * vec2<f32>(x_686.x, x_686.y));
  let x_689 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
  let x_692 : f32 = u_xlat6.y;
  let x_695 : f32 = x_44.x_ScaleBiasRt.x;
  let x_698 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_692 * x_695) + x_698);
  let x_702 : f32 = u_xlat14.x;
  u_xlat6.z = (-(x_702) + 1.0f);
  let x_707 : f32 = u_xlat0.x;
  u_xlat14.x = ((-(x_707) * 0.959999979f) + 0.959999979f);
  let x_714 : f32 = u_xlat14.x;
  let x_717 : f32 = u_xlat1.x;
  u_xlat28 = (-(x_714) + x_717);
  let x_719 : vec2<f32> = u_xlat14;
  let x_721 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_719.x, x_719.x, x_719.x) * x_721);
  let x_723 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_723 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_727 : vec4<f32> = u_xlat0;
  let x_729 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_727.x, x_727.x, x_727.x) * x_729) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_735 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_735) + 1.0f);
  let x_740 : f32 = u_xlat0.x;
  let x_742 : f32 = u_xlat0.x;
  u_xlat14.x = (x_740 * x_742);
  let x_746 : f32 = u_xlat14.x;
  let x_748 : f32 = u_xlat14.x;
  u_xlat1.x = (x_746 * x_748);
  let x_751 : f32 = u_xlat28;
  u_xlat28 = (x_751 + 1.0f);
  let x_753 : f32 = u_xlat28;
  u_xlat28 = min(x_753, 1.0f);
  let x_757 : f32 = u_xlat14.x;
  u_xlat44 = ((x_757 * 4.0f) + 2.0f);
  let x_766 : vec4<f32> = u_xlat6;
  let x_769 : f32 = x_44.x_GlobalMipBias.x;
  let x_770 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_766.x, x_766.z), x_769);
  u_xlat45 = x_770.x;
  let x_773 : f32 = u_xlat45;
  u_xlat46 = (x_773 + -1.0f);
  let x_776 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_777 : f32 = u_xlat46;
  u_xlat46 = ((x_776 * x_777) + 1.0f);
  let x_782 : f32 = u_xlat0.w;
  let x_783 : f32 = u_xlat45;
  u_xlat42 = min(x_782, x_783);
  let x_786 : vec4<f32> = u_xlat3;
  let x_787 : vec2<f32> = vec2<f32>(x_786.x, x_786.y);
  let x_789 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_787.x, x_787.y, x_789);
  let x_801 : vec3<f32> = txVec0;
  let x_803 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_801.xy, x_801.z);
  u_xlat3.x = x_803;
  let x_807 : f32 = x_436.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_807) + 1.0f);
  let x_812 : f32 = u_xlat3.x;
  let x_814 : f32 = x_436.x_MainLightShadowParams.x;
  let x_817 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_812 * x_814) + x_817);
  let x_824 : f32 = u_xlat3.z;
  u_xlatb17.x = (0.0f >= x_824);
  let x_829 : f32 = u_xlat3.z;
  u_xlatb31 = (x_829 >= 1.0f);
  let x_831 : bool = u_xlatb31;
  let x_833 : bool = u_xlatb17.x;
  u_xlatb17.x = (x_831 | x_833);
  let x_837 : bool = u_xlatb17.x;
  if (x_837) {
    x_838 = 1.0f;
  } else {
    let x_843 : f32 = u_xlat3.x;
    x_838 = x_843;
  }
  let x_844 : f32 = x_838;
  u_xlat3.x = x_844;
  let x_846 : vec3<f32> = vs_INTERP0;
  let x_848 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_846 + -(x_848));
  let x_851 : vec3<f32> = u_xlat17;
  let x_852 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_851, x_852);
  let x_856 : f32 = u_xlat17.x;
  let x_858 : f32 = x_436.x_MainLightShadowParams.z;
  let x_861 : f32 = x_436.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_856 * x_858) + x_861);
  let x_865 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_865, 0.0f, 1.0f);
  let x_870 : f32 = u_xlat3.x;
  u_xlat31 = (-(x_870) + 1.0f);
  let x_874 : f32 = u_xlat17.x;
  let x_875 : f32 = u_xlat31;
  let x_878 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_874 * x_875) + x_878);
  let x_887 : f32 = x_885.x_MainLightCookieTextureFormat;
  u_xlatb17.x = !((x_887 == -1.0f));
  let x_891 : bool = u_xlatb17.x;
  if (x_891) {
    let x_894 : vec3<f32> = vs_INTERP0;
    let x_897 : vec4<f32> = x_885.x_MainLightWorldToLight[1i];
    let x_899 : vec2<f32> = (vec2<f32>(x_894.y, x_894.y) * vec2<f32>(x_897.x, x_897.y));
    let x_900 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_899.x, x_899.y, x_900.z);
    let x_903 : vec4<f32> = x_885.x_MainLightWorldToLight[0i];
    let x_905 : vec3<f32> = vs_INTERP0;
    let x_908 : vec3<f32> = u_xlat17;
    let x_910 : vec2<f32> = ((vec2<f32>(x_903.x, x_903.y) * vec2<f32>(x_905.x, x_905.x)) + vec2<f32>(x_908.x, x_908.y));
    let x_911 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_910.x, x_910.y, x_911.z);
    let x_914 : vec4<f32> = x_885.x_MainLightWorldToLight[2i];
    let x_916 : vec3<f32> = vs_INTERP0;
    let x_919 : vec3<f32> = u_xlat17;
    let x_921 : vec2<f32> = ((vec2<f32>(x_914.x, x_914.y) * vec2<f32>(x_916.z, x_916.z)) + vec2<f32>(x_919.x, x_919.y));
    let x_922 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_921.x, x_921.y, x_922.z);
    let x_924 : vec3<f32> = u_xlat17;
    let x_927 : vec4<f32> = x_885.x_MainLightWorldToLight[3i];
    let x_929 : vec2<f32> = (vec2<f32>(x_924.x, x_924.y) + vec2<f32>(x_927.x, x_927.y));
    let x_930 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_929.x, x_929.y, x_930.z);
    let x_932 : vec3<f32> = u_xlat17;
    let x_936 : vec2<f32> = ((vec2<f32>(x_932.x, x_932.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_937 : vec3<f32> = u_xlat17;
    u_xlat17 = vec3<f32>(x_936.x, x_936.y, x_937.z);
    let x_944 : vec3<f32> = u_xlat17;
    let x_947 : f32 = x_44.x_GlobalMipBias.x;
    let x_948 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_944.x, x_944.y), x_947);
    u_xlat6 = x_948;
    let x_950 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_952 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_954 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_956 : f32 = x_885.x_MainLightCookieTextureFormat;
    let x_957 : vec4<f32> = vec4<f32>(x_950, x_952, x_954, x_956);
    let x_964 : vec4<bool> = (vec4<f32>(x_957.x, x_957.y, x_957.z, x_957.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb17 = vec2<bool>(x_964.x, x_964.y);
    let x_967 : bool = u_xlatb17.y;
    if (x_967) {
      let x_972 : f32 = u_xlat6.w;
      x_968 = x_972;
    } else {
      let x_975 : f32 = u_xlat6.x;
      x_968 = x_975;
    }
    let x_976 : f32 = x_968;
    u_xlat31 = x_976;
    let x_978 : bool = u_xlatb17.x;
    if (x_978) {
      let x_982 : vec4<f32> = u_xlat6;
      x_979 = vec3<f32>(x_982.x, x_982.y, x_982.z);
    } else {
      let x_985 : f32 = u_xlat31;
      x_979 = vec3<f32>(x_985, x_985, x_985);
    }
    let x_987 : vec3<f32> = x_979;
    u_xlat17 = x_987;
  } else {
    u_xlat17.x = 1.0f;
    u_xlat17.y = 1.0f;
    u_xlat17.z = 1.0f;
  }
  let x_992 : vec3<f32> = u_xlat17;
  let x_994 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (x_992 * vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : f32 = u_xlat46;
  let x_999 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_997, x_997, x_997) * x_999);
  let x_1002 : vec3<f32> = u_xlat4;
  let x_1004 : vec3<f32> = u_xlat15;
  u_xlat47 = dot(-(x_1002), x_1004);
  let x_1006 : f32 = u_xlat47;
  let x_1007 : f32 = u_xlat47;
  u_xlat47 = (x_1006 + x_1007);
  let x_1009 : vec3<f32> = u_xlat15;
  let x_1010 : f32 = u_xlat47;
  let x_1014 : vec3<f32> = u_xlat4;
  let x_1016 : vec3<f32> = ((x_1009 * -(vec3<f32>(x_1010, x_1010, x_1010))) + -(x_1014));
  let x_1017 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  let x_1019 : vec3<f32> = u_xlat15;
  let x_1020 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(x_1019, x_1020);
  let x_1022 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1022, 0.0f, 1.0f);
  let x_1024 : f32 = u_xlat47;
  u_xlat47 = (-(x_1024) + 1.0f);
  let x_1027 : f32 = u_xlat47;
  let x_1028 : f32 = u_xlat47;
  u_xlat47 = (x_1027 * x_1028);
  let x_1030 : f32 = u_xlat47;
  let x_1031 : f32 = u_xlat47;
  u_xlat47 = (x_1030 * x_1031);
  let x_1035 : f32 = u_xlat0.x;
  u_xlat48 = ((-(x_1035) * 0.699999988f) + 1.700000048f);
  let x_1042 : f32 = u_xlat0.x;
  let x_1043 : f32 = u_xlat48;
  u_xlat0.x = (x_1042 * x_1043);
  let x_1047 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1047 * 6.0f);
  let x_1059 : vec4<f32> = u_xlat6;
  let x_1062 : f32 = u_xlat0.x;
  let x_1063 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1059.x, x_1059.y, x_1059.z), x_1062);
  u_xlat6 = x_1063;
  let x_1065 : f32 = u_xlat6.w;
  u_xlat0.x = (x_1065 + -1.0f);
  let x_1069 : f32 = x_282.unity_SpecCube0_HDR.w;
  let x_1071 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1069 * x_1071) + 1.0f);
  let x_1076 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1076, 0.0f);
  let x_1080 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1080);
  let x_1084 : f32 = u_xlat0.x;
  let x_1086 : f32 = x_282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1084 * x_1086);
  let x_1090 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1090);
  let x_1094 : f32 = u_xlat0.x;
  let x_1096 : f32 = x_282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1094 * x_1096);
  let x_1099 : vec4<f32> = u_xlat6;
  let x_1101 : vec4<f32> = u_xlat0;
  let x_1103 : vec3<f32> = (vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(x_1101.x, x_1101.x, x_1101.x));
  let x_1104 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1106 : vec2<f32> = u_xlat14;
  let x_1108 : vec2<f32> = u_xlat14;
  let x_1112 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.x) * vec2<f32>(x_1108.x, x_1108.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
  let x_1116 : f32 = u_xlat0.y;
  u_xlat14.x = (1.0f / x_1116);
  let x_1120 : vec3<f32> = u_xlat2;
  let x_1122 : f32 = u_xlat28;
  u_xlat8 = (-(x_1120) + vec3<f32>(x_1122, x_1122, x_1122));
  let x_1125 : f32 = u_xlat47;
  let x_1127 : vec3<f32> = u_xlat8;
  let x_1129 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_1125, x_1125, x_1125) * x_1127) + x_1129);
  let x_1131 : vec2<f32> = u_xlat14;
  let x_1133 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_1131.x, x_1131.x, x_1131.x) * x_1133);
  let x_1135 : vec4<f32> = u_xlat6;
  let x_1137 : vec3<f32> = u_xlat8;
  let x_1138 : vec3<f32> = (vec3<f32>(x_1135.x, x_1135.y, x_1135.z) * x_1137);
  let x_1139 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
  let x_1141 : vec4<f32> = u_xlat5;
  let x_1143 : vec3<f32> = u_xlat7;
  let x_1145 : vec4<f32> = u_xlat6;
  let x_1147 : vec3<f32> = ((vec3<f32>(x_1141.x, x_1141.y, x_1141.z) * x_1143) + vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1151 : f32 = u_xlat3.x;
  let x_1153 : f32 = x_282.unity_LightData.z;
  u_xlat14.x = (x_1151 * x_1153);
  let x_1156 : vec3<f32> = u_xlat15;
  let x_1158 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat28 = dot(x_1156, vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
  let x_1161 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1161, 0.0f, 1.0f);
  let x_1163 : f32 = u_xlat28;
  let x_1165 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1163 * x_1165);
  let x_1168 : vec2<f32> = u_xlat14;
  let x_1170 : vec3<f32> = u_xlat17;
  let x_1171 : vec3<f32> = (vec3<f32>(x_1168.x, x_1168.x, x_1168.x) * x_1170);
  let x_1172 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : vec3<f32> = u_xlat4;
  let x_1176 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1178 : vec3<f32> = (x_1174 + vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec4<f32> = u_xlat6;
  let x_1183 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_1181.x, x_1181.y, x_1181.z), vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1188 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1188, 1.17549435e-37f);
  let x_1193 : f32 = u_xlat14.x;
  u_xlat14.x = inverseSqrt(x_1193);
  let x_1196 : vec2<f32> = u_xlat14;
  let x_1198 : vec4<f32> = u_xlat6;
  let x_1200 : vec3<f32> = (vec3<f32>(x_1196.x, x_1196.x, x_1196.x) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1203 : vec3<f32> = u_xlat15;
  let x_1204 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(x_1203, vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1209 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_1209, 0.0f, 1.0f);
  let x_1213 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1215 : vec4<f32> = u_xlat6;
  u_xlat14.y = dot(vec3<f32>(x_1213.x, x_1213.y, x_1213.z), vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1220 : f32 = u_xlat14.y;
  u_xlat14.y = clamp(x_1220, 0.0f, 1.0f);
  let x_1223 : vec2<f32> = u_xlat14;
  let x_1224 : vec2<f32> = u_xlat14;
  u_xlat14 = (x_1223 * x_1224);
  let x_1227 : f32 = u_xlat14.x;
  let x_1229 : f32 = u_xlat0.x;
  u_xlat14.x = ((x_1227 * x_1229) + 1.000010014f);
  let x_1235 : f32 = u_xlat14.x;
  let x_1237 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1235 * x_1237);
  let x_1241 : f32 = u_xlat14.y;
  u_xlat28 = max(x_1241, 0.100000001f);
  let x_1244 : f32 = u_xlat28;
  let x_1246 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1244 * x_1246);
  let x_1249 : f32 = u_xlat44;
  let x_1251 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1249 * x_1251);
  let x_1255 : f32 = u_xlat1.x;
  let x_1257 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1255 / x_1257);
  let x_1260 : vec3<f32> = u_xlat2;
  let x_1261 : vec2<f32> = u_xlat14;
  let x_1264 : vec3<f32> = u_xlat7;
  let x_1265 : vec3<f32> = ((x_1260 * vec3<f32>(x_1261.x, x_1261.x, x_1261.x)) + x_1264);
  let x_1266 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
  let x_1268 : vec4<f32> = u_xlat3;
  let x_1270 : vec4<f32> = u_xlat6;
  let x_1272 : vec3<f32> = (vec3<f32>(x_1268.x, x_1268.y, x_1268.z) * vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
  let x_1273 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
  let x_1276 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1278 : f32 = x_282.unity_LightData.y;
  u_xlat14.x = min(x_1276, x_1278);
  let x_1282 : f32 = u_xlat14.x;
  u_xlatu14 = bitcast<u32>(i32(x_1282));
  let x_1287 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1289 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1291 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1293 : f32 = x_885.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1294 : vec4<f32> = vec4<f32>(x_1287, x_1289, x_1291, x_1293);
  let x_1300 : vec4<bool> = (vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_1300.x, x_1300.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1311 : u32 = u_xlatu_loop_1;
    let x_1312 : u32 = u_xlatu14;
    if ((x_1311 < x_1312)) {
    } else {
      break;
    }
    let x_1315 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1315 >> 2u);
    let x_1318 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1318 & 3u));
    let x_1322 : u32 = u_xlatu45;
    let x_1325 : vec4<f32> = x_282.unity_LightIndices[bitcast<i32>(x_1322)];
    let x_1335 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1340 : vec4<u32> = indexable[x_1335];
    u_xlat45 = dot(x_1325, bitcast<vec4<f32>>(x_1340));
    let x_1343 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1343));
    let x_1347 : vec3<f32> = vs_INTERP0;
    let x_1359 : u32 = u_xlatu45;
    let x_1362 : vec4<f32> = x_1358.x_AdditionalLightsPosition[bitcast<i32>(x_1359)];
    let x_1365 : u32 = u_xlatu45;
    let x_1368 : vec4<f32> = x_1358.x_AdditionalLightsPosition[bitcast<i32>(x_1365)];
    u_xlat9 = ((-(x_1347) * vec3<f32>(x_1362.w, x_1362.w, x_1362.w)) + vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
    let x_1371 : vec3<f32> = u_xlat9;
    let x_1372 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1371, x_1372);
    let x_1374 : f32 = u_xlat47;
    u_xlat47 = max(x_1374, 6.10351562e-05f);
    let x_1378 : f32 = u_xlat47;
    u_xlat34 = inverseSqrt(x_1378);
    let x_1381 : f32 = u_xlat34;
    let x_1383 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1381, x_1381, x_1381) * x_1383);
    let x_1385 : f32 = u_xlat47;
    u_xlat48 = (1.0f / x_1385);
    let x_1387 : f32 = u_xlat47;
    let x_1388 : u32 = u_xlatu45;
    let x_1391 : f32 = x_1358.x_AdditionalLightsAttenuation[bitcast<i32>(x_1388)].x;
    u_xlat47 = (x_1387 * x_1391);
    let x_1393 : f32 = u_xlat47;
    let x_1395 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1393) * x_1395) + 1.0f);
    let x_1398 : f32 = u_xlat47;
    u_xlat47 = max(x_1398, 0.0f);
    let x_1400 : f32 = u_xlat47;
    let x_1401 : f32 = u_xlat47;
    u_xlat47 = (x_1400 * x_1401);
    let x_1403 : f32 = u_xlat47;
    let x_1404 : f32 = u_xlat48;
    u_xlat47 = (x_1403 * x_1404);
    let x_1406 : u32 = u_xlatu45;
    let x_1409 : vec4<f32> = x_1358.x_AdditionalLightsSpotDir[bitcast<i32>(x_1406)];
    let x_1411 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1409.x, x_1409.y, x_1409.z), x_1411);
    let x_1413 : f32 = u_xlat48;
    let x_1414 : u32 = u_xlatu45;
    let x_1417 : f32 = x_1358.x_AdditionalLightsAttenuation[bitcast<i32>(x_1414)].z;
    let x_1419 : u32 = u_xlatu45;
    let x_1422 : f32 = x_1358.x_AdditionalLightsAttenuation[bitcast<i32>(x_1419)].w;
    u_xlat48 = ((x_1413 * x_1417) + x_1422);
    let x_1424 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1424, 0.0f, 1.0f);
    let x_1426 : f32 = u_xlat48;
    let x_1427 : f32 = u_xlat48;
    u_xlat48 = (x_1426 * x_1427);
    let x_1429 : f32 = u_xlat47;
    let x_1430 : f32 = u_xlat48;
    u_xlat47 = (x_1429 * x_1430);
    let x_1433 : u32 = u_xlatu45;
    u_xlatu48 = (x_1433 >> 5u);
    let x_1436 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1436) & 31i)));
    let x_1442 : i32 = u_xlati49;
    let x_1444 : u32 = u_xlatu48;
    let x_1447 : f32 = x_885.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1444)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_1442) & bitcast<u32>(x_1447)));
    let x_1451 : i32 = u_xlati48;
    if ((x_1451 != 0i)) {
      let x_1461 : u32 = u_xlatu45;
      let x_1464 : f32 = x_1460.x_AdditionalLightsLightTypes[bitcast<i32>(x_1461)].el;
      u_xlati48 = i32(x_1464);
      let x_1466 : i32 = u_xlati48;
      u_xlati49 = select(1i, 0i, (x_1466 != 0i));
      let x_1470 : u32 = u_xlatu45;
      u_xlati50 = (bitcast<i32>(x_1470) << bitcast<u32>(2i));
      let x_1473 : i32 = u_xlati49;
      if ((x_1473 != 0i)) {
        let x_1478 : vec3<f32> = vs_INTERP0;
        let x_1480 : i32 = u_xlati50;
        let x_1483 : i32 = u_xlati50;
        let x_1487 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[((x_1480 + 1i) / 4i)][((x_1483 + 1i) % 4i)];
        let x_1489 : vec3<f32> = (vec3<f32>(x_1478.y, x_1478.y, x_1478.y) * vec3<f32>(x_1487.x, x_1487.y, x_1487.w));
        let x_1490 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);
        let x_1492 : i32 = u_xlati50;
        let x_1494 : i32 = u_xlati50;
        let x_1497 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[(x_1492 / 4i)][(x_1494 % 4i)];
        let x_1499 : vec3<f32> = vs_INTERP0;
        let x_1502 : vec4<f32> = u_xlat11;
        let x_1504 : vec3<f32> = ((vec3<f32>(x_1497.x, x_1497.y, x_1497.w) * vec3<f32>(x_1499.x, x_1499.x, x_1499.x)) + vec3<f32>(x_1502.x, x_1502.y, x_1502.z));
        let x_1505 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
        let x_1507 : i32 = u_xlati50;
        let x_1510 : i32 = u_xlati50;
        let x_1514 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[((x_1507 + 2i) / 4i)][((x_1510 + 2i) % 4i)];
        let x_1516 : vec3<f32> = vs_INTERP0;
        let x_1519 : vec4<f32> = u_xlat11;
        let x_1521 : vec3<f32> = ((vec3<f32>(x_1514.x, x_1514.y, x_1514.w) * vec3<f32>(x_1516.z, x_1516.z, x_1516.z)) + vec3<f32>(x_1519.x, x_1519.y, x_1519.z));
        let x_1522 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1522.w);
        let x_1524 : vec4<f32> = u_xlat11;
        let x_1526 : i32 = u_xlati50;
        let x_1529 : i32 = u_xlati50;
        let x_1533 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[((x_1526 + 3i) / 4i)][((x_1529 + 3i) % 4i)];
        let x_1535 : vec3<f32> = (vec3<f32>(x_1524.x, x_1524.y, x_1524.z) + vec3<f32>(x_1533.x, x_1533.y, x_1533.w));
        let x_1536 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1535.x, x_1535.y, x_1535.z, x_1536.w);
        let x_1538 : vec4<f32> = u_xlat11;
        let x_1540 : vec4<f32> = u_xlat11;
        let x_1542 : vec2<f32> = (vec2<f32>(x_1538.x, x_1538.y) / vec2<f32>(x_1540.z, x_1540.z));
        let x_1543 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1542.x, x_1542.y, x_1543.z, x_1543.w);
        let x_1545 : vec4<f32> = u_xlat11;
        let x_1548 : vec2<f32> = ((vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1549 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1548.x, x_1548.y, x_1549.z, x_1549.w);
        let x_1551 : vec4<f32> = u_xlat11;
        let x_1555 : vec2<f32> = clamp(vec2<f32>(x_1551.x, x_1551.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1556 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1555.x, x_1555.y, x_1556.z, x_1556.w);
        let x_1558 : u32 = u_xlatu45;
        let x_1561 : vec4<f32> = x_1460.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1558)];
        let x_1563 : vec4<f32> = u_xlat11;
        let x_1566 : u32 = u_xlatu45;
        let x_1569 : vec4<f32> = x_1460.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1566)];
        let x_1571 : vec2<f32> = ((vec2<f32>(x_1561.x, x_1561.y) * vec2<f32>(x_1563.x, x_1563.y)) + vec2<f32>(x_1569.z, x_1569.w));
        let x_1572 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1571.x, x_1571.y, x_1572.z, x_1572.w);
      } else {
        let x_1576 : i32 = u_xlati48;
        u_xlatb48 = (x_1576 == 1i);
        let x_1578 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1578);
        let x_1580 : i32 = u_xlati48;
        if ((x_1580 != 0i)) {
          let x_1585 : vec3<f32> = vs_INTERP0;
          let x_1587 : i32 = u_xlati50;
          let x_1590 : i32 = u_xlati50;
          let x_1594 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[((x_1587 + 1i) / 4i)][((x_1590 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1585.y, x_1585.y) * vec2<f32>(x_1594.x, x_1594.y));
          let x_1597 : i32 = u_xlati50;
          let x_1599 : i32 = u_xlati50;
          let x_1602 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[(x_1597 / 4i)][(x_1599 % 4i)];
          let x_1604 : vec3<f32> = vs_INTERP0;
          let x_1607 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1602.x, x_1602.y) * vec2<f32>(x_1604.x, x_1604.x)) + x_1607);
          let x_1609 : i32 = u_xlati50;
          let x_1612 : i32 = u_xlati50;
          let x_1616 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[((x_1609 + 2i) / 4i)][((x_1612 + 2i) % 4i)];
          let x_1618 : vec3<f32> = vs_INTERP0;
          let x_1621 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1616.x, x_1616.y) * vec2<f32>(x_1618.z, x_1618.z)) + x_1621);
          let x_1623 : vec2<f32> = u_xlat39;
          let x_1624 : i32 = u_xlati50;
          let x_1627 : i32 = u_xlati50;
          let x_1631 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[((x_1624 + 3i) / 4i)][((x_1627 + 3i) % 4i)];
          u_xlat39 = (x_1623 + vec2<f32>(x_1631.x, x_1631.y));
          let x_1634 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1634 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1637 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1637);
          let x_1639 : u32 = u_xlatu45;
          let x_1642 : vec4<f32> = x_1460.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1639)];
          let x_1644 : vec2<f32> = u_xlat39;
          let x_1646 : u32 = u_xlatu45;
          let x_1649 : vec4<f32> = x_1460.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1646)];
          let x_1651 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.y) * x_1644) + vec2<f32>(x_1649.z, x_1649.w));
          let x_1652 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1651.x, x_1651.y, x_1652.z, x_1652.w);
        } else {
          let x_1656 : vec3<f32> = vs_INTERP0;
          let x_1658 : i32 = u_xlati50;
          let x_1661 : i32 = u_xlati50;
          let x_1665 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[((x_1658 + 1i) / 4i)][((x_1661 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1656.y, x_1656.y, x_1656.y, x_1656.y) * x_1665);
          let x_1667 : i32 = u_xlati50;
          let x_1669 : i32 = u_xlati50;
          let x_1672 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[(x_1667 / 4i)][(x_1669 % 4i)];
          let x_1673 : vec3<f32> = vs_INTERP0;
          let x_1676 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1672 * vec4<f32>(x_1673.x, x_1673.x, x_1673.x, x_1673.x)) + x_1676);
          let x_1678 : i32 = u_xlati50;
          let x_1681 : i32 = u_xlati50;
          let x_1685 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[((x_1678 + 2i) / 4i)][((x_1681 + 2i) % 4i)];
          let x_1686 : vec3<f32> = vs_INTERP0;
          let x_1689 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1685 * vec4<f32>(x_1686.z, x_1686.z, x_1686.z, x_1686.z)) + x_1689);
          let x_1691 : vec4<f32> = u_xlat12;
          let x_1692 : i32 = u_xlati50;
          let x_1695 : i32 = u_xlati50;
          let x_1699 : vec4<f32> = x_1460.x_AdditionalLightsWorldToLights[((x_1692 + 3i) / 4i)][((x_1695 + 3i) % 4i)];
          u_xlat12 = (x_1691 + x_1699);
          let x_1701 : vec4<f32> = u_xlat12;
          let x_1703 : vec4<f32> = u_xlat12;
          let x_1705 : vec3<f32> = (vec3<f32>(x_1701.x, x_1701.y, x_1701.z) / vec3<f32>(x_1703.w, x_1703.w, x_1703.w));
          let x_1706 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
          let x_1708 : vec4<f32> = u_xlat12;
          let x_1710 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(vec3<f32>(x_1708.x, x_1708.y, x_1708.z), vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
          let x_1713 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1713);
          let x_1715 : f32 = u_xlat48;
          let x_1717 : vec4<f32> = u_xlat12;
          let x_1719 : vec3<f32> = (vec3<f32>(x_1715, x_1715, x_1715) * vec3<f32>(x_1717.x, x_1717.y, x_1717.z));
          let x_1720 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
          let x_1722 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(abs(vec3<f32>(x_1722.x, x_1722.y, x_1722.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1726 : f32 = u_xlat48;
          u_xlat48 = max(x_1726, 0.000001f);
          let x_1729 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1729);
          let x_1732 : f32 = u_xlat48;
          let x_1734 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1732, x_1732, x_1732) * vec3<f32>(x_1734.z, x_1734.x, x_1734.y));
          let x_1738 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1738);
          let x_1742 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1742, 0.0f, 1.0f);
          let x_1746 : vec3<f32> = u_xlat13;
          let x_1749 : vec4<bool> = (vec4<f32>(x_1746.y, x_1746.z, x_1746.y, x_1746.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1749.x, x_1749.y);
          let x_1752 : bool = u_xlatb39.x;
          if (x_1752) {
            let x_1757 : f32 = u_xlat13.x;
            x_1753 = x_1757;
          } else {
            let x_1760 : f32 = u_xlat13.x;
            x_1753 = -(x_1760);
          }
          let x_1762 : f32 = x_1753;
          u_xlat39.x = x_1762;
          let x_1765 : bool = u_xlatb39.y;
          if (x_1765) {
            let x_1770 : f32 = u_xlat13.x;
            x_1766 = x_1770;
          } else {
            let x_1773 : f32 = u_xlat13.x;
            x_1766 = -(x_1773);
          }
          let x_1775 : f32 = x_1766;
          u_xlat39.y = x_1775;
          let x_1777 : vec4<f32> = u_xlat12;
          let x_1779 : f32 = u_xlat48;
          let x_1782 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1777.x, x_1777.y) * vec2<f32>(x_1779, x_1779)) + x_1782);
          let x_1784 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1784 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1787 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1787, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1791 : u32 = u_xlatu45;
          let x_1794 : vec4<f32> = x_1460.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1791)];
          let x_1796 : vec2<f32> = u_xlat39;
          let x_1798 : u32 = u_xlatu45;
          let x_1801 : vec4<f32> = x_1460.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1798)];
          let x_1803 : vec2<f32> = ((vec2<f32>(x_1794.x, x_1794.y) * x_1796) + vec2<f32>(x_1801.z, x_1801.w));
          let x_1804 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1803.x, x_1803.y, x_1804.z, x_1804.w);
        }
      }
      let x_1811 : vec4<f32> = u_xlat11;
      let x_1814 : f32 = x_44.x_GlobalMipBias.x;
      let x_1815 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1811.x, x_1811.y), x_1814);
      u_xlat11 = x_1815;
      let x_1817 : bool = u_xlatb6.y;
      if (x_1817) {
        let x_1822 : f32 = u_xlat11.w;
        x_1818 = x_1822;
      } else {
        let x_1825 : f32 = u_xlat11.x;
        x_1818 = x_1825;
      }
      let x_1826 : f32 = x_1818;
      u_xlat48 = x_1826;
      let x_1828 : bool = u_xlatb6.x;
      if (x_1828) {
        let x_1832 : vec4<f32> = u_xlat11;
        x_1829 = vec3<f32>(x_1832.x, x_1832.y, x_1832.z);
      } else {
        let x_1835 : f32 = u_xlat48;
        x_1829 = vec3<f32>(x_1835, x_1835, x_1835);
      }
      let x_1837 : vec3<f32> = x_1829;
      let x_1838 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1844 : vec4<f32> = u_xlat11;
    let x_1846 : u32 = u_xlatu45;
    let x_1849 : vec4<f32> = x_1358.x_AdditionalLightsColor[bitcast<i32>(x_1846)];
    let x_1851 : vec3<f32> = (vec3<f32>(x_1844.x, x_1844.y, x_1844.z) * vec3<f32>(x_1849.x, x_1849.y, x_1849.z));
    let x_1852 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1851.x, x_1851.y, x_1851.z, x_1852.w);
    let x_1854 : f32 = u_xlat46;
    let x_1856 : vec4<f32> = u_xlat11;
    let x_1858 : vec3<f32> = (vec3<f32>(x_1854, x_1854, x_1854) * vec3<f32>(x_1856.x, x_1856.y, x_1856.z));
    let x_1859 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
    let x_1861 : vec3<f32> = u_xlat15;
    let x_1862 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1861, x_1862);
    let x_1864 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1864, 0.0f, 1.0f);
    let x_1866 : f32 = u_xlat45;
    let x_1867 : f32 = u_xlat47;
    u_xlat45 = (x_1866 * x_1867);
    let x_1869 : f32 = u_xlat45;
    let x_1871 : vec4<f32> = u_xlat11;
    let x_1873 : vec3<f32> = (vec3<f32>(x_1869, x_1869, x_1869) * vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
    let x_1874 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
    let x_1876 : vec3<f32> = u_xlat9;
    let x_1877 : f32 = u_xlat34;
    let x_1880 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1876 * vec3<f32>(x_1877, x_1877, x_1877)) + x_1880);
    let x_1882 : vec3<f32> = u_xlat9;
    let x_1883 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1882, x_1883);
    let x_1885 : f32 = u_xlat45;
    u_xlat45 = max(x_1885, 1.17549435e-37f);
    let x_1887 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1887);
    let x_1889 : f32 = u_xlat45;
    let x_1891 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1889, x_1889, x_1889) * x_1891);
    let x_1893 : vec3<f32> = u_xlat15;
    let x_1894 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1893, x_1894);
    let x_1896 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1896, 0.0f, 1.0f);
    let x_1898 : vec3<f32> = u_xlat10;
    let x_1899 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1898, x_1899);
    let x_1901 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1901, 0.0f, 1.0f);
    let x_1903 : f32 = u_xlat45;
    let x_1904 : f32 = u_xlat45;
    u_xlat45 = (x_1903 * x_1904);
    let x_1906 : f32 = u_xlat45;
    let x_1908 : f32 = u_xlat0.x;
    u_xlat45 = ((x_1906 * x_1908) + 1.000010014f);
    let x_1911 : f32 = u_xlat47;
    let x_1912 : f32 = u_xlat47;
    u_xlat47 = (x_1911 * x_1912);
    let x_1914 : f32 = u_xlat45;
    let x_1915 : f32 = u_xlat45;
    u_xlat45 = (x_1914 * x_1915);
    let x_1917 : f32 = u_xlat47;
    u_xlat47 = max(x_1917, 0.100000001f);
    let x_1919 : f32 = u_xlat45;
    let x_1920 : f32 = u_xlat47;
    u_xlat45 = (x_1919 * x_1920);
    let x_1922 : f32 = u_xlat44;
    let x_1923 : f32 = u_xlat45;
    u_xlat45 = (x_1922 * x_1923);
    let x_1926 : f32 = u_xlat1.x;
    let x_1927 : f32 = u_xlat45;
    u_xlat45 = (x_1926 / x_1927);
    let x_1929 : vec3<f32> = u_xlat2;
    let x_1930 : f32 = u_xlat45;
    let x_1933 : vec3<f32> = u_xlat7;
    u_xlat9 = ((x_1929 * vec3<f32>(x_1930, x_1930, x_1930)) + x_1933);
    let x_1935 : vec3<f32> = u_xlat9;
    let x_1936 : vec4<f32> = u_xlat11;
    let x_1939 : vec3<f32> = u_xlat8;
    u_xlat8 = ((x_1935 * vec3<f32>(x_1936.x, x_1936.y, x_1936.z)) + x_1939);

    continuing {
      let x_1941 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1941 + bitcast<u32>(1i));
    }
  }
  let x_1943 : vec4<f32> = u_xlat5;
  let x_1945 : f32 = u_xlat42;
  let x_1948 : vec4<f32> = u_xlat3;
  let x_1950 : vec3<f32> = ((vec3<f32>(x_1943.x, x_1943.y, x_1943.z) * vec3<f32>(x_1945, x_1945, x_1945)) + vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1951 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  let x_1955 : vec3<f32> = u_xlat8;
  let x_1956 : vec4<f32> = u_xlat0;
  let x_1958 : vec3<f32> = (x_1955 + vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
  let x_1959 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1958.x, x_1958.y, x_1958.z, x_1959.w);
  let x_1964 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1966 : f32 = x_282.unity_RenderingLayer.x;
  u_xlatu0 = (x_1964 & bitcast<u32>(x_1966));
  let x_1969 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1969);
  let x_1974 : f32 = u_xlat0.x;
  let x_1977 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1974 * x_1977);
  let x_1982 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1982, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1986 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1986.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

