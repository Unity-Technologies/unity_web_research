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

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_91 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_587 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_800 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1055 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1159 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat16 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var u_xlat46 : f32;
  var u_xlat42 : f32;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb16 : vec2<bool>;
  var u_xlatb30 : bool;
  var x_533 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat30 : f32;
  var x_670 : f32;
  var x_681 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : f32;
  var u_xlat34 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat48 : f32;
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
  var x_1453 : f32;
  var x_1466 : f32;
  var x_1518 : f32;
  var x_1529 : vec3<f32>;
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
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat15;
  let x_80 : vec4<f32> = vs_TEXCOORD3;
  u_xlat15 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_86 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres0;
  let x_97 : vec3<f32> = (x_86 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_101 : vec3<f32> = vs_TEXCOORD7;
  let x_104 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres1;
  let x_107 : vec3<f32> = (x_101 + -(vec3<f32>(x_104.x, x_104.y, x_104.z)));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = vs_TEXCOORD7;
  let x_114 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_111 + -(vec3<f32>(x_114.x, x_114.y, x_114.z)));
  let x_119 : vec3<f32> = vs_TEXCOORD7;
  let x_122 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_119 + -(vec3<f32>(x_122.x, x_122.y, x_122.z)));
  let x_126 : vec4<f32> = u_xlat2;
  let x_128 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_132 : vec4<f32> = u_xlat3;
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_132.x, x_132.y, x_132.z), vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_139 : vec3<f32> = u_xlat4;
  let x_140 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_139, x_140);
  let x_144 : vec3<f32> = u_xlat5;
  let x_145 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_144, x_145);
  let x_152 : vec4<f32> = u_xlat2;
  let x_155 : vec4<f32> = x_91.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_152 < x_155);
  let x_159 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_159);
  let x_164 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_172);
  let x_176 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_176);
  let x_182 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_182);
  let x_186 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_186);
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + vec3<f32>(x_191.y, x_191.z, x_191.w));
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat2;
  let x_199 : vec3<f32> = max(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_199.x, x_199.y, x_199.z);
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_202, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_210 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_210) + 4.0f);
  let x_217 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_217);
  let x_221 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_221) << bitcast<u32>(2i));
  let x_225 : vec3<f32> = vs_TEXCOORD7;
  let x_228 : i32 = u_xlati2;
  let x_231 : i32 = u_xlati2;
  let x_235 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_228 + 1i) / 4i)][((x_231 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_225.y, x_225.y, x_225.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : i32 = u_xlati2;
  let x_240 : i32 = u_xlati2;
  let x_243 : vec4<f32> = x_91.x_MainLightWorldToShadow[(x_238 / 4i)][(x_240 % 4i)];
  let x_245 : vec3<f32> = vs_TEXCOORD7;
  let x_248 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.x, x_245.x, x_245.x)) + x_248);
  let x_250 : i32 = u_xlati2;
  let x_253 : i32 = u_xlati2;
  let x_257 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_250 + 2i) / 4i)][((x_253 + 2i) % 4i)];
  let x_259 : vec3<f32> = vs_TEXCOORD7;
  let x_262 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.z, x_259.z, x_259.z)) + x_262);
  let x_264 : vec3<f32> = u_xlat16;
  let x_265 : i32 = u_xlati2;
  let x_268 : i32 = u_xlati2;
  let x_272 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_265 + 3i) / 4i)][((x_268 + 3i) % 4i)];
  let x_274 : vec3<f32> = (x_264 + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_279 : f32 = vs_TEXCOORD7.y;
  let x_282 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat44 = (x_279 * x_282);
  let x_285 : f32 = x_44.unity_MatrixV[0i].z;
  let x_287 : f32 = vs_TEXCOORD7.x;
  let x_289 : f32 = u_xlat44;
  u_xlat44 = ((x_285 * x_287) + x_289);
  let x_292 : f32 = x_44.unity_MatrixV[2i].z;
  let x_294 : f32 = vs_TEXCOORD7.z;
  let x_296 : f32 = u_xlat44;
  u_xlat44 = ((x_292 * x_294) + x_296);
  let x_298 : f32 = u_xlat44;
  let x_300 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat44 = (x_298 + x_300);
  let x_302 : f32 = u_xlat44;
  let x_306 : f32 = x_44.x_ProjectionParams.y;
  u_xlat44 = (-(x_302) + -(x_306));
  let x_309 : f32 = u_xlat44;
  u_xlat44 = max(x_309, 0.0f);
  let x_311 : f32 = u_xlat44;
  let x_314 : f32 = x_44.unity_FogParams.x;
  u_xlat44 = (x_311 * x_314);
  let x_321 : vec4<f32> = vs_TEXCOORD0;
  let x_324 : f32 = x_44.x_GlobalMipBias.x;
  let x_325 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_321.z, x_321.w), x_324);
  u_xlat3 = x_325;
  let x_330 : vec4<f32> = vs_TEXCOORD0;
  let x_333 : f32 = x_44.x_GlobalMipBias.x;
  let x_334 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_330.z, x_330.w), x_333);
  u_xlat4 = vec3<f32>(x_334.x, x_334.y, x_334.z);
  let x_336 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec3<f32> = u_xlat15;
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_343, vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_349 : f32 = u_xlat3.x;
  u_xlat3.x = (x_349 + 0.5f);
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : vec3<f32> = u_xlat4;
  let x_356 : vec3<f32> = (vec3<f32>(x_353.x, x_353.x, x_353.x) * x_355);
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_361 : f32 = u_xlat3.w;
  u_xlat45 = max(x_361, 0.0001f);
  let x_364 : vec4<f32> = u_xlat3;
  let x_366 : f32 = u_xlat45;
  let x_368 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) / vec3<f32>(x_366, x_366, x_366));
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_373 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
  let x_378 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_374.x, x_374.y));
  let x_379 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : vec3<f32> = u_xlat4;
  let x_383 : vec4<f32> = hlslcc_FragCoord;
  let x_385 : vec2<f32> = (vec2<f32>(x_381.x, x_381.y) * vec2<f32>(x_383.x, x_383.y));
  let x_386 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_385.x, x_385.y, x_386.z);
  let x_389 : f32 = u_xlat4.y;
  let x_392 : f32 = x_44.x_ScaleBiasRt.x;
  let x_395 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat45 = ((x_389 * x_392) + x_395);
  let x_397 : f32 = u_xlat45;
  u_xlat4.z = (-(x_397) + 1.0f);
  let x_401 : f32 = u_xlat1;
  u_xlat45 = ((-(x_401) * 0.959999979f) + 0.959999979f);
  let x_407 : f32 = u_xlat45;
  u_xlat18 = (-(x_407) + 1.0f);
  let x_410 : vec4<f32> = u_xlat0;
  let x_412 : f32 = u_xlat45;
  u_xlat5 = (vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412, x_412, x_412));
  let x_415 : vec4<f32> = u_xlat0;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_420 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : f32 = u_xlat1;
  let x_424 : vec4<f32> = u_xlat0;
  let x_429 : vec3<f32> = ((vec3<f32>(x_422, x_422, x_422) * vec3<f32>(x_424.x, x_424.y, x_424.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_430 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_433 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_433) + 1.0f);
  let x_436 : f32 = u_xlat1;
  let x_437 : f32 = u_xlat1;
  u_xlat45 = (x_436 * x_437);
  let x_439 : f32 = u_xlat45;
  u_xlat45 = max(x_439, 0.0078125f);
  let x_443 : f32 = u_xlat45;
  let x_444 : f32 = u_xlat45;
  u_xlat46 = (x_443 * x_444);
  let x_448 : f32 = u_xlat0.w;
  let x_449 : f32 = u_xlat18;
  u_xlat42 = (x_448 + x_449);
  let x_451 : f32 = u_xlat42;
  u_xlat42 = clamp(x_451, 0.0f, 1.0f);
  let x_453 : f32 = u_xlat45;
  u_xlat18 = ((x_453 * 4.0f) + 2.0f);
  let x_461 : vec3<f32> = u_xlat4;
  let x_464 : f32 = x_44.x_GlobalMipBias.x;
  let x_465 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_461.x, x_461.z), x_464);
  u_xlat4.x = x_465.x;
  let x_470 : f32 = u_xlat4.x;
  u_xlat32 = (x_470 + -1.0f);
  let x_473 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_474 : f32 = u_xlat32;
  u_xlat32 = ((x_473 * x_474) + 1.0f);
  let x_478 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_478, 1.0f);
  let x_482 : vec4<f32> = u_xlat2;
  let x_483 : vec2<f32> = vec2<f32>(x_482.x, x_482.y);
  let x_485 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_483.x, x_483.y, x_485);
  let x_497 : vec3<f32> = txVec0;
  let x_499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_497.xy, x_497.z);
  u_xlat2.x = x_499;
  let x_502 : f32 = x_91.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_502) + 1.0f);
  let x_507 : f32 = u_xlat2.x;
  let x_509 : f32 = x_91.x_MainLightShadowParams.x;
  let x_512 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_507 * x_509) + x_512);
  let x_519 : f32 = u_xlat2.z;
  u_xlatb16.x = (0.0f >= x_519);
  let x_524 : f32 = u_xlat2.z;
  u_xlatb30 = (x_524 >= 1.0f);
  let x_526 : bool = u_xlatb30;
  let x_528 : bool = u_xlatb16.x;
  u_xlatb16.x = (x_526 | x_528);
  let x_532 : bool = u_xlatb16.x;
  if (x_532) {
    x_533 = 1.0f;
  } else {
    let x_538 : f32 = u_xlat2.x;
    x_533 = x_538;
  }
  let x_539 : f32 = x_533;
  u_xlat2.x = x_539;
  let x_542 : vec3<f32> = vs_TEXCOORD7;
  let x_546 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_548 : vec3<f32> = (x_542 + -(x_546));
  let x_549 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat6;
  let x_553 : vec4<f32> = u_xlat6;
  u_xlat16.x = dot(vec3<f32>(x_551.x, x_551.y, x_551.z), vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_558 : f32 = u_xlat16.x;
  let x_560 : f32 = x_91.x_MainLightShadowParams.z;
  let x_563 : f32 = x_91.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_558 * x_560) + x_563);
  let x_567 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_567, 0.0f, 1.0f);
  let x_572 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_572) + 1.0f);
  let x_576 : f32 = u_xlat16.x;
  let x_577 : f32 = u_xlat30;
  let x_580 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_576 * x_577) + x_580);
  let x_589 : f32 = x_587.x_MainLightCookieTextureFormat;
  u_xlatb16.x = !((x_589 == -1.0f));
  let x_593 : bool = u_xlatb16.x;
  if (x_593) {
    let x_596 : vec3<f32> = vs_TEXCOORD7;
    let x_599 : vec4<f32> = x_587.x_MainLightWorldToLight[1i];
    let x_601 : vec2<f32> = (vec2<f32>(x_596.y, x_596.y) * vec2<f32>(x_599.x, x_599.y));
    let x_602 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_601.x, x_601.y, x_602.z);
    let x_605 : vec4<f32> = x_587.x_MainLightWorldToLight[0i];
    let x_607 : vec3<f32> = vs_TEXCOORD7;
    let x_610 : vec3<f32> = u_xlat16;
    let x_612 : vec2<f32> = ((vec2<f32>(x_605.x, x_605.y) * vec2<f32>(x_607.x, x_607.x)) + vec2<f32>(x_610.x, x_610.y));
    let x_613 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_612.x, x_612.y, x_613.z);
    let x_616 : vec4<f32> = x_587.x_MainLightWorldToLight[2i];
    let x_618 : vec3<f32> = vs_TEXCOORD7;
    let x_621 : vec3<f32> = u_xlat16;
    let x_623 : vec2<f32> = ((vec2<f32>(x_616.x, x_616.y) * vec2<f32>(x_618.z, x_618.z)) + vec2<f32>(x_621.x, x_621.y));
    let x_624 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_623.x, x_623.y, x_624.z);
    let x_626 : vec3<f32> = u_xlat16;
    let x_629 : vec4<f32> = x_587.x_MainLightWorldToLight[3i];
    let x_631 : vec2<f32> = (vec2<f32>(x_626.x, x_626.y) + vec2<f32>(x_629.x, x_629.y));
    let x_632 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_631.x, x_631.y, x_632.z);
    let x_634 : vec3<f32> = u_xlat16;
    let x_638 : vec2<f32> = ((vec2<f32>(x_634.x, x_634.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_639 : vec3<f32> = u_xlat16;
    u_xlat16 = vec3<f32>(x_638.x, x_638.y, x_639.z);
    let x_646 : vec3<f32> = u_xlat16;
    let x_649 : f32 = x_44.x_GlobalMipBias.x;
    let x_650 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_646.x, x_646.y), x_649);
    u_xlat6 = x_650;
    let x_652 : f32 = x_587.x_MainLightCookieTextureFormat;
    let x_654 : f32 = x_587.x_MainLightCookieTextureFormat;
    let x_656 : f32 = x_587.x_MainLightCookieTextureFormat;
    let x_658 : f32 = x_587.x_MainLightCookieTextureFormat;
    let x_659 : vec4<f32> = vec4<f32>(x_652, x_654, x_656, x_658);
    let x_666 : vec4<bool> = (vec4<f32>(x_659.x, x_659.y, x_659.z, x_659.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb16 = vec2<bool>(x_666.x, x_666.y);
    let x_669 : bool = u_xlatb16.y;
    if (x_669) {
      let x_674 : f32 = u_xlat6.w;
      x_670 = x_674;
    } else {
      let x_677 : f32 = u_xlat6.x;
      x_670 = x_677;
    }
    let x_678 : f32 = x_670;
    u_xlat30 = x_678;
    let x_680 : bool = u_xlatb16.x;
    if (x_680) {
      let x_684 : vec4<f32> = u_xlat6;
      x_681 = vec3<f32>(x_684.x, x_684.y, x_684.z);
    } else {
      let x_687 : f32 = u_xlat30;
      x_681 = vec3<f32>(x_687, x_687, x_687);
    }
    let x_689 : vec3<f32> = x_681;
    let x_690 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_696 : vec4<f32> = u_xlat6;
  let x_699 : vec4<f32> = x_44.x_MainLightColor;
  let x_701 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : f32 = u_xlat32;
  let x_706 : vec4<f32> = u_xlat6;
  let x_708 : vec3<f32> = (vec3<f32>(x_704, x_704, x_704) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_713 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_713;
  let x_717 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_717;
  let x_721 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_721;
  let x_723 : vec3<f32> = u_xlat7;
  let x_725 : vec3<f32> = u_xlat15;
  u_xlat16.x = dot(-(x_723), x_725);
  let x_729 : f32 = u_xlat16.x;
  let x_731 : f32 = u_xlat16.x;
  u_xlat16.x = (x_729 + x_731);
  let x_735 : vec3<f32> = u_xlat15;
  let x_736 : vec3<f32> = u_xlat16;
  let x_740 : vec3<f32> = u_xlat7;
  let x_742 : vec3<f32> = ((x_735 * -(vec3<f32>(x_736.x, x_736.x, x_736.x))) + -(x_740));
  let x_743 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec3<f32> = u_xlat15;
  let x_746 : vec3<f32> = u_xlat7;
  u_xlat16.x = dot(x_745, x_746);
  let x_750 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_750, 0.0f, 1.0f);
  let x_754 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_754) + 1.0f);
  let x_759 : f32 = u_xlat16.x;
  let x_761 : f32 = u_xlat16.x;
  u_xlat16.x = (x_759 * x_761);
  let x_765 : f32 = u_xlat16.x;
  let x_767 : f32 = u_xlat16.x;
  u_xlat16.x = (x_765 * x_767);
  let x_770 : f32 = u_xlat1;
  u_xlat30 = ((-(x_770) * 0.699999988f) + 1.700000048f);
  let x_776 : f32 = u_xlat1;
  let x_777 : f32 = u_xlat30;
  u_xlat1 = (x_776 * x_777);
  let x_779 : f32 = u_xlat1;
  u_xlat1 = (x_779 * 6.0f);
  let x_790 : vec4<f32> = u_xlat8;
  let x_792 : f32 = u_xlat1;
  let x_793 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_790.x, x_790.y, x_790.z), x_792);
  u_xlat8 = x_793;
  let x_795 : f32 = u_xlat8.w;
  u_xlat1 = (x_795 + -1.0f);
  let x_802 : f32 = x_800.unity_SpecCube0_HDR.w;
  let x_803 : f32 = u_xlat1;
  u_xlat1 = ((x_802 * x_803) + 1.0f);
  let x_806 : f32 = u_xlat1;
  u_xlat1 = max(x_806, 0.0f);
  let x_808 : f32 = u_xlat1;
  u_xlat1 = log2(x_808);
  let x_810 : f32 = u_xlat1;
  let x_812 : f32 = x_800.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_810 * x_812);
  let x_814 : f32 = u_xlat1;
  u_xlat1 = exp2(x_814);
  let x_816 : f32 = u_xlat1;
  let x_818 : f32 = x_800.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_816 * x_818);
  let x_820 : vec4<f32> = u_xlat8;
  let x_822 : f32 = u_xlat1;
  let x_824 : vec3<f32> = (vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(x_822, x_822, x_822));
  let x_825 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_829 : f32 = u_xlat45;
  let x_831 : f32 = u_xlat45;
  u_xlat9 = ((vec2<f32>(x_829, x_829) * vec2<f32>(x_831, x_831)) + vec2<f32>(-1.0f, 1.0f));
  let x_837 : f32 = u_xlat9.y;
  u_xlat1 = (1.0f / x_837);
  let x_840 : vec4<f32> = u_xlat0;
  let x_843 : f32 = u_xlat42;
  u_xlat23 = (-(vec3<f32>(x_840.x, x_840.y, x_840.z)) + vec3<f32>(x_843, x_843, x_843));
  let x_846 : vec3<f32> = u_xlat16;
  let x_848 : vec3<f32> = u_xlat23;
  let x_850 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_846.x, x_846.x, x_846.x) * x_848) + vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : f32 = u_xlat1;
  let x_855 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_853, x_853, x_853) * x_855);
  let x_857 : vec4<f32> = u_xlat8;
  let x_859 : vec3<f32> = u_xlat23;
  let x_860 : vec3<f32> = (vec3<f32>(x_857.x, x_857.y, x_857.z) * x_859);
  let x_861 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat3;
  let x_865 : vec3<f32> = u_xlat5;
  let x_867 : vec4<f32> = u_xlat8;
  let x_869 : vec3<f32> = ((vec3<f32>(x_863.x, x_863.y, x_863.z) * x_865) + vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_873 : f32 = u_xlat2.x;
  let x_875 : f32 = x_800.unity_LightData.z;
  u_xlat42 = (x_873 * x_875);
  let x_877 : vec3<f32> = u_xlat15;
  let x_879 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_877, vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : f32 = u_xlat1;
  u_xlat1 = clamp(x_882, 0.0f, 1.0f);
  let x_884 : f32 = u_xlat42;
  let x_885 : f32 = u_xlat1;
  u_xlat42 = (x_884 * x_885);
  let x_887 : f32 = u_xlat42;
  let x_889 : vec4<f32> = u_xlat6;
  let x_891 : vec3<f32> = (vec3<f32>(x_887, x_887, x_887) * vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec3<f32> = u_xlat7;
  let x_896 : vec4<f32> = x_44.x_MainLightPosition;
  let x_898 : vec3<f32> = (x_894 + vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat6;
  let x_903 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_901.x, x_901.y, x_901.z), vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : f32 = u_xlat42;
  u_xlat42 = max(x_906, 1.17549435e-37f);
  let x_909 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_909);
  let x_911 : f32 = u_xlat42;
  let x_913 : vec4<f32> = u_xlat6;
  let x_915 : vec3<f32> = (vec3<f32>(x_911, x_911, x_911) * vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec3<f32> = u_xlat15;
  let x_919 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_918, vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : f32 = u_xlat42;
  u_xlat42 = clamp(x_922, 0.0f, 1.0f);
  let x_925 : vec4<f32> = x_44.x_MainLightPosition;
  let x_927 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_925.x, x_925.y, x_925.z), vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : f32 = u_xlat1;
  u_xlat1 = clamp(x_930, 0.0f, 1.0f);
  let x_932 : f32 = u_xlat42;
  let x_933 : f32 = u_xlat42;
  u_xlat42 = (x_932 * x_933);
  let x_935 : f32 = u_xlat42;
  let x_937 : f32 = u_xlat9.x;
  u_xlat42 = ((x_935 * x_937) + 1.000010014f);
  let x_941 : f32 = u_xlat1;
  let x_942 : f32 = u_xlat1;
  u_xlat1 = (x_941 * x_942);
  let x_944 : f32 = u_xlat42;
  let x_945 : f32 = u_xlat42;
  u_xlat42 = (x_944 * x_945);
  let x_947 : f32 = u_xlat1;
  u_xlat1 = max(x_947, 0.100000001f);
  let x_950 : f32 = u_xlat42;
  let x_951 : f32 = u_xlat1;
  u_xlat42 = (x_950 * x_951);
  let x_953 : f32 = u_xlat18;
  let x_954 : f32 = u_xlat42;
  u_xlat42 = (x_953 * x_954);
  let x_956 : f32 = u_xlat46;
  let x_957 : f32 = u_xlat42;
  u_xlat42 = (x_956 / x_957);
  let x_959 : vec4<f32> = u_xlat0;
  let x_961 : f32 = u_xlat42;
  let x_964 : vec3<f32> = u_xlat5;
  let x_965 : vec3<f32> = ((vec3<f32>(x_959.x, x_959.y, x_959.z) * vec3<f32>(x_961, x_961, x_961)) + x_964);
  let x_966 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : vec4<f32> = u_xlat2;
  let x_970 : vec4<f32> = u_xlat6;
  let x_972 : vec3<f32> = (vec3<f32>(x_968.x, x_968.y, x_968.z) * vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_973 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_976 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_978 : f32 = x_800.unity_LightData.y;
  u_xlat42 = min(x_976, x_978);
  let x_981 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_981));
  let x_986 : f32 = x_587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_988 : f32 = x_587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_990 : f32 = x_587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_992 : f32 = x_587.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_993 : vec4<f32> = vec4<f32>(x_986, x_988, x_990, x_992);
  let x_999 : vec4<bool> = (vec4<f32>(x_993.x, x_993.y, x_993.z, x_993.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_999.x, x_999.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1010 : u32 = u_xlatu_loop_1;
    let x_1011 : u32 = u_xlatu42;
    if ((x_1010 < x_1011)) {
    } else {
      break;
    }
    let x_1014 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1014 >> 2u);
    let x_1017 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1017 & 3u));
    let x_1020 : u32 = u_xlatu45;
    let x_1023 : vec4<f32> = x_800.unity_LightIndices[bitcast<i32>(x_1020)];
    let x_1033 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1038 : vec4<u32> = indexable[x_1033];
    u_xlat45 = dot(x_1023, bitcast<vec4<f32>>(x_1038));
    let x_1041 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1041));
    let x_1044 : vec3<f32> = vs_TEXCOORD7;
    let x_1056 : u32 = u_xlatu45;
    let x_1059 : vec4<f32> = x_1055.x_AdditionalLightsPosition[bitcast<i32>(x_1056)];
    let x_1062 : u32 = u_xlatu45;
    let x_1065 : vec4<f32> = x_1055.x_AdditionalLightsPosition[bitcast<i32>(x_1062)];
    u_xlat23 = ((-(x_1044) * vec3<f32>(x_1059.w, x_1059.w, x_1059.w)) + vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
    let x_1069 : vec3<f32> = u_xlat23;
    let x_1070 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_1069, x_1070);
    let x_1072 : f32 = u_xlat47;
    u_xlat47 = max(x_1072, 6.10351562e-05f);
    let x_1076 : f32 = u_xlat47;
    u_xlat34 = inverseSqrt(x_1076);
    let x_1079 : f32 = u_xlat34;
    let x_1081 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1079, x_1079, x_1079) * x_1081);
    let x_1084 : f32 = u_xlat47;
    u_xlat48 = (1.0f / x_1084);
    let x_1086 : f32 = u_xlat47;
    let x_1087 : u32 = u_xlatu45;
    let x_1090 : f32 = x_1055.x_AdditionalLightsAttenuation[bitcast<i32>(x_1087)].x;
    u_xlat47 = (x_1086 * x_1090);
    let x_1092 : f32 = u_xlat47;
    let x_1094 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1092) * x_1094) + 1.0f);
    let x_1097 : f32 = u_xlat47;
    u_xlat47 = max(x_1097, 0.0f);
    let x_1099 : f32 = u_xlat47;
    let x_1100 : f32 = u_xlat47;
    u_xlat47 = (x_1099 * x_1100);
    let x_1102 : f32 = u_xlat47;
    let x_1103 : f32 = u_xlat48;
    u_xlat47 = (x_1102 * x_1103);
    let x_1105 : u32 = u_xlatu45;
    let x_1108 : vec4<f32> = x_1055.x_AdditionalLightsSpotDir[bitcast<i32>(x_1105)];
    let x_1110 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1108.x, x_1108.y, x_1108.z), x_1110);
    let x_1112 : f32 = u_xlat48;
    let x_1113 : u32 = u_xlatu45;
    let x_1116 : f32 = x_1055.x_AdditionalLightsAttenuation[bitcast<i32>(x_1113)].z;
    let x_1118 : u32 = u_xlatu45;
    let x_1121 : f32 = x_1055.x_AdditionalLightsAttenuation[bitcast<i32>(x_1118)].w;
    u_xlat48 = ((x_1112 * x_1116) + x_1121);
    let x_1123 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1123, 0.0f, 1.0f);
    let x_1125 : f32 = u_xlat48;
    let x_1126 : f32 = u_xlat48;
    u_xlat48 = (x_1125 * x_1126);
    let x_1128 : f32 = u_xlat47;
    let x_1129 : f32 = u_xlat48;
    u_xlat47 = (x_1128 * x_1129);
    let x_1132 : u32 = u_xlatu45;
    u_xlatu48 = (x_1132 >> 5u);
    let x_1135 : u32 = u_xlatu45;
    u_xlati49 = (1i << bitcast<u32>((bitcast<i32>(x_1135) & 31i)));
    let x_1141 : i32 = u_xlati49;
    let x_1143 : u32 = u_xlatu48;
    let x_1146 : f32 = x_587.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1143)].el;
    u_xlati48 = bitcast<i32>((bitcast<u32>(x_1141) & bitcast<u32>(x_1146)));
    let x_1150 : i32 = u_xlati48;
    if ((x_1150 != 0i)) {
      let x_1160 : u32 = u_xlatu45;
      let x_1163 : f32 = x_1159.x_AdditionalLightsLightTypes[bitcast<i32>(x_1160)].el;
      u_xlati48 = i32(x_1163);
      let x_1165 : i32 = u_xlati48;
      u_xlati49 = select(1i, 0i, (x_1165 != 0i));
      let x_1169 : u32 = u_xlatu45;
      u_xlati50 = (bitcast<i32>(x_1169) << bitcast<u32>(2i));
      let x_1172 : i32 = u_xlati49;
      if ((x_1172 != 0i)) {
        let x_1177 : vec3<f32> = vs_TEXCOORD7;
        let x_1179 : i32 = u_xlati50;
        let x_1182 : i32 = u_xlati50;
        let x_1186 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[((x_1179 + 1i) / 4i)][((x_1182 + 1i) % 4i)];
        let x_1188 : vec3<f32> = (vec3<f32>(x_1177.y, x_1177.y, x_1177.y) * vec3<f32>(x_1186.x, x_1186.y, x_1186.w));
        let x_1189 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
        let x_1191 : i32 = u_xlati50;
        let x_1193 : i32 = u_xlati50;
        let x_1196 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[(x_1191 / 4i)][(x_1193 % 4i)];
        let x_1198 : vec3<f32> = vs_TEXCOORD7;
        let x_1201 : vec4<f32> = u_xlat11;
        let x_1203 : vec3<f32> = ((vec3<f32>(x_1196.x, x_1196.y, x_1196.w) * vec3<f32>(x_1198.x, x_1198.x, x_1198.x)) + vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
        let x_1204 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
        let x_1206 : i32 = u_xlati50;
        let x_1209 : i32 = u_xlati50;
        let x_1213 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[((x_1206 + 2i) / 4i)][((x_1209 + 2i) % 4i)];
        let x_1215 : vec3<f32> = vs_TEXCOORD7;
        let x_1218 : vec4<f32> = u_xlat11;
        let x_1220 : vec3<f32> = ((vec3<f32>(x_1213.x, x_1213.y, x_1213.w) * vec3<f32>(x_1215.z, x_1215.z, x_1215.z)) + vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
        let x_1221 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat11;
        let x_1225 : i32 = u_xlati50;
        let x_1228 : i32 = u_xlati50;
        let x_1232 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[((x_1225 + 3i) / 4i)][((x_1228 + 3i) % 4i)];
        let x_1234 : vec3<f32> = (vec3<f32>(x_1223.x, x_1223.y, x_1223.z) + vec3<f32>(x_1232.x, x_1232.y, x_1232.w));
        let x_1235 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
        let x_1237 : vec4<f32> = u_xlat11;
        let x_1239 : vec4<f32> = u_xlat11;
        let x_1241 : vec2<f32> = (vec2<f32>(x_1237.x, x_1237.y) / vec2<f32>(x_1239.z, x_1239.z));
        let x_1242 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
        let x_1244 : vec4<f32> = u_xlat11;
        let x_1247 : vec2<f32> = ((vec2<f32>(x_1244.x, x_1244.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1248 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1247.x, x_1247.y, x_1248.z, x_1248.w);
        let x_1250 : vec4<f32> = u_xlat11;
        let x_1254 : vec2<f32> = clamp(vec2<f32>(x_1250.x, x_1250.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1255 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1254.x, x_1254.y, x_1255.z, x_1255.w);
        let x_1257 : u32 = u_xlatu45;
        let x_1260 : vec4<f32> = x_1159.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1257)];
        let x_1262 : vec4<f32> = u_xlat11;
        let x_1265 : u32 = u_xlatu45;
        let x_1268 : vec4<f32> = x_1159.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1265)];
        let x_1270 : vec2<f32> = ((vec2<f32>(x_1260.x, x_1260.y) * vec2<f32>(x_1262.x, x_1262.y)) + vec2<f32>(x_1268.z, x_1268.w));
        let x_1271 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
      } else {
        let x_1275 : i32 = u_xlati48;
        u_xlatb48 = (x_1275 == 1i);
        let x_1277 : bool = u_xlatb48;
        u_xlati48 = select(0i, 1i, x_1277);
        let x_1279 : i32 = u_xlati48;
        if ((x_1279 != 0i)) {
          let x_1284 : vec3<f32> = vs_TEXCOORD7;
          let x_1286 : i32 = u_xlati50;
          let x_1289 : i32 = u_xlati50;
          let x_1293 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[((x_1286 + 1i) / 4i)][((x_1289 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1284.y, x_1284.y) * vec2<f32>(x_1293.x, x_1293.y));
          let x_1296 : i32 = u_xlati50;
          let x_1298 : i32 = u_xlati50;
          let x_1301 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[(x_1296 / 4i)][(x_1298 % 4i)];
          let x_1303 : vec3<f32> = vs_TEXCOORD7;
          let x_1306 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1303.x, x_1303.x)) + x_1306);
          let x_1308 : i32 = u_xlati50;
          let x_1311 : i32 = u_xlati50;
          let x_1315 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[((x_1308 + 2i) / 4i)][((x_1311 + 2i) % 4i)];
          let x_1317 : vec3<f32> = vs_TEXCOORD7;
          let x_1320 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1315.x, x_1315.y) * vec2<f32>(x_1317.z, x_1317.z)) + x_1320);
          let x_1322 : vec2<f32> = u_xlat39;
          let x_1323 : i32 = u_xlati50;
          let x_1326 : i32 = u_xlati50;
          let x_1330 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[((x_1323 + 3i) / 4i)][((x_1326 + 3i) % 4i)];
          u_xlat39 = (x_1322 + vec2<f32>(x_1330.x, x_1330.y));
          let x_1333 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1333 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1336 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1336);
          let x_1338 : u32 = u_xlatu45;
          let x_1341 : vec4<f32> = x_1159.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1338)];
          let x_1343 : vec2<f32> = u_xlat39;
          let x_1345 : u32 = u_xlatu45;
          let x_1348 : vec4<f32> = x_1159.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1345)];
          let x_1350 : vec2<f32> = ((vec2<f32>(x_1341.x, x_1341.y) * x_1343) + vec2<f32>(x_1348.z, x_1348.w));
          let x_1351 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        } else {
          let x_1355 : vec3<f32> = vs_TEXCOORD7;
          let x_1357 : i32 = u_xlati50;
          let x_1360 : i32 = u_xlati50;
          let x_1364 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[((x_1357 + 1i) / 4i)][((x_1360 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1355.y, x_1355.y, x_1355.y, x_1355.y) * x_1364);
          let x_1366 : i32 = u_xlati50;
          let x_1368 : i32 = u_xlati50;
          let x_1371 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[(x_1366 / 4i)][(x_1368 % 4i)];
          let x_1372 : vec3<f32> = vs_TEXCOORD7;
          let x_1375 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1371 * vec4<f32>(x_1372.x, x_1372.x, x_1372.x, x_1372.x)) + x_1375);
          let x_1377 : i32 = u_xlati50;
          let x_1380 : i32 = u_xlati50;
          let x_1384 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[((x_1377 + 2i) / 4i)][((x_1380 + 2i) % 4i)];
          let x_1385 : vec3<f32> = vs_TEXCOORD7;
          let x_1388 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1384 * vec4<f32>(x_1385.z, x_1385.z, x_1385.z, x_1385.z)) + x_1388);
          let x_1390 : vec4<f32> = u_xlat12;
          let x_1391 : i32 = u_xlati50;
          let x_1394 : i32 = u_xlati50;
          let x_1398 : vec4<f32> = x_1159.x_AdditionalLightsWorldToLights[((x_1391 + 3i) / 4i)][((x_1394 + 3i) % 4i)];
          u_xlat12 = (x_1390 + x_1398);
          let x_1400 : vec4<f32> = u_xlat12;
          let x_1402 : vec4<f32> = u_xlat12;
          let x_1404 : vec3<f32> = (vec3<f32>(x_1400.x, x_1400.y, x_1400.z) / vec3<f32>(x_1402.w, x_1402.w, x_1402.w));
          let x_1405 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);
          let x_1407 : vec4<f32> = u_xlat12;
          let x_1409 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(vec3<f32>(x_1407.x, x_1407.y, x_1407.z), vec3<f32>(x_1409.x, x_1409.y, x_1409.z));
          let x_1412 : f32 = u_xlat48;
          u_xlat48 = inverseSqrt(x_1412);
          let x_1414 : f32 = u_xlat48;
          let x_1416 : vec4<f32> = u_xlat12;
          let x_1418 : vec3<f32> = (vec3<f32>(x_1414, x_1414, x_1414) * vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
          let x_1419 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
          let x_1421 : vec4<f32> = u_xlat12;
          u_xlat48 = dot(abs(vec3<f32>(x_1421.x, x_1421.y, x_1421.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1426 : f32 = u_xlat48;
          u_xlat48 = max(x_1426, 0.000001f);
          let x_1429 : f32 = u_xlat48;
          u_xlat48 = (1.0f / x_1429);
          let x_1432 : f32 = u_xlat48;
          let x_1434 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1432, x_1432, x_1432) * vec3<f32>(x_1434.z, x_1434.x, x_1434.y));
          let x_1438 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1438);
          let x_1442 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1442, 0.0f, 1.0f);
          let x_1446 : vec3<f32> = u_xlat13;
          let x_1449 : vec4<bool> = (vec4<f32>(x_1446.y, x_1446.z, x_1446.y, x_1446.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1449.x, x_1449.y);
          let x_1452 : bool = u_xlatb39.x;
          if (x_1452) {
            let x_1457 : f32 = u_xlat13.x;
            x_1453 = x_1457;
          } else {
            let x_1460 : f32 = u_xlat13.x;
            x_1453 = -(x_1460);
          }
          let x_1462 : f32 = x_1453;
          u_xlat39.x = x_1462;
          let x_1465 : bool = u_xlatb39.y;
          if (x_1465) {
            let x_1470 : f32 = u_xlat13.x;
            x_1466 = x_1470;
          } else {
            let x_1473 : f32 = u_xlat13.x;
            x_1466 = -(x_1473);
          }
          let x_1475 : f32 = x_1466;
          u_xlat39.y = x_1475;
          let x_1477 : vec4<f32> = u_xlat12;
          let x_1479 : f32 = u_xlat48;
          let x_1482 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1477.x, x_1477.y) * vec2<f32>(x_1479, x_1479)) + x_1482);
          let x_1484 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1484 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1487 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1487, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1491 : u32 = u_xlatu45;
          let x_1494 : vec4<f32> = x_1159.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1491)];
          let x_1496 : vec2<f32> = u_xlat39;
          let x_1498 : u32 = u_xlatu45;
          let x_1501 : vec4<f32> = x_1159.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1498)];
          let x_1503 : vec2<f32> = ((vec2<f32>(x_1494.x, x_1494.y) * x_1496) + vec2<f32>(x_1501.z, x_1501.w));
          let x_1504 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1503.x, x_1503.y, x_1504.z, x_1504.w);
        }
      }
      let x_1511 : vec4<f32> = u_xlat11;
      let x_1514 : f32 = x_44.x_GlobalMipBias.x;
      let x_1515 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1511.x, x_1511.y), x_1514);
      u_xlat11 = x_1515;
      let x_1517 : bool = u_xlatb6.y;
      if (x_1517) {
        let x_1522 : f32 = u_xlat11.w;
        x_1518 = x_1522;
      } else {
        let x_1525 : f32 = u_xlat11.x;
        x_1518 = x_1525;
      }
      let x_1526 : f32 = x_1518;
      u_xlat48 = x_1526;
      let x_1528 : bool = u_xlatb6.x;
      if (x_1528) {
        let x_1532 : vec4<f32> = u_xlat11;
        x_1529 = vec3<f32>(x_1532.x, x_1532.y, x_1532.z);
      } else {
        let x_1535 : f32 = u_xlat48;
        x_1529 = vec3<f32>(x_1535, x_1535, x_1535);
      }
      let x_1537 : vec3<f32> = x_1529;
      let x_1538 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1544 : vec4<f32> = u_xlat11;
    let x_1546 : u32 = u_xlatu45;
    let x_1549 : vec4<f32> = x_1055.x_AdditionalLightsColor[bitcast<i32>(x_1546)];
    let x_1551 : vec3<f32> = (vec3<f32>(x_1544.x, x_1544.y, x_1544.z) * vec3<f32>(x_1549.x, x_1549.y, x_1549.z));
    let x_1552 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1551.x, x_1551.y, x_1551.z, x_1552.w);
    let x_1554 : f32 = u_xlat32;
    let x_1556 : vec4<f32> = u_xlat11;
    let x_1558 : vec3<f32> = (vec3<f32>(x_1554, x_1554, x_1554) * vec3<f32>(x_1556.x, x_1556.y, x_1556.z));
    let x_1559 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1559.w);
    let x_1561 : vec3<f32> = u_xlat15;
    let x_1562 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(x_1561, x_1562);
    let x_1564 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1564, 0.0f, 1.0f);
    let x_1566 : f32 = u_xlat45;
    let x_1567 : f32 = u_xlat47;
    u_xlat45 = (x_1566 * x_1567);
    let x_1569 : f32 = u_xlat45;
    let x_1571 : vec4<f32> = u_xlat11;
    let x_1573 : vec3<f32> = (vec3<f32>(x_1569, x_1569, x_1569) * vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
    let x_1574 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1573.x, x_1573.y, x_1573.z, x_1574.w);
    let x_1576 : vec3<f32> = u_xlat23;
    let x_1577 : f32 = u_xlat34;
    let x_1580 : vec3<f32> = u_xlat7;
    u_xlat23 = ((x_1576 * vec3<f32>(x_1577, x_1577, x_1577)) + x_1580);
    let x_1582 : vec3<f32> = u_xlat23;
    let x_1583 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(x_1582, x_1583);
    let x_1585 : f32 = u_xlat45;
    u_xlat45 = max(x_1585, 1.17549435e-37f);
    let x_1587 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1587);
    let x_1589 : f32 = u_xlat45;
    let x_1591 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_1589, x_1589, x_1589) * x_1591);
    let x_1593 : vec3<f32> = u_xlat15;
    let x_1594 : vec3<f32> = u_xlat23;
    u_xlat45 = dot(x_1593, x_1594);
    let x_1596 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1596, 0.0f, 1.0f);
    let x_1598 : vec3<f32> = u_xlat10;
    let x_1599 : vec3<f32> = u_xlat23;
    u_xlat47 = dot(x_1598, x_1599);
    let x_1601 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1601, 0.0f, 1.0f);
    let x_1603 : f32 = u_xlat45;
    let x_1604 : f32 = u_xlat45;
    u_xlat45 = (x_1603 * x_1604);
    let x_1606 : f32 = u_xlat45;
    let x_1608 : f32 = u_xlat9.x;
    u_xlat45 = ((x_1606 * x_1608) + 1.000010014f);
    let x_1611 : f32 = u_xlat47;
    let x_1612 : f32 = u_xlat47;
    u_xlat47 = (x_1611 * x_1612);
    let x_1614 : f32 = u_xlat45;
    let x_1615 : f32 = u_xlat45;
    u_xlat45 = (x_1614 * x_1615);
    let x_1617 : f32 = u_xlat47;
    u_xlat47 = max(x_1617, 0.100000001f);
    let x_1619 : f32 = u_xlat45;
    let x_1620 : f32 = u_xlat47;
    u_xlat45 = (x_1619 * x_1620);
    let x_1622 : f32 = u_xlat18;
    let x_1623 : f32 = u_xlat45;
    u_xlat45 = (x_1622 * x_1623);
    let x_1625 : f32 = u_xlat46;
    let x_1626 : f32 = u_xlat45;
    u_xlat45 = (x_1625 / x_1626);
    let x_1628 : vec4<f32> = u_xlat0;
    let x_1630 : f32 = u_xlat45;
    let x_1633 : vec3<f32> = u_xlat5;
    u_xlat23 = ((vec3<f32>(x_1628.x, x_1628.y, x_1628.z) * vec3<f32>(x_1630, x_1630, x_1630)) + x_1633);
    let x_1635 : vec3<f32> = u_xlat23;
    let x_1636 : vec4<f32> = u_xlat11;
    let x_1639 : vec4<f32> = u_xlat8;
    let x_1641 : vec3<f32> = ((x_1635 * vec3<f32>(x_1636.x, x_1636.y, x_1636.z)) + vec3<f32>(x_1639.x, x_1639.y, x_1639.z));
    let x_1642 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1642.w);

    continuing {
      let x_1644 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1644 + bitcast<u32>(1i));
    }
  }
  let x_1646 : vec4<f32> = u_xlat3;
  let x_1648 : vec3<f32> = u_xlat4;
  let x_1651 : vec4<f32> = u_xlat2;
  let x_1653 : vec3<f32> = ((vec3<f32>(x_1646.x, x_1646.y, x_1646.z) * vec3<f32>(x_1648.x, x_1648.x, x_1648.x)) + vec3<f32>(x_1651.x, x_1651.y, x_1651.z));
  let x_1654 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1654.w);
  let x_1656 : vec4<f32> = u_xlat8;
  let x_1658 : vec4<f32> = u_xlat0;
  let x_1660 : vec3<f32> = (vec3<f32>(x_1656.x, x_1656.y, x_1656.z) + vec3<f32>(x_1658.x, x_1658.y, x_1658.z));
  let x_1661 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1660.x, x_1660.y, x_1660.z, x_1661.w);
  let x_1663 : f32 = u_xlat44;
  let x_1664 : f32 = u_xlat44;
  u_xlat42 = (x_1663 * -(x_1664));
  let x_1667 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1667);
  let x_1669 : vec4<f32> = u_xlat0;
  let x_1673 : vec4<f32> = x_44.unity_FogColor;
  let x_1676 : vec3<f32> = (vec3<f32>(x_1669.x, x_1669.y, x_1669.z) + -(vec3<f32>(x_1673.x, x_1673.y, x_1673.z)));
  let x_1677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
  let x_1681 : f32 = u_xlat42;
  let x_1683 : vec4<f32> = u_xlat0;
  let x_1687 : vec4<f32> = x_44.unity_FogColor;
  let x_1689 : vec3<f32> = ((vec3<f32>(x_1681, x_1681, x_1681) * vec3<f32>(x_1683.x, x_1683.y, x_1683.z)) + vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
  let x_1690 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

