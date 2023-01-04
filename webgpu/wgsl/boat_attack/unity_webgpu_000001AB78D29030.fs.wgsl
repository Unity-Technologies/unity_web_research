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

@group(0) @binding(4) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_139 : PGlobals;

@group(1) @binding(4) var<uniform> x_149 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_253 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1232 : AdditionalLights;

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
  var x_671 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat26 : f32;
  var u_xlat28 : f32;
  var u_xlat39 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati8 : i32;
  var u_xlat40 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati40 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat33 : f32;
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
  u_xlat11 = (x_627 * vec3<f32>(x_628.x, x_628.x, x_628.x));
  let x_633 : f32 = x_139.unity_OrthoParams.w;
  u_xlatb2.x = (x_633 == 0.0f);
  let x_636 : vec3<f32> = vs_INTERP0;
  let x_641 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_642 : vec3<f32> = (-(x_636) + x_641);
  let x_643 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat3;
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_650);
  let x_652 : f32 = u_xlat24;
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec3<f32> = (vec3<f32>(x_652, x_652, x_652) * vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_661 : f32 = x_139.unity_MatrixV[0i].z;
  u_xlat4.x = x_661;
  let x_664 : f32 = x_139.unity_MatrixV[1i].z;
  u_xlat4.y = x_664;
  let x_667 : f32 = x_139.unity_MatrixV[2i].z;
  u_xlat4.z = x_667;
  let x_670 : bool = u_xlatb2.x;
  if (x_670) {
    let x_674 : vec4<f32> = u_xlat3;
    x_671 = vec3<f32>(x_674.x, x_674.y, x_674.z);
  } else {
    let x_677 : vec4<f32> = u_xlat4;
    x_671 = vec3<f32>(x_677.x, x_677.y, x_677.z);
  }
  let x_679 : vec3<f32> = x_671;
  let x_680 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_679.x, x_680.y, x_679.y, x_679.z);
  let x_683 : f32 = vs_INTERP0.y;
  let x_685 : f32 = x_139.unity_MatrixV[1i].z;
  u_xlat3.x = (x_683 * x_685);
  let x_689 : f32 = x_139.unity_MatrixV[0i].z;
  let x_691 : f32 = vs_INTERP0.x;
  let x_694 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_689 * x_691) + x_694);
  let x_698 : f32 = x_139.unity_MatrixV[2i].z;
  let x_700 : f32 = vs_INTERP0.z;
  let x_703 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_698 * x_700) + x_703);
  let x_707 : f32 = u_xlat3.x;
  let x_709 : f32 = x_139.unity_MatrixV[3i].z;
  u_xlat3.x = (x_707 + x_709);
  let x_713 : f32 = u_xlat3.x;
  let x_717 : f32 = x_139.x_ProjectionParams.y;
  u_xlat3.x = (-(x_713) + -(x_717));
  let x_722 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_722, 0.0f);
  let x_726 : f32 = u_xlat3.x;
  let x_729 : f32 = x_139.unity_FogParams.x;
  u_xlat3.x = (x_726 * x_729);
  let x_740 : vec2<f32> = vs_INTERP5;
  let x_742 : f32 = x_139.x_GlobalMipBias.x;
  let x_743 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_740, x_742);
  u_xlat14 = vec3<f32>(x_743.x, x_743.y, x_743.z);
  let x_747 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_748 : vec2<f32> = vec2<f32>(x_747.x, x_747.y);
  let x_752 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_748.x, x_748.y));
  let x_753 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat4;
  let x_757 : vec4<f32> = hlslcc_FragCoord;
  let x_759 : vec2<f32> = (vec2<f32>(x_755.x, x_755.y) * vec2<f32>(x_757.x, x_757.y));
  let x_760 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
  let x_764 : f32 = u_xlat4.y;
  let x_767 : f32 = x_139.x_ScaleBiasRt.x;
  let x_770 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_764 * x_767) + x_770);
  let x_774 : f32 = u_xlat15.x;
  u_xlat4.z = (-(x_774) + 1.0f);
  let x_779 : f32 = u_xlat6.x;
  u_xlat6.x = x_779;
  let x_782 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_782, 0.0f, 1.0f);
  let x_785 : f32 = u_xlat34;
  u_xlat34 = min(x_785, 1.0f);
  let x_787 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_787 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_792 : f32 = u_xlat6.x;
  u_xlat15.x = (-(x_792) + 1.0f);
  let x_798 : f32 = u_xlat15.x;
  let x_800 : f32 = u_xlat15.x;
  u_xlat37 = (x_798 * x_800);
  let x_802 : f32 = u_xlat37;
  u_xlat37 = max(x_802, 0.0078125f);
  let x_806 : f32 = u_xlat37;
  let x_807 : f32 = u_xlat37;
  u_xlat38 = (x_806 * x_807);
  let x_810 : f32 = u_xlat6.x;
  u_xlat6.x = (x_810 + 0.040000021f);
  let x_815 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_815, 1.0f);
  let x_818 : f32 = u_xlat37;
  u_xlat17.x = ((x_818 * 4.0f) + 2.0f);
  let x_827 : vec4<f32> = u_xlat4;
  let x_830 : f32 = x_139.x_GlobalMipBias.x;
  let x_831 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_827.x, x_827.z), x_830);
  u_xlat4.x = x_831.x;
  let x_836 : f32 = u_xlat4.x;
  u_xlat26 = (x_836 + -1.0f);
  let x_839 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_840 : f32 = u_xlat26;
  u_xlat26 = ((x_839 * x_840) + 1.0f);
  let x_844 : f32 = u_xlat4.x;
  let x_846 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_844, x_846);
  let x_849 : vec3<f32> = vs_INTERP0;
  let x_851 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_853 : vec3<f32> = (x_849 + -(x_851));
  let x_854 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_857 : vec4<f32> = u_xlat7;
  let x_859 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : f32 = u_xlat28;
  let x_864 : f32 = x_253.x_MainLightShadowParams.z;
  let x_867 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat28 = ((x_862 * x_864) + x_867);
  let x_869 : f32 = u_xlat28;
  u_xlat28 = clamp(x_869, 0.0f, 1.0f);
  let x_873 : f32 = u_xlat0.x;
  u_xlat39 = (-(x_873) + 1.0f);
  let x_876 : f32 = u_xlat28;
  let x_877 : f32 = u_xlat39;
  let x_880 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_876 * x_877) + x_880);
  let x_883 : f32 = u_xlat26;
  let x_886 : vec4<f32> = x_139.x_MainLightColor;
  let x_888 : vec3<f32> = (vec3<f32>(x_883, x_883, x_883) * vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_889 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat2;
  let x_894 : vec3<f32> = u_xlat11;
  u_xlat28 = dot(-(vec3<f32>(x_891.x, x_891.z, x_891.w)), x_894);
  let x_896 : f32 = u_xlat28;
  let x_897 : f32 = u_xlat28;
  u_xlat28 = (x_896 + x_897);
  let x_899 : vec3<f32> = u_xlat11;
  let x_900 : f32 = u_xlat28;
  let x_904 : vec4<f32> = u_xlat2;
  let x_907 : vec3<f32> = ((x_899 * -(vec3<f32>(x_900, x_900, x_900))) + -(vec3<f32>(x_904.x, x_904.z, x_904.w)));
  let x_908 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec3<f32> = u_xlat11;
  let x_911 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(x_910, vec3<f32>(x_911.x, x_911.z, x_911.w));
  let x_914 : f32 = u_xlat28;
  u_xlat28 = clamp(x_914, 0.0f, 1.0f);
  let x_916 : f32 = u_xlat28;
  u_xlat28 = (-(x_916) + 1.0f);
  let x_919 : f32 = u_xlat28;
  let x_920 : f32 = u_xlat28;
  u_xlat28 = (x_919 * x_920);
  let x_922 : f32 = u_xlat28;
  let x_923 : f32 = u_xlat28;
  u_xlat28 = (x_922 * x_923);
  let x_926 : f32 = u_xlat15.x;
  u_xlat39 = ((-(x_926) * 0.699999988f) + 1.700000048f);
  let x_933 : f32 = u_xlat15.x;
  let x_934 : f32 = u_xlat39;
  u_xlat15.x = (x_933 * x_934);
  let x_938 : f32 = u_xlat15.x;
  u_xlat15.x = (x_938 * 6.0f);
  let x_950 : vec4<f32> = u_xlat8;
  let x_953 : f32 = u_xlat15.x;
  let x_954 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_950.x, x_950.y, x_950.z), x_953);
  u_xlat8 = x_954;
  let x_956 : f32 = u_xlat8.w;
  u_xlat15.x = (x_956 + -1.0f);
  let x_960 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_962 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_960 * x_962) + 1.0f);
  let x_967 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_967, 0.0f);
  let x_971 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_971);
  let x_975 : f32 = u_xlat15.x;
  let x_977 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_975 * x_977);
  let x_981 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_981);
  let x_985 : f32 = u_xlat15.x;
  let x_987 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_985 * x_987);
  let x_990 : vec4<f32> = u_xlat8;
  let x_992 : vec3<f32> = u_xlat15;
  let x_994 : vec3<f32> = (vec3<f32>(x_990.x, x_990.y, x_990.z) * vec3<f32>(x_992.x, x_992.x, x_992.x));
  let x_995 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : f32 = u_xlat37;
  let x_999 : f32 = u_xlat37;
  let x_1003 : vec2<f32> = ((vec2<f32>(x_997, x_997) * vec2<f32>(x_999, x_999)) + vec2<f32>(-1.0f, 1.0f));
  let x_1004 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1003.x, x_1004.y, x_1003.y);
  let x_1007 : f32 = u_xlat15.z;
  u_xlat37 = (1.0f / x_1007);
  let x_1010 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1010 + -0.039999999f);
  let x_1014 : f32 = u_xlat28;
  let x_1016 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1014 * x_1016) + 0.039999999f);
  let x_1021 : f32 = u_xlat37;
  let x_1023 : f32 = u_xlat6.x;
  u_xlat37 = (x_1021 * x_1023);
  let x_1025 : f32 = u_xlat37;
  let x_1027 : vec4<f32> = u_xlat8;
  let x_1029 : vec3<f32> = (vec3<f32>(x_1025, x_1025, x_1025) * vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1029.x, x_1030.y, x_1029.y, x_1029.z);
  let x_1032 : vec3<f32> = u_xlat14;
  let x_1033 : vec3<f32> = u_xlat5;
  let x_1035 : vec4<f32> = u_xlat6;
  u_xlat14 = ((x_1032 * x_1033) + vec3<f32>(x_1035.x, x_1035.z, x_1035.w));
  let x_1039 : f32 = u_xlat0.x;
  let x_1041 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1039 * x_1041);
  let x_1044 : vec3<f32> = u_xlat11;
  let x_1046 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat37 = dot(x_1044, vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1049 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1049, 0.0f, 1.0f);
  let x_1052 : f32 = u_xlat0.x;
  let x_1053 : f32 = u_xlat37;
  u_xlat0.x = (x_1052 * x_1053);
  let x_1056 : vec3<f32> = u_xlat0;
  let x_1058 : vec4<f32> = u_xlat7;
  let x_1060 : vec3<f32> = (vec3<f32>(x_1056.x, x_1056.x, x_1056.x) * vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1060.x, x_1061.y, x_1060.y, x_1060.z);
  let x_1063 : vec4<f32> = u_xlat2;
  let x_1066 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1068 : vec3<f32> = (vec3<f32>(x_1063.x, x_1063.z, x_1063.w) + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat7;
  let x_1073 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1071.x, x_1071.y, x_1071.z), vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1078 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1078, 1.17549435e-37f);
  let x_1082 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1082);
  let x_1085 : vec3<f32> = u_xlat0;
  let x_1087 : vec4<f32> = u_xlat7;
  let x_1089 : vec3<f32> = (vec3<f32>(x_1085.x, x_1085.x, x_1085.x) * vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec3<f32> = u_xlat11;
  let x_1093 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1092, vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1098 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1098, 0.0f, 1.0f);
  let x_1102 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1104 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1107, 0.0f, 1.0f);
  let x_1110 : f32 = u_xlat0.x;
  let x_1112 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1110 * x_1112);
  let x_1116 : f32 = u_xlat0.x;
  let x_1118 : f32 = u_xlat15.x;
  u_xlat0.x = ((x_1116 * x_1118) + 1.000010014f);
  let x_1123 : f32 = u_xlat37;
  let x_1124 : f32 = u_xlat37;
  u_xlat37 = (x_1123 * x_1124);
  let x_1127 : f32 = u_xlat0.x;
  let x_1129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1127 * x_1129);
  let x_1132 : f32 = u_xlat37;
  u_xlat37 = max(x_1132, 0.100000001f);
  let x_1136 : f32 = u_xlat0.x;
  let x_1137 : f32 = u_xlat37;
  u_xlat0.x = (x_1136 * x_1137);
  let x_1141 : f32 = u_xlat17.x;
  let x_1143 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1141 * x_1143);
  let x_1146 : f32 = u_xlat38;
  let x_1148 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1146 / x_1148);
  let x_1151 : vec3<f32> = u_xlat0;
  let x_1155 : vec3<f32> = u_xlat5;
  let x_1156 : vec3<f32> = ((vec3<f32>(x_1151.x, x_1151.x, x_1151.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1155);
  let x_1157 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1159 : vec4<f32> = u_xlat6;
  let x_1161 : vec4<f32> = u_xlat7;
  let x_1163 : vec3<f32> = (vec3<f32>(x_1159.x, x_1159.z, x_1159.w) * vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1163.x, x_1164.y, x_1163.y, x_1163.z);
  let x_1168 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1170 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1168, x_1170);
  let x_1174 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1174));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1186 : u32 = u_xlatu_loop_1;
    let x_1187 : u32 = u_xlatu0;
    if ((x_1186 < x_1187)) {
    } else {
      break;
    }
    let x_1190 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1190 >> 2u);
    let x_1193 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1193 & 3u));
    let x_1197 : u32 = u_xlatu40;
    let x_1200 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1197)];
    let x_1210 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1215 : vec4<u32> = indexable[x_1210];
    u_xlat40 = dot(x_1200, bitcast<vec4<f32>>(x_1215));
    let x_1219 : f32 = u_xlat40;
    u_xlati40 = i32(x_1219);
    let x_1221 : vec3<f32> = vs_INTERP0;
    let x_1233 : i32 = u_xlati40;
    let x_1235 : vec4<f32> = x_1232.x_AdditionalLightsPosition[x_1233];
    let x_1238 : i32 = u_xlati40;
    let x_1240 : vec4<f32> = x_1232.x_AdditionalLightsPosition[x_1238];
    let x_1242 : vec3<f32> = ((-(x_1221) * vec3<f32>(x_1235.w, x_1235.w, x_1235.w)) + vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
    let x_1243 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
    let x_1246 : vec4<f32> = u_xlat8;
    let x_1248 : vec4<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1246.x, x_1246.y, x_1246.z), vec3<f32>(x_1248.x, x_1248.y, x_1248.z));
    let x_1251 : f32 = u_xlat41;
    u_xlat41 = max(x_1251, 6.10351562e-05f);
    let x_1255 : f32 = u_xlat41;
    u_xlat9 = inverseSqrt(x_1255);
    let x_1258 : vec4<f32> = u_xlat8;
    let x_1260 : f32 = u_xlat9;
    u_xlat20 = (vec3<f32>(x_1258.x, x_1258.y, x_1258.z) * vec3<f32>(x_1260, x_1260, x_1260));
    let x_1264 : f32 = u_xlat41;
    u_xlat10.x = (1.0f / x_1264);
    let x_1267 : f32 = u_xlat41;
    let x_1268 : i32 = u_xlati40;
    let x_1270 : f32 = x_1232.x_AdditionalLightsAttenuation[x_1268].x;
    u_xlat41 = (x_1267 * x_1270);
    let x_1272 : f32 = u_xlat41;
    let x_1274 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1272) * x_1274) + 1.0f);
    let x_1277 : f32 = u_xlat41;
    u_xlat41 = max(x_1277, 0.0f);
    let x_1279 : f32 = u_xlat41;
    let x_1280 : f32 = u_xlat41;
    u_xlat41 = (x_1279 * x_1280);
    let x_1282 : f32 = u_xlat41;
    let x_1284 : f32 = u_xlat10.x;
    u_xlat41 = (x_1282 * x_1284);
    let x_1286 : i32 = u_xlati40;
    let x_1288 : vec4<f32> = x_1232.x_AdditionalLightsSpotDir[x_1286];
    let x_1290 : vec3<f32> = u_xlat20;
    u_xlat10.x = dot(vec3<f32>(x_1288.x, x_1288.y, x_1288.z), x_1290);
    let x_1294 : f32 = u_xlat10.x;
    let x_1295 : i32 = u_xlati40;
    let x_1297 : f32 = x_1232.x_AdditionalLightsAttenuation[x_1295].z;
    let x_1299 : i32 = u_xlati40;
    let x_1301 : f32 = x_1232.x_AdditionalLightsAttenuation[x_1299].w;
    u_xlat10.x = ((x_1294 * x_1297) + x_1301);
    let x_1305 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1305, 0.0f, 1.0f);
    let x_1309 : f32 = u_xlat10.x;
    let x_1311 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1309 * x_1311);
    let x_1314 : f32 = u_xlat41;
    let x_1316 : f32 = u_xlat10.x;
    u_xlat41 = (x_1314 * x_1316);
    let x_1318 : f32 = u_xlat26;
    let x_1320 : i32 = u_xlati40;
    let x_1322 : vec4<f32> = x_1232.x_AdditionalLightsColor[x_1320];
    u_xlat10 = (vec3<f32>(x_1318, x_1318, x_1318) * vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
    let x_1325 : vec3<f32> = u_xlat11;
    let x_1326 : vec3<f32> = u_xlat20;
    u_xlat40 = dot(x_1325, x_1326);
    let x_1328 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1328, 0.0f, 1.0f);
    let x_1330 : f32 = u_xlat40;
    let x_1331 : f32 = u_xlat41;
    u_xlat40 = (x_1330 * x_1331);
    let x_1333 : f32 = u_xlat40;
    let x_1335 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1333, x_1333, x_1333) * x_1335);
    let x_1337 : vec4<f32> = u_xlat8;
    let x_1339 : f32 = u_xlat9;
    let x_1342 : vec4<f32> = u_xlat2;
    let x_1344 : vec3<f32> = ((vec3<f32>(x_1337.x, x_1337.y, x_1337.z) * vec3<f32>(x_1339, x_1339, x_1339)) + vec3<f32>(x_1342.x, x_1342.z, x_1342.w));
    let x_1345 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
    let x_1347 : vec4<f32> = u_xlat8;
    let x_1349 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1347.x, x_1347.y, x_1347.z), vec3<f32>(x_1349.x, x_1349.y, x_1349.z));
    let x_1352 : f32 = u_xlat40;
    u_xlat40 = max(x_1352, 1.17549435e-37f);
    let x_1354 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1354);
    let x_1356 : f32 = u_xlat40;
    let x_1358 : vec4<f32> = u_xlat8;
    let x_1360 : vec3<f32> = (vec3<f32>(x_1356, x_1356, x_1356) * vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
    let x_1361 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
    let x_1363 : vec3<f32> = u_xlat11;
    let x_1364 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1363, vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
    let x_1367 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1367, 0.0f, 1.0f);
    let x_1369 : vec3<f32> = u_xlat20;
    let x_1370 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1369, vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
    let x_1375 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1375, 0.0f, 1.0f);
    let x_1378 : f32 = u_xlat40;
    let x_1379 : f32 = u_xlat40;
    u_xlat40 = (x_1378 * x_1379);
    let x_1381 : f32 = u_xlat40;
    let x_1383 : f32 = u_xlat15.x;
    u_xlat40 = ((x_1381 * x_1383) + 1.000010014f);
    let x_1387 : f32 = u_xlat8.x;
    let x_1389 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1387 * x_1389);
    let x_1392 : f32 = u_xlat40;
    let x_1393 : f32 = u_xlat40;
    u_xlat40 = (x_1392 * x_1393);
    let x_1396 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1396, 0.100000001f);
    let x_1399 : f32 = u_xlat40;
    let x_1401 : f32 = u_xlat8.x;
    u_xlat40 = (x_1399 * x_1401);
    let x_1404 : f32 = u_xlat17.x;
    let x_1405 : f32 = u_xlat40;
    u_xlat40 = (x_1404 * x_1405);
    let x_1407 : f32 = u_xlat38;
    let x_1408 : f32 = u_xlat40;
    u_xlat40 = (x_1407 / x_1408);
    let x_1410 : f32 = u_xlat40;
    let x_1413 : vec3<f32> = u_xlat5;
    let x_1414 : vec3<f32> = ((vec3<f32>(x_1410, x_1410, x_1410) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1413);
    let x_1415 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
    let x_1417 : vec4<f32> = u_xlat8;
    let x_1419 : vec3<f32> = u_xlat10;
    let x_1421 : vec4<f32> = u_xlat7;
    let x_1423 : vec3<f32> = ((vec3<f32>(x_1417.x, x_1417.y, x_1417.z) * x_1419) + vec3<f32>(x_1421.x, x_1421.y, x_1421.z));
    let x_1424 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);

    continuing {
      let x_1426 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1426 + bitcast<u32>(1i));
    }
  }
  let x_1428 : vec3<f32> = u_xlat14;
  let x_1429 : vec4<f32> = u_xlat4;
  let x_1432 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_1428 * vec3<f32>(x_1429.x, x_1429.x, x_1429.x)) + vec3<f32>(x_1432.x, x_1432.z, x_1432.w));
  let x_1435 : vec4<f32> = u_xlat7;
  let x_1437 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1435.x, x_1435.y, x_1435.z) + x_1437);
  let x_1439 : vec4<f32> = vs_INTERP4;
  let x_1441 : vec3<f32> = u_xlat1;
  let x_1443 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1439.w, x_1439.w, x_1439.w) * x_1441) + x_1443);
  let x_1447 : f32 = u_xlat3.x;
  let x_1449 : f32 = u_xlat3.x;
  u_xlat33 = (x_1447 * -(x_1449));
  let x_1452 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1452);
  let x_1454 : vec3<f32> = u_xlat0;
  let x_1457 : vec4<f32> = x_139.unity_FogColor;
  u_xlat0 = (x_1454 + -(vec3<f32>(x_1457.x, x_1457.y, x_1457.z)));
  let x_1463 : f32 = u_xlat33;
  let x_1465 : vec3<f32> = u_xlat0;
  let x_1468 : vec4<f32> = x_139.unity_FogColor;
  let x_1470 : vec3<f32> = ((vec3<f32>(x_1463, x_1463, x_1463) * x_1465) + vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
  let x_1471 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  let x_1473 : bool = u_xlatb13;
  let x_1474 : f32 = u_xlat34;
  SV_Target0.w = select(1.0f, x_1474, x_1473);
  let x_1481 : u32 = x_139.x_RenderingLayerMaxInt;
  let x_1483 : f32 = x_60.unity_RenderingLayer.x;
  u_xlatu0 = (x_1481 & bitcast<u32>(x_1483));
  let x_1486 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1486);
  let x_1491 : f32 = u_xlat0.x;
  let x_1493 : f32 = x_139.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1491 * x_1493);
  let x_1497 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1497, 0.0f, 1.0f);
  let x_1500 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1500.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(5) vs_INTERP5_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP5 = vs_INTERP5_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

