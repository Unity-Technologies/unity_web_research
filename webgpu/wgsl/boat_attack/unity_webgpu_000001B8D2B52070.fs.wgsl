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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_91 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_668 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_893 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat13 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat15 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var u_xlat26 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb13 : bool;
  var u_xlatb24 : bool;
  var x_527 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat10 : vec3<f32>;
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
  u_xlat12.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat12;
  let x_80 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * vec3<f32>(x_80.x, x_80.y, x_80.z));
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
  u_xlat13 = (vec3<f32>(x_225.y, x_225.y, x_225.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : i32 = u_xlati2;
  let x_240 : i32 = u_xlati2;
  let x_243 : vec4<f32> = x_91.x_MainLightWorldToShadow[(x_238 / 4i)][(x_240 % 4i)];
  let x_245 : vec3<f32> = vs_TEXCOORD7;
  let x_248 : vec3<f32> = u_xlat13;
  u_xlat13 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.x, x_245.x, x_245.x)) + x_248);
  let x_250 : i32 = u_xlati2;
  let x_253 : i32 = u_xlati2;
  let x_257 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_250 + 2i) / 4i)][((x_253 + 2i) % 4i)];
  let x_259 : vec3<f32> = vs_TEXCOORD7;
  let x_262 : vec3<f32> = u_xlat13;
  u_xlat13 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.z, x_259.z, x_259.z)) + x_262);
  let x_264 : vec3<f32> = u_xlat13;
  let x_265 : i32 = u_xlati2;
  let x_268 : i32 = u_xlati2;
  let x_272 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_265 + 3i) / 4i)][((x_268 + 3i) % 4i)];
  let x_274 : vec3<f32> = (x_264 + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_279 : f32 = vs_TEXCOORD7.y;
  let x_282 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat35 = (x_279 * x_282);
  let x_285 : f32 = x_44.unity_MatrixV[0i].z;
  let x_287 : f32 = vs_TEXCOORD7.x;
  let x_289 : f32 = u_xlat35;
  u_xlat35 = ((x_285 * x_287) + x_289);
  let x_292 : f32 = x_44.unity_MatrixV[2i].z;
  let x_294 : f32 = vs_TEXCOORD7.z;
  let x_296 : f32 = u_xlat35;
  u_xlat35 = ((x_292 * x_294) + x_296);
  let x_298 : f32 = u_xlat35;
  let x_300 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat35 = (x_298 + x_300);
  let x_302 : f32 = u_xlat35;
  let x_306 : f32 = x_44.x_ProjectionParams.y;
  u_xlat35 = (-(x_302) + -(x_306));
  let x_309 : f32 = u_xlat35;
  u_xlat35 = max(x_309, 0.0f);
  let x_311 : f32 = u_xlat35;
  let x_314 : f32 = x_44.unity_FogParams.x;
  u_xlat35 = (x_311 * x_314);
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
  let x_343 : vec3<f32> = u_xlat12;
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
  u_xlat36 = max(x_361, 0.0001f);
  let x_364 : vec4<f32> = u_xlat3;
  let x_366 : f32 = u_xlat36;
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
  u_xlat36 = ((x_389 * x_392) + x_395);
  let x_397 : f32 = u_xlat36;
  u_xlat4.z = (-(x_397) + 1.0f);
  let x_401 : f32 = u_xlat1;
  u_xlat36 = ((-(x_401) * 0.959999979f) + 0.959999979f);
  let x_407 : f32 = u_xlat36;
  u_xlat15 = (-(x_407) + 1.0f);
  let x_410 : vec4<f32> = u_xlat0;
  let x_412 : f32 = u_xlat36;
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
  u_xlat36 = (x_436 * x_437);
  let x_439 : f32 = u_xlat36;
  u_xlat36 = max(x_439, 0.0078125f);
  let x_443 : f32 = u_xlat36;
  let x_444 : f32 = u_xlat36;
  u_xlat37 = (x_443 * x_444);
  let x_448 : f32 = u_xlat0.w;
  let x_449 : f32 = u_xlat15;
  u_xlat33 = (x_448 + x_449);
  let x_451 : f32 = u_xlat33;
  u_xlat33 = clamp(x_451, 0.0f, 1.0f);
  let x_453 : f32 = u_xlat36;
  u_xlat15 = ((x_453 * 4.0f) + 2.0f);
  let x_461 : vec3<f32> = u_xlat4;
  let x_464 : f32 = x_44.x_GlobalMipBias.x;
  let x_465 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_461.x, x_461.z), x_464);
  u_xlat4.x = x_465.x;
  let x_470 : f32 = u_xlat4.x;
  u_xlat26 = (x_470 + -1.0f);
  let x_473 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_474 : f32 = u_xlat26;
  u_xlat26 = ((x_473 * x_474) + 1.0f);
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
  u_xlat13.x = (-(x_502) + 1.0f);
  let x_507 : f32 = u_xlat2.x;
  let x_509 : f32 = x_91.x_MainLightShadowParams.x;
  let x_512 : f32 = u_xlat13.x;
  u_xlat2.x = ((x_507 * x_509) + x_512);
  let x_517 : f32 = u_xlat2.z;
  u_xlatb13 = (0.0f >= x_517);
  let x_521 : f32 = u_xlat2.z;
  u_xlatb24 = (x_521 >= 1.0f);
  let x_523 : bool = u_xlatb24;
  let x_524 : bool = u_xlatb13;
  u_xlatb13 = (x_523 | x_524);
  let x_526 : bool = u_xlatb13;
  if (x_526) {
    x_527 = 1.0f;
  } else {
    let x_532 : f32 = u_xlat2.x;
    x_527 = x_532;
  }
  let x_533 : f32 = x_527;
  u_xlat2.x = x_533;
  let x_536 : vec3<f32> = vs_TEXCOORD7;
  let x_540 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_536 + -(x_540));
  let x_543 : vec3<f32> = u_xlat6;
  let x_544 : vec3<f32> = u_xlat6;
  u_xlat13.x = dot(x_543, x_544);
  let x_548 : f32 = u_xlat13.x;
  let x_550 : f32 = x_91.x_MainLightShadowParams.z;
  let x_553 : f32 = x_91.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_548 * x_550) + x_553);
  let x_557 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_557, 0.0f, 1.0f);
  let x_562 : f32 = u_xlat2.x;
  u_xlat24 = (-(x_562) + 1.0f);
  let x_566 : f32 = u_xlat13.x;
  let x_567 : f32 = u_xlat24;
  let x_570 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_566 * x_567) + x_570);
  let x_573 : f32 = u_xlat26;
  let x_576 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_573, x_573, x_573) * vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_581 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_581;
  let x_585 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_585;
  let x_589 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_589;
  let x_591 : vec3<f32> = u_xlat7;
  let x_593 : vec3<f32> = u_xlat12;
  u_xlat13.x = dot(-(x_591), x_593);
  let x_597 : f32 = u_xlat13.x;
  let x_599 : f32 = u_xlat13.x;
  u_xlat13.x = (x_597 + x_599);
  let x_603 : vec3<f32> = u_xlat12;
  let x_604 : vec3<f32> = u_xlat13;
  let x_608 : vec3<f32> = u_xlat7;
  let x_610 : vec3<f32> = ((x_603 * -(vec3<f32>(x_604.x, x_604.x, x_604.x))) + -(x_608));
  let x_611 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec3<f32> = u_xlat12;
  let x_614 : vec3<f32> = u_xlat7;
  u_xlat13.x = dot(x_613, x_614);
  let x_618 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_618, 0.0f, 1.0f);
  let x_622 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_622) + 1.0f);
  let x_627 : f32 = u_xlat13.x;
  let x_629 : f32 = u_xlat13.x;
  u_xlat13.x = (x_627 * x_629);
  let x_633 : f32 = u_xlat13.x;
  let x_635 : f32 = u_xlat13.x;
  u_xlat13.x = (x_633 * x_635);
  let x_638 : f32 = u_xlat1;
  u_xlat24 = ((-(x_638) * 0.699999988f) + 1.700000048f);
  let x_644 : f32 = u_xlat1;
  let x_645 : f32 = u_xlat24;
  u_xlat1 = (x_644 * x_645);
  let x_647 : f32 = u_xlat1;
  u_xlat1 = (x_647 * 6.0f);
  let x_658 : vec4<f32> = u_xlat8;
  let x_660 : f32 = u_xlat1;
  let x_661 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_658.x, x_658.y, x_658.z), x_660);
  u_xlat8 = x_661;
  let x_663 : f32 = u_xlat8.w;
  u_xlat1 = (x_663 + -1.0f);
  let x_670 : f32 = x_668.unity_SpecCube0_HDR.w;
  let x_671 : f32 = u_xlat1;
  u_xlat1 = ((x_670 * x_671) + 1.0f);
  let x_674 : f32 = u_xlat1;
  u_xlat1 = max(x_674, 0.0f);
  let x_676 : f32 = u_xlat1;
  u_xlat1 = log2(x_676);
  let x_678 : f32 = u_xlat1;
  let x_680 : f32 = x_668.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_678 * x_680);
  let x_682 : f32 = u_xlat1;
  u_xlat1 = exp2(x_682);
  let x_684 : f32 = u_xlat1;
  let x_686 : f32 = x_668.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_684 * x_686);
  let x_688 : vec4<f32> = u_xlat8;
  let x_690 : f32 = u_xlat1;
  let x_692 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(x_690, x_690, x_690));
  let x_693 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_697 : f32 = u_xlat36;
  let x_699 : f32 = u_xlat36;
  u_xlat9 = ((vec2<f32>(x_697, x_697) * vec2<f32>(x_699, x_699)) + vec2<f32>(-1.0f, 1.0f));
  let x_705 : f32 = u_xlat9.y;
  u_xlat1 = (1.0f / x_705);
  let x_708 : vec4<f32> = u_xlat0;
  let x_711 : f32 = u_xlat33;
  u_xlat20 = (-(vec3<f32>(x_708.x, x_708.y, x_708.z)) + vec3<f32>(x_711, x_711, x_711));
  let x_714 : vec3<f32> = u_xlat13;
  let x_716 : vec3<f32> = u_xlat20;
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat20 = ((vec3<f32>(x_714.x, x_714.x, x_714.x) * x_716) + vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : f32 = u_xlat1;
  let x_723 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_721, x_721, x_721) * x_723);
  let x_725 : vec4<f32> = u_xlat8;
  let x_727 : vec3<f32> = u_xlat20;
  let x_728 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) * x_727);
  let x_729 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : vec4<f32> = u_xlat3;
  let x_733 : vec3<f32> = u_xlat5;
  let x_735 : vec4<f32> = u_xlat8;
  let x_737 : vec3<f32> = ((vec3<f32>(x_731.x, x_731.y, x_731.z) * x_733) + vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_741 : f32 = u_xlat2.x;
  let x_743 : f32 = x_668.unity_LightData.z;
  u_xlat33 = (x_741 * x_743);
  let x_745 : vec3<f32> = u_xlat12;
  let x_747 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_745, vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : f32 = u_xlat1;
  u_xlat1 = clamp(x_750, 0.0f, 1.0f);
  let x_752 : f32 = u_xlat33;
  let x_753 : f32 = u_xlat1;
  u_xlat33 = (x_752 * x_753);
  let x_755 : f32 = u_xlat33;
  let x_757 : vec3<f32> = u_xlat6;
  let x_758 : vec3<f32> = (vec3<f32>(x_755, x_755, x_755) * x_757);
  let x_759 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec3<f32> = u_xlat7;
  let x_763 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = (x_761 + vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec3<f32> = u_xlat6;
  let x_767 : vec3<f32> = u_xlat6;
  u_xlat33 = dot(x_766, x_767);
  let x_769 : f32 = u_xlat33;
  u_xlat33 = max(x_769, 1.17549435e-37f);
  let x_772 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_772);
  let x_774 : f32 = u_xlat33;
  let x_776 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_774, x_774, x_774) * x_776);
  let x_778 : vec3<f32> = u_xlat12;
  let x_779 : vec3<f32> = u_xlat6;
  u_xlat33 = dot(x_778, x_779);
  let x_781 : f32 = u_xlat33;
  u_xlat33 = clamp(x_781, 0.0f, 1.0f);
  let x_784 : vec4<f32> = x_44.x_MainLightPosition;
  let x_786 : vec3<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_784.x, x_784.y, x_784.z), x_786);
  let x_788 : f32 = u_xlat1;
  u_xlat1 = clamp(x_788, 0.0f, 1.0f);
  let x_790 : f32 = u_xlat33;
  let x_791 : f32 = u_xlat33;
  u_xlat33 = (x_790 * x_791);
  let x_793 : f32 = u_xlat33;
  let x_795 : f32 = u_xlat9.x;
  u_xlat33 = ((x_793 * x_795) + 1.000010014f);
  let x_799 : f32 = u_xlat1;
  let x_800 : f32 = u_xlat1;
  u_xlat1 = (x_799 * x_800);
  let x_802 : f32 = u_xlat33;
  let x_803 : f32 = u_xlat33;
  u_xlat33 = (x_802 * x_803);
  let x_805 : f32 = u_xlat1;
  u_xlat1 = max(x_805, 0.100000001f);
  let x_808 : f32 = u_xlat33;
  let x_809 : f32 = u_xlat1;
  u_xlat33 = (x_808 * x_809);
  let x_811 : f32 = u_xlat15;
  let x_812 : f32 = u_xlat33;
  u_xlat33 = (x_811 * x_812);
  let x_814 : f32 = u_xlat37;
  let x_815 : f32 = u_xlat33;
  u_xlat33 = (x_814 / x_815);
  let x_817 : vec4<f32> = u_xlat0;
  let x_819 : f32 = u_xlat33;
  let x_822 : vec3<f32> = u_xlat5;
  u_xlat6 = ((vec3<f32>(x_817.x, x_817.y, x_817.z) * vec3<f32>(x_819, x_819, x_819)) + x_822);
  let x_824 : vec4<f32> = u_xlat2;
  let x_826 : vec3<f32> = u_xlat6;
  let x_827 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) * x_826);
  let x_828 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_831 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_833 : f32 = x_668.unity_LightData.y;
  u_xlat33 = min(x_831, x_833);
  let x_836 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_836));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_848 : u32 = u_xlatu_loop_1;
    let x_849 : u32 = u_xlatu33;
    if ((x_848 < x_849)) {
    } else {
      break;
    }
    let x_852 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_852 >> 2u);
    let x_855 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_855 & 3u));
    let x_858 : u32 = u_xlatu36;
    let x_861 : vec4<f32> = x_668.unity_LightIndices[bitcast<i32>(x_858)];
    let x_871 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_876 : vec4<u32> = indexable[x_871];
    u_xlat36 = dot(x_861, bitcast<vec4<f32>>(x_876));
    let x_880 : f32 = u_xlat36;
    u_xlati36 = i32(x_880);
    let x_882 : vec3<f32> = vs_TEXCOORD7;
    let x_894 : i32 = u_xlati36;
    let x_896 : vec4<f32> = x_893.x_AdditionalLightsPosition[x_894];
    let x_899 : i32 = u_xlati36;
    let x_901 : vec4<f32> = x_893.x_AdditionalLightsPosition[x_899];
    let x_903 : vec3<f32> = ((-(x_882) * vec3<f32>(x_896.w, x_896.w, x_896.w)) + vec3<f32>(x_901.x, x_901.y, x_901.z));
    let x_904 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
    let x_907 : vec4<f32> = u_xlat8;
    let x_909 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_907.x, x_907.y, x_907.z), vec3<f32>(x_909.x, x_909.y, x_909.z));
    let x_912 : f32 = u_xlat38;
    u_xlat38 = max(x_912, 6.10351562e-05f);
    let x_916 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_916);
    let x_918 : f32 = u_xlat39;
    let x_920 : vec4<f32> = u_xlat8;
    u_xlat20 = (vec3<f32>(x_918, x_918, x_918) * vec3<f32>(x_920.x, x_920.y, x_920.z));
    let x_924 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_924);
    let x_926 : f32 = u_xlat38;
    let x_927 : i32 = u_xlati36;
    let x_929 : f32 = x_893.x_AdditionalLightsAttenuation[x_927].x;
    u_xlat38 = (x_926 * x_929);
    let x_931 : f32 = u_xlat38;
    let x_933 : f32 = u_xlat38;
    u_xlat38 = ((-(x_931) * x_933) + 1.0f);
    let x_936 : f32 = u_xlat38;
    u_xlat38 = max(x_936, 0.0f);
    let x_938 : f32 = u_xlat38;
    let x_939 : f32 = u_xlat38;
    u_xlat38 = (x_938 * x_939);
    let x_941 : f32 = u_xlat38;
    let x_942 : f32 = u_xlat40;
    u_xlat38 = (x_941 * x_942);
    let x_944 : i32 = u_xlati36;
    let x_946 : vec4<f32> = x_893.x_AdditionalLightsSpotDir[x_944];
    let x_948 : vec3<f32> = u_xlat20;
    u_xlat40 = dot(vec3<f32>(x_946.x, x_946.y, x_946.z), x_948);
    let x_950 : f32 = u_xlat40;
    let x_951 : i32 = u_xlati36;
    let x_953 : f32 = x_893.x_AdditionalLightsAttenuation[x_951].z;
    let x_955 : i32 = u_xlati36;
    let x_957 : f32 = x_893.x_AdditionalLightsAttenuation[x_955].w;
    u_xlat40 = ((x_950 * x_953) + x_957);
    let x_959 : f32 = u_xlat40;
    u_xlat40 = clamp(x_959, 0.0f, 1.0f);
    let x_961 : f32 = u_xlat40;
    let x_962 : f32 = u_xlat40;
    u_xlat40 = (x_961 * x_962);
    let x_964 : f32 = u_xlat38;
    let x_965 : f32 = u_xlat40;
    u_xlat38 = (x_964 * x_965);
    let x_968 : f32 = u_xlat26;
    let x_970 : i32 = u_xlati36;
    let x_972 : vec4<f32> = x_893.x_AdditionalLightsColor[x_970];
    u_xlat10 = (vec3<f32>(x_968, x_968, x_968) * vec3<f32>(x_972.x, x_972.y, x_972.z));
    let x_975 : vec3<f32> = u_xlat12;
    let x_976 : vec3<f32> = u_xlat20;
    u_xlat36 = dot(x_975, x_976);
    let x_978 : f32 = u_xlat36;
    u_xlat36 = clamp(x_978, 0.0f, 1.0f);
    let x_980 : f32 = u_xlat36;
    let x_981 : f32 = u_xlat38;
    u_xlat36 = (x_980 * x_981);
    let x_983 : f32 = u_xlat36;
    let x_985 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_983, x_983, x_983) * x_985);
    let x_987 : vec4<f32> = u_xlat8;
    let x_989 : f32 = u_xlat39;
    let x_992 : vec3<f32> = u_xlat7;
    let x_993 : vec3<f32> = ((vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(x_989, x_989, x_989)) + x_992);
    let x_994 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
    let x_996 : vec4<f32> = u_xlat8;
    let x_998 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_996.x, x_996.y, x_996.z), vec3<f32>(x_998.x, x_998.y, x_998.z));
    let x_1001 : f32 = u_xlat36;
    u_xlat36 = max(x_1001, 1.17549435e-37f);
    let x_1003 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1003);
    let x_1005 : f32 = u_xlat36;
    let x_1007 : vec4<f32> = u_xlat8;
    let x_1009 : vec3<f32> = (vec3<f32>(x_1005, x_1005, x_1005) * vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
    let x_1010 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
    let x_1012 : vec3<f32> = u_xlat12;
    let x_1013 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(x_1012, vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
    let x_1016 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1016, 0.0f, 1.0f);
    let x_1018 : vec3<f32> = u_xlat20;
    let x_1019 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1018, vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
    let x_1022 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1022, 0.0f, 1.0f);
    let x_1024 : f32 = u_xlat36;
    let x_1025 : f32 = u_xlat36;
    u_xlat36 = (x_1024 * x_1025);
    let x_1027 : f32 = u_xlat36;
    let x_1029 : f32 = u_xlat9.x;
    u_xlat36 = ((x_1027 * x_1029) + 1.000010014f);
    let x_1032 : f32 = u_xlat38;
    let x_1033 : f32 = u_xlat38;
    u_xlat38 = (x_1032 * x_1033);
    let x_1035 : f32 = u_xlat36;
    let x_1036 : f32 = u_xlat36;
    u_xlat36 = (x_1035 * x_1036);
    let x_1038 : f32 = u_xlat38;
    u_xlat38 = max(x_1038, 0.100000001f);
    let x_1040 : f32 = u_xlat36;
    let x_1041 : f32 = u_xlat38;
    u_xlat36 = (x_1040 * x_1041);
    let x_1043 : f32 = u_xlat15;
    let x_1044 : f32 = u_xlat36;
    u_xlat36 = (x_1043 * x_1044);
    let x_1046 : f32 = u_xlat37;
    let x_1047 : f32 = u_xlat36;
    u_xlat36 = (x_1046 / x_1047);
    let x_1049 : vec4<f32> = u_xlat0;
    let x_1051 : f32 = u_xlat36;
    let x_1054 : vec3<f32> = u_xlat5;
    let x_1055 : vec3<f32> = ((vec3<f32>(x_1049.x, x_1049.y, x_1049.z) * vec3<f32>(x_1051, x_1051, x_1051)) + x_1054);
    let x_1056 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
    let x_1058 : vec4<f32> = u_xlat8;
    let x_1060 : vec3<f32> = u_xlat10;
    let x_1062 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_1058.x, x_1058.y, x_1058.z) * x_1060) + x_1062);

    continuing {
      let x_1064 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1064 + bitcast<u32>(1i));
    }
  }
  let x_1066 : vec4<f32> = u_xlat3;
  let x_1068 : vec3<f32> = u_xlat4;
  let x_1071 : vec4<f32> = u_xlat2;
  let x_1073 : vec3<f32> = ((vec3<f32>(x_1066.x, x_1066.y, x_1066.z) * vec3<f32>(x_1068.x, x_1068.x, x_1068.x)) + vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1074 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : vec3<f32> = u_xlat6;
  let x_1077 : vec4<f32> = u_xlat0;
  let x_1079 : vec3<f32> = (x_1076 + vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1082 : f32 = u_xlat35;
  let x_1083 : f32 = u_xlat35;
  u_xlat33 = (x_1082 * -(x_1083));
  let x_1086 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1086);
  let x_1088 : vec4<f32> = u_xlat0;
  let x_1092 : vec4<f32> = x_44.unity_FogColor;
  let x_1095 : vec3<f32> = (vec3<f32>(x_1088.x, x_1088.y, x_1088.z) + -(vec3<f32>(x_1092.x, x_1092.y, x_1092.z)));
  let x_1096 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1100 : f32 = u_xlat33;
  let x_1102 : vec4<f32> = u_xlat0;
  let x_1106 : vec4<f32> = x_44.unity_FogColor;
  let x_1108 : vec3<f32> = ((vec3<f32>(x_1100, x_1100, x_1100) * vec3<f32>(x_1102.x, x_1102.y, x_1102.z)) + vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
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

