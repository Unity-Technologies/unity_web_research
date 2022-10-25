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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_139 : PGlobals;

@group(1) @binding(4) var<uniform> x_149 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_253 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1268 : AdditionalLights;

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
  let x_739 : vec2<f32> = vs_INTERP5;
  let x_741 : f32 = x_139.x_GlobalMipBias.x;
  let x_742 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_739, x_741);
  u_xlat4 = x_742;
  let x_748 : vec2<f32> = vs_INTERP5;
  let x_750 : f32 = x_139.x_GlobalMipBias.x;
  let x_751 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_748, x_750);
  u_xlat14 = vec3<f32>(x_751.x, x_751.y, x_751.z);
  let x_753 : vec4<f32> = u_xlat4;
  let x_757 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_758 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec3<f32> = u_xlat11;
  let x_761 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(x_760, vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_766 : f32 = u_xlat4.x;
  u_xlat4.x = (x_766 + 0.5f);
  let x_769 : vec3<f32> = u_xlat14;
  let x_770 : vec4<f32> = u_xlat4;
  u_xlat14 = (x_769 * vec3<f32>(x_770.x, x_770.x, x_770.x));
  let x_774 : f32 = u_xlat4.w;
  u_xlat4.x = max(x_774, 0.0001f);
  let x_777 : vec3<f32> = u_xlat14;
  let x_778 : vec4<f32> = u_xlat4;
  u_xlat14 = (x_777 / vec3<f32>(x_778.x, x_778.x, x_778.x));
  let x_783 : vec4<f32> = x_139.x_ScaledScreenParams;
  let x_784 : vec2<f32> = vec2<f32>(x_783.x, x_783.y);
  let x_788 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_784.x, x_784.y));
  let x_789 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
  let x_791 : vec4<f32> = u_xlat4;
  let x_793 : vec4<f32> = hlslcc_FragCoord;
  let x_795 : vec2<f32> = (vec2<f32>(x_791.x, x_791.y) * vec2<f32>(x_793.x, x_793.y));
  let x_796 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
  let x_800 : f32 = u_xlat4.y;
  let x_803 : f32 = x_139.x_ScaleBiasRt.x;
  let x_806 : f32 = x_139.x_ScaleBiasRt.y;
  u_xlat15.x = ((x_800 * x_803) + x_806);
  let x_810 : f32 = u_xlat15.x;
  u_xlat4.z = (-(x_810) + 1.0f);
  let x_815 : f32 = u_xlat6.x;
  u_xlat6.x = x_815;
  let x_818 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_818, 0.0f, 1.0f);
  let x_821 : f32 = u_xlat34;
  u_xlat34 = min(x_821, 1.0f);
  let x_823 : vec3<f32> = u_xlat5;
  u_xlat5 = (x_823 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_828 : f32 = u_xlat6.x;
  u_xlat15.x = (-(x_828) + 1.0f);
  let x_834 : f32 = u_xlat15.x;
  let x_836 : f32 = u_xlat15.x;
  u_xlat37 = (x_834 * x_836);
  let x_838 : f32 = u_xlat37;
  u_xlat37 = max(x_838, 0.0078125f);
  let x_842 : f32 = u_xlat37;
  let x_843 : f32 = u_xlat37;
  u_xlat38 = (x_842 * x_843);
  let x_846 : f32 = u_xlat6.x;
  u_xlat6.x = (x_846 + 0.040000021f);
  let x_851 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_851, 1.0f);
  let x_854 : f32 = u_xlat37;
  u_xlat17.x = ((x_854 * 4.0f) + 2.0f);
  let x_863 : vec4<f32> = u_xlat4;
  let x_866 : f32 = x_139.x_GlobalMipBias.x;
  let x_867 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_863.x, x_863.z), x_866);
  u_xlat4.x = x_867.x;
  let x_872 : f32 = u_xlat4.x;
  u_xlat26 = (x_872 + -1.0f);
  let x_875 : f32 = x_139.x_AmbientOcclusionParam.w;
  let x_876 : f32 = u_xlat26;
  u_xlat26 = ((x_875 * x_876) + 1.0f);
  let x_880 : f32 = u_xlat4.x;
  let x_882 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_880, x_882);
  let x_885 : vec3<f32> = vs_INTERP0;
  let x_887 : vec3<f32> = x_139.x_WorldSpaceCameraPos;
  let x_889 : vec3<f32> = (x_885 + -(x_887));
  let x_890 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_893 : vec4<f32> = u_xlat7;
  let x_895 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_893.x, x_893.y, x_893.z), vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : f32 = u_xlat28;
  let x_900 : f32 = x_253.x_MainLightShadowParams.z;
  let x_903 : f32 = x_253.x_MainLightShadowParams.w;
  u_xlat28 = ((x_898 * x_900) + x_903);
  let x_905 : f32 = u_xlat28;
  u_xlat28 = clamp(x_905, 0.0f, 1.0f);
  let x_909 : f32 = u_xlat0.x;
  u_xlat39 = (-(x_909) + 1.0f);
  let x_912 : f32 = u_xlat28;
  let x_913 : f32 = u_xlat39;
  let x_916 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_912 * x_913) + x_916);
  let x_919 : f32 = u_xlat26;
  let x_922 : vec4<f32> = x_139.x_MainLightColor;
  let x_924 : vec3<f32> = (vec3<f32>(x_919, x_919, x_919) * vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec4<f32> = u_xlat2;
  let x_930 : vec3<f32> = u_xlat11;
  u_xlat28 = dot(-(vec3<f32>(x_927.x, x_927.z, x_927.w)), x_930);
  let x_932 : f32 = u_xlat28;
  let x_933 : f32 = u_xlat28;
  u_xlat28 = (x_932 + x_933);
  let x_935 : vec3<f32> = u_xlat11;
  let x_936 : f32 = u_xlat28;
  let x_940 : vec4<f32> = u_xlat2;
  let x_943 : vec3<f32> = ((x_935 * -(vec3<f32>(x_936, x_936, x_936))) + -(vec3<f32>(x_940.x, x_940.z, x_940.w)));
  let x_944 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec3<f32> = u_xlat11;
  let x_947 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(x_946, vec3<f32>(x_947.x, x_947.z, x_947.w));
  let x_950 : f32 = u_xlat28;
  u_xlat28 = clamp(x_950, 0.0f, 1.0f);
  let x_952 : f32 = u_xlat28;
  u_xlat28 = (-(x_952) + 1.0f);
  let x_955 : f32 = u_xlat28;
  let x_956 : f32 = u_xlat28;
  u_xlat28 = (x_955 * x_956);
  let x_958 : f32 = u_xlat28;
  let x_959 : f32 = u_xlat28;
  u_xlat28 = (x_958 * x_959);
  let x_962 : f32 = u_xlat15.x;
  u_xlat39 = ((-(x_962) * 0.699999988f) + 1.700000048f);
  let x_969 : f32 = u_xlat15.x;
  let x_970 : f32 = u_xlat39;
  u_xlat15.x = (x_969 * x_970);
  let x_974 : f32 = u_xlat15.x;
  u_xlat15.x = (x_974 * 6.0f);
  let x_986 : vec4<f32> = u_xlat8;
  let x_989 : f32 = u_xlat15.x;
  let x_990 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_986.x, x_986.y, x_986.z), x_989);
  u_xlat8 = x_990;
  let x_992 : f32 = u_xlat8.w;
  u_xlat15.x = (x_992 + -1.0f);
  let x_996 : f32 = x_60.unity_SpecCube0_HDR.w;
  let x_998 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_996 * x_998) + 1.0f);
  let x_1003 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1003, 0.0f);
  let x_1007 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1007);
  let x_1011 : f32 = u_xlat15.x;
  let x_1013 : f32 = x_60.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1011 * x_1013);
  let x_1017 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1017);
  let x_1021 : f32 = u_xlat15.x;
  let x_1023 : f32 = x_60.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1021 * x_1023);
  let x_1026 : vec4<f32> = u_xlat8;
  let x_1028 : vec3<f32> = u_xlat15;
  let x_1030 : vec3<f32> = (vec3<f32>(x_1026.x, x_1026.y, x_1026.z) * vec3<f32>(x_1028.x, x_1028.x, x_1028.x));
  let x_1031 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
  let x_1033 : f32 = u_xlat37;
  let x_1035 : f32 = u_xlat37;
  let x_1039 : vec2<f32> = ((vec2<f32>(x_1033, x_1033) * vec2<f32>(x_1035, x_1035)) + vec2<f32>(-1.0f, 1.0f));
  let x_1040 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1039.x, x_1040.y, x_1039.y);
  let x_1043 : f32 = u_xlat15.z;
  u_xlat37 = (1.0f / x_1043);
  let x_1046 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1046 + -0.039999999f);
  let x_1050 : f32 = u_xlat28;
  let x_1052 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1050 * x_1052) + 0.039999999f);
  let x_1057 : f32 = u_xlat37;
  let x_1059 : f32 = u_xlat6.x;
  u_xlat37 = (x_1057 * x_1059);
  let x_1061 : f32 = u_xlat37;
  let x_1063 : vec4<f32> = u_xlat8;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1061, x_1061, x_1061) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1065.x, x_1066.y, x_1065.y, x_1065.z);
  let x_1068 : vec3<f32> = u_xlat14;
  let x_1069 : vec3<f32> = u_xlat5;
  let x_1071 : vec4<f32> = u_xlat6;
  u_xlat14 = ((x_1068 * x_1069) + vec3<f32>(x_1071.x, x_1071.z, x_1071.w));
  let x_1075 : f32 = u_xlat0.x;
  let x_1077 : f32 = x_60.unity_LightData.z;
  u_xlat0.x = (x_1075 * x_1077);
  let x_1080 : vec3<f32> = u_xlat11;
  let x_1082 : vec4<f32> = x_139.x_MainLightPosition;
  u_xlat37 = dot(x_1080, vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
  let x_1085 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1085, 0.0f, 1.0f);
  let x_1088 : f32 = u_xlat0.x;
  let x_1089 : f32 = u_xlat37;
  u_xlat0.x = (x_1088 * x_1089);
  let x_1092 : vec3<f32> = u_xlat0;
  let x_1094 : vec4<f32> = u_xlat7;
  let x_1096 : vec3<f32> = (vec3<f32>(x_1092.x, x_1092.x, x_1092.x) * vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1097 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1096.x, x_1097.y, x_1096.y, x_1096.z);
  let x_1099 : vec4<f32> = u_xlat2;
  let x_1102 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1104 : vec3<f32> = (vec3<f32>(x_1099.x, x_1099.z, x_1099.w) + vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1107 : vec4<f32> = u_xlat7;
  let x_1109 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1107.x, x_1107.y, x_1107.z), vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1114 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1114, 1.17549435e-37f);
  let x_1118 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1118);
  let x_1121 : vec3<f32> = u_xlat0;
  let x_1123 : vec4<f32> = u_xlat7;
  let x_1125 : vec3<f32> = (vec3<f32>(x_1121.x, x_1121.x, x_1121.x) * vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
  let x_1128 : vec3<f32> = u_xlat11;
  let x_1129 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_1128, vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1134 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1134, 0.0f, 1.0f);
  let x_1138 : vec4<f32> = x_139.x_MainLightPosition;
  let x_1140 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1143 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1143, 0.0f, 1.0f);
  let x_1146 : f32 = u_xlat0.x;
  let x_1148 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1146 * x_1148);
  let x_1152 : f32 = u_xlat0.x;
  let x_1154 : f32 = u_xlat15.x;
  u_xlat0.x = ((x_1152 * x_1154) + 1.000010014f);
  let x_1159 : f32 = u_xlat37;
  let x_1160 : f32 = u_xlat37;
  u_xlat37 = (x_1159 * x_1160);
  let x_1163 : f32 = u_xlat0.x;
  let x_1165 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1163 * x_1165);
  let x_1168 : f32 = u_xlat37;
  u_xlat37 = max(x_1168, 0.100000001f);
  let x_1172 : f32 = u_xlat0.x;
  let x_1173 : f32 = u_xlat37;
  u_xlat0.x = (x_1172 * x_1173);
  let x_1177 : f32 = u_xlat17.x;
  let x_1179 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1177 * x_1179);
  let x_1182 : f32 = u_xlat38;
  let x_1184 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1182 / x_1184);
  let x_1187 : vec3<f32> = u_xlat0;
  let x_1191 : vec3<f32> = u_xlat5;
  let x_1192 : vec3<f32> = ((vec3<f32>(x_1187.x, x_1187.x, x_1187.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1191);
  let x_1193 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1195 : vec4<f32> = u_xlat6;
  let x_1197 : vec4<f32> = u_xlat7;
  let x_1199 : vec3<f32> = (vec3<f32>(x_1195.x, x_1195.z, x_1195.w) * vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1200 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1199.x, x_1200.y, x_1199.y, x_1199.z);
  let x_1204 : f32 = x_139.x_AdditionalLightsCount.x;
  let x_1206 : f32 = x_60.unity_LightData.y;
  u_xlat0.x = min(x_1204, x_1206);
  let x_1210 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1210));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1222 : u32 = u_xlatu_loop_1;
    let x_1223 : u32 = u_xlatu0;
    if ((x_1222 < x_1223)) {
    } else {
      break;
    }
    let x_1226 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1226 >> 2u);
    let x_1229 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_1229 & 3u));
    let x_1233 : u32 = u_xlatu40;
    let x_1236 : vec4<f32> = x_60.unity_LightIndices[bitcast<i32>(x_1233)];
    let x_1246 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1251 : vec4<u32> = indexable[x_1246];
    u_xlat40 = dot(x_1236, bitcast<vec4<f32>>(x_1251));
    let x_1255 : f32 = u_xlat40;
    u_xlati40 = i32(x_1255);
    let x_1257 : vec3<f32> = vs_INTERP0;
    let x_1269 : i32 = u_xlati40;
    let x_1271 : vec4<f32> = x_1268.x_AdditionalLightsPosition[x_1269];
    let x_1274 : i32 = u_xlati40;
    let x_1276 : vec4<f32> = x_1268.x_AdditionalLightsPosition[x_1274];
    let x_1278 : vec3<f32> = ((-(x_1257) * vec3<f32>(x_1271.w, x_1271.w, x_1271.w)) + vec3<f32>(x_1276.x, x_1276.y, x_1276.z));
    let x_1279 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
    let x_1282 : vec4<f32> = u_xlat8;
    let x_1284 : vec4<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_1282.x, x_1282.y, x_1282.z), vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
    let x_1287 : f32 = u_xlat41;
    u_xlat41 = max(x_1287, 6.10351562e-05f);
    let x_1291 : f32 = u_xlat41;
    u_xlat9 = inverseSqrt(x_1291);
    let x_1294 : vec4<f32> = u_xlat8;
    let x_1296 : f32 = u_xlat9;
    u_xlat20 = (vec3<f32>(x_1294.x, x_1294.y, x_1294.z) * vec3<f32>(x_1296, x_1296, x_1296));
    let x_1300 : f32 = u_xlat41;
    u_xlat10.x = (1.0f / x_1300);
    let x_1303 : f32 = u_xlat41;
    let x_1304 : i32 = u_xlati40;
    let x_1306 : f32 = x_1268.x_AdditionalLightsAttenuation[x_1304].x;
    u_xlat41 = (x_1303 * x_1306);
    let x_1308 : f32 = u_xlat41;
    let x_1310 : f32 = u_xlat41;
    u_xlat41 = ((-(x_1308) * x_1310) + 1.0f);
    let x_1313 : f32 = u_xlat41;
    u_xlat41 = max(x_1313, 0.0f);
    let x_1315 : f32 = u_xlat41;
    let x_1316 : f32 = u_xlat41;
    u_xlat41 = (x_1315 * x_1316);
    let x_1318 : f32 = u_xlat41;
    let x_1320 : f32 = u_xlat10.x;
    u_xlat41 = (x_1318 * x_1320);
    let x_1322 : i32 = u_xlati40;
    let x_1324 : vec4<f32> = x_1268.x_AdditionalLightsSpotDir[x_1322];
    let x_1326 : vec3<f32> = u_xlat20;
    u_xlat10.x = dot(vec3<f32>(x_1324.x, x_1324.y, x_1324.z), x_1326);
    let x_1330 : f32 = u_xlat10.x;
    let x_1331 : i32 = u_xlati40;
    let x_1333 : f32 = x_1268.x_AdditionalLightsAttenuation[x_1331].z;
    let x_1335 : i32 = u_xlati40;
    let x_1337 : f32 = x_1268.x_AdditionalLightsAttenuation[x_1335].w;
    u_xlat10.x = ((x_1330 * x_1333) + x_1337);
    let x_1341 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1341, 0.0f, 1.0f);
    let x_1345 : f32 = u_xlat10.x;
    let x_1347 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1345 * x_1347);
    let x_1350 : f32 = u_xlat41;
    let x_1352 : f32 = u_xlat10.x;
    u_xlat41 = (x_1350 * x_1352);
    let x_1354 : f32 = u_xlat26;
    let x_1356 : i32 = u_xlati40;
    let x_1358 : vec4<f32> = x_1268.x_AdditionalLightsColor[x_1356];
    u_xlat10 = (vec3<f32>(x_1354, x_1354, x_1354) * vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
    let x_1361 : vec3<f32> = u_xlat11;
    let x_1362 : vec3<f32> = u_xlat20;
    u_xlat40 = dot(x_1361, x_1362);
    let x_1364 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1364, 0.0f, 1.0f);
    let x_1366 : f32 = u_xlat40;
    let x_1367 : f32 = u_xlat41;
    u_xlat40 = (x_1366 * x_1367);
    let x_1369 : f32 = u_xlat40;
    let x_1371 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1369, x_1369, x_1369) * x_1371);
    let x_1373 : vec4<f32> = u_xlat8;
    let x_1375 : f32 = u_xlat9;
    let x_1378 : vec4<f32> = u_xlat2;
    let x_1380 : vec3<f32> = ((vec3<f32>(x_1373.x, x_1373.y, x_1373.z) * vec3<f32>(x_1375, x_1375, x_1375)) + vec3<f32>(x_1378.x, x_1378.z, x_1378.w));
    let x_1381 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
    let x_1383 : vec4<f32> = u_xlat8;
    let x_1385 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1383.x, x_1383.y, x_1383.z), vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
    let x_1388 : f32 = u_xlat40;
    u_xlat40 = max(x_1388, 1.17549435e-37f);
    let x_1390 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1390);
    let x_1392 : f32 = u_xlat40;
    let x_1394 : vec4<f32> = u_xlat8;
    let x_1396 : vec3<f32> = (vec3<f32>(x_1392, x_1392, x_1392) * vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
    let x_1397 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
    let x_1399 : vec3<f32> = u_xlat11;
    let x_1400 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1399, vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
    let x_1403 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1403, 0.0f, 1.0f);
    let x_1405 : vec3<f32> = u_xlat20;
    let x_1406 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_1405, vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
    let x_1411 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1411, 0.0f, 1.0f);
    let x_1414 : f32 = u_xlat40;
    let x_1415 : f32 = u_xlat40;
    u_xlat40 = (x_1414 * x_1415);
    let x_1417 : f32 = u_xlat40;
    let x_1419 : f32 = u_xlat15.x;
    u_xlat40 = ((x_1417 * x_1419) + 1.000010014f);
    let x_1423 : f32 = u_xlat8.x;
    let x_1425 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1423 * x_1425);
    let x_1428 : f32 = u_xlat40;
    let x_1429 : f32 = u_xlat40;
    u_xlat40 = (x_1428 * x_1429);
    let x_1432 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1432, 0.100000001f);
    let x_1435 : f32 = u_xlat40;
    let x_1437 : f32 = u_xlat8.x;
    u_xlat40 = (x_1435 * x_1437);
    let x_1440 : f32 = u_xlat17.x;
    let x_1441 : f32 = u_xlat40;
    u_xlat40 = (x_1440 * x_1441);
    let x_1443 : f32 = u_xlat38;
    let x_1444 : f32 = u_xlat40;
    u_xlat40 = (x_1443 / x_1444);
    let x_1446 : f32 = u_xlat40;
    let x_1449 : vec3<f32> = u_xlat5;
    let x_1450 : vec3<f32> = ((vec3<f32>(x_1446, x_1446, x_1446) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1449);
    let x_1451 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
    let x_1453 : vec4<f32> = u_xlat8;
    let x_1455 : vec3<f32> = u_xlat10;
    let x_1457 : vec4<f32> = u_xlat7;
    let x_1459 : vec3<f32> = ((vec3<f32>(x_1453.x, x_1453.y, x_1453.z) * x_1455) + vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
    let x_1460 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);

    continuing {
      let x_1462 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1462 + bitcast<u32>(1i));
    }
  }
  let x_1464 : vec3<f32> = u_xlat14;
  let x_1465 : vec4<f32> = u_xlat4;
  let x_1468 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_1464 * vec3<f32>(x_1465.x, x_1465.x, x_1465.x)) + vec3<f32>(x_1468.x, x_1468.z, x_1468.w));
  let x_1471 : vec4<f32> = u_xlat7;
  let x_1473 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1471.x, x_1471.y, x_1471.z) + x_1473);
  let x_1475 : vec4<f32> = vs_INTERP4;
  let x_1477 : vec3<f32> = u_xlat1;
  let x_1479 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1475.w, x_1475.w, x_1475.w) * x_1477) + x_1479);
  let x_1483 : f32 = u_xlat3.x;
  let x_1485 : f32 = u_xlat3.x;
  u_xlat33 = (x_1483 * -(x_1485));
  let x_1488 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1488);
  let x_1490 : vec3<f32> = u_xlat0;
  let x_1493 : vec4<f32> = x_139.unity_FogColor;
  u_xlat0 = (x_1490 + -(vec3<f32>(x_1493.x, x_1493.y, x_1493.z)));
  let x_1499 : f32 = u_xlat33;
  let x_1501 : vec3<f32> = u_xlat0;
  let x_1504 : vec4<f32> = x_139.unity_FogColor;
  let x_1506 : vec3<f32> = ((vec3<f32>(x_1499, x_1499, x_1499) * x_1501) + vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
  let x_1507 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
  let x_1509 : bool = u_xlatb13;
  let x_1510 : f32 = u_xlat34;
  SV_Target0.w = select(1.0f, x_1510, x_1509);
  let x_1517 : u32 = x_139.x_RenderingLayerMaxInt;
  let x_1519 : f32 = x_60.unity_RenderingLayer.x;
  u_xlatu0 = (x_1517 & bitcast<u32>(x_1519));
  let x_1522 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1522);
  let x_1527 : f32 = u_xlat0.x;
  let x_1529 : f32 = x_139.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1527 * x_1529);
  let x_1533 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1533, 0.0f, 1.0f);
  let x_1536 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1536.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

