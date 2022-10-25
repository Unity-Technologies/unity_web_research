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

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
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
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_60 : UnityPerDraw;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_139 : PGlobals;

@group(1) @binding(4) var<uniform> x_149 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_253 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1239 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlatb11 : vec2<bool>;
  var u_xlat11 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb34 : bool;
  var x_491 : f32;
  var u_xlat12 : vec3<f32>;
  var x_530 : f32;
  var u_xlat13 : f32;
  var u_xlat24 : f32;
  var u_xlatb13 : bool;
  var x_577 : f32;
  var u_xlat22 : f32;
  var x_664 : f32;
  var x_677 : f32;
  var x_689 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat27 : f32;
  var u_xlat38 : f32;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati16 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat19 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP1;
  let x_31 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_30, x_31);
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_37);
  let x_41 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_41);
  let x_51 : f32 = vs_INTERP2.w;
  u_xlatb11.x = (0.0f < x_51);
  let x_65 : f32 = x_60.unity_WorldTransformParams.w;
  u_xlatb11.y = (x_65 >= 0.0f);
  let x_71 : bool = u_xlatb11.x;
  u_xlat11.x = select(-1.0f, 1.0f, x_71);
  let x_76 : bool = u_xlatb11.y;
  u_xlat11.y = select(-1.0f, 1.0f, x_76);
  let x_80 : f32 = u_xlat11.y;
  let x_82 : f32 = u_xlat11.x;
  u_xlat11.x = (x_80 * x_82);
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_86.z, x_86.x, x_86.y) * vec3<f32>(x_88.y, x_88.z, x_88.x));
  let x_91 : vec3<f32> = vs_INTERP1;
  let x_93 : vec4<f32> = vs_INTERP2;
  let x_96 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_91.y, x_91.z, x_91.x) * vec3<f32>(x_93.z, x_93.x, x_93.y)) + -(x_96));
  let x_99 : vec3<f32> = u_xlat11;
  let x_101 : vec3<f32> = u_xlat1;
  u_xlat11 = (vec3<f32>(x_99.x, x_99.x, x_99.x) * x_101);
  let x_103 : vec3<f32> = u_xlat0;
  let x_105 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_103.x, x_103.x, x_103.x) * x_105);
  let x_108 : vec3<f32> = u_xlat0;
  let x_110 : vec4<f32> = vs_INTERP2;
  let x_112 : vec3<f32> = (vec3<f32>(x_108.x, x_108.x, x_108.x) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_116 : vec3<f32> = u_xlat11;
  let x_117 : vec3<f32> = u_xlat0;
  let x_119 : vec3<f32> = (x_116 * vec3<f32>(x_117.x, x_117.x, x_117.x));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_135 : vec4<f32> = vs_INTERP3;
  let x_142 : f32 = x_139.x_GlobalMipBias.x;
  let x_143 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_135.x, x_135.y), x_142);
  u_xlat4 = x_143;
  let x_145 : vec4<f32> = u_xlat4;
  let x_152 : vec4<f32> = x_149.Color_C30C7CA3;
  u_xlat5 = (vec3<f32>(x_145.x, x_145.y, x_145.z) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_161 : vec4<f32> = vs_INTERP3;
  let x_164 : f32 = x_139.x_GlobalMipBias.x;
  let x_165 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_161.x, x_161.y), x_164);
  u_xlat6 = vec4<f32>(x_165.w, x_165.x, x_165.y, x_165.z);
  let x_168 : vec4<f32> = u_xlat6;
  u_xlat7 = ((vec4<f32>(x_168.y, x_168.z, x_168.w, x_168.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_175 : vec4<f32> = u_xlat7;
  let x_176 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_175, x_176);
  let x_180 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_180);
  let x_184 : vec3<f32> = u_xlat0;
  let x_186 : vec4<f32> = u_xlat7;
  u_xlat17 = (vec3<f32>(x_184.x, x_184.x, x_184.x) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_191 : f32 = vs_INTERP4.y;
  u_xlat0.x = (x_191 * 200.0f);
  let x_196 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_196, 1.0f);
  let x_199 : vec3<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat3;
  let x_208 : vec3<f32> = u_xlat17;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_208.y, x_208.y, x_208.y));
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec3<f32> = u_xlat17;
  let x_215 : vec4<f32> = u_xlat2;
  let x_218 : vec4<f32> = u_xlat3;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.x, x_213.x) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec3<f32> = u_xlat17;
  let x_225 : vec3<f32> = u_xlat1;
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_223.z, x_223.z, x_223.z) * x_225) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec3<f32> = u_xlat1;
  let x_231 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_230, x_231);
  let x_235 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_235, 1.17549435e-37f);
  let x_240 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_240);
  let x_243 : vec3<f32> = u_xlat0;
  let x_245 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_243.x, x_243.x, x_243.x) * x_245);
  let x_248 : vec3<f32> = vs_INTERP0;
  let x_255 : vec4<f32> = x_253.x_CascadeShadowSplitSpheres0;
  let x_258 : vec3<f32> = (x_248 + -(vec3<f32>(x_255.x, x_255.y, x_255.z)));
  let x_259 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec3<f32> = vs_INTERP0;
  let x_264 : vec4<f32> = x_253.x_CascadeShadowSplitSpheres1;
  let x_267 : vec3<f32> = (x_261 + -(vec3<f32>(x_264.x, x_264.y, x_264.z)));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec3<f32> = vs_INTERP0;
  let x_272 : vec4<f32> = x_253.x_CascadeShadowSplitSpheres2;
  let x_275 : vec3<f32> = (x_270 + -(vec3<f32>(x_272.x, x_272.y, x_272.z)));
  let x_276 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_279 : vec3<f32> = vs_INTERP0;
  let x_282 : vec4<f32> = x_253.x_CascadeShadowSplitSpheres3;
  let x_285 : vec3<f32> = (x_279 + -(vec3<f32>(x_282.x, x_282.y, x_282.z)));
  let x_286 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_294.x, x_294.y, x_294.z), vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_300 : vec4<f32> = u_xlat7;
  let x_302 : vec4<f32> = u_xlat7;
  u_xlat2.z = dot(vec3<f32>(x_300.x, x_300.y, x_300.z), vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_306 : vec4<f32> = u_xlat8;
  let x_308 : vec4<f32> = u_xlat8;
  u_xlat2.w = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_315 : vec4<f32> = u_xlat2;
  let x_318 : vec4<f32> = x_253.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_315 < x_318);
  let x_321 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_321);
  let x_325 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_325);
  let x_329 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_329);
  let x_333 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_333);
  let x_337 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_337);
  let x_342 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_342);
  let x_346 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_346);
  let x_349 : vec4<f32> = u_xlat2;
  let x_351 : vec4<f32> = u_xlat3;
  let x_353 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) + vec3<f32>(x_351.y, x_351.z, x_351.w));
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat2;
  let x_359 : vec3<f32> = max(vec3<f32>(x_356.x, x_356.y, x_356.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_360.x, x_359.x, x_359.y, x_359.z);
  let x_362 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_362, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_369 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_369) + 4.0f);
  let x_376 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_376);
  let x_380 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_380) << bitcast<u32>(2i));
  let x_383 : vec3<f32> = vs_INTERP0;
  let x_386 : i32 = u_xlati0;
  let x_389 : i32 = u_xlati0;
  let x_393 : vec4<f32> = x_253.x_MainLightWorldToShadow[((x_386 + 1i) / 4i)][((x_389 + 1i) % 4i)];
  let x_395 : vec3<f32> = (vec3<f32>(x_383.y, x_383.y, x_383.y) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : i32 = u_xlati0;
  let x_400 : i32 = u_xlati0;
  let x_403 : vec4<f32> = x_253.x_MainLightWorldToShadow[(x_398 / 4i)][(x_400 % 4i)];
  let x_405 : vec3<f32> = vs_INTERP0;
  let x_408 : vec4<f32> = u_xlat2;
  let x_410 : vec3<f32> = ((vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_405.x, x_405.x, x_405.x)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : i32 = u_xlati0;
  let x_416 : i32 = u_xlati0;
  let x_420 : vec4<f32> = x_253.x_MainLightWorldToShadow[((x_413 + 2i) / 4i)][((x_416 + 2i) % 4i)];
  let x_422 : vec3<f32> = vs_INTERP0;
  let x_425 : vec4<f32> = u_xlat2;
  let x_427 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_422.z, x_422.z, x_422.z)) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : i32 = u_xlati0;
  let x_435 : i32 = u_xlati0;
  let x_439 : vec4<f32> = x_253.x_MainLightWorldToShadow[((x_432 + 3i) / 4i)][((x_435 + 3i) % 4i)];
  let x_441 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_445 : vec4<f32> = u_xlat2;
  let x_446 : vec2<f32> = vec2<f32>(x_445.x, x_445.y);
  let x_448 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_446.x, x_446.y, x_448);
  let x_460 : vec3<f32> = txVec0;
  let x_462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_460.xy, x_460.z);
  u_xlat0.x = x_462;
  let x_467 : f32 = x_253.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat0.x;
  let x_473 : f32 = x_253.x_MainLightShadowParams.x;
  let x_475 : f32 = u_xlat34;
  u_xlat0.x = ((x_471 * x_473) + x_475);
  let x_480 : f32 = u_xlat2.z;
  u_xlatb34 = (0.0f >= x_480);
  let x_483 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_483 >= 1.0f);
  let x_486 : bool = u_xlatb34;
  let x_488 : bool = u_xlatb2.x;
  u_xlatb34 = (x_486 | x_488);
  let x_490 : bool = u_xlatb34;
  if (x_490) {
    x_491 = 1.0f;
  } else {
    let x_496 : f32 = u_xlat0.x;
    x_491 = x_496;
  }
  let x_497 : f32 = x_491;
  u_xlat0.x = x_497;
  let x_499 : vec3<f32> = u_xlat1;
  let x_501 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat1.x = dot(x_499, -(vec3<f32>(x_501.x, x_501.y, x_501.z)));
  let x_507 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_507, 0.0f, 1.0f);
  let x_511 : vec3<f32> = u_xlat0;
  let x_514 : vec4<f32> = x_139.x_MainLightColor;
  u_xlat12 = (vec3<f32>(x_511.x, x_511.x, x_511.x) * vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec3<f32> = u_xlat12;
  let x_518 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_517 * vec3<f32>(x_518.x, x_518.x, x_518.x));
  let x_521 : vec3<f32> = u_xlat1;
  let x_522 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_521 * vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_526 : f32 = u_xlat4.w;
  u_xlatb34 = (x_526 >= 0.400000006f);
  let x_529 : bool = u_xlatb34;
  if (x_529) {
    let x_534 : f32 = u_xlat4.w;
    x_530 = x_534;
  } else {
    x_530 = 0.0f;
  }
  let x_536 : f32 = x_530;
  u_xlat34 = x_536;
  let x_538 : f32 = u_xlat4.w;
  u_xlat2.x = (x_538 + -0.400000006f);
  let x_544 : f32 = u_xlat4.w;
  u_xlat13 = dpdxCoarse(x_544);
  let x_548 : f32 = u_xlat4.w;
  u_xlat24 = dpdyCoarse(x_548);
  let x_550 : f32 = u_xlat24;
  let x_552 : f32 = u_xlat13;
  u_xlat13 = (abs(x_550) + abs(x_552));
  let x_555 : f32 = u_xlat13;
  u_xlat13 = max(x_555, 0.0001f);
  let x_559 : f32 = u_xlat2.x;
  let x_560 : f32 = u_xlat13;
  u_xlat2.x = (x_559 / x_560);
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = (x_564 + 0.5f);
  let x_569 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_569, 0.0f, 1.0f);
  let x_574 : f32 = x_139.x_AlphaToMaskAvailable;
  u_xlatb13 = !((x_574 == 0.0f));
  let x_576 : bool = u_xlatb13;
  if (x_576) {
    let x_581 : f32 = u_xlat2.x;
    x_577 = x_581;
  } else {
    let x_583 : f32 = u_xlat34;
    x_577 = x_583;
  }
  let x_584 : f32 = x_577;
  u_xlat34 = x_584;
  let x_585 : f32 = u_xlat34;
  u_xlat2.x = (x_585 + -0.0001f);
  let x_590 : f32 = u_xlat2.x;
  u_xlatb2.x = (x_590 < 0.0f);
  let x_594 : bool = u_xlatb2.x;
  if (((select(0i, 1i, x_594) * -1i) != 0i)) {
    discard;
  }
  let x_602 : vec3<f32> = u_xlat11;
  let x_603 : vec3<f32> = u_xlat17;
  u_xlat11 = (x_602 * vec3<f32>(x_603.y, x_603.y, x_603.y));
  let x_606 : vec3<f32> = u_xlat17;
  let x_608 : vec4<f32> = vs_INTERP2;
  let x_611 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_606.x, x_606.x, x_606.x) * vec3<f32>(x_608.x, x_608.y, x_608.z)) + x_611);
  let x_613 : vec3<f32> = u_xlat17;
  let x_615 : vec3<f32> = vs_INTERP1;
  let x_617 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_613.z, x_613.z, x_613.z) * x_615) + x_617);
  let x_619 : vec3<f32> = u_xlat11;
  let x_620 : vec3<f32> = u_xlat11;
  u_xlat2.x = dot(x_619, x_620);
  let x_624 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_624);
  let x_627 : vec3<f32> = u_xlat11;
  let x_628 : vec4<f32> = u_xlat2;
  let x_630 : vec3<f32> = (x_627 * vec3<f32>(x_628.x, x_628.x, x_628.x));
  let x_631 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_635 : f32 = x_139.unity_OrthoParams.w;
  u_xlatb11.x = (x_635 == 0.0f);
  let x_638 : vec3<f32> = vs_INTERP0;
  let x_643 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_644 : vec3<f32> = (-(x_638) + x_643);
  let x_645 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_644.x, x_645.y, x_644.y, x_644.z);
  let x_648 : vec4<f32> = u_xlat2;
  let x_650 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_648.x, x_648.z, x_648.w), vec3<f32>(x_650.x, x_650.z, x_650.w));
  let x_653 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_653);
  let x_655 : f32 = u_xlat22;
  let x_657 : vec4<f32> = u_xlat2;
  let x_659 : vec3<f32> = (vec3<f32>(x_655, x_655, x_655) * vec3<f32>(x_657.x, x_657.z, x_657.w));
  let x_660 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_659.x, x_660.y, x_659.y, x_659.z);
  let x_663 : bool = u_xlatb11.x;
  if (x_663) {
    let x_668 : f32 = u_xlat2.x;
    x_664 = x_668;
  } else {
    let x_672 : f32 = x_139.unity_MatrixV[0i].z;
    x_664 = x_672;
  }
  let x_673 : f32 = x_664;
  u_xlat4.x = x_673;
  let x_676 : bool = u_xlatb11.x;
  if (x_676) {
    let x_681 : f32 = u_xlat2.z;
    x_677 = x_681;
  } else {
    let x_684 : f32 = x_139.unity_MatrixV[1i].z;
    x_677 = x_684;
  }
  let x_685 : f32 = x_677;
  u_xlat4.y = x_685;
  let x_688 : bool = u_xlatb11.x;
  if (x_688) {
    let x_693 : f32 = u_xlat2.w;
    x_689 = x_693;
  } else {
    let x_696 : f32 = x_139.unity_MatrixV[2i].z;
    x_689 = x_696;
  }
  let x_697 : f32 = x_689;
  u_xlat4.z = x_697;
  u_xlat3.w = 1.0f;
  let x_702 : vec4<f32> = x_60.unity_SHAr;
  let x_703 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_702, x_703);
  let x_708 : vec4<f32> = x_60.unity_SHAg;
  let x_709 : vec4<f32> = u_xlat3;
  u_xlat7.y = dot(x_708, x_709);
  let x_714 : vec4<f32> = x_60.unity_SHAb;
  let x_715 : vec4<f32> = u_xlat3;
  u_xlat7.z = dot(x_714, x_715);
  let x_718 : vec4<f32> = u_xlat3;
  let x_720 : vec4<f32> = u_xlat3;
  u_xlat8 = (vec4<f32>(x_718.y, x_718.z, x_718.z, x_718.x) * vec4<f32>(x_720.x, x_720.y, x_720.z, x_720.z));
  let x_726 : vec4<f32> = x_60.unity_SHBr;
  let x_727 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_726, x_727);
  let x_732 : vec4<f32> = x_60.unity_SHBg;
  let x_733 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_732, x_733);
  let x_738 : vec4<f32> = x_60.unity_SHBb;
  let x_739 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_738, x_739);
  let x_743 : f32 = u_xlat3.y;
  let x_745 : f32 = u_xlat3.y;
  u_xlat11.x = (x_743 * x_745);
  let x_749 : f32 = u_xlat3.x;
  let x_751 : f32 = u_xlat3.x;
  let x_754 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_749 * x_751) + -(x_754));
  let x_760 : vec4<f32> = x_60.unity_SHC;
  let x_762 : vec3<f32> = u_xlat11;
  let x_765 : vec3<f32> = u_xlat9;
  u_xlat11 = ((vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_762.x, x_762.x, x_762.x)) + x_765);
  let x_767 : vec3<f32> = u_xlat11;
  let x_768 : vec4<f32> = u_xlat7;
  u_xlat11 = (x_767 + vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : vec3<f32> = u_xlat11;
  u_xlat11 = max(x_771, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_775 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_776 : vec2<f32> = vec2<f32>(x_775.x, x_775.y);
  let x_780 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_776.x, x_776.y));
  let x_781 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_780.x, x_781.y, x_780.y, x_781.w);
  let x_783 : vec4<f32> = u_xlat2;
  let x_785 : vec4<f32> = hlslcc_FragCoord;
  let x_787 : vec2<f32> = (vec2<f32>(x_783.x, x_783.z) * vec2<f32>(x_785.x, x_785.y));
  let x_788 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
  let x_791 : f32 = u_xlat7.y;
  let x_794 : f32 = x_139.x_ScaleBiasRt.x;
  let x_797 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat2.x = ((x_791 * x_794) + x_797);
  let x_801 : f32 = u_xlat2.x;
  u_xlat7.z = (-(x_801) + 1.0f);
  let x_806 : f32 = u_xlat6.x;
  u_xlat6.x = x_806;
  let x_809 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_809, 0.0f, 1.0f);
  let x_812 : f32 = u_xlat34;
  u_xlat34 = min(x_812, 1.0f);
  let x_814 : vec3<f32> = u_xlat5;
  let x_817 : vec3<f32> = (x_814 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_818 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_817.x, x_818.y, x_817.y, x_817.z);
  let x_822 : f32 = u_xlat6.x;
  u_xlat36 = (-(x_822) + 1.0f);
  let x_826 : f32 = u_xlat36;
  let x_827 : f32 = u_xlat36;
  u_xlat37 = (x_826 * x_827);
  let x_829 : f32 = u_xlat37;
  u_xlat37 = max(x_829, 0.0078125f);
  let x_832 : f32 = u_xlat37;
  let x_833 : f32 = u_xlat37;
  u_xlat5.x = (x_832 * x_833);
  let x_838 : f32 = u_xlat6.x;
  u_xlat16 = (x_838 + 0.040000021f);
  let x_841 : f32 = u_xlat16;
  u_xlat16 = min(x_841, 1.0f);
  let x_844 : f32 = u_xlat37;
  u_xlat27 = ((x_844 * 4.0f) + 2.0f);
  let x_853 : vec4<f32> = u_xlat7;
  let x_856 : f32 = x_139.x_GlobalMipBias.x;
  let x_857 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_853.x, x_853.z), x_856);
  u_xlat38 = x_857.x;
  let x_859 : f32 = u_xlat38;
  u_xlat6.x = (x_859 + -1.0f);
  let x_863 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_865 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_863 * x_865) + 1.0f);
  let x_869 : f32 = u_xlat38;
  let x_871 : f32 = vs_INTERP4.w;
  u_xlat38 = min(x_869, x_871);
  let x_873 : vec3<f32> = vs_INTERP0;
  let x_875 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  u_xlat17 = (x_873 + -(x_875));
  let x_878 : vec3<f32> = u_xlat17;
  let x_879 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_878, x_879);
  let x_883 : f32 = u_xlat17.x;
  let x_885 : f32 = x_253.x_MainLightShadowParams.z;
  let x_888 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_883 * x_885) + x_888);
  let x_892 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_892, 0.0f, 1.0f);
  let x_897 : f32 = u_xlat0.x;
  u_xlat28 = (-(x_897) + 1.0f);
  let x_901 : f32 = u_xlat17.x;
  let x_902 : f32 = u_xlat28;
  let x_905 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_901 * x_902) + x_905);
  let x_908 : vec4<f32> = u_xlat6;
  let x_911 : vec4<f32> = x_139.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_908.x, x_908.x, x_908.x) * vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat4;
  let x_917 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(vec3<f32>(x_914.x, x_914.y, x_914.z)), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_922 : f32 = u_xlat7.x;
  let x_924 : f32 = u_xlat7.x;
  u_xlat7.x = (x_922 + x_924);
  let x_927 : vec4<f32> = u_xlat3;
  let x_929 : vec4<f32> = u_xlat7;
  let x_933 : vec4<f32> = u_xlat4;
  let x_936 : vec3<f32> = ((vec3<f32>(x_927.x, x_927.y, x_927.z) * -(vec3<f32>(x_929.x, x_929.x, x_929.x))) + -(vec3<f32>(x_933.x, x_933.y, x_933.z)));
  let x_937 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_940 : vec4<f32> = u_xlat3;
  let x_942 : vec4<f32> = u_xlat4;
  u_xlat40 = dot(vec3<f32>(x_940.x, x_940.y, x_940.z), vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : f32 = u_xlat40;
  u_xlat40 = clamp(x_945, 0.0f, 1.0f);
  let x_947 : f32 = u_xlat40;
  u_xlat40 = (-(x_947) + 1.0f);
  let x_950 : f32 = u_xlat40;
  let x_951 : f32 = u_xlat40;
  u_xlat40 = (x_950 * x_951);
  let x_953 : f32 = u_xlat40;
  let x_954 : f32 = u_xlat40;
  u_xlat40 = (x_953 * x_954);
  let x_956 : f32 = u_xlat36;
  u_xlat8.x = ((-(x_956) * 0.699999988f) + 1.700000048f);
  let x_963 : f32 = u_xlat36;
  let x_965 : f32 = u_xlat8.x;
  u_xlat36 = (x_963 * x_965);
  let x_967 : f32 = u_xlat36;
  u_xlat36 = (x_967 * 6.0f);
  let x_978 : vec4<f32> = u_xlat7;
  let x_980 : f32 = u_xlat36;
  let x_981 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_978.x, x_978.y, x_978.z), x_980);
  u_xlat8 = x_981;
  let x_983 : f32 = u_xlat8.w;
  u_xlat36 = (x_983 + -1.0f);
  let x_986 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_987 : f32 = u_xlat36;
  u_xlat36 = ((x_986 * x_987) + 1.0f);
  let x_990 : f32 = u_xlat36;
  u_xlat36 = max(x_990, 0.0f);
  let x_992 : f32 = u_xlat36;
  u_xlat36 = log2(x_992);
  let x_994 : f32 = u_xlat36;
  let x_996 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_994 * x_996);
  let x_998 : f32 = u_xlat36;
  u_xlat36 = exp2(x_998);
  let x_1000 : f32 = u_xlat36;
  let x_1002 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_1000 * x_1002);
  let x_1004 : vec4<f32> = u_xlat8;
  let x_1006 : f32 = u_xlat36;
  let x_1008 : vec3<f32> = (vec3<f32>(x_1004.x, x_1004.y, x_1004.z) * vec3<f32>(x_1006, x_1006, x_1006));
  let x_1009 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : f32 = u_xlat37;
  let x_1013 : f32 = u_xlat37;
  let x_1017 : vec2<f32> = ((vec2<f32>(x_1011, x_1011) * vec2<f32>(x_1013, x_1013)) + vec2<f32>(-1.0f, 1.0f));
  let x_1018 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
  let x_1021 : f32 = u_xlat8.y;
  u_xlat36 = (1.0f / x_1021);
  let x_1023 : f32 = u_xlat16;
  u_xlat37 = (x_1023 + -0.039999999f);
  let x_1026 : f32 = u_xlat40;
  let x_1027 : f32 = u_xlat37;
  u_xlat37 = ((x_1026 * x_1027) + 0.039999999f);
  let x_1031 : f32 = u_xlat36;
  let x_1032 : f32 = u_xlat37;
  u_xlat36 = (x_1031 * x_1032);
  let x_1034 : f32 = u_xlat36;
  let x_1036 : vec4<f32> = u_xlat7;
  let x_1038 : vec3<f32> = (vec3<f32>(x_1034, x_1034, x_1034) * vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1039 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : vec3<f32> = u_xlat11;
  let x_1042 : vec4<f32> = u_xlat2;
  let x_1045 : vec4<f32> = u_xlat7;
  u_xlat11 = ((x_1041 * vec3<f32>(x_1042.x, x_1042.z, x_1042.w)) + vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1049 : f32 = u_xlat0.x;
  let x_1051 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1049 * x_1051);
  let x_1054 : vec4<f32> = u_xlat3;
  let x_1057 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1060, 0.0f, 1.0f);
  let x_1063 : f32 = u_xlat0.x;
  let x_1064 : f32 = u_xlat36;
  u_xlat0.x = (x_1063 * x_1064);
  let x_1067 : vec3<f32> = u_xlat0;
  let x_1069 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1067.x, x_1067.x, x_1067.x) * x_1069);
  let x_1071 : vec4<f32> = u_xlat4;
  let x_1074 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1076 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) + vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1077 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : vec4<f32> = u_xlat7;
  let x_1081 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1086 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1086, 1.17549435e-37f);
  let x_1090 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1090);
  let x_1093 : vec3<f32> = u_xlat0;
  let x_1095 : vec4<f32> = u_xlat7;
  let x_1097 : vec3<f32> = (vec3<f32>(x_1093.x, x_1093.x, x_1093.x) * vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1098 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec4<f32> = u_xlat3;
  let x_1102 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1100.x, x_1100.y, x_1100.z), vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1107 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1107, 0.0f, 1.0f);
  let x_1111 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1113 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_1111.x, x_1111.y, x_1111.z), vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1116, 0.0f, 1.0f);
  let x_1119 : f32 = u_xlat0.x;
  let x_1121 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1119 * x_1121);
  let x_1125 : f32 = u_xlat0.x;
  let x_1127 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1125 * x_1127) + 1.000010014f);
  let x_1132 : f32 = u_xlat36;
  let x_1133 : f32 = u_xlat36;
  u_xlat36 = (x_1132 * x_1133);
  let x_1136 : f32 = u_xlat0.x;
  let x_1138 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1136 * x_1138);
  let x_1141 : f32 = u_xlat36;
  u_xlat36 = max(x_1141, 0.100000001f);
  let x_1145 : f32 = u_xlat0.x;
  let x_1146 : f32 = u_xlat36;
  u_xlat0.x = (x_1145 * x_1146);
  let x_1149 : f32 = u_xlat27;
  let x_1151 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1149 * x_1151);
  let x_1155 : f32 = u_xlat5.x;
  let x_1157 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1155 / x_1157);
  let x_1160 : vec3<f32> = u_xlat0;
  let x_1164 : vec4<f32> = u_xlat2;
  let x_1166 : vec3<f32> = ((vec3<f32>(x_1160.x, x_1160.x, x_1160.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1164.x, x_1164.z, x_1164.w));
  let x_1167 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1169 : vec3<f32> = u_xlat17;
  let x_1170 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1169 * vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1175 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1177 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1175, x_1177);
  let x_1181 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1181));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1193 : u32 = u_xlatu_loop_1;
    let x_1194 : u32 = u_xlatu0;
    if ((x_1193 < x_1194)) {
    } else {
      break;
    }
    let x_1197 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_1197 >> 2u);
    let x_1200 : u32 = u_xlatu_loop_1;
    u_xlati16 = bitcast<i32>((x_1200 & 3u));
    let x_1203 : u32 = u_xlatu37;
    let x_1206 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1203)];
    let x_1216 : i32 = u_xlati16;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1221 : vec4<u32> = indexable[x_1216];
    u_xlat37 = dot(x_1206, bitcast<vec4<f32>>(x_1221));
    let x_1225 : f32 = u_xlat37;
    u_xlati37 = i32(x_1225);
    let x_1228 : vec3<f32> = vs_INTERP0;
    let x_1240 : i32 = u_xlati37;
    let x_1242 : vec4<f32> = x_1239.x_AdditionalLightsPosition[x_1240];
    let x_1245 : i32 = u_xlati37;
    let x_1247 : vec4<f32> = x_1239.x_AdditionalLightsPosition[x_1245];
    u_xlat19 = ((-(x_1228) * vec3<f32>(x_1242.w, x_1242.w, x_1242.w)) + vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
    let x_1250 : vec3<f32> = u_xlat19;
    let x_1251 : vec3<f32> = u_xlat19;
    u_xlat16 = dot(x_1250, x_1251);
    let x_1253 : f32 = u_xlat16;
    u_xlat16 = max(x_1253, 6.10351562e-05f);
    let x_1256 : f32 = u_xlat16;
    u_xlat40 = inverseSqrt(x_1256);
    let x_1258 : f32 = u_xlat40;
    let x_1260 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_1258, x_1258, x_1258) * x_1260);
    let x_1263 : f32 = u_xlat16;
    u_xlat42 = (1.0f / x_1263);
    let x_1265 : f32 = u_xlat16;
    let x_1266 : i32 = u_xlati37;
    let x_1268 : f32 = x_1239.x_AdditionalLightsAttenuation[x_1266].x;
    u_xlat16 = (x_1265 * x_1268);
    let x_1270 : f32 = u_xlat16;
    let x_1272 : f32 = u_xlat16;
    u_xlat16 = ((-(x_1270) * x_1272) + 1.0f);
    let x_1275 : f32 = u_xlat16;
    u_xlat16 = max(x_1275, 0.0f);
    let x_1277 : f32 = u_xlat16;
    let x_1278 : f32 = u_xlat16;
    u_xlat16 = (x_1277 * x_1278);
    let x_1280 : f32 = u_xlat16;
    let x_1281 : f32 = u_xlat42;
    u_xlat16 = (x_1280 * x_1281);
    let x_1283 : i32 = u_xlati37;
    let x_1285 : vec4<f32> = x_1239.x_AdditionalLightsSpotDir[x_1283];
    let x_1287 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1285.x, x_1285.y, x_1285.z), x_1287);
    let x_1289 : f32 = u_xlat42;
    let x_1290 : i32 = u_xlati37;
    let x_1292 : f32 = x_1239.x_AdditionalLightsAttenuation[x_1290].z;
    let x_1294 : i32 = u_xlati37;
    let x_1296 : f32 = x_1239.x_AdditionalLightsAttenuation[x_1294].w;
    u_xlat42 = ((x_1289 * x_1292) + x_1296);
    let x_1298 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1298, 0.0f, 1.0f);
    let x_1300 : f32 = u_xlat42;
    let x_1301 : f32 = u_xlat42;
    u_xlat42 = (x_1300 * x_1301);
    let x_1303 : f32 = u_xlat16;
    let x_1304 : f32 = u_xlat42;
    u_xlat16 = (x_1303 * x_1304);
    let x_1307 : vec4<f32> = u_xlat6;
    let x_1309 : i32 = u_xlati37;
    let x_1311 : vec4<f32> = x_1239.x_AdditionalLightsColor[x_1309];
    u_xlat10 = (vec3<f32>(x_1307.x, x_1307.x, x_1307.x) * vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
    let x_1314 : vec4<f32> = u_xlat3;
    let x_1316 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(vec3<f32>(x_1314.x, x_1314.y, x_1314.z), x_1316);
    let x_1318 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1318, 0.0f, 1.0f);
    let x_1320 : f32 = u_xlat37;
    let x_1321 : f32 = u_xlat16;
    u_xlat37 = (x_1320 * x_1321);
    let x_1323 : f32 = u_xlat37;
    let x_1325 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1323, x_1323, x_1323) * x_1325);
    let x_1327 : vec3<f32> = u_xlat19;
    let x_1328 : f32 = u_xlat40;
    let x_1331 : vec4<f32> = u_xlat4;
    u_xlat19 = ((x_1327 * vec3<f32>(x_1328, x_1328, x_1328)) + vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
    let x_1334 : vec3<f32> = u_xlat19;
    let x_1335 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1334, x_1335);
    let x_1337 : f32 = u_xlat37;
    u_xlat37 = max(x_1337, 1.17549435e-37f);
    let x_1339 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1339);
    let x_1341 : f32 = u_xlat37;
    let x_1343 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1341, x_1341, x_1341) * x_1343);
    let x_1345 : vec4<f32> = u_xlat3;
    let x_1347 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(vec3<f32>(x_1345.x, x_1345.y, x_1345.z), x_1347);
    let x_1349 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1349, 0.0f, 1.0f);
    let x_1351 : vec3<f32> = u_xlat9;
    let x_1352 : vec3<f32> = u_xlat19;
    u_xlat16 = dot(x_1351, x_1352);
    let x_1354 : f32 = u_xlat16;
    u_xlat16 = clamp(x_1354, 0.0f, 1.0f);
    let x_1356 : f32 = u_xlat37;
    let x_1357 : f32 = u_xlat37;
    u_xlat37 = (x_1356 * x_1357);
    let x_1359 : f32 = u_xlat37;
    let x_1361 : f32 = u_xlat8.x;
    u_xlat37 = ((x_1359 * x_1361) + 1.000010014f);
    let x_1364 : f32 = u_xlat16;
    let x_1365 : f32 = u_xlat16;
    u_xlat16 = (x_1364 * x_1365);
    let x_1367 : f32 = u_xlat37;
    let x_1368 : f32 = u_xlat37;
    u_xlat37 = (x_1367 * x_1368);
    let x_1370 : f32 = u_xlat16;
    u_xlat16 = max(x_1370, 0.100000001f);
    let x_1372 : f32 = u_xlat37;
    let x_1373 : f32 = u_xlat16;
    u_xlat37 = (x_1372 * x_1373);
    let x_1375 : f32 = u_xlat27;
    let x_1376 : f32 = u_xlat37;
    u_xlat37 = (x_1375 * x_1376);
    let x_1379 : f32 = u_xlat5.x;
    let x_1380 : f32 = u_xlat37;
    u_xlat37 = (x_1379 / x_1380);
    let x_1382 : f32 = u_xlat37;
    let x_1385 : vec4<f32> = u_xlat2;
    u_xlat19 = ((vec3<f32>(x_1382, x_1382, x_1382) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1385.x, x_1385.z, x_1385.w));
    let x_1388 : vec3<f32> = u_xlat19;
    let x_1389 : vec3<f32> = u_xlat10;
    let x_1391 : vec4<f32> = u_xlat7;
    let x_1393 : vec3<f32> = ((x_1388 * x_1389) + vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
    let x_1394 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);

    continuing {
      let x_1396 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1396 + bitcast<u32>(1i));
    }
  }
  let x_1398 : vec3<f32> = u_xlat11;
  let x_1399 : f32 = u_xlat38;
  let x_1402 : vec3<f32> = u_xlat17;
  u_xlat0 = ((x_1398 * vec3<f32>(x_1399, x_1399, x_1399)) + x_1402);
  let x_1404 : vec4<f32> = u_xlat7;
  let x_1406 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1404.x, x_1404.y, x_1404.z) + x_1406);
  let x_1410 : vec4<f32> = vs_INTERP4;
  let x_1412 : vec3<f32> = u_xlat1;
  let x_1414 : vec3<f32> = u_xlat0;
  let x_1415 : vec3<f32> = ((vec3<f32>(x_1410.w, x_1410.w, x_1410.w) * x_1412) + x_1414);
  let x_1416 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1418 : bool = u_xlatb13;
  let x_1419 : f32 = u_xlat34;
  SV_Target0.w = select(1.0f, x_1419, x_1418);
  let x_1426 : u32 = x_139.x_RenderingLayerMaxInt;
  let x_1428 : f32 = x_60.unity_RenderingLayer.x;
  u_xlatu0 = (x_1426 & bitcast<u32>(x_1428));
  let x_1431 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1431);
  let x_1436 : f32 = u_xlat0.x;
  let x_1438 : f32 = x_139.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1436 * x_1438);
  let x_1442 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1442, 0.0f, 1.0f);
  let x_1445 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1445.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

