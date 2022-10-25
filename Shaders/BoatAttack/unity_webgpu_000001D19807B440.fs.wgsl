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

@group(1) @binding(1) var<uniform> x_1293 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlatb12 : vec2<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlatb37 : bool;
  var x_491 : f32;
  var u_xlat13 : vec3<f32>;
  var x_530 : f32;
  var u_xlat14 : f32;
  var u_xlat26 : vec2<f32>;
  var u_xlatb14 : bool;
  var x_580 : f32;
  var u_xlat24 : f32;
  var x_677 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat30 : f32;
  var u_xlat42 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati30 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat36 : f32;
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
  u_xlatb12.x = (0.0f < x_51);
  let x_65 : f32 = x_60.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_65 >= 0.0f);
  let x_71 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_71);
  let x_76 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_76);
  let x_80 : f32 = u_xlat12.y;
  let x_82 : f32 = u_xlat12.x;
  u_xlat12.x = (x_80 * x_82);
  let x_86 : vec3<f32> = vs_INTERP1;
  let x_88 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_86.z, x_86.x, x_86.y) * vec3<f32>(x_88.y, x_88.z, x_88.x));
  let x_91 : vec3<f32> = vs_INTERP1;
  let x_93 : vec4<f32> = vs_INTERP2;
  let x_96 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_91.y, x_91.z, x_91.x) * vec3<f32>(x_93.z, x_93.x, x_93.y)) + -(x_96));
  let x_99 : vec3<f32> = u_xlat12;
  let x_101 : vec3<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_99.x, x_99.x, x_99.x) * x_101);
  let x_103 : vec3<f32> = u_xlat0;
  let x_105 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_103.x, x_103.x, x_103.x) * x_105);
  let x_108 : vec3<f32> = u_xlat0;
  let x_110 : vec4<f32> = vs_INTERP2;
  let x_112 : vec3<f32> = (vec3<f32>(x_108.x, x_108.x, x_108.x) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_116 : vec3<f32> = u_xlat12;
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
  u_xlat18 = (vec3<f32>(x_184.x, x_184.x, x_184.x) * vec3<f32>(x_186.x, x_186.y, x_186.z));
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
  let x_208 : vec3<f32> = u_xlat18;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_208.y, x_208.y, x_208.y));
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec3<f32> = u_xlat18;
  let x_215 : vec4<f32> = u_xlat2;
  let x_218 : vec4<f32> = u_xlat3;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.x, x_213.x) * vec3<f32>(x_215.x, x_215.y, x_215.z)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec3<f32> = u_xlat18;
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
  u_xlat37 = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat0.x;
  let x_473 : f32 = x_253.x_MainLightShadowParams.x;
  let x_475 : f32 = u_xlat37;
  u_xlat0.x = ((x_471 * x_473) + x_475);
  let x_480 : f32 = u_xlat2.z;
  u_xlatb37 = (0.0f >= x_480);
  let x_483 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_483 >= 1.0f);
  let x_486 : bool = u_xlatb37;
  let x_488 : bool = u_xlatb2.x;
  u_xlatb37 = (x_486 | x_488);
  let x_490 : bool = u_xlatb37;
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
  u_xlat13 = (vec3<f32>(x_511.x, x_511.x, x_511.x) * vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec3<f32> = u_xlat13;
  let x_518 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_517 * vec3<f32>(x_518.x, x_518.x, x_518.x));
  let x_521 : vec3<f32> = u_xlat1;
  let x_522 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_521 * vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_526 : f32 = u_xlat4.w;
  u_xlatb37 = (x_526 >= 0.400000006f);
  let x_529 : bool = u_xlatb37;
  if (x_529) {
    let x_534 : f32 = u_xlat4.w;
    x_530 = x_534;
  } else {
    x_530 = 0.0f;
  }
  let x_536 : f32 = x_530;
  u_xlat37 = x_536;
  let x_538 : f32 = u_xlat4.w;
  u_xlat2.x = (x_538 + -0.400000006f);
  let x_544 : f32 = u_xlat4.w;
  u_xlat14 = dpdxCoarse(x_544);
  let x_549 : f32 = u_xlat4.w;
  u_xlat26.x = dpdyCoarse(x_549);
  let x_553 : f32 = u_xlat26.x;
  let x_555 : f32 = u_xlat14;
  u_xlat14 = (abs(x_553) + abs(x_555));
  let x_558 : f32 = u_xlat14;
  u_xlat14 = max(x_558, 0.0001f);
  let x_562 : f32 = u_xlat2.x;
  let x_563 : f32 = u_xlat14;
  u_xlat2.x = (x_562 / x_563);
  let x_567 : f32 = u_xlat2.x;
  u_xlat2.x = (x_567 + 0.5f);
  let x_572 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_572, 0.0f, 1.0f);
  let x_577 : f32 = x_139.x_AlphaToMaskAvailable;
  u_xlatb14 = !((x_577 == 0.0f));
  let x_579 : bool = u_xlatb14;
  if (x_579) {
    let x_584 : f32 = u_xlat2.x;
    x_580 = x_584;
  } else {
    let x_586 : f32 = u_xlat37;
    x_580 = x_586;
  }
  let x_587 : f32 = x_580;
  u_xlat37 = x_587;
  let x_588 : f32 = u_xlat37;
  u_xlat2.x = (x_588 + -0.0001f);
  let x_593 : f32 = u_xlat2.x;
  u_xlatb2.x = (x_593 < 0.0f);
  let x_597 : bool = u_xlatb2.x;
  if (((select(0i, 1i, x_597) * -1i) != 0i)) {
    discard;
  }
  let x_605 : vec3<f32> = u_xlat12;
  let x_606 : vec3<f32> = u_xlat18;
  u_xlat12 = (x_605 * vec3<f32>(x_606.y, x_606.y, x_606.y));
  let x_609 : vec3<f32> = u_xlat18;
  let x_611 : vec4<f32> = vs_INTERP2;
  let x_614 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_609.x, x_609.x, x_609.x) * vec3<f32>(x_611.x, x_611.y, x_611.z)) + x_614);
  let x_616 : vec3<f32> = u_xlat18;
  let x_618 : vec3<f32> = vs_INTERP1;
  let x_620 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_616.z, x_616.z, x_616.z) * x_618) + x_620);
  let x_622 : vec3<f32> = u_xlat12;
  let x_623 : vec3<f32> = u_xlat12;
  u_xlat2.x = dot(x_622, x_623);
  let x_627 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_627);
  let x_630 : vec3<f32> = u_xlat12;
  let x_631 : vec4<f32> = u_xlat2;
  let x_633 : vec3<f32> = (x_630 * vec3<f32>(x_631.x, x_631.x, x_631.x));
  let x_634 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_638 : f32 = x_139.unity_OrthoParams.w;
  u_xlatb12.x = (x_638 == 0.0f);
  let x_641 : vec3<f32> = vs_INTERP0;
  let x_646 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_647 : vec3<f32> = (-(x_641) + x_646);
  let x_648 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_647.x, x_648.y, x_647.y, x_647.z);
  let x_651 : vec4<f32> = u_xlat2;
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_651.x, x_651.z, x_651.w), vec3<f32>(x_653.x, x_653.z, x_653.w));
  let x_656 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_656);
  let x_658 : f32 = u_xlat24;
  let x_660 : vec4<f32> = u_xlat2;
  let x_662 : vec3<f32> = (vec3<f32>(x_658, x_658, x_658) * vec3<f32>(x_660.x, x_660.z, x_660.w));
  let x_663 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_662.x, x_663.y, x_662.y, x_662.z);
  let x_667 : f32 = x_139.unity_MatrixV[0i].z;
  u_xlat4.x = x_667;
  let x_670 : f32 = x_139.unity_MatrixV[1i].z;
  u_xlat4.y = x_670;
  let x_673 : f32 = x_139.unity_MatrixV[2i].z;
  u_xlat4.z = x_673;
  let x_676 : bool = u_xlatb12.x;
  if (x_676) {
    let x_680 : vec4<f32> = u_xlat2;
    x_677 = vec3<f32>(x_680.x, x_680.z, x_680.w);
  } else {
    let x_683 : vec4<f32> = u_xlat4;
    x_677 = vec3<f32>(x_683.x, x_683.y, x_683.z);
  }
  let x_685 : vec3<f32> = x_677;
  u_xlat12 = x_685;
  let x_687 : f32 = vs_INTERP0.y;
  let x_689 : f32 = x_139.unity_MatrixV[1i].z;
  u_xlat2.x = (x_687 * x_689);
  let x_693 : f32 = x_139.unity_MatrixV[0i].z;
  let x_695 : f32 = vs_INTERP0.x;
  let x_698 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_693 * x_695) + x_698);
  let x_702 : f32 = x_139.unity_MatrixV[2i].z;
  let x_704 : f32 = vs_INTERP0.z;
  let x_707 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_702 * x_704) + x_707);
  let x_711 : f32 = u_xlat2.x;
  let x_713 : f32 = x_139.unity_MatrixV[3i].z;
  u_xlat2.x = (x_711 + x_713);
  let x_717 : f32 = u_xlat2.x;
  let x_720 : f32 = x_139.x_ProjectionParams.y;
  u_xlat2.x = (-(x_717) + -(x_720));
  let x_725 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_725, 0.0f);
  let x_729 : f32 = u_xlat2.x;
  let x_732 : f32 = x_139.unity_FogParams.x;
  u_xlat2.x = (x_729 * x_732);
  u_xlat3.w = 1.0f;
  let x_738 : vec4<f32> = x_60.unity_SHAr;
  let x_739 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_738, x_739);
  let x_744 : vec4<f32> = x_60.unity_SHAg;
  let x_745 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_744, x_745);
  let x_750 : vec4<f32> = x_60.unity_SHAb;
  let x_751 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_750, x_751);
  let x_754 : vec4<f32> = u_xlat3;
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_754.y, x_754.z, x_754.z, x_754.x) * vec4<f32>(x_756.x, x_756.y, x_756.z, x_756.z));
  let x_761 : vec4<f32> = x_60.unity_SHBr;
  let x_762 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_761, x_762);
  let x_767 : vec4<f32> = x_60.unity_SHBg;
  let x_768 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_767, x_768);
  let x_773 : vec4<f32> = x_60.unity_SHBb;
  let x_774 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_773, x_774);
  let x_778 : f32 = u_xlat3.y;
  let x_780 : f32 = u_xlat3.y;
  u_xlat26.x = (x_778 * x_780);
  let x_784 : f32 = u_xlat3.x;
  let x_786 : f32 = u_xlat3.x;
  let x_789 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_784 * x_786) + -(x_789));
  let x_795 : vec4<f32> = x_60.unity_SHC;
  let x_797 : vec2<f32> = u_xlat26;
  let x_800 : vec4<f32> = u_xlat8;
  u_xlat18 = ((vec3<f32>(x_795.x, x_795.y, x_795.z) * vec3<f32>(x_797.x, x_797.x, x_797.x)) + vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : vec4<f32> = u_xlat4;
  let x_805 : vec3<f32> = u_xlat18;
  let x_806 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) + x_805);
  let x_807 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat4;
  let x_811 : vec3<f32> = max(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_812 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_816 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
  u_xlat26 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_817.x, x_817.y));
  let x_822 : vec2<f32> = u_xlat26;
  let x_823 : vec4<f32> = hlslcc_FragCoord;
  let x_825 : vec2<f32> = (x_822 * vec2<f32>(x_823.x, x_823.y));
  let x_826 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
  let x_829 : f32 = u_xlat7.y;
  let x_832 : f32 = x_139.x_ScaleBiasRt.x;
  let x_835 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat26.x = ((x_829 * x_832) + x_835);
  let x_839 : f32 = u_xlat26.x;
  u_xlat7.z = (-(x_839) + 1.0f);
  let x_844 : f32 = u_xlat6.x;
  u_xlat6.x = x_844;
  let x_847 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_847, 0.0f, 1.0f);
  let x_850 : f32 = u_xlat37;
  u_xlat37 = min(x_850, 1.0f);
  let x_852 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_852 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_857 : f32 = u_xlat6.x;
  u_xlat26.x = (-(x_857) + 1.0f);
  let x_863 : f32 = u_xlat26.x;
  let x_865 : f32 = u_xlat26.x;
  u_xlat38 = (x_863 * x_865);
  let x_867 : f32 = u_xlat38;
  u_xlat38 = max(x_867, 0.0078125f);
  let x_871 : f32 = u_xlat38;
  let x_872 : f32 = u_xlat38;
  u_xlat39 = (x_871 * x_872);
  let x_876 : f32 = u_xlat6.x;
  u_xlat40 = (x_876 + 0.040000021f);
  let x_879 : f32 = u_xlat40;
  u_xlat40 = min(x_879, 1.0f);
  let x_882 : f32 = u_xlat38;
  u_xlat41 = ((x_882 * 4.0f) + 2.0f);
  let x_890 : vec4<f32> = u_xlat7;
  let x_893 : f32 = x_139.x_GlobalMipBias.x;
  let x_894 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_890.x, x_890.z), x_893);
  u_xlat6.x = x_894.x;
  let x_898 : f32 = u_xlat6.x;
  u_xlat18.x = (x_898 + -1.0f);
  let x_902 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_904 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_902 * x_904) + 1.0f);
  let x_909 : f32 = u_xlat6.x;
  let x_911 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_909, x_911);
  let x_914 : vec3<f32> = vs_INTERP0;
  let x_916 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_918 : vec3<f32> = (x_914 + -(x_916));
  let x_919 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_922 : vec4<f32> = u_xlat7;
  let x_924 : vec4<f32> = u_xlat7;
  u_xlat30 = dot(vec3<f32>(x_922.x, x_922.y, x_922.z), vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : f32 = u_xlat30;
  let x_929 : f32 = x_253.x_MainLightShadowParams.z;
  let x_932 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat30 = ((x_927 * x_929) + x_932);
  let x_934 : f32 = u_xlat30;
  u_xlat30 = clamp(x_934, 0.0f, 1.0f);
  let x_938 : f32 = u_xlat0.x;
  u_xlat42 = (-(x_938) + 1.0f);
  let x_941 : f32 = u_xlat30;
  let x_942 : f32 = u_xlat42;
  let x_945 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_941 * x_942) + x_945);
  let x_948 : vec3<f32> = u_xlat18;
  let x_951 : vec4<f32> = x_139.x_MainLightColor;
  let x_953 : vec3<f32> = (vec3<f32>(x_948.x, x_948.x, x_948.x) * vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_956 : vec3<f32> = u_xlat12;
  let x_958 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(-(x_956), vec3<f32>(x_958.x, x_958.y, x_958.z));
  let x_961 : f32 = u_xlat30;
  let x_962 : f32 = u_xlat30;
  u_xlat30 = (x_961 + x_962);
  let x_964 : vec4<f32> = u_xlat3;
  let x_966 : f32 = u_xlat30;
  let x_970 : vec3<f32> = u_xlat12;
  let x_972 : vec3<f32> = ((vec3<f32>(x_964.x, x_964.y, x_964.z) * -(vec3<f32>(x_966, x_966, x_966))) + -(x_970));
  let x_973 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_975 : vec4<f32> = u_xlat3;
  let x_977 : vec3<f32> = u_xlat12;
  u_xlat30 = dot(vec3<f32>(x_975.x, x_975.y, x_975.z), x_977);
  let x_979 : f32 = u_xlat30;
  u_xlat30 = clamp(x_979, 0.0f, 1.0f);
  let x_981 : f32 = u_xlat30;
  u_xlat30 = (-(x_981) + 1.0f);
  let x_984 : f32 = u_xlat30;
  let x_985 : f32 = u_xlat30;
  u_xlat30 = (x_984 * x_985);
  let x_987 : f32 = u_xlat30;
  let x_988 : f32 = u_xlat30;
  u_xlat30 = (x_987 * x_988);
  let x_991 : f32 = u_xlat26.x;
  u_xlat42 = ((-(x_991) * 0.699999988f) + 1.700000048f);
  let x_998 : f32 = u_xlat26.x;
  let x_999 : f32 = u_xlat42;
  u_xlat26.x = (x_998 * x_999);
  let x_1003 : f32 = u_xlat26.x;
  u_xlat26.x = (x_1003 * 6.0f);
  let x_1015 : vec4<f32> = u_xlat8;
  let x_1018 : f32 = u_xlat26.x;
  let x_1019 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1015.x, x_1015.y, x_1015.z), x_1018);
  u_xlat8 = x_1019;
  let x_1021 : f32 = u_xlat8.w;
  u_xlat26.x = (x_1021 + -1.0f);
  let x_1025 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_1027 : f32 = u_xlat26.x;
  u_xlat26.x = ((x_1025 * x_1027) + 1.0f);
  let x_1032 : f32 = u_xlat26.x;
  u_xlat26.x = max(x_1032, 0.0f);
  let x_1036 : f32 = u_xlat26.x;
  u_xlat26.x = log2(x_1036);
  let x_1040 : f32 = u_xlat26.x;
  let x_1042 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat26.x = (x_1040 * x_1042);
  let x_1046 : f32 = u_xlat26.x;
  u_xlat26.x = exp2(x_1046);
  let x_1050 : f32 = u_xlat26.x;
  let x_1052 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat26.x = (x_1050 * x_1052);
  let x_1055 : vec4<f32> = u_xlat8;
  let x_1057 : vec2<f32> = u_xlat26;
  let x_1059 : vec3<f32> = (vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * vec3<f32>(x_1057.x, x_1057.x, x_1057.x));
  let x_1060 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : f32 = u_xlat38;
  let x_1064 : f32 = u_xlat38;
  u_xlat26 = ((vec2<f32>(x_1062, x_1062) * vec2<f32>(x_1064, x_1064)) + vec2<f32>(-1.0f, 1.0f));
  let x_1070 : f32 = u_xlat26.y;
  u_xlat38 = (1.0f / x_1070);
  let x_1072 : f32 = u_xlat40;
  u_xlat40 = (x_1072 + -0.039999999f);
  let x_1075 : f32 = u_xlat30;
  let x_1076 : f32 = u_xlat40;
  u_xlat40 = ((x_1075 * x_1076) + 0.039999999f);
  let x_1080 : f32 = u_xlat38;
  let x_1081 : f32 = u_xlat40;
  u_xlat38 = (x_1080 * x_1081);
  let x_1083 : f32 = u_xlat38;
  let x_1085 : vec4<f32> = u_xlat8;
  let x_1087 : vec3<f32> = (vec3<f32>(x_1083, x_1083, x_1083) * vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
  let x_1088 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat4;
  let x_1092 : vec3<f32> = u_xlat5;
  let x_1094 : vec4<f32> = u_xlat8;
  let x_1096 : vec3<f32> = ((vec3<f32>(x_1090.x, x_1090.y, x_1090.z) * x_1092) + vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1097 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1100 : f32 = u_xlat0.x;
  let x_1102 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1100 * x_1102);
  let x_1105 : vec4<f32> = u_xlat3;
  let x_1108 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1111 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1111, 0.0f, 1.0f);
  let x_1114 : f32 = u_xlat0.x;
  let x_1115 : f32 = u_xlat38;
  u_xlat0.x = (x_1114 * x_1115);
  let x_1118 : vec3<f32> = u_xlat0;
  let x_1120 : vec4<f32> = u_xlat7;
  let x_1122 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.x, x_1118.x) * vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1123 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
  let x_1125 : vec3<f32> = u_xlat12;
  let x_1127 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1129 : vec3<f32> = (x_1125 + vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1130 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : vec4<f32> = u_xlat8;
  let x_1134 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1132.x, x_1132.y, x_1132.z), vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
  let x_1139 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1139, 1.17549435e-37f);
  let x_1143 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1143);
  let x_1146 : vec3<f32> = u_xlat0;
  let x_1148 : vec4<f32> = u_xlat8;
  let x_1150 : vec3<f32> = (vec3<f32>(x_1146.x, x_1146.x, x_1146.x) * vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat3;
  let x_1155 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(vec3<f32>(x_1153.x, x_1153.y, x_1153.z), vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1160 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1160, 0.0f, 1.0f);
  let x_1164 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1166 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_1164.x, x_1164.y, x_1164.z), vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : f32 = u_xlat38;
  u_xlat38 = clamp(x_1169, 0.0f, 1.0f);
  let x_1172 : f32 = u_xlat0.x;
  let x_1174 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1172 * x_1174);
  let x_1178 : f32 = u_xlat0.x;
  let x_1180 : f32 = u_xlat26.x;
  u_xlat0.x = ((x_1178 * x_1180) + 1.000010014f);
  let x_1185 : f32 = u_xlat38;
  let x_1186 : f32 = u_xlat38;
  u_xlat38 = (x_1185 * x_1186);
  let x_1189 : f32 = u_xlat0.x;
  let x_1191 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1189 * x_1191);
  let x_1194 : f32 = u_xlat38;
  u_xlat38 = max(x_1194, 0.100000001f);
  let x_1198 : f32 = u_xlat0.x;
  let x_1199 : f32 = u_xlat38;
  u_xlat0.x = (x_1198 * x_1199);
  let x_1202 : f32 = u_xlat41;
  let x_1204 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1202 * x_1204);
  let x_1207 : f32 = u_xlat39;
  let x_1209 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1207 / x_1209);
  let x_1212 : vec3<f32> = u_xlat0;
  let x_1216 : vec3<f32> = u_xlat5;
  let x_1217 : vec3<f32> = ((vec3<f32>(x_1212.x, x_1212.x, x_1212.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1216);
  let x_1218 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
  let x_1220 : vec4<f32> = u_xlat7;
  let x_1222 : vec4<f32> = u_xlat8;
  let x_1224 : vec3<f32> = (vec3<f32>(x_1220.x, x_1220.y, x_1220.z) * vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1229 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1231 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1229, x_1231);
  let x_1235 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1235));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1247 : u32 = u_xlatu_loop_1;
    let x_1248 : u32 = u_xlatu0;
    if ((x_1247 < x_1248)) {
    } else {
      break;
    }
    let x_1251 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1251 >> 2u);
    let x_1254 : u32 = u_xlatu_loop_1;
    u_xlati30 = bitcast<i32>((x_1254 & 3u));
    let x_1257 : u32 = u_xlatu40;
    let x_1260 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1257)];
    let x_1270 : i32 = u_xlati30;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1275 : vec4<u32> = indexable[x_1270];
    u_xlat40 = dot(x_1260, bitcast<vec4<f32>>(x_1275));
    let x_1279 : f32 = u_xlat40;
    u_xlati40 = i32(x_1279);
    let x_1282 : vec3<f32> = vs_INTERP0;
    let x_1294 : i32 = u_xlati40;
    let x_1296 : vec4<f32> = x_1293.x_AdditionalLightsPosition[x_1294];
    let x_1299 : i32 = u_xlati40;
    let x_1301 : vec4<f32> = x_1293.x_AdditionalLightsPosition[x_1299];
    u_xlat9 = ((-(x_1282) * vec3<f32>(x_1296.w, x_1296.w, x_1296.w)) + vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
    let x_1304 : vec3<f32> = u_xlat9;
    let x_1305 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1304, x_1305);
    let x_1307 : f32 = u_xlat30;
    u_xlat30 = max(x_1307, 6.10351562e-05f);
    let x_1310 : f32 = u_xlat30;
    u_xlat42 = inverseSqrt(x_1310);
    let x_1313 : f32 = u_xlat42;
    let x_1315 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1313, x_1313, x_1313) * x_1315);
    let x_1318 : f32 = u_xlat30;
    u_xlat43 = (1.0f / x_1318);
    let x_1320 : f32 = u_xlat30;
    let x_1321 : i32 = u_xlati40;
    let x_1323 : f32 = x_1293.x_AdditionalLightsAttenuation[x_1321].x;
    u_xlat30 = (x_1320 * x_1323);
    let x_1325 : f32 = u_xlat30;
    let x_1327 : f32 = u_xlat30;
    u_xlat30 = ((-(x_1325) * x_1327) + 1.0f);
    let x_1330 : f32 = u_xlat30;
    u_xlat30 = max(x_1330, 0.0f);
    let x_1332 : f32 = u_xlat30;
    let x_1333 : f32 = u_xlat30;
    u_xlat30 = (x_1332 * x_1333);
    let x_1335 : f32 = u_xlat30;
    let x_1336 : f32 = u_xlat43;
    u_xlat30 = (x_1335 * x_1336);
    let x_1338 : i32 = u_xlati40;
    let x_1340 : vec4<f32> = x_1293.x_AdditionalLightsSpotDir[x_1338];
    let x_1342 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1340.x, x_1340.y, x_1340.z), x_1342);
    let x_1344 : f32 = u_xlat43;
    let x_1345 : i32 = u_xlati40;
    let x_1347 : f32 = x_1293.x_AdditionalLightsAttenuation[x_1345].z;
    let x_1349 : i32 = u_xlati40;
    let x_1351 : f32 = x_1293.x_AdditionalLightsAttenuation[x_1349].w;
    u_xlat43 = ((x_1344 * x_1347) + x_1351);
    let x_1353 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1353, 0.0f, 1.0f);
    let x_1355 : f32 = u_xlat43;
    let x_1356 : f32 = u_xlat43;
    u_xlat43 = (x_1355 * x_1356);
    let x_1358 : f32 = u_xlat30;
    let x_1359 : f32 = u_xlat43;
    u_xlat30 = (x_1358 * x_1359);
    let x_1362 : vec3<f32> = u_xlat18;
    let x_1364 : i32 = u_xlati40;
    let x_1366 : vec4<f32> = x_1293.x_AdditionalLightsColor[x_1364];
    u_xlat11 = (vec3<f32>(x_1362.x, x_1362.x, x_1362.x) * vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
    let x_1369 : vec4<f32> = u_xlat3;
    let x_1371 : vec3<f32> = u_xlat10;
    u_xlat40 = dot(vec3<f32>(x_1369.x, x_1369.y, x_1369.z), x_1371);
    let x_1373 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1373, 0.0f, 1.0f);
    let x_1375 : f32 = u_xlat40;
    let x_1376 : f32 = u_xlat30;
    u_xlat40 = (x_1375 * x_1376);
    let x_1378 : f32 = u_xlat40;
    let x_1380 : vec3<f32> = u_xlat11;
    u_xlat11 = (vec3<f32>(x_1378, x_1378, x_1378) * x_1380);
    let x_1382 : vec3<f32> = u_xlat9;
    let x_1383 : f32 = u_xlat42;
    let x_1386 : vec3<f32> = u_xlat12;
    u_xlat9 = ((x_1382 * vec3<f32>(x_1383, x_1383, x_1383)) + x_1386);
    let x_1388 : vec3<f32> = u_xlat9;
    let x_1389 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(x_1388, x_1389);
    let x_1391 : f32 = u_xlat40;
    u_xlat40 = max(x_1391, 1.17549435e-37f);
    let x_1393 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1393);
    let x_1395 : f32 = u_xlat40;
    let x_1397 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1395, x_1395, x_1395) * x_1397);
    let x_1399 : vec4<f32> = u_xlat3;
    let x_1401 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1399.x, x_1399.y, x_1399.z), x_1401);
    let x_1403 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1403, 0.0f, 1.0f);
    let x_1405 : vec3<f32> = u_xlat10;
    let x_1406 : vec3<f32> = u_xlat9;
    u_xlat30 = dot(x_1405, x_1406);
    let x_1408 : f32 = u_xlat30;
    u_xlat30 = clamp(x_1408, 0.0f, 1.0f);
    let x_1410 : f32 = u_xlat40;
    let x_1411 : f32 = u_xlat40;
    u_xlat40 = (x_1410 * x_1411);
    let x_1413 : f32 = u_xlat40;
    let x_1415 : f32 = u_xlat26.x;
    u_xlat40 = ((x_1413 * x_1415) + 1.000010014f);
    let x_1418 : f32 = u_xlat30;
    let x_1419 : f32 = u_xlat30;
    u_xlat30 = (x_1418 * x_1419);
    let x_1421 : f32 = u_xlat40;
    let x_1422 : f32 = u_xlat40;
    u_xlat40 = (x_1421 * x_1422);
    let x_1424 : f32 = u_xlat30;
    u_xlat30 = max(x_1424, 0.100000001f);
    let x_1426 : f32 = u_xlat40;
    let x_1427 : f32 = u_xlat30;
    u_xlat40 = (x_1426 * x_1427);
    let x_1429 : f32 = u_xlat41;
    let x_1430 : f32 = u_xlat40;
    u_xlat40 = (x_1429 * x_1430);
    let x_1432 : f32 = u_xlat39;
    let x_1433 : f32 = u_xlat40;
    u_xlat40 = (x_1432 / x_1433);
    let x_1435 : f32 = u_xlat40;
    let x_1438 : vec3<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1435, x_1435, x_1435) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1438);
    let x_1440 : vec3<f32> = u_xlat9;
    let x_1441 : vec3<f32> = u_xlat11;
    let x_1443 : vec4<f32> = u_xlat8;
    let x_1445 : vec3<f32> = ((x_1440 * x_1441) + vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
    let x_1446 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);

    continuing {
      let x_1448 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1448 + bitcast<u32>(1i));
    }
  }
  let x_1450 : vec4<f32> = u_xlat4;
  let x_1452 : vec4<f32> = u_xlat6;
  let x_1455 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1450.x, x_1450.y, x_1450.z) * vec3<f32>(x_1452.x, x_1452.x, x_1452.x)) + vec3<f32>(x_1455.x, x_1455.y, x_1455.z));
  let x_1458 : vec4<f32> = u_xlat8;
  let x_1460 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1458.x, x_1458.y, x_1458.z) + x_1460);
  let x_1462 : vec4<f32> = vs_INTERP4;
  let x_1464 : vec3<f32> = u_xlat1;
  let x_1466 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1462.w, x_1462.w, x_1462.w) * x_1464) + x_1466);
  let x_1470 : f32 = u_xlat2.x;
  let x_1472 : f32 = u_xlat2.x;
  u_xlat36 = (x_1470 * -(x_1472));
  let x_1475 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1475);
  let x_1477 : vec3<f32> = u_xlat0;
  let x_1480 : vec4<f32> = x_139.unity_FogColor;
  u_xlat0 = (x_1477 + -(vec3<f32>(x_1480.x, x_1480.y, x_1480.z)));
  let x_1486 : f32 = u_xlat36;
  let x_1488 : vec3<f32> = u_xlat0;
  let x_1491 : vec4<f32> = x_139.unity_FogColor;
  let x_1493 : vec3<f32> = ((vec3<f32>(x_1486, x_1486, x_1486) * x_1488) + vec3<f32>(x_1491.x, x_1491.y, x_1491.z));
  let x_1494 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1493.x, x_1493.y, x_1493.z, x_1494.w);
  let x_1496 : bool = u_xlatb14;
  let x_1497 : f32 = u_xlat37;
  SV_Target0.w = select(1.0f, x_1497, x_1496);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

