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

@group(0) @binding(5) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MRLL : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(7) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_283 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_604 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2277 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlatb21 : vec3<bool>;
  var u_xlat21 : vec3<f32>;
  var u_xlatb20 : bool;
  var u_xlat40 : f32;
  var x_397 : f32;
  var x_410 : f32;
  var x_421 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat60 : f32;
  var u_xlatb63 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat25 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat66 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlatu20 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu63 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati63 : i32;
  var u_xlat67 : f32;
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
  u_xlat41 = (x_87 + x_90);
  let x_92 : f32 = u_xlat41;
  u_xlat41 = clamp(x_92, 0.0f, 1.0f);
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
  let x_124 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_122.x, x_122.y, x_122.z) + vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : vec3<f32> = u_xlat2;
  let x_128 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_127 * x_128);
  let x_136 : vec4<f32> = u_xlat0;
  let x_139 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_136.x, x_136.y, x_136.z, x_136.x));
  u_xlatb4 = vec3<bool>(x_139.x, x_139.y, x_139.z);
  let x_144 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_144);
  let x_149 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_149);
  let x_153 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_153);
  let x_157 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_157);
  let x_161 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_161);
  let x_165 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_165);
  let x_168 : vec4<f32> = u_xlat3;
  let x_170 : vec3<f32> = u_xlat4;
  let x_171 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) * x_170);
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec3<f32> = u_xlat2;
  let x_175 : vec4<f32> = u_xlat5;
  let x_178 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_174 * vec3<f32>(x_175.x, x_175.y, x_175.z)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_181.x, x_181.y, x_181.z)) + x_184);
  let x_186 : f32 = u_xlat41;
  let x_188 : vec3<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_186, x_186, x_186) * x_188) + vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : f32 = u_xlat0.x;
  u_xlat0.x = (x_194 + -0.150000006f);
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_199);
  let x_203 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_203) + 1.0f);
  let x_207 : vec4<f32> = u_xlat0;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_207.x, x_207.x, x_207.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_212);
  let x_218 : vec4<f32> = vs_INTERP3;
  let x_221 : f32 = x_44.x_GlobalMipBias.x;
  let x_222 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_218.x, x_218.y), x_221);
  let x_223 : vec3<f32> = vec3<f32>(x_222.x, x_222.y, x_222.w);
  let x_224 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_227 : f32 = u_xlat3.x;
  let x_229 : f32 = u_xlat3.z;
  u_xlat3.x = (x_227 * x_229);
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat20 = ((vec2<f32>(x_234.x, x_234.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_242 : vec2<f32> = u_xlat20;
  let x_243 : vec2<f32> = u_xlat20;
  u_xlat41 = dot(x_242, x_243);
  let x_245 : f32 = u_xlat41;
  u_xlat41 = min(x_245, 1.0f);
  let x_247 : f32 = u_xlat41;
  u_xlat41 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat41;
  u_xlat41 = sqrt(x_250);
  let x_252 : f32 = u_xlat41;
  u_xlat41 = max(x_252, 1.00000002e-16f);
  let x_256 : f32 = u_xlat1.x;
  let x_258 : f32 = u_xlat0.x;
  u_xlat0.x = (x_256 + x_258);
  let x_262 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_262, 0.0f, 1.0f);
  let x_266 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_266, 0.0f);
  let x_270 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_270, 0.850000024f);
  let x_277 : f32 = vs_INTERP2.w;
  u_xlatb21.x = (0.0f < x_277);
  let x_285 : f32 = x_283.unity_WorldTransformParams.w;
  u_xlatb21.z = (x_285 >= 0.0f);
  let x_290 : bool = u_xlatb21.x;
  u_xlat21.x = select(-1.0f, 1.0f, x_290);
  let x_294 : bool = u_xlatb21.z;
  u_xlat21.z = select(-1.0f, 1.0f, x_294);
  let x_298 : f32 = u_xlat21.z;
  let x_300 : f32 = u_xlat21.x;
  u_xlat21.x = (x_298 * x_300);
  let x_305 : vec3<f32> = vs_INTERP1;
  let x_307 : vec4<f32> = vs_INTERP2;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.z, x_305.x, x_305.y) * vec3<f32>(x_307.y, x_307.z, x_307.x));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec3<f32> = vs_INTERP1;
  let x_314 : vec4<f32> = vs_INTERP2;
  let x_317 : vec4<f32> = u_xlat3;
  let x_320 : vec3<f32> = ((vec3<f32>(x_312.y, x_312.z, x_312.x) * vec3<f32>(x_314.z, x_314.x, x_314.y)) + -(vec3<f32>(x_317.x, x_317.y, x_317.z)));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec3<f32> = u_xlat21;
  let x_325 : vec4<f32> = u_xlat3;
  let x_327 : vec3<f32> = (vec3<f32>(x_323.x, x_323.x, x_323.x) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec2<f32> = u_xlat20;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = (vec3<f32>(x_330.y, x_330.y, x_330.y) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec2<f32> = u_xlat20;
  let x_339 : vec4<f32> = vs_INTERP2;
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : f32 = u_xlat41;
  let x_349 : vec3<f32> = vs_INTERP1;
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat21 = ((vec3<f32>(x_347, x_347, x_347) * x_349) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec3<f32> = u_xlat21;
  let x_355 : vec3<f32> = u_xlat21;
  u_xlat20.x = dot(x_354, x_355);
  let x_359 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_359);
  let x_362 : vec2<f32> = u_xlat20;
  let x_364 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_362.x, x_362.x, x_362.x) * x_364);
  let x_369 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb20 = (x_369 == 0.0f);
  let x_372 : vec3<f32> = vs_INTERP0;
  let x_377 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_378 : vec3<f32> = (-(x_372) + x_377);
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(vec3<f32>(x_382.x, x_382.y, x_382.z), vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_387);
  let x_389 : f32 = u_xlat40;
  let x_391 : vec4<f32> = u_xlat3;
  let x_393 : vec3<f32> = (vec3<f32>(x_389, x_389, x_389) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : bool = u_xlatb20;
  if (x_396) {
    let x_401 : f32 = u_xlat3.x;
    x_397 = x_401;
  } else {
    let x_406 : f32 = x_44.unity_MatrixV[0i].z;
    x_397 = x_406;
  }
  let x_407 : f32 = x_397;
  u_xlat4.x = x_407;
  let x_409 : bool = u_xlatb20;
  if (x_409) {
    let x_414 : f32 = u_xlat3.y;
    x_410 = x_414;
  } else {
    let x_417 : f32 = x_44.unity_MatrixV[1i].z;
    x_410 = x_417;
  }
  let x_418 : f32 = x_410;
  u_xlat4.y = x_418;
  let x_420 : bool = u_xlatb20;
  if (x_420) {
    let x_425 : f32 = u_xlat3.z;
    x_421 = x_425;
  } else {
    let x_429 : f32 = x_44.unity_MatrixV[2i].z;
    x_421 = x_429;
  }
  let x_430 : f32 = x_421;
  u_xlat4.z = x_430;
  let x_439 : vec2<f32> = vs_INTERP4;
  let x_441 : f32 = x_44.x_GlobalMipBias.x;
  let x_442 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_439, x_441);
  u_xlat3 = x_442;
  let x_447 : vec2<f32> = vs_INTERP4;
  let x_449 : f32 = x_44.x_GlobalMipBias.x;
  let x_450 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_447, x_449);
  let x_451 : vec3<f32> = vec3<f32>(x_450.x, x_450.y, x_450.z);
  let x_452 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat3;
  let x_458 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec3<f32> = u_xlat21;
  let x_462 : vec4<f32> = u_xlat3;
  u_xlat20.x = dot(x_461, vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_467 : f32 = u_xlat20.x;
  u_xlat20.x = (x_467 + 0.5f);
  let x_470 : vec2<f32> = u_xlat20;
  let x_472 : vec4<f32> = u_xlat5;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.x, x_470.x) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_478 : f32 = u_xlat3.w;
  u_xlat20.x = max(x_478, 0.0001f);
  let x_482 : vec4<f32> = u_xlat3;
  let x_484 : vec2<f32> = u_xlat20;
  let x_486 : vec3<f32> = (vec3<f32>(x_482.x, x_482.y, x_482.z) / vec3<f32>(x_484.x, x_484.x, x_484.x));
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_491 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_492 : vec2<f32> = vec2<f32>(x_491.x, x_491.y);
  u_xlat20 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_492.x, x_492.y));
  let x_497 : vec2<f32> = u_xlat20;
  let x_498 : vec4<f32> = hlslcc_FragCoord;
  let x_500 : vec2<f32> = (x_497 * vec2<f32>(x_498.x, x_498.y));
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
  let x_504 : f32 = u_xlat5.y;
  let x_507 : f32 = x_44.x_ScaleBiasRt.x;
  let x_510 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat20.x = ((x_504 * x_507) + x_510);
  let x_514 : f32 = u_xlat20.x;
  u_xlat5.z = (-(x_514) + 1.0f);
  let x_519 : f32 = u_xlat0.x;
  u_xlat20.x = ((-(x_519) * 0.959999979f) + 0.959999979f);
  let x_526 : f32 = u_xlat20.x;
  let x_529 : f32 = u_xlat1.x;
  u_xlat40 = (-(x_526) + x_529);
  let x_532 : vec2<f32> = u_xlat20;
  let x_534 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_532.x, x_532.x, x_532.x) * x_534);
  let x_536 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_536 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_540 : vec4<f32> = u_xlat0;
  let x_542 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_540.x, x_540.x, x_540.x) * x_542) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_548 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_548) + 1.0f);
  let x_553 : f32 = u_xlat0.x;
  let x_555 : f32 = u_xlat0.x;
  u_xlat20.x = (x_553 * x_555);
  let x_559 : f32 = u_xlat20.x;
  let x_561 : f32 = u_xlat20.x;
  u_xlat1.x = (x_559 * x_561);
  let x_564 : f32 = u_xlat40;
  u_xlat40 = (x_564 + 1.0f);
  let x_566 : f32 = u_xlat40;
  u_xlat40 = min(x_566, 1.0f);
  let x_570 : f32 = u_xlat20.x;
  u_xlat62 = ((x_570 * 4.0f) + 2.0f);
  let x_580 : vec4<f32> = u_xlat5;
  let x_583 : f32 = x_44.x_GlobalMipBias.x;
  let x_584 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_580.x, x_580.z), x_583);
  u_xlat63 = x_584.x;
  let x_587 : f32 = u_xlat63;
  u_xlat64 = (x_587 + -1.0f);
  let x_590 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_591 : f32 = u_xlat64;
  u_xlat64 = ((x_590 * x_591) + 1.0f);
  let x_596 : f32 = u_xlat0.w;
  let x_597 : f32 = u_xlat63;
  u_xlat60 = min(x_596, x_597);
  let x_606 : f32 = x_604.x_MainLightShadowParams.y;
  u_xlatb63 = (0.0f < x_606);
  let x_608 : bool = u_xlatb63;
  if (x_608) {
    let x_612 : f32 = x_604.x_MainLightShadowParams.y;
    u_xlatb63 = (x_612 == 1.0f);
    let x_614 : bool = u_xlatb63;
    if (x_614) {
      let x_618 : vec4<f32> = vs_INTERP8;
      let x_622 : vec4<f32> = x_604.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y) + x_622);
      let x_625 : vec4<f32> = u_xlat5;
      let x_626 : vec2<f32> = vec2<f32>(x_625.x, x_625.y);
      let x_628 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_626.x, x_626.y, x_628);
      let x_641 : vec3<f32> = txVec0;
      let x_643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_641.xy, x_641.z);
      u_xlat7.x = x_643;
      let x_646 : vec4<f32> = u_xlat5;
      let x_647 : vec2<f32> = vec2<f32>(x_646.z, x_646.w);
      let x_649 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_647.x, x_647.y, x_649);
      let x_656 : vec3<f32> = txVec1;
      let x_658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_656.xy, x_656.z);
      u_xlat7.y = x_658;
      let x_660 : vec4<f32> = vs_INTERP8;
      let x_664 : vec4<f32> = x_604.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_660.x, x_660.y, x_660.x, x_660.y) + x_664);
      let x_667 : vec4<f32> = u_xlat5;
      let x_668 : vec2<f32> = vec2<f32>(x_667.x, x_667.y);
      let x_670 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_668.x, x_668.y, x_670);
      let x_677 : vec3<f32> = txVec2;
      let x_679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_677.xy, x_677.z);
      u_xlat7.z = x_679;
      let x_682 : vec4<f32> = u_xlat5;
      let x_683 : vec2<f32> = vec2<f32>(x_682.z, x_682.w);
      let x_685 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_683.x, x_683.y, x_685);
      let x_692 : vec3<f32> = txVec3;
      let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_692.xy, x_692.z);
      u_xlat7.w = x_694;
      let x_696 : vec4<f32> = u_xlat7;
      u_xlat63 = dot(x_696, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_703 : f32 = x_604.x_MainLightShadowParams.y;
      u_xlatb5 = (x_703 == 2.0f);
      let x_705 : bool = u_xlatb5;
      if (x_705) {
        let x_708 : vec4<f32> = vs_INTERP8;
        let x_711 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_715 : vec2<f32> = ((vec2<f32>(x_708.x, x_708.y) * vec2<f32>(x_711.z, x_711.w)) + vec2<f32>(0.5f, 0.5f));
        let x_716 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat5;
        let x_720 : vec2<f32> = floor(vec2<f32>(x_718.x, x_718.y));
        let x_721 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_724 : vec4<f32> = vs_INTERP8;
        let x_727 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_730 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_724.x, x_724.y) * vec2<f32>(x_727.z, x_727.w)) + -(vec2<f32>(x_730.x, x_730.y)));
        let x_734 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_734.x, x_734.x, x_734.y, x_734.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_739 : vec4<f32> = u_xlat7;
        let x_741 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_739.x, x_739.x, x_739.z, x_739.z) * vec4<f32>(x_741.x, x_741.x, x_741.z, x_741.z));
        let x_744 : vec4<f32> = u_xlat8;
        let x_748 : vec2<f32> = (vec2<f32>(x_744.y, x_744.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_749 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_748.x, x_749.y, x_748.y, x_749.w);
        let x_751 : vec4<f32> = u_xlat8;
        let x_754 : vec2<f32> = u_xlat45;
        let x_756 : vec2<f32> = ((vec2<f32>(x_751.x, x_751.z) * vec2<f32>(0.5f, 0.5f)) + -(x_754));
        let x_757 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_756.x, x_756.y, x_757.z, x_757.w);
        let x_760 : vec2<f32> = u_xlat45;
        u_xlat48 = (-(x_760) + vec2<f32>(1.0f, 1.0f));
        let x_764 : vec2<f32> = u_xlat45;
        let x_766 : vec2<f32> = min(x_764, vec2<f32>(0.0f, 0.0f));
        let x_767 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
        let x_769 : vec4<f32> = u_xlat9;
        let x_772 : vec4<f32> = u_xlat9;
        let x_775 : vec2<f32> = u_xlat48;
        let x_776 : vec2<f32> = ((-(vec2<f32>(x_769.x, x_769.y)) * vec2<f32>(x_772.x, x_772.y)) + x_775);
        let x_777 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
        let x_779 : vec2<f32> = u_xlat45;
        u_xlat45 = max(x_779, vec2<f32>(0.0f, 0.0f));
        let x_781 : vec2<f32> = u_xlat45;
        let x_783 : vec2<f32> = u_xlat45;
        let x_785 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_781) * x_783) + vec2<f32>(x_785.y, x_785.w));
        let x_788 : vec4<f32> = u_xlat9;
        let x_790 : vec2<f32> = (vec2<f32>(x_788.x, x_788.y) + vec2<f32>(1.0f, 1.0f));
        let x_791 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_793 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_793 + vec2<f32>(1.0f, 1.0f));
        let x_796 : vec4<f32> = u_xlat8;
        let x_800 : vec2<f32> = (vec2<f32>(x_796.x, x_796.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_801 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_800.x, x_800.y, x_801.z, x_801.w);
        let x_803 : vec2<f32> = u_xlat48;
        let x_804 : vec2<f32> = (x_803 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_805 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_804.x, x_804.y, x_805.z, x_805.w);
        let x_807 : vec4<f32> = u_xlat9;
        let x_809 : vec2<f32> = (vec2<f32>(x_807.x, x_807.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_810 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_809.x, x_809.y, x_810.z, x_810.w);
        let x_813 : vec2<f32> = u_xlat45;
        let x_814 : vec2<f32> = (x_813 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_815 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_814.x, x_814.y, x_815.z, x_815.w);
        let x_817 : vec4<f32> = u_xlat7;
        u_xlat45 = (vec2<f32>(x_817.y, x_817.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_821 : f32 = u_xlat9.x;
        u_xlat10.z = x_821;
        let x_824 : f32 = u_xlat45.x;
        u_xlat10.w = x_824;
        let x_827 : f32 = u_xlat11.x;
        u_xlat8.z = x_827;
        let x_830 : f32 = u_xlat7.x;
        u_xlat8.w = x_830;
        let x_833 : vec4<f32> = u_xlat8;
        let x_835 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_833.z, x_833.w, x_833.x, x_833.z) + vec4<f32>(x_835.z, x_835.w, x_835.x, x_835.z));
        let x_839 : f32 = u_xlat10.y;
        u_xlat9.z = x_839;
        let x_842 : f32 = u_xlat45.y;
        u_xlat9.w = x_842;
        let x_845 : f32 = u_xlat8.y;
        u_xlat11.z = x_845;
        let x_848 : f32 = u_xlat7.z;
        u_xlat11.w = x_848;
        let x_850 : vec4<f32> = u_xlat9;
        let x_852 : vec4<f32> = u_xlat11;
        let x_854 : vec3<f32> = (vec3<f32>(x_850.z, x_850.y, x_850.w) + vec3<f32>(x_852.z, x_852.y, x_852.w));
        let x_855 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat8;
        let x_859 : vec4<f32> = u_xlat12;
        let x_861 : vec3<f32> = (vec3<f32>(x_857.x, x_857.z, x_857.w) / vec3<f32>(x_859.z, x_859.w, x_859.y));
        let x_862 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
        let x_864 : vec4<f32> = u_xlat8;
        let x_869 : vec3<f32> = (vec3<f32>(x_864.x, x_864.y, x_864.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_870 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
        let x_872 : vec4<f32> = u_xlat11;
        let x_874 : vec4<f32> = u_xlat7;
        let x_876 : vec3<f32> = (vec3<f32>(x_872.z, x_872.y, x_872.w) / vec3<f32>(x_874.x, x_874.y, x_874.z));
        let x_877 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
        let x_879 : vec4<f32> = u_xlat9;
        let x_881 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_882 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
        let x_884 : vec4<f32> = u_xlat8;
        let x_887 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_889 : vec3<f32> = (vec3<f32>(x_884.y, x_884.x, x_884.z) * vec3<f32>(x_887.x, x_887.x, x_887.x));
        let x_890 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
        let x_892 : vec4<f32> = u_xlat9;
        let x_895 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_897 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(x_895.y, x_895.y, x_895.y));
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
        let x_901 : f32 = u_xlat9.x;
        u_xlat8.w = x_901;
        let x_903 : vec4<f32> = u_xlat5;
        let x_906 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.y) * vec4<f32>(x_906.x, x_906.y, x_906.x, x_906.y)) + vec4<f32>(x_909.y, x_909.w, x_909.x, x_909.w));
        let x_912 : vec4<f32> = u_xlat5;
        let x_915 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_918 : vec4<f32> = u_xlat8;
        u_xlat45 = ((vec2<f32>(x_912.x, x_912.y) * vec2<f32>(x_915.x, x_915.y)) + vec2<f32>(x_918.z, x_918.w));
        let x_922 : f32 = u_xlat8.y;
        u_xlat9.w = x_922;
        let x_924 : vec4<f32> = u_xlat9;
        let x_925 : vec2<f32> = vec2<f32>(x_924.y, x_924.z);
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_926.x, x_925.x, x_926.z, x_925.y);
        let x_928 : vec4<f32> = u_xlat5;
        let x_931 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_928.x, x_928.y, x_928.x, x_928.y) * vec4<f32>(x_931.x, x_931.y, x_931.x, x_931.y)) + vec4<f32>(x_934.x, x_934.y, x_934.z, x_934.y));
        let x_937 : vec4<f32> = u_xlat5;
        let x_940 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_943 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_937.x, x_937.y, x_937.x, x_937.y) * vec4<f32>(x_940.x, x_940.y, x_940.x, x_940.y)) + vec4<f32>(x_943.w, x_943.y, x_943.w, x_943.z));
        let x_946 : vec4<f32> = u_xlat5;
        let x_949 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_952 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_946.x, x_946.y, x_946.x, x_946.y) * vec4<f32>(x_949.x, x_949.y, x_949.x, x_949.y)) + vec4<f32>(x_952.x, x_952.w, x_952.z, x_952.w));
        let x_956 : vec4<f32> = u_xlat7;
        let x_958 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_956.x, x_956.x, x_956.x, x_956.y) * vec4<f32>(x_958.z, x_958.w, x_958.y, x_958.z));
        let x_962 : vec4<f32> = u_xlat7;
        let x_964 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_962.y, x_962.y, x_962.z, x_962.z) * x_964);
        let x_967 : f32 = u_xlat7.z;
        let x_969 : f32 = u_xlat12.y;
        u_xlat5.x = (x_967 * x_969);
        let x_973 : vec4<f32> = u_xlat10;
        let x_974 : vec2<f32> = vec2<f32>(x_973.x, x_973.y);
        let x_976 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_974.x, x_974.y, x_976);
        let x_984 : vec3<f32> = txVec4;
        let x_986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_984.xy, x_984.z);
        u_xlat25 = x_986;
        let x_988 : vec4<f32> = u_xlat10;
        let x_989 : vec2<f32> = vec2<f32>(x_988.z, x_988.w);
        let x_991 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_989.x, x_989.y, x_991);
        let x_999 : vec3<f32> = txVec5;
        let x_1001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_999.xy, x_999.z);
        u_xlat66 = x_1001;
        let x_1002 : f32 = u_xlat66;
        let x_1004 : f32 = u_xlat13.y;
        u_xlat66 = (x_1002 * x_1004);
        let x_1007 : f32 = u_xlat13.x;
        let x_1008 : f32 = u_xlat25;
        let x_1010 : f32 = u_xlat66;
        u_xlat25 = ((x_1007 * x_1008) + x_1010);
        let x_1013 : vec2<f32> = u_xlat45;
        let x_1015 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
        let x_1022 : vec3<f32> = txVec6;
        let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1022.xy, x_1022.z);
        u_xlat45.x = x_1024;
        let x_1027 : f32 = u_xlat13.z;
        let x_1029 : f32 = u_xlat45.x;
        let x_1031 : f32 = u_xlat25;
        u_xlat25 = ((x_1027 * x_1029) + x_1031);
        let x_1034 : vec4<f32> = u_xlat9;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.x, x_1034.y);
        let x_1037 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1044 : vec3<f32> = txVec7;
        let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1044.xy, x_1044.z);
        u_xlat45.x = x_1046;
        let x_1049 : f32 = u_xlat13.w;
        let x_1051 : f32 = u_xlat45.x;
        let x_1053 : f32 = u_xlat25;
        u_xlat25 = ((x_1049 * x_1051) + x_1053);
        let x_1056 : vec4<f32> = u_xlat11;
        let x_1057 : vec2<f32> = vec2<f32>(x_1056.x, x_1056.y);
        let x_1059 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1057.x, x_1057.y, x_1059);
        let x_1066 : vec3<f32> = txVec8;
        let x_1068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1066.xy, x_1066.z);
        u_xlat45.x = x_1068;
        let x_1071 : f32 = u_xlat14.x;
        let x_1073 : f32 = u_xlat45.x;
        let x_1075 : f32 = u_xlat25;
        u_xlat25 = ((x_1071 * x_1073) + x_1075);
        let x_1078 : vec4<f32> = u_xlat11;
        let x_1079 : vec2<f32> = vec2<f32>(x_1078.z, x_1078.w);
        let x_1081 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1079.x, x_1079.y, x_1081);
        let x_1088 : vec3<f32> = txVec9;
        let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1088.xy, x_1088.z);
        u_xlat45.x = x_1090;
        let x_1093 : f32 = u_xlat14.y;
        let x_1095 : f32 = u_xlat45.x;
        let x_1097 : f32 = u_xlat25;
        u_xlat25 = ((x_1093 * x_1095) + x_1097);
        let x_1100 : vec4<f32> = u_xlat9;
        let x_1101 : vec2<f32> = vec2<f32>(x_1100.z, x_1100.w);
        let x_1103 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1101.x, x_1101.y, x_1103);
        let x_1110 : vec3<f32> = txVec10;
        let x_1112 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1110.xy, x_1110.z);
        u_xlat45.x = x_1112;
        let x_1115 : f32 = u_xlat14.z;
        let x_1117 : f32 = u_xlat45.x;
        let x_1119 : f32 = u_xlat25;
        u_xlat25 = ((x_1115 * x_1117) + x_1119);
        let x_1122 : vec4<f32> = u_xlat8;
        let x_1123 : vec2<f32> = vec2<f32>(x_1122.x, x_1122.y);
        let x_1125 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1123.x, x_1123.y, x_1125);
        let x_1132 : vec3<f32> = txVec11;
        let x_1134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1132.xy, x_1132.z);
        u_xlat45.x = x_1134;
        let x_1137 : f32 = u_xlat14.w;
        let x_1139 : f32 = u_xlat45.x;
        let x_1141 : f32 = u_xlat25;
        u_xlat25 = ((x_1137 * x_1139) + x_1141);
        let x_1144 : vec4<f32> = u_xlat8;
        let x_1145 : vec2<f32> = vec2<f32>(x_1144.z, x_1144.w);
        let x_1147 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1145.x, x_1145.y, x_1147);
        let x_1154 : vec3<f32> = txVec12;
        let x_1156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1154.xy, x_1154.z);
        u_xlat45.x = x_1156;
        let x_1159 : f32 = u_xlat5.x;
        let x_1161 : f32 = u_xlat45.x;
        let x_1163 : f32 = u_xlat25;
        u_xlat63 = ((x_1159 * x_1161) + x_1163);
      } else {
        let x_1166 : vec4<f32> = vs_INTERP8;
        let x_1169 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1172 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1169.z, x_1169.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1173 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat5;
        let x_1177 : vec2<f32> = floor(vec2<f32>(x_1175.x, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1180 : vec4<f32> = vs_INTERP8;
        let x_1183 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat5;
        u_xlat45 = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.z, x_1183.w)) + -(vec2<f32>(x_1186.x, x_1186.y)));
        let x_1190 : vec2<f32> = u_xlat45;
        u_xlat7 = (vec4<f32>(x_1190.x, x_1190.x, x_1190.y, x_1190.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1193 : vec4<f32> = u_xlat7;
        let x_1195 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1193.x, x_1193.x, x_1193.z, x_1193.z) * vec4<f32>(x_1195.x, x_1195.x, x_1195.z, x_1195.z));
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1202 : vec2<f32> = (vec2<f32>(x_1198.y, x_1198.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1203 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1203.x, x_1202.x, x_1203.z, x_1202.y);
        let x_1205 : vec4<f32> = u_xlat8;
        let x_1208 : vec2<f32> = u_xlat45;
        let x_1210 : vec2<f32> = ((vec2<f32>(x_1205.x, x_1205.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1208));
        let x_1211 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1210.x, x_1211.y, x_1210.y, x_1211.w);
        let x_1213 : vec2<f32> = u_xlat45;
        let x_1215 : vec2<f32> = (-(x_1213) + vec2<f32>(1.0f, 1.0f));
        let x_1216 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1218 : vec2<f32> = u_xlat45;
        u_xlat48 = min(x_1218, vec2<f32>(0.0f, 0.0f));
        let x_1220 : vec2<f32> = u_xlat48;
        let x_1222 : vec2<f32> = u_xlat48;
        let x_1224 : vec4<f32> = u_xlat8;
        let x_1226 : vec2<f32> = ((-(x_1220) * x_1222) + vec2<f32>(x_1224.x, x_1224.y));
        let x_1227 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1227.w);
        let x_1229 : vec2<f32> = u_xlat45;
        u_xlat48 = max(x_1229, vec2<f32>(0.0f, 0.0f));
        let x_1232 : vec2<f32> = u_xlat48;
        let x_1234 : vec2<f32> = u_xlat48;
        let x_1236 : vec4<f32> = u_xlat7;
        let x_1238 : vec2<f32> = ((-(x_1232) * x_1234) + vec2<f32>(x_1236.y, x_1236.w));
        let x_1239 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1238.x, x_1239.y, x_1238.y);
        let x_1241 : vec4<f32> = u_xlat8;
        let x_1243 : vec2<f32> = (vec2<f32>(x_1241.x, x_1241.y) + vec2<f32>(2.0f, 2.0f));
        let x_1244 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1243.x, x_1243.y, x_1244.z, x_1244.w);
        let x_1246 : vec3<f32> = u_xlat27;
        let x_1248 : vec2<f32> = (vec2<f32>(x_1246.x, x_1246.z) + vec2<f32>(2.0f, 2.0f));
        let x_1249 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1249.x, x_1248.x, x_1249.z, x_1248.y);
        let x_1252 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1252 * 0.081632003f);
        let x_1256 : vec4<f32> = u_xlat7;
        let x_1259 : vec3<f32> = (vec3<f32>(x_1256.z, x_1256.x, x_1256.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1260 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
        let x_1262 : vec4<f32> = u_xlat8;
        let x_1265 : vec2<f32> = (vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1266 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1266.w);
        let x_1269 : f32 = u_xlat11.y;
        u_xlat10.x = x_1269;
        let x_1271 : vec2<f32> = u_xlat45;
        let x_1278 : vec2<f32> = ((vec2<f32>(x_1271.x, x_1271.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1279 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1279.x, x_1278.x, x_1279.z, x_1278.y);
        let x_1281 : vec2<f32> = u_xlat45;
        let x_1285 : vec2<f32> = ((vec2<f32>(x_1281.x, x_1281.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1286 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1286.w);
        let x_1289 : f32 = u_xlat7.x;
        u_xlat8.y = x_1289;
        let x_1292 : f32 = u_xlat9.y;
        u_xlat8.w = x_1292;
        let x_1294 : vec4<f32> = u_xlat8;
        let x_1295 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1294 + x_1295);
        let x_1297 : vec2<f32> = u_xlat45;
        let x_1300 : vec2<f32> = ((vec2<f32>(x_1297.y, x_1297.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1301 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1301.x, x_1300.x, x_1301.z, x_1300.y);
        let x_1303 : vec2<f32> = u_xlat45;
        let x_1306 : vec2<f32> = ((vec2<f32>(x_1303.y, x_1303.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1307 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1306.x, x_1307.y, x_1306.y, x_1307.w);
        let x_1310 : f32 = u_xlat7.y;
        u_xlat9.y = x_1310;
        let x_1312 : vec4<f32> = u_xlat9;
        let x_1313 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1312 + x_1313);
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1316 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1315 / x_1316);
        let x_1318 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1318 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1325 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1324 / x_1325);
        let x_1327 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1327 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1329 : vec4<f32> = u_xlat8;
        let x_1332 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1329.w, x_1329.x, x_1329.y, x_1329.z) * vec4<f32>(x_1332.x, x_1332.x, x_1332.x, x_1332.x));
        let x_1335 : vec4<f32> = u_xlat9;
        let x_1338 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1335.x, x_1335.w, x_1335.y, x_1335.z) * vec4<f32>(x_1338.y, x_1338.y, x_1338.y, x_1338.y));
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1342 : vec3<f32> = vec3<f32>(x_1341.y, x_1341.z, x_1341.w);
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1342.x, x_1343.y, x_1342.y, x_1342.z);
        let x_1346 : f32 = u_xlat9.x;
        u_xlat11.y = x_1346;
        let x_1348 : vec4<f32> = u_xlat5;
        let x_1351 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1354 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y) * vec4<f32>(x_1351.x, x_1351.y, x_1351.x, x_1351.y)) + vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1354.y));
        let x_1357 : vec4<f32> = u_xlat5;
        let x_1360 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1363 : vec4<f32> = u_xlat11;
        u_xlat45 = ((vec2<f32>(x_1357.x, x_1357.y) * vec2<f32>(x_1360.x, x_1360.y)) + vec2<f32>(x_1363.w, x_1363.y));
        let x_1367 : f32 = u_xlat11.y;
        u_xlat8.y = x_1367;
        let x_1370 : f32 = u_xlat9.z;
        u_xlat11.y = x_1370;
        let x_1372 : vec4<f32> = u_xlat5;
        let x_1375 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1378 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y) * vec4<f32>(x_1375.x, x_1375.y, x_1375.x, x_1375.y)) + vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1378.y));
        let x_1381 : vec4<f32> = u_xlat5;
        let x_1384 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat11;
        let x_1389 : vec2<f32> = ((vec2<f32>(x_1381.x, x_1381.y) * vec2<f32>(x_1384.x, x_1384.y)) + vec2<f32>(x_1387.w, x_1387.y));
        let x_1390 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1389.x, x_1389.y, x_1390.z, x_1390.w);
        let x_1393 : f32 = u_xlat11.y;
        u_xlat8.z = x_1393;
        let x_1396 : vec4<f32> = u_xlat5;
        let x_1399 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1402 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1396.x, x_1396.y, x_1396.x, x_1396.y) * vec4<f32>(x_1399.x, x_1399.y, x_1399.x, x_1399.y)) + vec4<f32>(x_1402.x, x_1402.y, x_1402.x, x_1402.z));
        let x_1406 : f32 = u_xlat9.w;
        u_xlat11.y = x_1406;
        let x_1409 : vec4<f32> = u_xlat5;
        let x_1412 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1415 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1409.x, x_1409.y, x_1409.x, x_1409.y) * vec4<f32>(x_1412.x, x_1412.y, x_1412.x, x_1412.y)) + vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1415.y));
        let x_1419 : vec4<f32> = u_xlat5;
        let x_1422 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1425 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1419.x, x_1419.y) * vec2<f32>(x_1422.x, x_1422.y)) + vec2<f32>(x_1425.w, x_1425.y));
        let x_1429 : f32 = u_xlat11.y;
        u_xlat8.w = x_1429;
        let x_1432 : vec4<f32> = u_xlat5;
        let x_1435 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1438 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1432.x, x_1432.y) * vec2<f32>(x_1435.x, x_1435.y)) + vec2<f32>(x_1438.x, x_1438.w));
        let x_1441 : vec4<f32> = u_xlat11;
        let x_1442 : vec3<f32> = vec3<f32>(x_1441.x, x_1441.z, x_1441.w);
        let x_1443 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1442.x, x_1443.y, x_1442.y, x_1442.z);
        let x_1445 : vec4<f32> = u_xlat5;
        let x_1448 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1451 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1445.x, x_1445.y, x_1445.x, x_1445.y) * vec4<f32>(x_1448.x, x_1448.y, x_1448.x, x_1448.y)) + vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1451.y));
        let x_1455 : vec4<f32> = u_xlat5;
        let x_1458 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1458.x, x_1458.y)) + vec2<f32>(x_1461.w, x_1461.y));
        let x_1465 : f32 = u_xlat8.x;
        u_xlat9.x = x_1465;
        let x_1467 : vec4<f32> = u_xlat5;
        let x_1470 : vec4<f32> = x_604.x_MainLightShadowmapSize;
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1475 : vec2<f32> = ((vec2<f32>(x_1467.x, x_1467.y) * vec2<f32>(x_1470.x, x_1470.y)) + vec2<f32>(x_1473.x, x_1473.y));
        let x_1476 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1475.x, x_1475.y, x_1476.z, x_1476.w);
        let x_1479 : vec4<f32> = u_xlat7;
        let x_1481 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1479.x, x_1479.x, x_1479.x, x_1479.x) * x_1481);
        let x_1484 : vec4<f32> = u_xlat7;
        let x_1486 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1484.y, x_1484.y, x_1484.y, x_1484.y) * x_1486);
        let x_1489 : vec4<f32> = u_xlat7;
        let x_1491 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1489.z, x_1489.z, x_1489.z, x_1489.z) * x_1491);
        let x_1493 : vec4<f32> = u_xlat7;
        let x_1495 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1493.w, x_1493.w, x_1493.w, x_1493.w) * x_1495);
        let x_1498 : vec4<f32> = u_xlat12;
        let x_1499 : vec2<f32> = vec2<f32>(x_1498.x, x_1498.y);
        let x_1501 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1499.x, x_1499.y, x_1501);
        let x_1508 : vec3<f32> = txVec13;
        let x_1510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1508.xy, x_1508.z);
        u_xlat66 = x_1510;
        let x_1512 : vec4<f32> = u_xlat12;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.z, x_1512.w);
        let x_1515 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec14;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1522.xy, x_1522.z);
        u_xlat8.x = x_1524;
        let x_1527 : f32 = u_xlat8.x;
        let x_1529 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1527 * x_1529);
        let x_1533 : f32 = u_xlat17.x;
        let x_1534 : f32 = u_xlat66;
        let x_1537 : f32 = u_xlat8.x;
        u_xlat66 = ((x_1533 * x_1534) + x_1537);
        let x_1540 : vec2<f32> = u_xlat45;
        let x_1542 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1540.x, x_1540.y, x_1542);
        let x_1549 : vec3<f32> = txVec15;
        let x_1551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1549.xy, x_1549.z);
        u_xlat45.x = x_1551;
        let x_1554 : f32 = u_xlat17.z;
        let x_1556 : f32 = u_xlat45.x;
        let x_1558 : f32 = u_xlat66;
        u_xlat45.x = ((x_1554 * x_1556) + x_1558);
        let x_1562 : vec4<f32> = u_xlat15;
        let x_1563 : vec2<f32> = vec2<f32>(x_1562.x, x_1562.y);
        let x_1565 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1573 : vec3<f32> = txVec16;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1573.xy, x_1573.z);
        u_xlat65 = x_1575;
        let x_1577 : f32 = u_xlat17.w;
        let x_1578 : f32 = u_xlat65;
        let x_1581 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1577 * x_1578) + x_1581);
        let x_1585 : vec4<f32> = u_xlat13;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.x, x_1585.y);
        let x_1588 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec17;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1595.xy, x_1595.z);
        u_xlat65 = x_1597;
        let x_1599 : f32 = u_xlat18.x;
        let x_1600 : f32 = u_xlat65;
        let x_1603 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1599 * x_1600) + x_1603);
        let x_1607 : vec4<f32> = u_xlat13;
        let x_1608 : vec2<f32> = vec2<f32>(x_1607.z, x_1607.w);
        let x_1610 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec18;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1617.xy, x_1617.z);
        u_xlat65 = x_1619;
        let x_1621 : f32 = u_xlat18.y;
        let x_1622 : f32 = u_xlat65;
        let x_1625 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1621 * x_1622) + x_1625);
        let x_1629 : vec4<f32> = u_xlat14;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.x, x_1629.y);
        let x_1632 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec19;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1639.xy, x_1639.z);
        u_xlat65 = x_1641;
        let x_1643 : f32 = u_xlat18.z;
        let x_1644 : f32 = u_xlat65;
        let x_1647 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1643 * x_1644) + x_1647);
        let x_1651 : vec4<f32> = u_xlat15;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.z, x_1651.w);
        let x_1654 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec20;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1661.xy, x_1661.z);
        u_xlat65 = x_1663;
        let x_1665 : f32 = u_xlat18.w;
        let x_1666 : f32 = u_xlat65;
        let x_1669 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1665 * x_1666) + x_1669);
        let x_1673 : vec4<f32> = u_xlat16;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.x, x_1673.y);
        let x_1676 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec21;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1683.xy, x_1683.z);
        u_xlat65 = x_1685;
        let x_1687 : f32 = u_xlat19.x;
        let x_1688 : f32 = u_xlat65;
        let x_1691 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1687 * x_1688) + x_1691);
        let x_1695 : vec4<f32> = u_xlat16;
        let x_1696 : vec2<f32> = vec2<f32>(x_1695.z, x_1695.w);
        let x_1698 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec22;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1705.xy, x_1705.z);
        u_xlat65 = x_1707;
        let x_1709 : f32 = u_xlat19.y;
        let x_1710 : f32 = u_xlat65;
        let x_1713 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1709 * x_1710) + x_1713);
        let x_1717 : vec2<f32> = u_xlat28;
        let x_1719 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec23;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1726.xy, x_1726.z);
        u_xlat65 = x_1728;
        let x_1730 : f32 = u_xlat19.z;
        let x_1731 : f32 = u_xlat65;
        let x_1734 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1730 * x_1731) + x_1734);
        let x_1738 : vec2<f32> = u_xlat54;
        let x_1740 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec24;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1747.xy, x_1747.z);
        u_xlat65 = x_1749;
        let x_1751 : f32 = u_xlat19.w;
        let x_1752 : f32 = u_xlat65;
        let x_1755 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1751 * x_1752) + x_1755);
        let x_1759 : vec4<f32> = u_xlat11;
        let x_1760 : vec2<f32> = vec2<f32>(x_1759.x, x_1759.y);
        let x_1762 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1760.x, x_1760.y, x_1762);
        let x_1769 : vec3<f32> = txVec25;
        let x_1771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1769.xy, x_1769.z);
        u_xlat65 = x_1771;
        let x_1773 : f32 = u_xlat7.x;
        let x_1774 : f32 = u_xlat65;
        let x_1777 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1773 * x_1774) + x_1777);
        let x_1781 : vec4<f32> = u_xlat11;
        let x_1782 : vec2<f32> = vec2<f32>(x_1781.z, x_1781.w);
        let x_1784 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1782.x, x_1782.y, x_1784);
        let x_1791 : vec3<f32> = txVec26;
        let x_1793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1791.xy, x_1791.z);
        u_xlat65 = x_1793;
        let x_1795 : f32 = u_xlat7.y;
        let x_1796 : f32 = u_xlat65;
        let x_1799 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1795 * x_1796) + x_1799);
        let x_1803 : vec2<f32> = u_xlat49;
        let x_1805 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1803.x, x_1803.y, x_1805);
        let x_1812 : vec3<f32> = txVec27;
        let x_1814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1812.xy, x_1812.z);
        u_xlat65 = x_1814;
        let x_1816 : f32 = u_xlat7.z;
        let x_1817 : f32 = u_xlat65;
        let x_1820 : f32 = u_xlat45.x;
        u_xlat45.x = ((x_1816 * x_1817) + x_1820);
        let x_1824 : vec4<f32> = u_xlat5;
        let x_1825 : vec2<f32> = vec2<f32>(x_1824.x, x_1824.y);
        let x_1827 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1825.x, x_1825.y, x_1827);
        let x_1834 : vec3<f32> = txVec28;
        let x_1836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1834.xy, x_1834.z);
        u_xlat5.x = x_1836;
        let x_1839 : f32 = u_xlat7.w;
        let x_1841 : f32 = u_xlat5.x;
        let x_1844 : f32 = u_xlat45.x;
        u_xlat63 = ((x_1839 * x_1841) + x_1844);
      }
    }
  } else {
    let x_1848 : vec4<f32> = vs_INTERP8;
    let x_1849 : vec2<f32> = vec2<f32>(x_1848.x, x_1848.y);
    let x_1851 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
    let x_1858 : vec3<f32> = txVec29;
    let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1858.xy, x_1858.z);
    u_xlat63 = x_1860;
  }
  let x_1862 : f32 = x_604.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1862) + 1.0f);
  let x_1866 : f32 = u_xlat63;
  let x_1868 : f32 = x_604.x_MainLightShadowParams.x;
  let x_1871 : f32 = u_xlat5.x;
  u_xlat63 = ((x_1866 * x_1868) + x_1871);
  let x_1874 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_1874);
  let x_1878 : f32 = vs_INTERP8.z;
  u_xlatb25 = (x_1878 >= 1.0f);
  let x_1880 : bool = u_xlatb25;
  let x_1881 : bool = u_xlatb5;
  u_xlatb5 = (x_1880 | x_1881);
  let x_1883 : bool = u_xlatb5;
  let x_1884 : f32 = u_xlat63;
  u_xlat63 = select(x_1884, 1.0f, x_1883);
  let x_1886 : vec3<f32> = vs_INTERP0;
  let x_1888 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1890 : vec3<f32> = (x_1886 + -(x_1888));
  let x_1891 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
  let x_1893 : vec4<f32> = u_xlat5;
  let x_1895 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1893.x, x_1893.y, x_1893.z), vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
  let x_1900 : f32 = u_xlat5.x;
  let x_1902 : f32 = x_604.x_MainLightShadowParams.z;
  let x_1905 : f32 = x_604.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_1900 * x_1902) + x_1905);
  let x_1909 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1909, 0.0f, 1.0f);
  let x_1912 : f32 = u_xlat63;
  u_xlat25 = (-(x_1912) + 1.0f);
  let x_1916 : f32 = u_xlat5.x;
  let x_1917 : f32 = u_xlat25;
  let x_1919 : f32 = u_xlat63;
  u_xlat63 = ((x_1916 * x_1917) + x_1919);
  let x_1921 : f32 = u_xlat64;
  let x_1924 : vec4<f32> = x_44.x_MainLightColor;
  let x_1926 : vec3<f32> = (vec3<f32>(x_1921, x_1921, x_1921) * vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
  let x_1929 : vec3<f32> = u_xlat4;
  let x_1931 : vec3<f32> = u_xlat21;
  u_xlat65 = dot(-(x_1929), x_1931);
  let x_1933 : f32 = u_xlat65;
  let x_1934 : f32 = u_xlat65;
  u_xlat65 = (x_1933 + x_1934);
  let x_1936 : vec3<f32> = u_xlat21;
  let x_1937 : f32 = u_xlat65;
  let x_1941 : vec3<f32> = u_xlat4;
  let x_1943 : vec3<f32> = ((x_1936 * -(vec3<f32>(x_1937, x_1937, x_1937))) + -(x_1941));
  let x_1944 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec3<f32> = u_xlat21;
  let x_1947 : vec3<f32> = u_xlat4;
  u_xlat65 = dot(x_1946, x_1947);
  let x_1949 : f32 = u_xlat65;
  u_xlat65 = clamp(x_1949, 0.0f, 1.0f);
  let x_1951 : f32 = u_xlat65;
  u_xlat65 = (-(x_1951) + 1.0f);
  let x_1954 : f32 = u_xlat65;
  let x_1955 : f32 = u_xlat65;
  u_xlat65 = (x_1954 * x_1955);
  let x_1957 : f32 = u_xlat65;
  let x_1958 : f32 = u_xlat65;
  u_xlat65 = (x_1957 * x_1958);
  let x_1961 : f32 = u_xlat0.x;
  u_xlat66 = ((-(x_1961) * 0.699999988f) + 1.700000048f);
  let x_1968 : f32 = u_xlat0.x;
  let x_1969 : f32 = u_xlat66;
  u_xlat0.x = (x_1968 * x_1969);
  let x_1973 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1973 * 6.0f);
  let x_1985 : vec4<f32> = u_xlat7;
  let x_1988 : f32 = u_xlat0.x;
  let x_1989 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1985.x, x_1985.y, x_1985.z), x_1988);
  u_xlat7 = x_1989;
  let x_1991 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1991 + -1.0f);
  let x_1995 : f32 = x_283.unity_SpecCube0_HDR.w;
  let x_1997 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1995 * x_1997) + 1.0f);
  let x_2002 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2002, 0.0f);
  let x_2006 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2006);
  let x_2010 : f32 = u_xlat0.x;
  let x_2012 : f32 = x_283.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2010 * x_2012);
  let x_2016 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2016);
  let x_2020 : f32 = u_xlat0.x;
  let x_2022 : f32 = x_283.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2020 * x_2022);
  let x_2025 : vec4<f32> = u_xlat7;
  let x_2027 : vec4<f32> = u_xlat0;
  let x_2029 : vec3<f32> = (vec3<f32>(x_2025.x, x_2025.y, x_2025.z) * vec3<f32>(x_2027.x, x_2027.x, x_2027.x));
  let x_2030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
  let x_2032 : vec2<f32> = u_xlat20;
  let x_2034 : vec2<f32> = u_xlat20;
  let x_2038 : vec2<f32> = ((vec2<f32>(x_2032.x, x_2032.x) * vec2<f32>(x_2034.x, x_2034.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2039 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2038.x, x_2038.y, x_2039.z, x_2039.w);
  let x_2042 : f32 = u_xlat0.y;
  u_xlat20.x = (1.0f / x_2042);
  let x_2045 : vec3<f32> = u_xlat2;
  let x_2047 : f32 = u_xlat40;
  let x_2049 : vec3<f32> = (-(x_2045) + vec3<f32>(x_2047, x_2047, x_2047));
  let x_2050 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2050.w);
  let x_2052 : f32 = u_xlat65;
  let x_2054 : vec4<f32> = u_xlat8;
  let x_2057 : vec3<f32> = u_xlat2;
  let x_2058 : vec3<f32> = ((vec3<f32>(x_2052, x_2052, x_2052) * vec3<f32>(x_2054.x, x_2054.y, x_2054.z)) + x_2057);
  let x_2059 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2058.x, x_2058.y, x_2058.z, x_2059.w);
  let x_2061 : vec2<f32> = u_xlat20;
  let x_2063 : vec4<f32> = u_xlat8;
  let x_2065 : vec3<f32> = (vec3<f32>(x_2061.x, x_2061.x, x_2061.x) * vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
  let x_2066 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2066.w);
  let x_2068 : vec4<f32> = u_xlat7;
  let x_2070 : vec4<f32> = u_xlat8;
  let x_2072 : vec3<f32> = (vec3<f32>(x_2068.x, x_2068.y, x_2068.z) * vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
  let x_2073 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
  let x_2075 : vec4<f32> = u_xlat3;
  let x_2077 : vec3<f32> = u_xlat6;
  let x_2079 : vec4<f32> = u_xlat7;
  let x_2081 : vec3<f32> = ((vec3<f32>(x_2075.x, x_2075.y, x_2075.z) * x_2077) + vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
  let x_2082 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2082.w);
  let x_2084 : f32 = u_xlat63;
  let x_2087 : f32 = x_283.unity_LightData.z;
  u_xlat20.x = (x_2084 * x_2087);
  let x_2090 : vec3<f32> = u_xlat21;
  let x_2092 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat40 = dot(x_2090, vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
  let x_2095 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2095, 0.0f, 1.0f);
  let x_2097 : f32 = u_xlat40;
  let x_2099 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2097 * x_2099);
  let x_2102 : vec2<f32> = u_xlat20;
  let x_2104 : vec4<f32> = u_xlat5;
  let x_2106 : vec3<f32> = (vec3<f32>(x_2102.x, x_2102.x, x_2102.x) * vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
  let x_2107 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
  let x_2109 : vec3<f32> = u_xlat4;
  let x_2111 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2113 : vec3<f32> = (x_2109 + vec3<f32>(x_2111.x, x_2111.y, x_2111.z));
  let x_2114 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
  let x_2116 : vec4<f32> = u_xlat7;
  let x_2118 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(vec3<f32>(x_2116.x, x_2116.y, x_2116.z), vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
  let x_2123 : f32 = u_xlat20.x;
  u_xlat20.x = max(x_2123, 1.17549435e-37f);
  let x_2128 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_2128);
  let x_2131 : vec2<f32> = u_xlat20;
  let x_2133 : vec4<f32> = u_xlat7;
  let x_2135 : vec3<f32> = (vec3<f32>(x_2131.x, x_2131.x, x_2131.x) * vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
  let x_2136 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
  let x_2138 : vec3<f32> = u_xlat21;
  let x_2139 : vec4<f32> = u_xlat7;
  u_xlat20.x = dot(x_2138, vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2144 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_2144, 0.0f, 1.0f);
  let x_2148 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2150 : vec4<f32> = u_xlat7;
  u_xlat20.y = dot(vec3<f32>(x_2148.x, x_2148.y, x_2148.z), vec3<f32>(x_2150.x, x_2150.y, x_2150.z));
  let x_2155 : f32 = u_xlat20.y;
  u_xlat20.y = clamp(x_2155, 0.0f, 1.0f);
  let x_2158 : vec2<f32> = u_xlat20;
  let x_2159 : vec2<f32> = u_xlat20;
  u_xlat20 = (x_2158 * x_2159);
  let x_2162 : f32 = u_xlat20.x;
  let x_2164 : f32 = u_xlat0.x;
  u_xlat20.x = ((x_2162 * x_2164) + 1.000010014f);
  let x_2170 : f32 = u_xlat20.x;
  let x_2172 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2170 * x_2172);
  let x_2176 : f32 = u_xlat20.y;
  u_xlat40 = max(x_2176, 0.100000001f);
  let x_2179 : f32 = u_xlat40;
  let x_2181 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2179 * x_2181);
  let x_2184 : f32 = u_xlat62;
  let x_2186 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2184 * x_2186);
  let x_2190 : f32 = u_xlat1.x;
  let x_2192 : f32 = u_xlat20.x;
  u_xlat20.x = (x_2190 / x_2192);
  let x_2195 : vec3<f32> = u_xlat2;
  let x_2196 : vec2<f32> = u_xlat20;
  let x_2199 : vec3<f32> = u_xlat6;
  let x_2200 : vec3<f32> = ((x_2195 * vec3<f32>(x_2196.x, x_2196.x, x_2196.x)) + x_2199);
  let x_2201 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
  let x_2203 : vec4<f32> = u_xlat5;
  let x_2205 : vec4<f32> = u_xlat7;
  let x_2207 : vec3<f32> = (vec3<f32>(x_2203.x, x_2203.y, x_2203.z) * vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2208 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
  let x_2211 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2213 : f32 = x_283.unity_LightData.y;
  u_xlat20.x = min(x_2211, x_2213);
  let x_2219 : f32 = u_xlat20.x;
  u_xlatu20 = bitcast<u32>(i32(x_2219));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2231 : u32 = u_xlatu_loop_1;
    let x_2232 : u32 = u_xlatu20;
    if ((x_2231 < x_2232)) {
    } else {
      break;
    }
    let x_2235 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2235 >> 2u);
    let x_2239 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2239 & 3u));
    let x_2242 : u32 = u_xlatu63;
    let x_2245 : vec4<f32> = x_283.unity_LightIndices[bitcast<i32>(x_2242)];
    let x_2255 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2260 : vec4<u32> = indexable[x_2255];
    u_xlat63 = dot(x_2245, bitcast<vec4<f32>>(x_2260));
    let x_2264 : f32 = u_xlat63;
    u_xlati63 = i32(x_2264);
    let x_2266 : vec3<f32> = vs_INTERP0;
    let x_2278 : i32 = u_xlati63;
    let x_2280 : vec4<f32> = x_2277.x_AdditionalLightsPosition[x_2278];
    let x_2283 : i32 = u_xlati63;
    let x_2285 : vec4<f32> = x_2277.x_AdditionalLightsPosition[x_2283];
    let x_2287 : vec3<f32> = ((-(x_2266) * vec3<f32>(x_2280.w, x_2280.w, x_2280.w)) + vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
    let x_2288 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
    let x_2290 : vec4<f32> = u_xlat8;
    let x_2292 : vec4<f32> = u_xlat8;
    u_xlat65 = dot(vec3<f32>(x_2290.x, x_2290.y, x_2290.z), vec3<f32>(x_2292.x, x_2292.y, x_2292.z));
    let x_2295 : f32 = u_xlat65;
    u_xlat65 = max(x_2295, 6.10351562e-05f);
    let x_2298 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2298);
    let x_2300 : f32 = u_xlat66;
    let x_2302 : vec4<f32> = u_xlat8;
    let x_2304 : vec3<f32> = (vec3<f32>(x_2300, x_2300, x_2300) * vec3<f32>(x_2302.x, x_2302.y, x_2302.z));
    let x_2305 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2304.x, x_2304.y, x_2304.z, x_2305.w);
    let x_2308 : f32 = u_xlat65;
    u_xlat67 = (1.0f / x_2308);
    let x_2310 : f32 = u_xlat65;
    let x_2311 : i32 = u_xlati63;
    let x_2313 : f32 = x_2277.x_AdditionalLightsAttenuation[x_2311].x;
    u_xlat65 = (x_2310 * x_2313);
    let x_2315 : f32 = u_xlat65;
    let x_2317 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2315) * x_2317) + 1.0f);
    let x_2320 : f32 = u_xlat65;
    u_xlat65 = max(x_2320, 0.0f);
    let x_2322 : f32 = u_xlat65;
    let x_2323 : f32 = u_xlat65;
    u_xlat65 = (x_2322 * x_2323);
    let x_2325 : f32 = u_xlat65;
    let x_2326 : f32 = u_xlat67;
    u_xlat65 = (x_2325 * x_2326);
    let x_2328 : i32 = u_xlati63;
    let x_2330 : vec4<f32> = x_2277.x_AdditionalLightsSpotDir[x_2328];
    let x_2332 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2330.x, x_2330.y, x_2330.z), vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
    let x_2335 : f32 = u_xlat67;
    let x_2336 : i32 = u_xlati63;
    let x_2338 : f32 = x_2277.x_AdditionalLightsAttenuation[x_2336].z;
    let x_2340 : i32 = u_xlati63;
    let x_2342 : f32 = x_2277.x_AdditionalLightsAttenuation[x_2340].w;
    u_xlat67 = ((x_2335 * x_2338) + x_2342);
    let x_2344 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2344, 0.0f, 1.0f);
    let x_2346 : f32 = u_xlat67;
    let x_2347 : f32 = u_xlat67;
    u_xlat67 = (x_2346 * x_2347);
    let x_2349 : f32 = u_xlat65;
    let x_2350 : f32 = u_xlat67;
    u_xlat65 = (x_2349 * x_2350);
    let x_2352 : f32 = u_xlat64;
    let x_2354 : i32 = u_xlati63;
    let x_2356 : vec4<f32> = x_2277.x_AdditionalLightsColor[x_2354];
    let x_2358 : vec3<f32> = (vec3<f32>(x_2352, x_2352, x_2352) * vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
    let x_2359 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
    let x_2361 : vec3<f32> = u_xlat21;
    let x_2362 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_2361, vec3<f32>(x_2362.x, x_2362.y, x_2362.z));
    let x_2365 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2365, 0.0f, 1.0f);
    let x_2367 : f32 = u_xlat63;
    let x_2368 : f32 = u_xlat65;
    u_xlat63 = (x_2367 * x_2368);
    let x_2370 : f32 = u_xlat63;
    let x_2372 : vec4<f32> = u_xlat10;
    let x_2374 : vec3<f32> = (vec3<f32>(x_2370, x_2370, x_2370) * vec3<f32>(x_2372.x, x_2372.y, x_2372.z));
    let x_2375 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2374.x, x_2374.y, x_2374.z, x_2375.w);
    let x_2377 : vec4<f32> = u_xlat8;
    let x_2379 : f32 = u_xlat66;
    let x_2382 : vec3<f32> = u_xlat4;
    let x_2383 : vec3<f32> = ((vec3<f32>(x_2377.x, x_2377.y, x_2377.z) * vec3<f32>(x_2379, x_2379, x_2379)) + x_2382);
    let x_2384 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2384.w);
    let x_2386 : vec4<f32> = u_xlat8;
    let x_2388 : vec4<f32> = u_xlat8;
    u_xlat63 = dot(vec3<f32>(x_2386.x, x_2386.y, x_2386.z), vec3<f32>(x_2388.x, x_2388.y, x_2388.z));
    let x_2391 : f32 = u_xlat63;
    u_xlat63 = max(x_2391, 1.17549435e-37f);
    let x_2393 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2393);
    let x_2395 : f32 = u_xlat63;
    let x_2397 : vec4<f32> = u_xlat8;
    let x_2399 : vec3<f32> = (vec3<f32>(x_2395, x_2395, x_2395) * vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
    let x_2400 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
    let x_2402 : vec3<f32> = u_xlat21;
    let x_2403 : vec4<f32> = u_xlat8;
    u_xlat63 = dot(x_2402, vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
    let x_2406 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2406, 0.0f, 1.0f);
    let x_2408 : vec4<f32> = u_xlat9;
    let x_2410 : vec4<f32> = u_xlat8;
    u_xlat65 = dot(vec3<f32>(x_2408.x, x_2408.y, x_2408.z), vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
    let x_2413 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2413, 0.0f, 1.0f);
    let x_2415 : f32 = u_xlat63;
    let x_2416 : f32 = u_xlat63;
    u_xlat63 = (x_2415 * x_2416);
    let x_2418 : f32 = u_xlat63;
    let x_2420 : f32 = u_xlat0.x;
    u_xlat63 = ((x_2418 * x_2420) + 1.000010014f);
    let x_2423 : f32 = u_xlat65;
    let x_2424 : f32 = u_xlat65;
    u_xlat65 = (x_2423 * x_2424);
    let x_2426 : f32 = u_xlat63;
    let x_2427 : f32 = u_xlat63;
    u_xlat63 = (x_2426 * x_2427);
    let x_2429 : f32 = u_xlat65;
    u_xlat65 = max(x_2429, 0.100000001f);
    let x_2431 : f32 = u_xlat63;
    let x_2432 : f32 = u_xlat65;
    u_xlat63 = (x_2431 * x_2432);
    let x_2434 : f32 = u_xlat62;
    let x_2435 : f32 = u_xlat63;
    u_xlat63 = (x_2434 * x_2435);
    let x_2438 : f32 = u_xlat1.x;
    let x_2439 : f32 = u_xlat63;
    u_xlat63 = (x_2438 / x_2439);
    let x_2441 : vec3<f32> = u_xlat2;
    let x_2442 : f32 = u_xlat63;
    let x_2445 : vec3<f32> = u_xlat6;
    let x_2446 : vec3<f32> = ((x_2441 * vec3<f32>(x_2442, x_2442, x_2442)) + x_2445);
    let x_2447 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
    let x_2449 : vec4<f32> = u_xlat8;
    let x_2451 : vec4<f32> = u_xlat10;
    let x_2454 : vec4<f32> = u_xlat7;
    let x_2456 : vec3<f32> = ((vec3<f32>(x_2449.x, x_2449.y, x_2449.z) * vec3<f32>(x_2451.x, x_2451.y, x_2451.z)) + vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
    let x_2457 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);

    continuing {
      let x_2459 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2459 + bitcast<u32>(1i));
    }
  }
  let x_2461 : vec4<f32> = u_xlat3;
  let x_2463 : f32 = u_xlat60;
  let x_2466 : vec4<f32> = u_xlat5;
  let x_2468 : vec3<f32> = ((vec3<f32>(x_2461.x, x_2461.y, x_2461.z) * vec3<f32>(x_2463, x_2463, x_2463)) + vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
  let x_2469 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
  let x_2473 : vec4<f32> = u_xlat7;
  let x_2475 : vec4<f32> = u_xlat0;
  let x_2477 : vec3<f32> = (vec3<f32>(x_2473.x, x_2473.y, x_2473.z) + vec3<f32>(x_2475.x, x_2475.y, x_2475.z));
  let x_2478 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
  let x_2483 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_2485 : f32 = x_283.unity_RenderingLayer.x;
  u_xlatu0 = (x_2483 & bitcast<u32>(x_2485));
  let x_2488 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2488);
  let x_2493 : f32 = u_xlat0.x;
  let x_2495 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2493 * x_2495);
  let x_2500 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2500, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2505 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2505.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

