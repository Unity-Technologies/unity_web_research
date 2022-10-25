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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MRLL : texture_2d<f32>;

@group(1) @binding(4) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(6) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_267 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_553 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2161 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlatb22 : vec3<bool>;
  var u_xlat22 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat42 : f32;
  var x_371 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat63 : f32;
  var u_xlatb67 : bool;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb26 : bool;
  var u_xlat26 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat47 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
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
  var u_xlatb47 : bool;
  var u_xlat70 : f32;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati67 : i32;
  var u_xlat71 : f32;
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
  u_xlat43 = (x_87 + x_90);
  let x_92 : f32 = u_xlat43;
  u_xlat43 = clamp(x_92, 0.0f, 1.0f);
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat3 = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec3<f32> = u_xlat3;
  let x_102 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_101 + x_102);
  let x_105 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec3<f32> = u_xlat3;
  let x_110 : vec3<f32> = u_xlat4;
  u_xlat3 = ((-(x_108) * x_110) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_113.x, x_113.y, x_113.z) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec3<f32> = u_xlat2;
  let x_119 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_118 * x_119);
  let x_127 : vec4<f32> = u_xlat0;
  let x_130 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_127.x, x_127.y, x_127.z, x_127.x));
  u_xlatb4 = vec3<bool>(x_130.x, x_130.y, x_130.z);
  let x_135 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_135);
  let x_140 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_140);
  let x_144 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_144);
  let x_148 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_148);
  let x_152 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_152);
  let x_156 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_156);
  let x_159 : vec3<f32> = u_xlat3;
  let x_160 : vec3<f32> = u_xlat4;
  u_xlat3 = (x_159 * x_160);
  let x_162 : vec3<f32> = u_xlat2;
  let x_163 : vec3<f32> = u_xlat5;
  let x_165 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_162 * x_163) + x_165);
  let x_167 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_167.x, x_167.y, x_167.z)) + x_170);
  let x_172 : f32 = u_xlat43;
  let x_174 : vec3<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_172, x_172, x_172) * x_174) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : f32 = u_xlat0.x;
  u_xlat0.x = (x_180 + -0.150000006f);
  let x_185 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_189) + 1.0f);
  let x_193 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_193.x, x_193.x, x_193.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_198);
  let x_204 : vec4<f32> = vs_INTERP3;
  let x_207 : f32 = x_44.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_204.x, x_204.y), x_207);
  u_xlat3 = vec3<f32>(x_208.x, x_208.y, x_208.w);
  let x_211 : f32 = u_xlat3.x;
  let x_213 : f32 = u_xlat3.z;
  u_xlat3.x = (x_211 * x_213);
  let x_218 : vec3<f32> = u_xlat3;
  u_xlat21 = ((vec2<f32>(x_218.x, x_218.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_226 : vec2<f32> = u_xlat21;
  let x_227 : vec2<f32> = u_xlat21;
  u_xlat43 = dot(x_226, x_227);
  let x_229 : f32 = u_xlat43;
  u_xlat43 = min(x_229, 1.0f);
  let x_231 : f32 = u_xlat43;
  u_xlat43 = (-(x_231) + 1.0f);
  let x_234 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_234);
  let x_236 : f32 = u_xlat43;
  u_xlat43 = max(x_236, 1.00000002e-16f);
  let x_240 : f32 = u_xlat1.x;
  let x_242 : f32 = u_xlat0.x;
  u_xlat0.x = (x_240 + x_242);
  let x_246 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_246, 0.0f, 1.0f);
  let x_250 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_250, 0.0f);
  let x_254 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_254, 0.850000024f);
  let x_261 : f32 = vs_INTERP2.w;
  u_xlatb22.x = (0.0f < x_261);
  let x_269 : f32 = x_267.unity_WorldTransformParams.w;
  u_xlatb22.z = (x_269 >= 0.0f);
  let x_274 : bool = u_xlatb22.x;
  u_xlat22.x = select(-1.0f, 1.0f, x_274);
  let x_278 : bool = u_xlatb22.z;
  u_xlat22.z = select(-1.0f, 1.0f, x_278);
  let x_282 : f32 = u_xlat22.z;
  let x_284 : f32 = u_xlat22.x;
  u_xlat22.x = (x_282 * x_284);
  let x_289 : vec3<f32> = vs_INTERP1;
  let x_291 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_289.z, x_289.x, x_289.y) * vec3<f32>(x_291.y, x_291.z, x_291.x));
  let x_294 : vec3<f32> = vs_INTERP1;
  let x_296 : vec4<f32> = vs_INTERP2;
  let x_299 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_294.y, x_294.z, x_294.x) * vec3<f32>(x_296.z, x_296.x, x_296.y)) + -(x_299));
  let x_302 : vec3<f32> = u_xlat22;
  let x_304 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304);
  let x_306 : vec2<f32> = u_xlat21;
  let x_308 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_306.y, x_306.y, x_306.y) * x_308);
  let x_310 : vec2<f32> = u_xlat21;
  let x_312 : vec4<f32> = vs_INTERP2;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_312.x, x_312.y, x_312.z)) + x_315);
  let x_317 : f32 = u_xlat43;
  let x_319 : vec3<f32> = vs_INTERP1;
  let x_321 : vec3<f32> = u_xlat3;
  u_xlat22 = ((vec3<f32>(x_317, x_317, x_317) * x_319) + x_321);
  let x_323 : vec3<f32> = u_xlat22;
  let x_324 : vec3<f32> = u_xlat22;
  u_xlat21.x = dot(x_323, x_324);
  let x_328 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_328);
  let x_331 : vec2<f32> = u_xlat21;
  let x_333 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_331.x, x_331.x, x_331.x) * x_333);
  let x_338 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_338 == 0.0f);
  let x_341 : vec3<f32> = vs_INTERP0;
  let x_346 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_341) + x_346);
  let x_349 : vec3<f32> = u_xlat3;
  let x_350 : vec3<f32> = u_xlat3;
  u_xlat42 = dot(x_349, x_350);
  let x_352 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_352);
  let x_354 : f32 = u_xlat42;
  let x_356 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_354, x_354, x_354) * x_356);
  let x_361 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_361;
  let x_364 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_364;
  let x_368 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_368;
  let x_370 : bool = u_xlatb21;
  if (x_370) {
    let x_374 : vec3<f32> = u_xlat3;
    x_371 = x_374;
  } else {
    let x_376 : vec3<f32> = u_xlat4;
    x_371 = x_376;
  }
  let x_377 : vec3<f32> = x_371;
  u_xlat3 = x_377;
  let x_379 : f32 = vs_INTERP0.y;
  let x_381 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat21.x = (x_379 * x_381);
  let x_385 : f32 = x_44.unity_MatrixV[0i].z;
  let x_387 : f32 = vs_INTERP0.x;
  let x_390 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_385 * x_387) + x_390);
  let x_394 : f32 = x_44.unity_MatrixV[2i].z;
  let x_396 : f32 = vs_INTERP0.z;
  let x_399 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_394 * x_396) + x_399);
  let x_403 : f32 = u_xlat21.x;
  let x_405 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat21.x = (x_403 + x_405);
  let x_409 : f32 = u_xlat21.x;
  let x_413 : f32 = x_44.x_ProjectionParams.y;
  u_xlat21.x = (-(x_409) + -(x_413));
  let x_418 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_418, 0.0f);
  let x_422 : f32 = u_xlat21.x;
  let x_425 : f32 = x_44.unity_FogParams.x;
  u_xlat21.x = (x_422 * x_425);
  let x_435 : vec2<f32> = vs_INTERP4;
  let x_437 : f32 = x_44.x_GlobalMipBias.x;
  let x_438 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_435, x_437);
  u_xlat4 = vec3<f32>(x_438.x, x_438.y, x_438.z);
  let x_442 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_443 : vec2<f32> = vec2<f32>(x_442.x, x_442.y);
  let x_447 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_443.x, x_443.y));
  let x_448 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_447.x, x_447.y, x_448.z);
  let x_450 : vec3<f32> = u_xlat5;
  let x_452 : vec4<f32> = hlslcc_FragCoord;
  let x_454 : vec2<f32> = (vec2<f32>(x_450.x, x_450.y) * vec2<f32>(x_452.x, x_452.y));
  let x_455 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_454.x, x_454.y, x_455.z);
  let x_458 : f32 = u_xlat5.y;
  let x_461 : f32 = x_44.x_ScaleBiasRt.x;
  let x_464 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_458 * x_461) + x_464);
  let x_466 : f32 = u_xlat42;
  u_xlat5.z = (-(x_466) + 1.0f);
  let x_471 : f32 = u_xlat0.x;
  u_xlat42 = ((-(x_471) * 0.959999979f) + 0.959999979f);
  let x_477 : f32 = u_xlat42;
  let x_480 : f32 = u_xlat1.x;
  u_xlat65 = (-(x_477) + x_480);
  let x_483 : f32 = u_xlat42;
  let x_485 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_483, x_483, x_483) * x_485);
  let x_487 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_487 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_491.x, x_491.x, x_491.x) * x_493) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_499 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_499) + 1.0f);
  let x_504 : f32 = u_xlat0.x;
  let x_506 : f32 = u_xlat0.x;
  u_xlat42 = (x_504 * x_506);
  let x_508 : f32 = u_xlat42;
  let x_509 : f32 = u_xlat42;
  u_xlat1.x = (x_508 * x_509);
  let x_512 : f32 = u_xlat65;
  u_xlat65 = (x_512 + 1.0f);
  let x_514 : f32 = u_xlat65;
  u_xlat65 = min(x_514, 1.0f);
  let x_517 : f32 = u_xlat42;
  u_xlat66 = ((x_517 * 4.0f) + 2.0f);
  let x_527 : vec3<f32> = u_xlat5;
  let x_530 : f32 = x_44.x_GlobalMipBias.x;
  let x_531 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_527.x, x_527.z), x_530);
  u_xlat67 = x_531.x;
  let x_533 : f32 = u_xlat67;
  u_xlat5.x = (x_533 + -1.0f);
  let x_537 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_539 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_537 * x_539) + 1.0f);
  let x_545 : f32 = u_xlat0.w;
  let x_546 : f32 = u_xlat67;
  u_xlat63 = min(x_545, x_546);
  let x_555 : f32 = x_553.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_555);
  let x_557 : bool = u_xlatb67;
  if (x_557) {
    let x_561 : f32 = x_553.x_MainLightShadowParams.y;
    u_xlatb67 = (x_561 == 1.0f);
    let x_563 : bool = u_xlatb67;
    if (x_563) {
      let x_568 : vec4<f32> = vs_INTERP8;
      let x_572 : vec4<f32> = x_553.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_568.x, x_568.y, x_568.x, x_568.y) + x_572);
      let x_575 : vec4<f32> = u_xlat7;
      let x_576 : vec2<f32> = vec2<f32>(x_575.x, x_575.y);
      let x_578 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_576.x, x_576.y, x_578);
      let x_591 : vec3<f32> = txVec0;
      let x_593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_591.xy, x_591.z);
      u_xlat8.x = x_593;
      let x_596 : vec4<f32> = u_xlat7;
      let x_597 : vec2<f32> = vec2<f32>(x_596.z, x_596.w);
      let x_599 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_597.x, x_597.y, x_599);
      let x_606 : vec3<f32> = txVec1;
      let x_608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_606.xy, x_606.z);
      u_xlat8.y = x_608;
      let x_610 : vec4<f32> = vs_INTERP8;
      let x_614 : vec4<f32> = x_553.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y) + x_614);
      let x_617 : vec4<f32> = u_xlat7;
      let x_618 : vec2<f32> = vec2<f32>(x_617.x, x_617.y);
      let x_620 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_618.x, x_618.y, x_620);
      let x_627 : vec3<f32> = txVec2;
      let x_629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_627.xy, x_627.z);
      u_xlat8.z = x_629;
      let x_632 : vec4<f32> = u_xlat7;
      let x_633 : vec2<f32> = vec2<f32>(x_632.z, x_632.w);
      let x_635 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_633.x, x_633.y, x_635);
      let x_642 : vec3<f32> = txVec3;
      let x_644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_642.xy, x_642.z);
      u_xlat8.w = x_644;
      let x_646 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_646, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_653 : f32 = x_553.x_MainLightShadowParams.y;
      u_xlatb26 = (x_653 == 2.0f);
      let x_655 : bool = u_xlatb26;
      if (x_655) {
        let x_659 : vec4<f32> = vs_INTERP8;
        let x_662 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_666 : vec2<f32> = ((vec2<f32>(x_659.x, x_659.y) * vec2<f32>(x_662.z, x_662.w)) + vec2<f32>(0.5f, 0.5f));
        let x_667 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_666.x, x_666.y, x_667.z);
        let x_669 : vec3<f32> = u_xlat26;
        let x_671 : vec2<f32> = floor(vec2<f32>(x_669.x, x_669.y));
        let x_672 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_671.x, x_671.y, x_672.z);
        let x_674 : vec4<f32> = vs_INTERP8;
        let x_677 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_680 : vec3<f32> = u_xlat26;
        let x_683 : vec2<f32> = ((vec2<f32>(x_674.x, x_674.y) * vec2<f32>(x_677.z, x_677.w)) + -(vec2<f32>(x_680.x, x_680.y)));
        let x_684 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_686 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_686.x, x_686.x, x_686.y, x_686.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_691 : vec4<f32> = u_xlat8;
        let x_693 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_691.x, x_691.x, x_691.z, x_691.z) * vec4<f32>(x_693.x, x_693.x, x_693.z, x_693.z));
        let x_697 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_697.y, x_697.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_702 : vec4<f32> = u_xlat9;
        let x_705 : vec4<f32> = u_xlat7;
        let x_708 : vec2<f32> = ((vec2<f32>(x_702.x, x_702.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_705.x, x_705.y)));
        let x_709 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_708.x, x_709.y, x_708.y, x_709.w);
        let x_711 : vec4<f32> = u_xlat7;
        let x_714 : vec2<f32> = (-(vec2<f32>(x_711.x, x_711.y)) + vec2<f32>(1.0f, 1.0f));
        let x_715 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_714.x, x_714.y, x_715.z, x_715.w);
        let x_718 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_718.x, x_718.y), vec2<f32>(0.0f, 0.0f));
        let x_722 : vec2<f32> = u_xlat51;
        let x_724 : vec2<f32> = u_xlat51;
        let x_726 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_722) * x_724) + vec2<f32>(x_726.x, x_726.y));
        let x_729 : vec4<f32> = u_xlat7;
        let x_731 : vec2<f32> = max(vec2<f32>(x_729.x, x_729.y), vec2<f32>(0.0f, 0.0f));
        let x_732 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat7;
        let x_737 : vec4<f32> = u_xlat7;
        let x_740 : vec4<f32> = u_xlat8;
        let x_742 : vec2<f32> = ((-(vec2<f32>(x_734.x, x_734.y)) * vec2<f32>(x_737.x, x_737.y)) + vec2<f32>(x_740.y, x_740.w));
        let x_743 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_742.x, x_742.y, x_743.z, x_743.w);
        let x_745 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_745 + vec2<f32>(1.0f, 1.0f));
        let x_747 : vec4<f32> = u_xlat7;
        let x_749 : vec2<f32> = (vec2<f32>(x_747.x, x_747.y) + vec2<f32>(1.0f, 1.0f));
        let x_750 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_749.x, x_749.y, x_750.z, x_750.w);
        let x_753 : vec4<f32> = u_xlat8;
        let x_757 : vec2<f32> = (vec2<f32>(x_753.x, x_753.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_758 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_761 : vec4<f32> = u_xlat9;
        let x_763 : vec2<f32> = (vec2<f32>(x_761.x, x_761.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_764 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
        let x_766 : vec2<f32> = u_xlat51;
        let x_767 : vec2<f32> = (x_766 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_768 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
        let x_771 : vec4<f32> = u_xlat7;
        let x_773 : vec2<f32> = (vec2<f32>(x_771.x, x_771.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_774 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
        let x_776 : vec4<f32> = u_xlat8;
        let x_778 : vec2<f32> = (vec2<f32>(x_776.y, x_776.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_779 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
        let x_782 : f32 = u_xlat9.x;
        u_xlat10.z = x_782;
        let x_785 : f32 = u_xlat7.x;
        u_xlat10.w = x_785;
        let x_788 : f32 = u_xlat12.x;
        u_xlat11.z = x_788;
        let x_791 : f32 = u_xlat49.x;
        u_xlat11.w = x_791;
        let x_793 : vec4<f32> = u_xlat10;
        let x_795 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_793.z, x_793.w, x_793.x, x_793.z) + vec4<f32>(x_795.z, x_795.w, x_795.x, x_795.z));
        let x_799 : f32 = u_xlat10.y;
        u_xlat9.z = x_799;
        let x_802 : f32 = u_xlat7.y;
        u_xlat9.w = x_802;
        let x_805 : f32 = u_xlat11.y;
        u_xlat12.z = x_805;
        let x_808 : f32 = u_xlat49.y;
        u_xlat12.w = x_808;
        let x_810 : vec4<f32> = u_xlat9;
        let x_812 : vec4<f32> = u_xlat12;
        let x_814 : vec3<f32> = (vec3<f32>(x_810.z, x_810.y, x_810.w) + vec3<f32>(x_812.z, x_812.y, x_812.w));
        let x_815 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
        let x_817 : vec4<f32> = u_xlat11;
        let x_819 : vec4<f32> = u_xlat8;
        let x_821 : vec3<f32> = (vec3<f32>(x_817.x, x_817.z, x_817.w) / vec3<f32>(x_819.z, x_819.w, x_819.y));
        let x_822 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat9;
        let x_830 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_831 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
        let x_833 : vec4<f32> = u_xlat12;
        let x_835 : vec4<f32> = u_xlat7;
        let x_837 : vec3<f32> = (vec3<f32>(x_833.z, x_833.y, x_833.w) / vec3<f32>(x_835.x, x_835.y, x_835.z));
        let x_838 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
        let x_840 : vec4<f32> = u_xlat10;
        let x_842 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_843 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
        let x_845 : vec4<f32> = u_xlat9;
        let x_848 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_850 : vec3<f32> = (vec3<f32>(x_845.y, x_845.x, x_845.z) * vec3<f32>(x_848.x, x_848.x, x_848.x));
        let x_851 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat10;
        let x_856 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_858 : vec3<f32> = (vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_856.y, x_856.y, x_856.y));
        let x_859 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
        let x_862 : f32 = u_xlat10.x;
        u_xlat9.w = x_862;
        let x_864 : vec3<f32> = u_xlat26;
        let x_867 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_870 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_864.x, x_864.y, x_864.x, x_864.y) * vec4<f32>(x_867.x, x_867.y, x_867.x, x_867.y)) + vec4<f32>(x_870.y, x_870.w, x_870.x, x_870.w));
        let x_873 : vec3<f32> = u_xlat26;
        let x_876 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_879 : vec4<f32> = u_xlat9;
        let x_881 : vec2<f32> = ((vec2<f32>(x_873.x, x_873.y) * vec2<f32>(x_876.x, x_876.y)) + vec2<f32>(x_879.z, x_879.w));
        let x_882 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_881.x, x_881.y, x_882.z, x_882.w);
        let x_885 : f32 = u_xlat9.y;
        u_xlat10.w = x_885;
        let x_887 : vec4<f32> = u_xlat10;
        let x_888 : vec2<f32> = vec2<f32>(x_887.y, x_887.z);
        let x_889 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_889.x, x_888.x, x_889.z, x_888.y);
        let x_892 : vec3<f32> = u_xlat26;
        let x_895 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_892.x, x_892.y, x_892.x, x_892.y) * vec4<f32>(x_895.x, x_895.y, x_895.x, x_895.y)) + vec4<f32>(x_898.x, x_898.y, x_898.z, x_898.y));
        let x_901 : vec3<f32> = u_xlat26;
        let x_904 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_907 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_901.x, x_901.y, x_901.x, x_901.y) * vec4<f32>(x_904.x, x_904.y, x_904.x, x_904.y)) + vec4<f32>(x_907.w, x_907.y, x_907.w, x_907.z));
        let x_910 : vec3<f32> = u_xlat26;
        let x_913 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_916 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_910.x, x_910.y, x_910.x, x_910.y) * vec4<f32>(x_913.x, x_913.y, x_913.x, x_913.y)) + vec4<f32>(x_916.x, x_916.w, x_916.z, x_916.w));
        let x_920 : vec4<f32> = u_xlat7;
        let x_922 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_920.x, x_920.x, x_920.x, x_920.y) * vec4<f32>(x_922.z, x_922.w, x_922.y, x_922.z));
        let x_926 : vec4<f32> = u_xlat7;
        let x_928 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_926.y, x_926.y, x_926.z, x_926.z) * x_928);
        let x_931 : f32 = u_xlat7.z;
        let x_933 : f32 = u_xlat8.y;
        u_xlat26.x = (x_931 * x_933);
        let x_937 : vec4<f32> = u_xlat11;
        let x_938 : vec2<f32> = vec2<f32>(x_937.x, x_937.y);
        let x_940 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_938.x, x_938.y, x_940);
        let x_948 : vec3<f32> = txVec4;
        let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_948.xy, x_948.z);
        u_xlat47 = x_950;
        let x_952 : vec4<f32> = u_xlat11;
        let x_953 : vec2<f32> = vec2<f32>(x_952.z, x_952.w);
        let x_955 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_953.x, x_953.y, x_955);
        let x_963 : vec3<f32> = txVec5;
        let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_963.xy, x_963.z);
        u_xlat68 = x_965;
        let x_966 : f32 = u_xlat68;
        let x_968 : f32 = u_xlat14.y;
        u_xlat68 = (x_966 * x_968);
        let x_971 : f32 = u_xlat14.x;
        let x_972 : f32 = u_xlat47;
        let x_974 : f32 = u_xlat68;
        u_xlat47 = ((x_971 * x_972) + x_974);
        let x_977 : vec4<f32> = u_xlat12;
        let x_978 : vec2<f32> = vec2<f32>(x_977.x, x_977.y);
        let x_980 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_978.x, x_978.y, x_980);
        let x_987 : vec3<f32> = txVec6;
        let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_987.xy, x_987.z);
        u_xlat68 = x_989;
        let x_991 : f32 = u_xlat14.z;
        let x_992 : f32 = u_xlat68;
        let x_994 : f32 = u_xlat47;
        u_xlat47 = ((x_991 * x_992) + x_994);
        let x_997 : vec4<f32> = u_xlat10;
        let x_998 : vec2<f32> = vec2<f32>(x_997.x, x_997.y);
        let x_1000 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_998.x, x_998.y, x_1000);
        let x_1007 : vec3<f32> = txVec7;
        let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1007.xy, x_1007.z);
        u_xlat68 = x_1009;
        let x_1011 : f32 = u_xlat14.w;
        let x_1012 : f32 = u_xlat68;
        let x_1014 : f32 = u_xlat47;
        u_xlat47 = ((x_1011 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat13;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.x, x_1017.y);
        let x_1020 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec8;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1027.xy, x_1027.z);
        u_xlat68 = x_1029;
        let x_1031 : f32 = u_xlat15.x;
        let x_1032 : f32 = u_xlat68;
        let x_1034 : f32 = u_xlat47;
        u_xlat47 = ((x_1031 * x_1032) + x_1034);
        let x_1037 : vec4<f32> = u_xlat13;
        let x_1038 : vec2<f32> = vec2<f32>(x_1037.z, x_1037.w);
        let x_1040 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
        let x_1047 : vec3<f32> = txVec9;
        let x_1049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1047.xy, x_1047.z);
        u_xlat68 = x_1049;
        let x_1051 : f32 = u_xlat15.y;
        let x_1052 : f32 = u_xlat68;
        let x_1054 : f32 = u_xlat47;
        u_xlat47 = ((x_1051 * x_1052) + x_1054);
        let x_1057 : vec4<f32> = u_xlat10;
        let x_1058 : vec2<f32> = vec2<f32>(x_1057.z, x_1057.w);
        let x_1060 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
        let x_1067 : vec3<f32> = txVec10;
        let x_1069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1067.xy, x_1067.z);
        u_xlat68 = x_1069;
        let x_1071 : f32 = u_xlat15.z;
        let x_1072 : f32 = u_xlat68;
        let x_1074 : f32 = u_xlat47;
        u_xlat47 = ((x_1071 * x_1072) + x_1074);
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1078 : vec2<f32> = vec2<f32>(x_1077.x, x_1077.y);
        let x_1080 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1078.x, x_1078.y, x_1080);
        let x_1087 : vec3<f32> = txVec11;
        let x_1089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1087.xy, x_1087.z);
        u_xlat68 = x_1089;
        let x_1091 : f32 = u_xlat15.w;
        let x_1092 : f32 = u_xlat68;
        let x_1094 : f32 = u_xlat47;
        u_xlat47 = ((x_1091 * x_1092) + x_1094);
        let x_1097 : vec4<f32> = u_xlat9;
        let x_1098 : vec2<f32> = vec2<f32>(x_1097.z, x_1097.w);
        let x_1100 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1098.x, x_1098.y, x_1100);
        let x_1107 : vec3<f32> = txVec12;
        let x_1109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1107.xy, x_1107.z);
        u_xlat68 = x_1109;
        let x_1111 : f32 = u_xlat26.x;
        let x_1112 : f32 = u_xlat68;
        let x_1114 : f32 = u_xlat47;
        u_xlat67 = ((x_1111 * x_1112) + x_1114);
      } else {
        let x_1117 : vec4<f32> = vs_INTERP8;
        let x_1120 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1123 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(x_1120.z, x_1120.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1124 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1123.x, x_1123.y, x_1124.z);
        let x_1126 : vec3<f32> = u_xlat26;
        let x_1128 : vec2<f32> = floor(vec2<f32>(x_1126.x, x_1126.y));
        let x_1129 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1128.x, x_1128.y, x_1129.z);
        let x_1131 : vec4<f32> = vs_INTERP8;
        let x_1134 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1137 : vec3<f32> = u_xlat26;
        let x_1140 : vec2<f32> = ((vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(x_1134.z, x_1134.w)) + -(vec2<f32>(x_1137.x, x_1137.y)));
        let x_1141 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1143.x, x_1143.x, x_1143.y, x_1143.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1146 : vec4<f32> = u_xlat8;
        let x_1148 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1146.x, x_1146.x, x_1146.z, x_1146.z) * vec4<f32>(x_1148.x, x_1148.x, x_1148.z, x_1148.z));
        let x_1151 : vec4<f32> = u_xlat9;
        let x_1155 : vec2<f32> = (vec2<f32>(x_1151.y, x_1151.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1156 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1156.x, x_1155.x, x_1156.z, x_1155.y);
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1161 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1158.x, x_1158.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1161.x, x_1161.y)));
        let x_1165 : vec4<f32> = u_xlat7;
        let x_1168 : vec2<f32> = (-(vec2<f32>(x_1165.x, x_1165.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1168.x, x_1169.y, x_1168.y, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat7;
        let x_1173 : vec2<f32> = min(vec2<f32>(x_1171.x, x_1171.y), vec2<f32>(0.0f, 0.0f));
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
        let x_1176 : vec4<f32> = u_xlat9;
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1184 : vec2<f32> = ((-(vec2<f32>(x_1176.x, x_1176.y)) * vec2<f32>(x_1179.x, x_1179.y)) + vec2<f32>(x_1182.x, x_1182.z));
        let x_1185 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1184.x, x_1185.y, x_1184.y, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat7;
        let x_1189 : vec2<f32> = max(vec2<f32>(x_1187.x, x_1187.y), vec2<f32>(0.0f, 0.0f));
        let x_1190 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1198 : vec4<f32> = u_xlat8;
        let x_1200 : vec2<f32> = ((-(vec2<f32>(x_1192.x, x_1192.y)) * vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(x_1198.y, x_1198.w));
        let x_1201 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1201.x, x_1200.x, x_1201.z, x_1200.y);
        let x_1203 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1203 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1207 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1207 * 0.081632003f);
        let x_1211 : vec2<f32> = u_xlat49;
        let x_1214 : vec2<f32> = (vec2<f32>(x_1211.y, x_1211.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1215 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1217.x, x_1217.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1221 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1221 * 0.081632003f);
        let x_1225 : f32 = u_xlat11.y;
        u_xlat9.x = x_1225;
        let x_1227 : vec4<f32> = u_xlat7;
        let x_1234 : vec2<f32> = ((vec2<f32>(x_1227.x, x_1227.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1235 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1235.x, x_1234.x, x_1235.z, x_1234.y);
        let x_1237 : vec4<f32> = u_xlat7;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1237.x, x_1237.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1242 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1241.x, x_1242.y, x_1241.y, x_1242.w);
        let x_1245 : f32 = u_xlat49.x;
        u_xlat8.y = x_1245;
        let x_1248 : f32 = u_xlat10.y;
        u_xlat8.w = x_1248;
        let x_1250 : vec4<f32> = u_xlat8;
        let x_1251 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1250 + x_1251);
        let x_1253 : vec4<f32> = u_xlat7;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1253.y, x_1253.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1257 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1257.x, x_1256.x, x_1257.z, x_1256.y);
        let x_1259 : vec4<f32> = u_xlat7;
        let x_1262 : vec2<f32> = ((vec2<f32>(x_1259.y, x_1259.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1263 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1262.x, x_1263.y, x_1262.y, x_1263.w);
        let x_1266 : f32 = u_xlat49.y;
        u_xlat10.y = x_1266;
        let x_1268 : vec4<f32> = u_xlat10;
        let x_1269 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1268 + x_1269);
        let x_1271 : vec4<f32> = u_xlat8;
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1271 / x_1272);
        let x_1274 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1274 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1280 : vec4<f32> = u_xlat10;
        let x_1281 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1280 / x_1281);
        let x_1283 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1283 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1285 : vec4<f32> = u_xlat8;
        let x_1288 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1285.w, x_1285.x, x_1285.y, x_1285.z) * vec4<f32>(x_1288.x, x_1288.x, x_1288.x, x_1288.x));
        let x_1291 : vec4<f32> = u_xlat10;
        let x_1294 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1291.x, x_1291.w, x_1291.y, x_1291.z) * vec4<f32>(x_1294.y, x_1294.y, x_1294.y, x_1294.y));
        let x_1297 : vec4<f32> = u_xlat8;
        let x_1298 : vec3<f32> = vec3<f32>(x_1297.y, x_1297.z, x_1297.w);
        let x_1299 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1298.x, x_1299.y, x_1298.y, x_1298.z);
        let x_1302 : f32 = u_xlat10.x;
        u_xlat11.y = x_1302;
        let x_1304 : vec3<f32> = u_xlat26;
        let x_1307 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1310 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1304.x, x_1304.y, x_1304.x, x_1304.y) * vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y)) + vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1310.y));
        let x_1313 : vec3<f32> = u_xlat26;
        let x_1316 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat11;
        let x_1321 : vec2<f32> = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.w, x_1319.y));
        let x_1322 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1322.w);
        let x_1325 : f32 = u_xlat11.y;
        u_xlat8.y = x_1325;
        let x_1328 : f32 = u_xlat10.z;
        u_xlat11.y = x_1328;
        let x_1330 : vec3<f32> = u_xlat26;
        let x_1333 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1336 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.y) * vec4<f32>(x_1333.x, x_1333.y, x_1333.x, x_1333.y)) + vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1336.y));
        let x_1340 : vec3<f32> = u_xlat26;
        let x_1343 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1343.x, x_1343.y)) + vec2<f32>(x_1346.w, x_1346.y));
        let x_1350 : f32 = u_xlat11.y;
        u_xlat8.z = x_1350;
        let x_1352 : vec3<f32> = u_xlat26;
        let x_1355 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y) * vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y)) + vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.z));
        let x_1362 : f32 = u_xlat10.w;
        u_xlat11.y = x_1362;
        let x_1365 : vec3<f32> = u_xlat26;
        let x_1368 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1371 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1365.x, x_1365.y, x_1365.x, x_1365.y) * vec4<f32>(x_1368.x, x_1368.y, x_1368.x, x_1368.y)) + vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1371.y));
        let x_1375 : vec3<f32> = u_xlat26;
        let x_1378 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat11;
        u_xlat29 = ((vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(x_1378.x, x_1378.y)) + vec2<f32>(x_1381.w, x_1381.y));
        let x_1385 : f32 = u_xlat11.y;
        u_xlat8.w = x_1385;
        let x_1388 : vec3<f32> = u_xlat26;
        let x_1391 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1394 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1388.x, x_1388.y) * vec2<f32>(x_1391.x, x_1391.y)) + vec2<f32>(x_1394.x, x_1394.w));
        let x_1397 : vec4<f32> = u_xlat11;
        let x_1398 : vec3<f32> = vec3<f32>(x_1397.x, x_1397.z, x_1397.w);
        let x_1399 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1398.x, x_1399.y, x_1398.y, x_1398.z);
        let x_1401 : vec3<f32> = u_xlat26;
        let x_1404 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1407 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1401.x, x_1401.y, x_1401.x, x_1401.y) * vec4<f32>(x_1404.x, x_1404.y, x_1404.x, x_1404.y)) + vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1407.y));
        let x_1411 : vec3<f32> = u_xlat26;
        let x_1414 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1411.x, x_1411.y) * vec2<f32>(x_1414.x, x_1414.y)) + vec2<f32>(x_1417.w, x_1417.y));
        let x_1421 : f32 = u_xlat8.x;
        u_xlat10.x = x_1421;
        let x_1423 : vec3<f32> = u_xlat26;
        let x_1426 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1429 : vec4<f32> = u_xlat10;
        let x_1431 : vec2<f32> = ((vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(x_1426.x, x_1426.y)) + vec2<f32>(x_1429.x, x_1429.y));
        let x_1432 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1431.x, x_1431.y, x_1432.z);
        let x_1435 : vec4<f32> = u_xlat7;
        let x_1437 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1435.x, x_1435.x, x_1435.x, x_1435.x) * x_1437);
        let x_1440 : vec4<f32> = u_xlat7;
        let x_1442 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1440.y, x_1440.y, x_1440.y, x_1440.y) * x_1442);
        let x_1445 : vec4<f32> = u_xlat7;
        let x_1447 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1445.z, x_1445.z, x_1445.z, x_1445.z) * x_1447);
        let x_1449 : vec4<f32> = u_xlat7;
        let x_1451 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1449.w, x_1449.w, x_1449.w, x_1449.w) * x_1451);
        let x_1454 : vec4<f32> = u_xlat12;
        let x_1455 : vec2<f32> = vec2<f32>(x_1454.x, x_1454.y);
        let x_1457 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec13;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1464.xy, x_1464.z);
        u_xlat68 = x_1466;
        let x_1468 : vec4<f32> = u_xlat12;
        let x_1469 : vec2<f32> = vec2<f32>(x_1468.z, x_1468.w);
        let x_1471 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
        let x_1479 : vec3<f32> = txVec14;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1479.xy, x_1479.z);
        u_xlat69 = x_1481;
        let x_1482 : f32 = u_xlat69;
        let x_1484 : f32 = u_xlat18.y;
        u_xlat69 = (x_1482 * x_1484);
        let x_1487 : f32 = u_xlat18.x;
        let x_1488 : f32 = u_xlat68;
        let x_1490 : f32 = u_xlat69;
        u_xlat68 = ((x_1487 * x_1488) + x_1490);
        let x_1493 : vec4<f32> = u_xlat13;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec15;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1503.xy, x_1503.z);
        u_xlat69 = x_1505;
        let x_1507 : f32 = u_xlat18.z;
        let x_1508 : f32 = u_xlat69;
        let x_1510 : f32 = u_xlat68;
        u_xlat68 = ((x_1507 * x_1508) + x_1510);
        let x_1513 : vec4<f32> = u_xlat15;
        let x_1514 : vec2<f32> = vec2<f32>(x_1513.x, x_1513.y);
        let x_1516 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec16;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1523.xy, x_1523.z);
        u_xlat69 = x_1525;
        let x_1527 : f32 = u_xlat18.w;
        let x_1528 : f32 = u_xlat69;
        let x_1530 : f32 = u_xlat68;
        u_xlat68 = ((x_1527 * x_1528) + x_1530);
        let x_1533 : vec4<f32> = u_xlat14;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.x, x_1533.y);
        let x_1536 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec17;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1543.xy, x_1543.z);
        u_xlat69 = x_1545;
        let x_1547 : f32 = u_xlat19.x;
        let x_1548 : f32 = u_xlat69;
        let x_1550 : f32 = u_xlat68;
        u_xlat68 = ((x_1547 * x_1548) + x_1550);
        let x_1553 : vec4<f32> = u_xlat14;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.z, x_1553.w);
        let x_1556 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec18;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
        u_xlat69 = x_1565;
        let x_1567 : f32 = u_xlat19.y;
        let x_1568 : f32 = u_xlat69;
        let x_1570 : f32 = u_xlat68;
        u_xlat68 = ((x_1567 * x_1568) + x_1570);
        let x_1573 : vec2<f32> = u_xlat55;
        let x_1575 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec19;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1582.xy, x_1582.z);
        u_xlat69 = x_1584;
        let x_1586 : f32 = u_xlat19.z;
        let x_1587 : f32 = u_xlat69;
        let x_1589 : f32 = u_xlat68;
        u_xlat68 = ((x_1586 * x_1587) + x_1589);
        let x_1592 : vec4<f32> = u_xlat15;
        let x_1593 : vec2<f32> = vec2<f32>(x_1592.z, x_1592.w);
        let x_1595 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec20;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1602.xy, x_1602.z);
        u_xlat69 = x_1604;
        let x_1606 : f32 = u_xlat19.w;
        let x_1607 : f32 = u_xlat69;
        let x_1609 : f32 = u_xlat68;
        u_xlat68 = ((x_1606 * x_1607) + x_1609);
        let x_1612 : vec4<f32> = u_xlat16;
        let x_1613 : vec2<f32> = vec2<f32>(x_1612.x, x_1612.y);
        let x_1615 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1613.x, x_1613.y, x_1615);
        let x_1622 : vec3<f32> = txVec21;
        let x_1624 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1622.xy, x_1622.z);
        u_xlat69 = x_1624;
        let x_1626 : f32 = u_xlat20.x;
        let x_1627 : f32 = u_xlat69;
        let x_1629 : f32 = u_xlat68;
        u_xlat68 = ((x_1626 * x_1627) + x_1629);
        let x_1632 : vec4<f32> = u_xlat16;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.z, x_1632.w);
        let x_1635 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec22;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1642.xy, x_1642.z);
        u_xlat69 = x_1644;
        let x_1646 : f32 = u_xlat20.y;
        let x_1647 : f32 = u_xlat69;
        let x_1649 : f32 = u_xlat68;
        u_xlat68 = ((x_1646 * x_1647) + x_1649);
        let x_1652 : vec2<f32> = u_xlat29;
        let x_1654 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec23;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1661.xy, x_1661.z);
        u_xlat69 = x_1663;
        let x_1665 : f32 = u_xlat20.z;
        let x_1666 : f32 = u_xlat69;
        let x_1668 : f32 = u_xlat68;
        u_xlat68 = ((x_1665 * x_1666) + x_1668);
        let x_1671 : vec2<f32> = u_xlat17;
        let x_1673 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec24;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1680.xy, x_1680.z);
        u_xlat69 = x_1682;
        let x_1684 : f32 = u_xlat20.w;
        let x_1685 : f32 = u_xlat69;
        let x_1687 : f32 = u_xlat68;
        u_xlat68 = ((x_1684 * x_1685) + x_1687);
        let x_1690 : vec4<f32> = u_xlat11;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.x, x_1690.y);
        let x_1693 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec25;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1700.xy, x_1700.z);
        u_xlat69 = x_1702;
        let x_1704 : f32 = u_xlat7.x;
        let x_1705 : f32 = u_xlat69;
        let x_1707 : f32 = u_xlat68;
        u_xlat68 = ((x_1704 * x_1705) + x_1707);
        let x_1710 : vec4<f32> = u_xlat11;
        let x_1711 : vec2<f32> = vec2<f32>(x_1710.z, x_1710.w);
        let x_1713 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec26;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1720.xy, x_1720.z);
        u_xlat69 = x_1722;
        let x_1724 : f32 = u_xlat7.y;
        let x_1725 : f32 = u_xlat69;
        let x_1727 : f32 = u_xlat68;
        u_xlat68 = ((x_1724 * x_1725) + x_1727);
        let x_1730 : vec2<f32> = u_xlat52;
        let x_1732 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1730.x, x_1730.y, x_1732);
        let x_1739 : vec3<f32> = txVec27;
        let x_1741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1739.xy, x_1739.z);
        u_xlat69 = x_1741;
        let x_1743 : f32 = u_xlat7.z;
        let x_1744 : f32 = u_xlat69;
        let x_1746 : f32 = u_xlat68;
        u_xlat68 = ((x_1743 * x_1744) + x_1746);
        let x_1749 : vec3<f32> = u_xlat26;
        let x_1750 : vec2<f32> = vec2<f32>(x_1749.x, x_1749.y);
        let x_1752 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec28;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1759.xy, x_1759.z);
        u_xlat26.x = x_1761;
        let x_1764 : f32 = u_xlat7.w;
        let x_1766 : f32 = u_xlat26.x;
        let x_1768 : f32 = u_xlat68;
        u_xlat67 = ((x_1764 * x_1766) + x_1768);
      }
    }
  } else {
    let x_1772 : vec4<f32> = vs_INTERP8;
    let x_1773 : vec2<f32> = vec2<f32>(x_1772.x, x_1772.y);
    let x_1775 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1773.x, x_1773.y, x_1775);
    let x_1782 : vec3<f32> = txVec29;
    let x_1784 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1782.xy, x_1782.z);
    u_xlat67 = x_1784;
  }
  let x_1786 : f32 = x_553.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1786) + 1.0f);
  let x_1790 : f32 = u_xlat67;
  let x_1792 : f32 = x_553.x_MainLightShadowParams.x;
  let x_1795 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1790 * x_1792) + x_1795);
  let x_1798 : f32 = vs_INTERP8.z;
  u_xlatb26 = (0.0f >= x_1798);
  let x_1802 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_1802 >= 1.0f);
  let x_1804 : bool = u_xlatb47;
  let x_1805 : bool = u_xlatb26;
  u_xlatb26 = (x_1804 | x_1805);
  let x_1807 : bool = u_xlatb26;
  let x_1808 : f32 = u_xlat67;
  u_xlat67 = select(x_1808, 1.0f, x_1807);
  let x_1810 : vec3<f32> = vs_INTERP0;
  let x_1812 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1810 + -(x_1812));
  let x_1815 : vec3<f32> = u_xlat26;
  let x_1816 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1815, x_1816);
  let x_1820 : f32 = u_xlat26.x;
  let x_1822 : f32 = x_553.x_MainLightShadowParams.z;
  let x_1825 : f32 = x_553.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1820 * x_1822) + x_1825);
  let x_1829 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1829, 0.0f, 1.0f);
  let x_1832 : f32 = u_xlat67;
  u_xlat47 = (-(x_1832) + 1.0f);
  let x_1836 : f32 = u_xlat26.x;
  let x_1837 : f32 = u_xlat47;
  let x_1839 : f32 = u_xlat67;
  u_xlat67 = ((x_1836 * x_1837) + x_1839);
  let x_1841 : vec3<f32> = u_xlat5;
  let x_1844 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (vec3<f32>(x_1841.x, x_1841.x, x_1841.x) * vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
  let x_1847 : vec3<f32> = u_xlat3;
  let x_1849 : vec3<f32> = u_xlat22;
  u_xlat69 = dot(-(x_1847), x_1849);
  let x_1851 : f32 = u_xlat69;
  let x_1852 : f32 = u_xlat69;
  u_xlat69 = (x_1851 + x_1852);
  let x_1854 : vec3<f32> = u_xlat22;
  let x_1855 : f32 = u_xlat69;
  let x_1859 : vec3<f32> = u_xlat3;
  let x_1861 : vec3<f32> = ((x_1854 * -(vec3<f32>(x_1855, x_1855, x_1855))) + -(x_1859));
  let x_1862 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1862.w);
  let x_1864 : vec3<f32> = u_xlat22;
  let x_1865 : vec3<f32> = u_xlat3;
  u_xlat69 = dot(x_1864, x_1865);
  let x_1867 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1867, 0.0f, 1.0f);
  let x_1869 : f32 = u_xlat69;
  u_xlat69 = (-(x_1869) + 1.0f);
  let x_1872 : f32 = u_xlat69;
  let x_1873 : f32 = u_xlat69;
  u_xlat69 = (x_1872 * x_1873);
  let x_1875 : f32 = u_xlat69;
  let x_1876 : f32 = u_xlat69;
  u_xlat69 = (x_1875 * x_1876);
  let x_1880 : f32 = u_xlat0.x;
  u_xlat70 = ((-(x_1880) * 0.699999988f) + 1.700000048f);
  let x_1887 : f32 = u_xlat0.x;
  let x_1888 : f32 = u_xlat70;
  u_xlat0.x = (x_1887 * x_1888);
  let x_1892 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1892 * 6.0f);
  let x_1904 : vec4<f32> = u_xlat7;
  let x_1907 : f32 = u_xlat0.x;
  let x_1908 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1904.x, x_1904.y, x_1904.z), x_1907);
  u_xlat7 = x_1908;
  let x_1910 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1910 + -1.0f);
  let x_1914 : f32 = x_267.unity_SpecCube0_HDR.w;
  let x_1916 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1914 * x_1916) + 1.0f);
  let x_1921 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1921, 0.0f);
  let x_1925 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1925);
  let x_1929 : f32 = u_xlat0.x;
  let x_1931 : f32 = x_267.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1929 * x_1931);
  let x_1935 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1935);
  let x_1939 : f32 = u_xlat0.x;
  let x_1941 : f32 = x_267.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1939 * x_1941);
  let x_1944 : vec4<f32> = u_xlat7;
  let x_1946 : vec4<f32> = u_xlat0;
  let x_1948 : vec3<f32> = (vec3<f32>(x_1944.x, x_1944.y, x_1944.z) * vec3<f32>(x_1946.x, x_1946.x, x_1946.x));
  let x_1949 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1948.x, x_1948.y, x_1948.z, x_1949.w);
  let x_1951 : f32 = u_xlat42;
  let x_1953 : f32 = u_xlat42;
  let x_1957 : vec2<f32> = ((vec2<f32>(x_1951, x_1951) * vec2<f32>(x_1953, x_1953)) + vec2<f32>(-1.0f, 1.0f));
  let x_1958 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1957.x, x_1958.y, x_1957.y, x_1958.w);
  let x_1961 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_1961);
  let x_1963 : vec3<f32> = u_xlat2;
  let x_1965 : f32 = u_xlat65;
  let x_1967 : vec3<f32> = (-(x_1963) + vec3<f32>(x_1965, x_1965, x_1965));
  let x_1968 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
  let x_1970 : f32 = u_xlat69;
  let x_1972 : vec4<f32> = u_xlat8;
  let x_1975 : vec3<f32> = u_xlat2;
  let x_1976 : vec3<f32> = ((vec3<f32>(x_1970, x_1970, x_1970) * vec3<f32>(x_1972.x, x_1972.y, x_1972.z)) + x_1975);
  let x_1977 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1976.x, x_1976.y, x_1976.z, x_1977.w);
  let x_1979 : f32 = u_xlat42;
  let x_1981 : vec4<f32> = u_xlat8;
  let x_1983 : vec3<f32> = (vec3<f32>(x_1979, x_1979, x_1979) * vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1984 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
  let x_1986 : vec4<f32> = u_xlat7;
  let x_1988 : vec4<f32> = u_xlat8;
  let x_1990 : vec3<f32> = (vec3<f32>(x_1986.x, x_1986.y, x_1986.z) * vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
  let x_1991 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);
  let x_1993 : vec3<f32> = u_xlat4;
  let x_1994 : vec3<f32> = u_xlat6;
  let x_1996 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1993 * x_1994) + vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
  let x_1999 : f32 = u_xlat67;
  let x_2002 : f32 = x_267.unity_LightData.z;
  u_xlat42 = (x_1999 * x_2002);
  let x_2004 : vec3<f32> = u_xlat22;
  let x_2006 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_2004, vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
  let x_2009 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2009, 0.0f, 1.0f);
  let x_2011 : f32 = u_xlat42;
  let x_2012 : f32 = u_xlat65;
  u_xlat42 = (x_2011 * x_2012);
  let x_2014 : f32 = u_xlat42;
  let x_2016 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2014, x_2014, x_2014) * x_2016);
  let x_2018 : vec3<f32> = u_xlat3;
  let x_2020 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2022 : vec3<f32> = (x_2018 + vec3<f32>(x_2020.x, x_2020.y, x_2020.z));
  let x_2023 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2022.x, x_2022.y, x_2022.z, x_2023.w);
  let x_2025 : vec4<f32> = u_xlat7;
  let x_2027 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2025.x, x_2025.y, x_2025.z), vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
  let x_2030 : f32 = u_xlat42;
  u_xlat42 = max(x_2030, 1.17549435e-37f);
  let x_2033 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2033);
  let x_2035 : f32 = u_xlat42;
  let x_2037 : vec4<f32> = u_xlat7;
  let x_2039 : vec3<f32> = (vec3<f32>(x_2035, x_2035, x_2035) * vec3<f32>(x_2037.x, x_2037.y, x_2037.z));
  let x_2040 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
  let x_2042 : vec3<f32> = u_xlat22;
  let x_2043 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_2042, vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
  let x_2046 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2046, 0.0f, 1.0f);
  let x_2049 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2051 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2049.x, x_2049.y, x_2049.z), vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
  let x_2054 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2054, 0.0f, 1.0f);
  let x_2056 : f32 = u_xlat42;
  let x_2057 : f32 = u_xlat42;
  u_xlat42 = (x_2056 * x_2057);
  let x_2059 : f32 = u_xlat42;
  let x_2061 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2059 * x_2061) + 1.000010014f);
  let x_2065 : f32 = u_xlat65;
  let x_2066 : f32 = u_xlat65;
  u_xlat65 = (x_2065 * x_2066);
  let x_2068 : f32 = u_xlat42;
  let x_2069 : f32 = u_xlat42;
  u_xlat42 = (x_2068 * x_2069);
  let x_2071 : f32 = u_xlat65;
  u_xlat65 = max(x_2071, 0.100000001f);
  let x_2074 : f32 = u_xlat42;
  let x_2075 : f32 = u_xlat65;
  u_xlat42 = (x_2074 * x_2075);
  let x_2077 : f32 = u_xlat66;
  let x_2078 : f32 = u_xlat42;
  u_xlat42 = (x_2077 * x_2078);
  let x_2081 : f32 = u_xlat1.x;
  let x_2082 : f32 = u_xlat42;
  u_xlat42 = (x_2081 / x_2082);
  let x_2084 : vec3<f32> = u_xlat2;
  let x_2085 : f32 = u_xlat42;
  let x_2088 : vec3<f32> = u_xlat6;
  let x_2089 : vec3<f32> = ((x_2084 * vec3<f32>(x_2085, x_2085, x_2085)) + x_2088);
  let x_2090 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
  let x_2092 : vec3<f32> = u_xlat26;
  let x_2093 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2092 * vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
  let x_2097 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2099 : f32 = x_267.unity_LightData.y;
  u_xlat42 = min(x_2097, x_2099);
  let x_2103 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2103));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2115 : u32 = u_xlatu_loop_1;
    let x_2116 : u32 = u_xlatu42;
    if ((x_2115 < x_2116)) {
    } else {
      break;
    }
    let x_2119 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2119 >> 2u);
    let x_2123 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2123 & 3u));
    let x_2126 : u32 = u_xlatu67;
    let x_2129 : vec4<f32> = x_267.unity_LightIndices[bitcast<i32>(x_2126)];
    let x_2139 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2144 : vec4<u32> = indexable[x_2139];
    u_xlat67 = dot(x_2129, bitcast<vec4<f32>>(x_2144));
    let x_2148 : f32 = u_xlat67;
    u_xlati67 = i32(x_2148);
    let x_2150 : vec3<f32> = vs_INTERP0;
    let x_2162 : i32 = u_xlati67;
    let x_2164 : vec4<f32> = x_2161.x_AdditionalLightsPosition[x_2162];
    let x_2167 : i32 = u_xlati67;
    let x_2169 : vec4<f32> = x_2161.x_AdditionalLightsPosition[x_2167];
    let x_2171 : vec3<f32> = ((-(x_2150) * vec3<f32>(x_2164.w, x_2164.w, x_2164.w)) + vec3<f32>(x_2169.x, x_2169.y, x_2169.z));
    let x_2172 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
    let x_2174 : vec4<f32> = u_xlat8;
    let x_2176 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2174.x, x_2174.y, x_2174.z), vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
    let x_2179 : f32 = u_xlat69;
    u_xlat69 = max(x_2179, 6.10351562e-05f);
    let x_2182 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2182);
    let x_2184 : f32 = u_xlat70;
    let x_2186 : vec4<f32> = u_xlat8;
    let x_2188 : vec3<f32> = (vec3<f32>(x_2184, x_2184, x_2184) * vec3<f32>(x_2186.x, x_2186.y, x_2186.z));
    let x_2189 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2188.x, x_2188.y, x_2188.z, x_2189.w);
    let x_2192 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2192);
    let x_2194 : f32 = u_xlat69;
    let x_2195 : i32 = u_xlati67;
    let x_2197 : f32 = x_2161.x_AdditionalLightsAttenuation[x_2195].x;
    u_xlat69 = (x_2194 * x_2197);
    let x_2199 : f32 = u_xlat69;
    let x_2201 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2199) * x_2201) + 1.0f);
    let x_2204 : f32 = u_xlat69;
    u_xlat69 = max(x_2204, 0.0f);
    let x_2206 : f32 = u_xlat69;
    let x_2207 : f32 = u_xlat69;
    u_xlat69 = (x_2206 * x_2207);
    let x_2209 : f32 = u_xlat69;
    let x_2210 : f32 = u_xlat71;
    u_xlat69 = (x_2209 * x_2210);
    let x_2212 : i32 = u_xlati67;
    let x_2214 : vec4<f32> = x_2161.x_AdditionalLightsSpotDir[x_2212];
    let x_2216 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_2214.x, x_2214.y, x_2214.z), vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
    let x_2219 : f32 = u_xlat71;
    let x_2220 : i32 = u_xlati67;
    let x_2222 : f32 = x_2161.x_AdditionalLightsAttenuation[x_2220].z;
    let x_2224 : i32 = u_xlati67;
    let x_2226 : f32 = x_2161.x_AdditionalLightsAttenuation[x_2224].w;
    u_xlat71 = ((x_2219 * x_2222) + x_2226);
    let x_2228 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2228, 0.0f, 1.0f);
    let x_2230 : f32 = u_xlat71;
    let x_2231 : f32 = u_xlat71;
    u_xlat71 = (x_2230 * x_2231);
    let x_2233 : f32 = u_xlat69;
    let x_2234 : f32 = u_xlat71;
    u_xlat69 = (x_2233 * x_2234);
    let x_2236 : vec3<f32> = u_xlat5;
    let x_2238 : i32 = u_xlati67;
    let x_2240 : vec4<f32> = x_2161.x_AdditionalLightsColor[x_2238];
    let x_2242 : vec3<f32> = (vec3<f32>(x_2236.x, x_2236.x, x_2236.x) * vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
    let x_2243 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
    let x_2245 : vec3<f32> = u_xlat22;
    let x_2246 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(x_2245, vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
    let x_2249 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2249, 0.0f, 1.0f);
    let x_2251 : f32 = u_xlat67;
    let x_2252 : f32 = u_xlat69;
    u_xlat67 = (x_2251 * x_2252);
    let x_2254 : f32 = u_xlat67;
    let x_2256 : vec4<f32> = u_xlat10;
    let x_2258 : vec3<f32> = (vec3<f32>(x_2254, x_2254, x_2254) * vec3<f32>(x_2256.x, x_2256.y, x_2256.z));
    let x_2259 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
    let x_2261 : vec4<f32> = u_xlat8;
    let x_2263 : f32 = u_xlat70;
    let x_2266 : vec3<f32> = u_xlat3;
    let x_2267 : vec3<f32> = ((vec3<f32>(x_2261.x, x_2261.y, x_2261.z) * vec3<f32>(x_2263, x_2263, x_2263)) + x_2266);
    let x_2268 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
    let x_2270 : vec4<f32> = u_xlat8;
    let x_2272 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(vec3<f32>(x_2270.x, x_2270.y, x_2270.z), vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
    let x_2275 : f32 = u_xlat67;
    u_xlat67 = max(x_2275, 1.17549435e-37f);
    let x_2277 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2277);
    let x_2279 : f32 = u_xlat67;
    let x_2281 : vec4<f32> = u_xlat8;
    let x_2283 : vec3<f32> = (vec3<f32>(x_2279, x_2279, x_2279) * vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
    let x_2284 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
    let x_2286 : vec3<f32> = u_xlat22;
    let x_2287 : vec4<f32> = u_xlat8;
    u_xlat67 = dot(x_2286, vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
    let x_2290 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2290, 0.0f, 1.0f);
    let x_2292 : vec4<f32> = u_xlat9;
    let x_2294 : vec4<f32> = u_xlat8;
    u_xlat69 = dot(vec3<f32>(x_2292.x, x_2292.y, x_2292.z), vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
    let x_2297 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2297, 0.0f, 1.0f);
    let x_2299 : f32 = u_xlat67;
    let x_2300 : f32 = u_xlat67;
    u_xlat67 = (x_2299 * x_2300);
    let x_2302 : f32 = u_xlat67;
    let x_2304 : f32 = u_xlat0.x;
    u_xlat67 = ((x_2302 * x_2304) + 1.000010014f);
    let x_2307 : f32 = u_xlat69;
    let x_2308 : f32 = u_xlat69;
    u_xlat69 = (x_2307 * x_2308);
    let x_2310 : f32 = u_xlat67;
    let x_2311 : f32 = u_xlat67;
    u_xlat67 = (x_2310 * x_2311);
    let x_2313 : f32 = u_xlat69;
    u_xlat69 = max(x_2313, 0.100000001f);
    let x_2315 : f32 = u_xlat67;
    let x_2316 : f32 = u_xlat69;
    u_xlat67 = (x_2315 * x_2316);
    let x_2318 : f32 = u_xlat66;
    let x_2319 : f32 = u_xlat67;
    u_xlat67 = (x_2318 * x_2319);
    let x_2322 : f32 = u_xlat1.x;
    let x_2323 : f32 = u_xlat67;
    u_xlat67 = (x_2322 / x_2323);
    let x_2325 : vec3<f32> = u_xlat2;
    let x_2326 : f32 = u_xlat67;
    let x_2329 : vec3<f32> = u_xlat6;
    let x_2330 : vec3<f32> = ((x_2325 * vec3<f32>(x_2326, x_2326, x_2326)) + x_2329);
    let x_2331 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
    let x_2333 : vec4<f32> = u_xlat8;
    let x_2335 : vec4<f32> = u_xlat10;
    let x_2338 : vec4<f32> = u_xlat7;
    let x_2340 : vec3<f32> = ((vec3<f32>(x_2333.x, x_2333.y, x_2333.z) * vec3<f32>(x_2335.x, x_2335.y, x_2335.z)) + vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
    let x_2341 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);

    continuing {
      let x_2343 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2343 + bitcast<u32>(1i));
    }
  }
  let x_2345 : vec3<f32> = u_xlat4;
  let x_2346 : f32 = u_xlat63;
  let x_2349 : vec3<f32> = u_xlat26;
  let x_2350 : vec3<f32> = ((x_2345 * vec3<f32>(x_2346, x_2346, x_2346)) + x_2349);
  let x_2351 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2350.x, x_2351.y, x_2350.y, x_2350.z);
  let x_2353 : vec4<f32> = u_xlat7;
  let x_2355 : vec4<f32> = u_xlat0;
  let x_2357 : vec3<f32> = (vec3<f32>(x_2353.x, x_2353.y, x_2353.z) + vec3<f32>(x_2355.x, x_2355.z, x_2355.w));
  let x_2358 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2357.x, x_2358.y, x_2357.y, x_2357.z);
  let x_2361 : f32 = u_xlat21.x;
  let x_2363 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2361 * -(x_2363));
  let x_2368 : f32 = u_xlat21.x;
  u_xlat21.x = exp2(x_2368);
  let x_2371 : vec4<f32> = u_xlat0;
  let x_2375 : vec4<f32> = x_44.unity_FogColor;
  let x_2378 : vec3<f32> = (vec3<f32>(x_2371.x, x_2371.z, x_2371.w) + -(vec3<f32>(x_2375.x, x_2375.y, x_2375.z)));
  let x_2379 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2378.x, x_2379.y, x_2378.y, x_2378.z);
  let x_2383 : vec2<f32> = u_xlat21;
  let x_2385 : vec4<f32> = u_xlat0;
  let x_2389 : vec4<f32> = x_44.unity_FogColor;
  let x_2391 : vec3<f32> = ((vec3<f32>(x_2383.x, x_2383.x, x_2383.x) * vec3<f32>(x_2385.x, x_2385.z, x_2385.w)) + vec3<f32>(x_2389.x, x_2389.y, x_2389.z));
  let x_2392 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2391.x, x_2391.y, x_2391.z, x_2392.w);
  let x_2397 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_2399 : f32 = x_267.unity_RenderingLayer.x;
  u_xlatu0 = (x_2397 & bitcast<u32>(x_2399));
  let x_2402 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2402);
  let x_2407 : f32 = u_xlat0.x;
  let x_2409 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2407 * x_2409);
  let x_2414 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2414, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2419 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2419.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

