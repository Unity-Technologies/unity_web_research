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
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

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

@group(1) @binding(2) var<uniform> x_632 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_856 : AdditionalLights;

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
  var u_xlat33 : f32;
  var u_xlat26 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb13 : bool;
  var u_xlatb24 : bool;
  var x_486 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati38 : i32;
  var u_xlat37 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
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
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_49);
  u_xlat0 = x_50;
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_43.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_58.x, x_58.y), x_61);
  u_xlat1 = x_62.x;
  let x_67 : vec4<f32> = vs_TEXCOORD3;
  let x_69 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12.x = dot(vec3<f32>(x_67.x, x_67.y, x_67.z), vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_74 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_74);
  let x_77 : vec3<f32> = u_xlat12;
  let x_79 : vec4<f32> = vs_TEXCOORD3;
  u_xlat12 = (vec3<f32>(x_77.x, x_77.x, x_77.x) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_85 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres0;
  let x_97 : vec3<f32> = (x_85 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
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
  let x_282 : vec4<f32> = vs_TEXCOORD0;
  let x_285 : f32 = x_43.x_GlobalMipBias.x;
  let x_286 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_282.z, x_282.w), x_285);
  u_xlat3 = x_286;
  let x_291 : vec4<f32> = vs_TEXCOORD0;
  let x_294 : f32 = x_43.x_GlobalMipBias.x;
  let x_295 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_291.z, x_291.w), x_294);
  u_xlat4 = vec3<f32>(x_295.x, x_295.y, x_295.z);
  let x_297 : vec4<f32> = u_xlat3;
  let x_301 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec3<f32> = u_xlat12;
  let x_306 : vec4<f32> = u_xlat3;
  u_xlat35 = dot(x_305, vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : f32 = u_xlat35;
  u_xlat35 = (x_309 + 0.5f);
  let x_312 : f32 = u_xlat35;
  let x_314 : vec3<f32> = u_xlat4;
  let x_315 : vec3<f32> = (vec3<f32>(x_312, x_312, x_312) * x_314);
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_319 : f32 = u_xlat3.w;
  u_xlat35 = max(x_319, 0.0001f);
  let x_322 : vec4<f32> = u_xlat3;
  let x_324 : f32 = u_xlat35;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) / vec3<f32>(x_324, x_324, x_324));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_331 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_332 : vec2<f32> = vec2<f32>(x_331.x, x_331.y);
  let x_336 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_332.x, x_332.y));
  let x_337 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_336.x, x_336.y, x_337.z);
  let x_339 : vec3<f32> = u_xlat4;
  let x_341 : vec4<f32> = hlslcc_FragCoord;
  let x_343 : vec2<f32> = (vec2<f32>(x_339.x, x_339.y) * vec2<f32>(x_341.x, x_341.y));
  let x_344 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_343.x, x_343.y, x_344.z);
  let x_347 : f32 = u_xlat4.y;
  let x_350 : f32 = x_43.x_ScaleBiasRt.x;
  let x_353 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat35 = ((x_347 * x_350) + x_353);
  let x_355 : f32 = u_xlat35;
  u_xlat4.z = (-(x_355) + 1.0f);
  let x_359 : f32 = u_xlat1;
  u_xlat35 = ((-(x_359) * 0.959999979f) + 0.959999979f);
  let x_365 : f32 = u_xlat35;
  u_xlat36 = (-(x_365) + 1.0f);
  let x_368 : vec4<f32> = u_xlat0;
  let x_370 : f32 = u_xlat35;
  u_xlat5 = (vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370, x_370, x_370));
  let x_373 : vec4<f32> = u_xlat0;
  let x_377 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_378 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : f32 = u_xlat1;
  let x_382 : vec4<f32> = u_xlat0;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380, x_380, x_380) * vec3<f32>(x_382.x, x_382.y, x_382.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_391) + 1.0f);
  let x_394 : f32 = u_xlat1;
  let x_395 : f32 = u_xlat1;
  u_xlat35 = (x_394 * x_395);
  let x_397 : f32 = u_xlat35;
  u_xlat35 = max(x_397, 0.0078125f);
  let x_401 : f32 = u_xlat35;
  let x_402 : f32 = u_xlat35;
  u_xlat15 = (x_401 * x_402);
  let x_406 : f32 = u_xlat0.w;
  let x_407 : f32 = u_xlat36;
  u_xlat33 = (x_406 + x_407);
  let x_409 : f32 = u_xlat33;
  u_xlat33 = clamp(x_409, 0.0f, 1.0f);
  let x_411 : f32 = u_xlat35;
  u_xlat36 = ((x_411 * 4.0f) + 2.0f);
  let x_419 : vec3<f32> = u_xlat4;
  let x_422 : f32 = x_43.x_GlobalMipBias.x;
  let x_423 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_419.x, x_419.z), x_422);
  u_xlat4.x = x_423.x;
  let x_428 : f32 = u_xlat4.x;
  u_xlat26 = (x_428 + -1.0f);
  let x_431 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_432 : f32 = u_xlat26;
  u_xlat26 = ((x_431 * x_432) + 1.0f);
  let x_436 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_436, 1.0f);
  let x_440 : vec4<f32> = u_xlat2;
  let x_441 : vec2<f32> = vec2<f32>(x_440.x, x_440.y);
  let x_443 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_441.x, x_441.y, x_443);
  let x_455 : vec3<f32> = txVec0;
  let x_457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_455.xy, x_455.z);
  u_xlat2.x = x_457;
  let x_461 : f32 = x_91.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_461) + 1.0f);
  let x_466 : f32 = u_xlat2.x;
  let x_468 : f32 = x_91.x_MainLightShadowParams.x;
  let x_471 : f32 = u_xlat13.x;
  u_xlat2.x = ((x_466 * x_468) + x_471);
  let x_476 : f32 = u_xlat2.z;
  u_xlatb13 = (0.0f >= x_476);
  let x_480 : f32 = u_xlat2.z;
  u_xlatb24 = (x_480 >= 1.0f);
  let x_482 : bool = u_xlatb24;
  let x_483 : bool = u_xlatb13;
  u_xlatb13 = (x_482 | x_483);
  let x_485 : bool = u_xlatb13;
  if (x_485) {
    x_486 = 1.0f;
  } else {
    let x_491 : f32 = u_xlat2.x;
    x_486 = x_491;
  }
  let x_492 : f32 = x_486;
  u_xlat2.x = x_492;
  let x_495 : vec3<f32> = vs_TEXCOORD7;
  let x_499 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat6 = (x_495 + -(x_499));
  let x_502 : vec3<f32> = u_xlat6;
  let x_503 : vec3<f32> = u_xlat6;
  u_xlat13.x = dot(x_502, x_503);
  let x_507 : f32 = u_xlat13.x;
  let x_509 : f32 = x_91.x_MainLightShadowParams.z;
  let x_512 : f32 = x_91.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_507 * x_509) + x_512);
  let x_516 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_516, 0.0f, 1.0f);
  let x_522 : f32 = u_xlat2.x;
  u_xlat24.x = (-(x_522) + 1.0f);
  let x_527 : f32 = u_xlat13.x;
  let x_529 : f32 = u_xlat24.x;
  let x_532 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_527 * x_529) + x_532);
  let x_535 : f32 = u_xlat26;
  let x_538 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_535, x_535, x_535) * vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_543 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_543;
  let x_547 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_547;
  let x_551 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_551;
  let x_553 : vec3<f32> = u_xlat7;
  let x_555 : vec3<f32> = u_xlat12;
  u_xlat13.x = dot(-(x_553), x_555);
  let x_559 : f32 = u_xlat13.x;
  let x_561 : f32 = u_xlat13.x;
  u_xlat13.x = (x_559 + x_561);
  let x_565 : vec3<f32> = u_xlat12;
  let x_566 : vec3<f32> = u_xlat13;
  let x_570 : vec3<f32> = u_xlat7;
  let x_572 : vec3<f32> = ((x_565 * -(vec3<f32>(x_566.x, x_566.x, x_566.x))) + -(x_570));
  let x_573 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec3<f32> = u_xlat12;
  let x_576 : vec3<f32> = u_xlat7;
  u_xlat13.x = dot(x_575, x_576);
  let x_580 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_580, 0.0f, 1.0f);
  let x_584 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_584) + 1.0f);
  let x_589 : f32 = u_xlat13.x;
  let x_591 : f32 = u_xlat13.x;
  u_xlat13.x = (x_589 * x_591);
  let x_595 : f32 = u_xlat13.x;
  let x_597 : f32 = u_xlat13.x;
  u_xlat13.x = (x_595 * x_597);
  let x_600 : f32 = u_xlat1;
  u_xlat24.x = ((-(x_600) * 0.699999988f) + 1.700000048f);
  let x_607 : f32 = u_xlat1;
  let x_609 : f32 = u_xlat24.x;
  u_xlat1 = (x_607 * x_609);
  let x_611 : f32 = u_xlat1;
  u_xlat1 = (x_611 * 6.0f);
  let x_622 : vec4<f32> = u_xlat8;
  let x_624 : f32 = u_xlat1;
  let x_625 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_622.x, x_622.y, x_622.z), x_624);
  u_xlat8 = x_625;
  let x_627 : f32 = u_xlat8.w;
  u_xlat1 = (x_627 + -1.0f);
  let x_634 : f32 = x_632.unity_SpecCube0_HDR.w;
  let x_635 : f32 = u_xlat1;
  u_xlat1 = ((x_634 * x_635) + 1.0f);
  let x_638 : f32 = u_xlat1;
  u_xlat1 = max(x_638, 0.0f);
  let x_640 : f32 = u_xlat1;
  u_xlat1 = log2(x_640);
  let x_642 : f32 = u_xlat1;
  let x_644 : f32 = x_632.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_642 * x_644);
  let x_646 : f32 = u_xlat1;
  u_xlat1 = exp2(x_646);
  let x_648 : f32 = u_xlat1;
  let x_650 : f32 = x_632.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_648 * x_650);
  let x_652 : vec4<f32> = u_xlat8;
  let x_654 : f32 = u_xlat1;
  let x_656 : vec3<f32> = (vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(x_654, x_654, x_654));
  let x_657 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : f32 = u_xlat35;
  let x_661 : f32 = u_xlat35;
  u_xlat24 = ((vec2<f32>(x_659, x_659) * vec2<f32>(x_661, x_661)) + vec2<f32>(-1.0f, 1.0f));
  let x_667 : f32 = u_xlat24.y;
  u_xlat1 = (1.0f / x_667);
  let x_670 : vec4<f32> = u_xlat0;
  let x_673 : f32 = u_xlat33;
  u_xlat9 = (-(vec3<f32>(x_670.x, x_670.y, x_670.z)) + vec3<f32>(x_673, x_673, x_673));
  let x_676 : vec3<f32> = u_xlat13;
  let x_678 : vec3<f32> = u_xlat9;
  let x_680 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_676.x, x_676.x, x_676.x) * x_678) + vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : f32 = u_xlat1;
  let x_685 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_683, x_683, x_683) * x_685);
  let x_687 : vec4<f32> = u_xlat8;
  let x_689 : vec3<f32> = u_xlat9;
  let x_690 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) * x_689);
  let x_691 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat3;
  let x_695 : vec3<f32> = u_xlat5;
  let x_697 : vec4<f32> = u_xlat8;
  let x_699 : vec3<f32> = ((vec3<f32>(x_693.x, x_693.y, x_693.z) * x_695) + vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_703 : f32 = u_xlat2.x;
  let x_705 : f32 = x_632.unity_LightData.z;
  u_xlat33 = (x_703 * x_705);
  let x_707 : vec3<f32> = u_xlat12;
  let x_709 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat1 = dot(x_707, vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : f32 = u_xlat1;
  u_xlat1 = clamp(x_712, 0.0f, 1.0f);
  let x_714 : f32 = u_xlat33;
  let x_715 : f32 = u_xlat1;
  u_xlat33 = (x_714 * x_715);
  let x_717 : f32 = u_xlat33;
  let x_719 : vec3<f32> = u_xlat6;
  let x_720 : vec3<f32> = (vec3<f32>(x_717, x_717, x_717) * x_719);
  let x_721 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_720.z);
  let x_723 : vec3<f32> = u_xlat7;
  let x_725 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat6 = (x_723 + vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec3<f32> = u_xlat6;
  let x_729 : vec3<f32> = u_xlat6;
  u_xlat33 = dot(x_728, x_729);
  let x_731 : f32 = u_xlat33;
  u_xlat33 = max(x_731, 1.17549435e-37f);
  let x_734 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_734);
  let x_736 : f32 = u_xlat33;
  let x_738 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_736, x_736, x_736) * x_738);
  let x_740 : vec3<f32> = u_xlat12;
  let x_741 : vec3<f32> = u_xlat6;
  u_xlat33 = dot(x_740, x_741);
  let x_743 : f32 = u_xlat33;
  u_xlat33 = clamp(x_743, 0.0f, 1.0f);
  let x_746 : vec4<f32> = x_43.x_MainLightPosition;
  let x_748 : vec3<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_746.x, x_746.y, x_746.z), x_748);
  let x_750 : f32 = u_xlat1;
  u_xlat1 = clamp(x_750, 0.0f, 1.0f);
  let x_752 : f32 = u_xlat33;
  let x_753 : f32 = u_xlat33;
  u_xlat33 = (x_752 * x_753);
  let x_755 : f32 = u_xlat33;
  let x_757 : f32 = u_xlat24.x;
  u_xlat33 = ((x_755 * x_757) + 1.000010014f);
  let x_761 : f32 = u_xlat1;
  let x_762 : f32 = u_xlat1;
  u_xlat1 = (x_761 * x_762);
  let x_764 : f32 = u_xlat33;
  let x_765 : f32 = u_xlat33;
  u_xlat33 = (x_764 * x_765);
  let x_767 : f32 = u_xlat1;
  u_xlat1 = max(x_767, 0.100000001f);
  let x_770 : f32 = u_xlat33;
  let x_771 : f32 = u_xlat1;
  u_xlat33 = (x_770 * x_771);
  let x_773 : f32 = u_xlat36;
  let x_774 : f32 = u_xlat33;
  u_xlat33 = (x_773 * x_774);
  let x_776 : f32 = u_xlat15;
  let x_777 : f32 = u_xlat33;
  u_xlat33 = (x_776 / x_777);
  let x_779 : vec4<f32> = u_xlat0;
  let x_781 : f32 = u_xlat33;
  let x_784 : vec3<f32> = u_xlat5;
  u_xlat6 = ((vec3<f32>(x_779.x, x_779.y, x_779.z) * vec3<f32>(x_781, x_781, x_781)) + x_784);
  let x_786 : vec4<f32> = u_xlat2;
  let x_788 : vec3<f32> = u_xlat6;
  let x_789 : vec3<f32> = (vec3<f32>(x_786.x, x_786.y, x_786.w) * x_788);
  let x_790 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_789.z);
  let x_793 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_795 : f32 = x_632.unity_LightData.y;
  u_xlat33 = min(x_793, x_795);
  let x_798 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_798));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_810 : u32 = u_xlatu_loop_1;
    let x_811 : u32 = u_xlatu33;
    if ((x_810 < x_811)) {
    } else {
      break;
    }
    let x_814 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_814 >> 2u);
    let x_817 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_817 & 3u));
    let x_821 : u32 = u_xlatu37;
    let x_824 : vec4<f32> = x_632.unity_LightIndices[bitcast<i32>(x_821)];
    let x_834 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_839 : vec4<u32> = indexable[x_834];
    u_xlat37 = dot(x_824, bitcast<vec4<f32>>(x_839));
    let x_843 : f32 = u_xlat37;
    u_xlati37 = i32(x_843);
    let x_845 : vec3<f32> = vs_TEXCOORD7;
    let x_857 : i32 = u_xlati37;
    let x_859 : vec4<f32> = x_856.x_AdditionalLightsPosition[x_857];
    let x_862 : i32 = u_xlati37;
    let x_864 : vec4<f32> = x_856.x_AdditionalLightsPosition[x_862];
    let x_866 : vec3<f32> = ((-(x_845) * vec3<f32>(x_859.w, x_859.w, x_859.w)) + vec3<f32>(x_864.x, x_864.y, x_864.z));
    let x_867 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
    let x_870 : vec4<f32> = u_xlat8;
    let x_872 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_870.x, x_870.y, x_870.z), vec3<f32>(x_872.x, x_872.y, x_872.z));
    let x_875 : f32 = u_xlat38;
    u_xlat38 = max(x_875, 6.10351562e-05f);
    let x_879 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_879);
    let x_881 : f32 = u_xlat39;
    let x_883 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_881, x_881, x_881) * vec3<f32>(x_883.x, x_883.y, x_883.z));
    let x_887 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_887);
    let x_889 : f32 = u_xlat38;
    let x_890 : i32 = u_xlati37;
    let x_892 : f32 = x_856.x_AdditionalLightsAttenuation[x_890].x;
    u_xlat38 = (x_889 * x_892);
    let x_894 : f32 = u_xlat38;
    let x_896 : f32 = u_xlat38;
    u_xlat38 = ((-(x_894) * x_896) + 1.0f);
    let x_899 : f32 = u_xlat38;
    u_xlat38 = max(x_899, 0.0f);
    let x_901 : f32 = u_xlat38;
    let x_902 : f32 = u_xlat38;
    u_xlat38 = (x_901 * x_902);
    let x_904 : f32 = u_xlat38;
    let x_905 : f32 = u_xlat40;
    u_xlat38 = (x_904 * x_905);
    let x_907 : i32 = u_xlati37;
    let x_909 : vec4<f32> = x_856.x_AdditionalLightsSpotDir[x_907];
    let x_911 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_909.x, x_909.y, x_909.z), x_911);
    let x_913 : f32 = u_xlat40;
    let x_914 : i32 = u_xlati37;
    let x_916 : f32 = x_856.x_AdditionalLightsAttenuation[x_914].z;
    let x_918 : i32 = u_xlati37;
    let x_920 : f32 = x_856.x_AdditionalLightsAttenuation[x_918].w;
    u_xlat40 = ((x_913 * x_916) + x_920);
    let x_922 : f32 = u_xlat40;
    u_xlat40 = clamp(x_922, 0.0f, 1.0f);
    let x_924 : f32 = u_xlat40;
    let x_925 : f32 = u_xlat40;
    u_xlat40 = (x_924 * x_925);
    let x_927 : f32 = u_xlat38;
    let x_928 : f32 = u_xlat40;
    u_xlat38 = (x_927 * x_928);
    let x_931 : f32 = u_xlat26;
    let x_933 : i32 = u_xlati37;
    let x_935 : vec4<f32> = x_856.x_AdditionalLightsColor[x_933];
    u_xlat10 = (vec3<f32>(x_931, x_931, x_931) * vec3<f32>(x_935.x, x_935.y, x_935.z));
    let x_938 : vec3<f32> = u_xlat12;
    let x_939 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(x_938, x_939);
    let x_941 : f32 = u_xlat37;
    u_xlat37 = clamp(x_941, 0.0f, 1.0f);
    let x_943 : f32 = u_xlat37;
    let x_944 : f32 = u_xlat38;
    u_xlat37 = (x_943 * x_944);
    let x_946 : f32 = u_xlat37;
    let x_948 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_946, x_946, x_946) * x_948);
    let x_950 : vec4<f32> = u_xlat8;
    let x_952 : f32 = u_xlat39;
    let x_955 : vec3<f32> = u_xlat7;
    let x_956 : vec3<f32> = ((vec3<f32>(x_950.x, x_950.y, x_950.z) * vec3<f32>(x_952, x_952, x_952)) + x_955);
    let x_957 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
    let x_959 : vec4<f32> = u_xlat8;
    let x_961 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), vec3<f32>(x_961.x, x_961.y, x_961.z));
    let x_964 : f32 = u_xlat37;
    u_xlat37 = max(x_964, 1.17549435e-37f);
    let x_966 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_966);
    let x_968 : f32 = u_xlat37;
    let x_970 : vec4<f32> = u_xlat8;
    let x_972 : vec3<f32> = (vec3<f32>(x_968, x_968, x_968) * vec3<f32>(x_970.x, x_970.y, x_970.z));
    let x_973 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
    let x_975 : vec3<f32> = u_xlat12;
    let x_976 : vec4<f32> = u_xlat8;
    u_xlat37 = dot(x_975, vec3<f32>(x_976.x, x_976.y, x_976.z));
    let x_979 : f32 = u_xlat37;
    u_xlat37 = clamp(x_979, 0.0f, 1.0f);
    let x_981 : vec3<f32> = u_xlat9;
    let x_982 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_981, vec3<f32>(x_982.x, x_982.y, x_982.z));
    let x_985 : f32 = u_xlat38;
    u_xlat38 = clamp(x_985, 0.0f, 1.0f);
    let x_987 : f32 = u_xlat37;
    let x_988 : f32 = u_xlat37;
    u_xlat37 = (x_987 * x_988);
    let x_990 : f32 = u_xlat37;
    let x_992 : f32 = u_xlat24.x;
    u_xlat37 = ((x_990 * x_992) + 1.000010014f);
    let x_995 : f32 = u_xlat38;
    let x_996 : f32 = u_xlat38;
    u_xlat38 = (x_995 * x_996);
    let x_998 : f32 = u_xlat37;
    let x_999 : f32 = u_xlat37;
    u_xlat37 = (x_998 * x_999);
    let x_1001 : f32 = u_xlat38;
    u_xlat38 = max(x_1001, 0.100000001f);
    let x_1003 : f32 = u_xlat37;
    let x_1004 : f32 = u_xlat38;
    u_xlat37 = (x_1003 * x_1004);
    let x_1006 : f32 = u_xlat36;
    let x_1007 : f32 = u_xlat37;
    u_xlat37 = (x_1006 * x_1007);
    let x_1009 : f32 = u_xlat15;
    let x_1010 : f32 = u_xlat37;
    u_xlat37 = (x_1009 / x_1010);
    let x_1012 : vec4<f32> = u_xlat0;
    let x_1014 : f32 = u_xlat37;
    let x_1017 : vec3<f32> = u_xlat5;
    let x_1018 : vec3<f32> = ((vec3<f32>(x_1012.x, x_1012.y, x_1012.z) * vec3<f32>(x_1014, x_1014, x_1014)) + x_1017);
    let x_1019 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
    let x_1021 : vec4<f32> = u_xlat8;
    let x_1023 : vec3<f32> = u_xlat10;
    let x_1025 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * x_1023) + x_1025);

    continuing {
      let x_1027 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1027 + bitcast<u32>(1i));
    }
  }
  let x_1029 : vec4<f32> = u_xlat3;
  let x_1031 : vec3<f32> = u_xlat4;
  let x_1034 : vec4<f32> = u_xlat2;
  let x_1036 : vec3<f32> = ((vec3<f32>(x_1029.x, x_1029.y, x_1029.z) * vec3<f32>(x_1031.x, x_1031.x, x_1031.x)) + vec3<f32>(x_1034.x, x_1034.y, x_1034.w));
  let x_1037 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1041 : vec3<f32> = u_xlat6;
  let x_1042 : vec4<f32> = u_xlat0;
  let x_1044 : vec3<f32> = (x_1041 + vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
  let x_1045 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
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

