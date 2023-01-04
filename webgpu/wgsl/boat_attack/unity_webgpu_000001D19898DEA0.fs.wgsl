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

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_540 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_940 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb12 : vec3<bool>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat22 : f32;
  var x_359 : f32;
  var x_372 : f32;
  var x_383 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb5 : bool;
  var u_xlatb16 : bool;
  var u_xlat16 : f32;
  var u_xlat38 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatu11 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat10 : vec3<f32>;
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
  u_xlat23 = (x_87 + x_90);
  let x_92 : f32 = u_xlat23;
  u_xlat23 = clamp(x_92, 0.0f, 1.0f);
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
  let x_172 : f32 = u_xlat23;
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
  u_xlat11 = ((vec2<f32>(x_218.x, x_218.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_226 : vec2<f32> = u_xlat11;
  let x_227 : vec2<f32> = u_xlat11;
  u_xlat23 = dot(x_226, x_227);
  let x_229 : f32 = u_xlat23;
  u_xlat23 = min(x_229, 1.0f);
  let x_231 : f32 = u_xlat23;
  u_xlat23 = (-(x_231) + 1.0f);
  let x_234 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_234);
  let x_236 : f32 = u_xlat23;
  u_xlat23 = max(x_236, 1.00000002e-16f);
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
  u_xlatb12.x = (0.0f < x_261);
  let x_269 : f32 = x_267.unity_WorldTransformParams.w;
  u_xlatb12.z = (x_269 >= 0.0f);
  let x_274 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_274);
  let x_278 : bool = u_xlatb12.z;
  u_xlat12.z = select(-1.0f, 1.0f, x_278);
  let x_282 : f32 = u_xlat12.z;
  let x_284 : f32 = u_xlat12.x;
  u_xlat12.x = (x_282 * x_284);
  let x_289 : vec3<f32> = vs_INTERP1;
  let x_291 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_289.z, x_289.x, x_289.y) * vec3<f32>(x_291.y, x_291.z, x_291.x));
  let x_294 : vec3<f32> = vs_INTERP1;
  let x_296 : vec4<f32> = vs_INTERP2;
  let x_299 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_294.y, x_294.z, x_294.x) * vec3<f32>(x_296.z, x_296.x, x_296.y)) + -(x_299));
  let x_302 : vec3<f32> = u_xlat12;
  let x_304 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304);
  let x_306 : vec2<f32> = u_xlat11;
  let x_308 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_306.y, x_306.y, x_306.y) * x_308);
  let x_310 : vec2<f32> = u_xlat11;
  let x_312 : vec4<f32> = vs_INTERP2;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_312.x, x_312.y, x_312.z)) + x_315);
  let x_317 : f32 = u_xlat23;
  let x_319 : vec3<f32> = vs_INTERP1;
  let x_321 : vec3<f32> = u_xlat3;
  u_xlat12 = ((vec3<f32>(x_317, x_317, x_317) * x_319) + x_321);
  let x_323 : vec3<f32> = u_xlat12;
  let x_324 : vec3<f32> = u_xlat12;
  u_xlat11.x = dot(x_323, x_324);
  let x_328 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_328);
  let x_331 : vec2<f32> = u_xlat11;
  let x_333 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_331.x, x_331.x, x_331.x) * x_333);
  let x_338 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb11 = (x_338 == 0.0f);
  let x_341 : vec3<f32> = vs_INTERP0;
  let x_346 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_341) + x_346);
  let x_349 : vec3<f32> = u_xlat3;
  let x_350 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(x_349, x_350);
  let x_352 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_352);
  let x_354 : f32 = u_xlat22;
  let x_356 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_354, x_354, x_354) * x_356);
  let x_358 : bool = u_xlatb11;
  if (x_358) {
    let x_363 : f32 = u_xlat3.x;
    x_359 = x_363;
  } else {
    let x_368 : f32 = x_44.unity_MatrixV[0i].z;
    x_359 = x_368;
  }
  let x_369 : f32 = x_359;
  u_xlat4.x = x_369;
  let x_371 : bool = u_xlatb11;
  if (x_371) {
    let x_376 : f32 = u_xlat3.y;
    x_372 = x_376;
  } else {
    let x_379 : f32 = x_44.unity_MatrixV[1i].z;
    x_372 = x_379;
  }
  let x_380 : f32 = x_372;
  u_xlat4.y = x_380;
  let x_382 : bool = u_xlatb11;
  if (x_382) {
    let x_387 : f32 = u_xlat3.z;
    x_383 = x_387;
  } else {
    let x_391 : f32 = x_44.unity_MatrixV[2i].z;
    x_383 = x_391;
  }
  let x_392 : f32 = x_383;
  u_xlat4.z = x_392;
  let x_401 : vec2<f32> = vs_INTERP4;
  let x_403 : f32 = x_44.x_GlobalMipBias.x;
  let x_404 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_401, x_403);
  u_xlat3 = vec3<f32>(x_404.x, x_404.y, x_404.z);
  let x_408 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_409 : vec2<f32> = vec2<f32>(x_408.x, x_408.y);
  u_xlat11 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_409.x, x_409.y));
  let x_414 : vec2<f32> = u_xlat11;
  let x_415 : vec4<f32> = hlslcc_FragCoord;
  let x_417 : vec2<f32> = (x_414 * vec2<f32>(x_415.x, x_415.y));
  let x_418 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_417.x, x_417.y, x_418.z);
  let x_421 : f32 = u_xlat5.y;
  let x_424 : f32 = x_44.x_ScaleBiasRt.x;
  let x_427 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat11.x = ((x_421 * x_424) + x_427);
  let x_431 : f32 = u_xlat11.x;
  u_xlat5.z = (-(x_431) + 1.0f);
  let x_436 : f32 = u_xlat0.x;
  u_xlat11.x = ((-(x_436) * 0.959999979f) + 0.959999979f);
  let x_443 : f32 = u_xlat11.x;
  let x_446 : f32 = u_xlat1.x;
  u_xlat22 = (-(x_443) + x_446);
  let x_449 : vec2<f32> = u_xlat11;
  let x_451 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_449.x, x_449.x, x_449.x) * x_451);
  let x_453 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_453 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_457 : vec4<f32> = u_xlat0;
  let x_459 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_457.x, x_457.x, x_457.x) * x_459) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_465 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_465) + 1.0f);
  let x_470 : f32 = u_xlat0.x;
  let x_472 : f32 = u_xlat0.x;
  u_xlat11.x = (x_470 * x_472);
  let x_476 : f32 = u_xlat11.x;
  let x_478 : f32 = u_xlat11.x;
  u_xlat1.x = (x_476 * x_478);
  let x_481 : f32 = u_xlat22;
  u_xlat22 = (x_481 + 1.0f);
  let x_483 : f32 = u_xlat22;
  u_xlat22 = min(x_483, 1.0f);
  let x_487 : f32 = u_xlat11.x;
  u_xlat35 = ((x_487 * 4.0f) + 2.0f);
  let x_497 : vec3<f32> = u_xlat5;
  let x_500 : f32 = x_44.x_GlobalMipBias.x;
  let x_501 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_497.x, x_497.z), x_500);
  u_xlat36 = x_501.x;
  let x_504 : f32 = u_xlat36;
  u_xlat37 = (x_504 + -1.0f);
  let x_507 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_508 : f32 = u_xlat37;
  u_xlat37 = ((x_507 * x_508) + 1.0f);
  let x_513 : f32 = u_xlat0.w;
  let x_514 : f32 = u_xlat36;
  u_xlat33 = min(x_513, x_514);
  let x_518 : vec4<f32> = vs_INTERP8;
  let x_519 : vec2<f32> = vec2<f32>(x_518.x, x_518.y);
  let x_521 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_519.x, x_519.y, x_521);
  let x_533 : vec3<f32> = txVec0;
  let x_535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_533.xy, x_533.z);
  u_xlat36 = x_535;
  let x_542 : f32 = x_540.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_542) + 1.0f);
  let x_546 : f32 = u_xlat36;
  let x_548 : f32 = x_540.x_MainLightShadowParams.x;
  let x_551 : f32 = u_xlat5.x;
  u_xlat36 = ((x_546 * x_548) + x_551);
  let x_555 : f32 = vs_INTERP8.z;
  u_xlatb5 = (0.0f >= x_555);
  let x_559 : f32 = vs_INTERP8.z;
  u_xlatb16 = (x_559 >= 1.0f);
  let x_561 : bool = u_xlatb16;
  let x_562 : bool = u_xlatb5;
  u_xlatb5 = (x_561 | x_562);
  let x_564 : bool = u_xlatb5;
  let x_565 : f32 = u_xlat36;
  u_xlat36 = select(x_565, 1.0f, x_564);
  let x_567 : vec3<f32> = vs_INTERP0;
  let x_569 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat5 = (x_567 + -(x_569));
  let x_572 : vec3<f32> = u_xlat5;
  let x_573 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_572, x_573);
  let x_577 : f32 = u_xlat5.x;
  let x_579 : f32 = x_540.x_MainLightShadowParams.z;
  let x_582 : f32 = x_540.x_MainLightShadowParams.w;
  u_xlat5.x = ((x_577 * x_579) + x_582);
  let x_586 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_586, 0.0f, 1.0f);
  let x_590 : f32 = u_xlat36;
  u_xlat16 = (-(x_590) + 1.0f);
  let x_594 : f32 = u_xlat5.x;
  let x_595 : f32 = u_xlat16;
  let x_597 : f32 = u_xlat36;
  u_xlat36 = ((x_594 * x_595) + x_597);
  let x_599 : f32 = u_xlat37;
  let x_602 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat5 = (vec3<f32>(x_599, x_599, x_599) * vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_606 : vec3<f32> = u_xlat4;
  let x_608 : vec3<f32> = u_xlat12;
  u_xlat38 = dot(-(x_606), x_608);
  let x_610 : f32 = u_xlat38;
  let x_611 : f32 = u_xlat38;
  u_xlat38 = (x_610 + x_611);
  let x_614 : vec3<f32> = u_xlat12;
  let x_615 : f32 = u_xlat38;
  let x_619 : vec3<f32> = u_xlat4;
  let x_621 : vec3<f32> = ((x_614 * -(vec3<f32>(x_615, x_615, x_615))) + -(x_619));
  let x_622 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec3<f32> = u_xlat12;
  let x_625 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(x_624, x_625);
  let x_627 : f32 = u_xlat38;
  u_xlat38 = clamp(x_627, 0.0f, 1.0f);
  let x_629 : f32 = u_xlat38;
  u_xlat38 = (-(x_629) + 1.0f);
  let x_632 : f32 = u_xlat38;
  let x_633 : f32 = u_xlat38;
  u_xlat38 = (x_632 * x_633);
  let x_635 : f32 = u_xlat38;
  let x_636 : f32 = u_xlat38;
  u_xlat38 = (x_635 * x_636);
  let x_640 : f32 = u_xlat0.x;
  u_xlat39 = ((-(x_640) * 0.699999988f) + 1.700000048f);
  let x_647 : f32 = u_xlat0.x;
  let x_648 : f32 = u_xlat39;
  u_xlat0.x = (x_647 * x_648);
  let x_652 : f32 = u_xlat0.x;
  u_xlat0.x = (x_652 * 6.0f);
  let x_664 : vec4<f32> = u_xlat7;
  let x_667 : f32 = u_xlat0.x;
  let x_668 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_664.x, x_664.y, x_664.z), x_667);
  u_xlat7 = x_668;
  let x_670 : f32 = u_xlat7.w;
  u_xlat0.x = (x_670 + -1.0f);
  let x_674 : f32 = x_267.unity_SpecCube0_HDR.w;
  let x_676 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_674 * x_676) + 1.0f);
  let x_681 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_681, 0.0f);
  let x_685 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_685);
  let x_689 : f32 = u_xlat0.x;
  let x_691 : f32 = x_267.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_689 * x_691);
  let x_695 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_695);
  let x_699 : f32 = u_xlat0.x;
  let x_701 : f32 = x_267.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_699 * x_701);
  let x_704 : vec4<f32> = u_xlat7;
  let x_706 : vec4<f32> = u_xlat0;
  let x_708 : vec3<f32> = (vec3<f32>(x_704.x, x_704.y, x_704.z) * vec3<f32>(x_706.x, x_706.x, x_706.x));
  let x_709 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec2<f32> = u_xlat11;
  let x_713 : vec2<f32> = u_xlat11;
  let x_717 : vec2<f32> = ((vec2<f32>(x_711.x, x_711.x) * vec2<f32>(x_713.x, x_713.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
  let x_721 : f32 = u_xlat0.y;
  u_xlat11.x = (1.0f / x_721);
  let x_725 : vec3<f32> = u_xlat2;
  let x_727 : f32 = u_xlat22;
  u_xlat8 = (-(x_725) + vec3<f32>(x_727, x_727, x_727));
  let x_730 : f32 = u_xlat38;
  let x_732 : vec3<f32> = u_xlat8;
  let x_734 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_730, x_730, x_730) * x_732) + x_734);
  let x_736 : vec2<f32> = u_xlat11;
  let x_738 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_736.x, x_736.x, x_736.x) * x_738);
  let x_740 : vec4<f32> = u_xlat7;
  let x_742 : vec3<f32> = u_xlat8;
  let x_743 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) * x_742);
  let x_744 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : vec3<f32> = u_xlat3;
  let x_747 : vec3<f32> = u_xlat6;
  let x_749 : vec4<f32> = u_xlat7;
  u_xlat3 = ((x_746 * x_747) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : f32 = u_xlat36;
  let x_755 : f32 = x_267.unity_LightData.z;
  u_xlat11.x = (x_752 * x_755);
  let x_758 : vec3<f32> = u_xlat12;
  let x_760 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22 = dot(x_758, vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : f32 = u_xlat22;
  u_xlat22 = clamp(x_763, 0.0f, 1.0f);
  let x_765 : f32 = u_xlat22;
  let x_767 : f32 = u_xlat11.x;
  u_xlat11.x = (x_765 * x_767);
  let x_770 : vec2<f32> = u_xlat11;
  let x_772 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_770.x, x_770.x, x_770.x) * x_772);
  let x_774 : vec3<f32> = u_xlat4;
  let x_776 : vec4<f32> = x_44.x_MainLightPosition;
  let x_778 : vec3<f32> = (x_774 + vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : vec4<f32> = u_xlat7;
  let x_783 : vec4<f32> = u_xlat7;
  u_xlat11.x = dot(vec3<f32>(x_781.x, x_781.y, x_781.z), vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_788 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_788, 1.17549435e-37f);
  let x_793 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_793);
  let x_796 : vec2<f32> = u_xlat11;
  let x_798 : vec4<f32> = u_xlat7;
  let x_800 : vec3<f32> = (vec3<f32>(x_796.x, x_796.x, x_796.x) * vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec3<f32> = u_xlat12;
  let x_804 : vec4<f32> = u_xlat7;
  u_xlat11.x = dot(x_803, vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_809 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_809, 0.0f, 1.0f);
  let x_813 : vec4<f32> = x_44.x_MainLightPosition;
  let x_815 : vec4<f32> = u_xlat7;
  u_xlat11.y = dot(vec3<f32>(x_813.x, x_813.y, x_813.z), vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_820 : f32 = u_xlat11.y;
  u_xlat11.y = clamp(x_820, 0.0f, 1.0f);
  let x_823 : vec2<f32> = u_xlat11;
  let x_824 : vec2<f32> = u_xlat11;
  u_xlat11 = (x_823 * x_824);
  let x_827 : f32 = u_xlat11.x;
  let x_829 : f32 = u_xlat0.x;
  u_xlat11.x = ((x_827 * x_829) + 1.000010014f);
  let x_835 : f32 = u_xlat11.x;
  let x_837 : f32 = u_xlat11.x;
  u_xlat11.x = (x_835 * x_837);
  let x_841 : f32 = u_xlat11.y;
  u_xlat22 = max(x_841, 0.100000001f);
  let x_844 : f32 = u_xlat22;
  let x_846 : f32 = u_xlat11.x;
  u_xlat11.x = (x_844 * x_846);
  let x_849 : f32 = u_xlat35;
  let x_851 : f32 = u_xlat11.x;
  u_xlat11.x = (x_849 * x_851);
  let x_855 : f32 = u_xlat1.x;
  let x_857 : f32 = u_xlat11.x;
  u_xlat11.x = (x_855 / x_857);
  let x_860 : vec3<f32> = u_xlat2;
  let x_861 : vec2<f32> = u_xlat11;
  let x_864 : vec3<f32> = u_xlat6;
  let x_865 : vec3<f32> = ((x_860 * vec3<f32>(x_861.x, x_861.x, x_861.x)) + x_864);
  let x_866 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec3<f32> = u_xlat5;
  let x_869 : vec4<f32> = u_xlat7;
  u_xlat5 = (x_868 * vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_873 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_875 : f32 = x_267.unity_LightData.y;
  u_xlat11.x = min(x_873, x_875);
  let x_881 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_881));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_893 : u32 = u_xlatu_loop_1;
    let x_894 : u32 = u_xlatu11;
    if ((x_893 < x_894)) {
    } else {
      break;
    }
    let x_897 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_897 >> 2u);
    let x_901 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_901 & 3u));
    let x_905 : u32 = u_xlatu36;
    let x_908 : vec4<f32> = x_267.unity_LightIndices[bitcast<i32>(x_905)];
    let x_918 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_923 : vec4<u32> = indexable[x_918];
    u_xlat36 = dot(x_908, bitcast<vec4<f32>>(x_923));
    let x_927 : f32 = u_xlat36;
    u_xlati36 = i32(x_927);
    let x_929 : vec3<f32> = vs_INTERP0;
    let x_941 : i32 = u_xlati36;
    let x_943 : vec4<f32> = x_940.x_AdditionalLightsPosition[x_941];
    let x_946 : i32 = u_xlati36;
    let x_948 : vec4<f32> = x_940.x_AdditionalLightsPosition[x_946];
    u_xlat8 = ((-(x_929) * vec3<f32>(x_943.w, x_943.w, x_943.w)) + vec3<f32>(x_948.x, x_948.y, x_948.z));
    let x_951 : vec3<f32> = u_xlat8;
    let x_952 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_951, x_952);
    let x_954 : f32 = u_xlat38;
    u_xlat38 = max(x_954, 6.10351562e-05f);
    let x_957 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_957);
    let x_960 : f32 = u_xlat39;
    let x_962 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_960, x_960, x_960) * x_962);
    let x_965 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_965);
    let x_967 : f32 = u_xlat38;
    let x_968 : i32 = u_xlati36;
    let x_970 : f32 = x_940.x_AdditionalLightsAttenuation[x_968].x;
    u_xlat38 = (x_967 * x_970);
    let x_972 : f32 = u_xlat38;
    let x_974 : f32 = u_xlat38;
    u_xlat38 = ((-(x_972) * x_974) + 1.0f);
    let x_977 : f32 = u_xlat38;
    u_xlat38 = max(x_977, 0.0f);
    let x_979 : f32 = u_xlat38;
    let x_980 : f32 = u_xlat38;
    u_xlat38 = (x_979 * x_980);
    let x_982 : f32 = u_xlat38;
    let x_983 : f32 = u_xlat40;
    u_xlat38 = (x_982 * x_983);
    let x_985 : i32 = u_xlati36;
    let x_987 : vec4<f32> = x_940.x_AdditionalLightsSpotDir[x_985];
    let x_989 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_987.x, x_987.y, x_987.z), x_989);
    let x_991 : f32 = u_xlat40;
    let x_992 : i32 = u_xlati36;
    let x_994 : f32 = x_940.x_AdditionalLightsAttenuation[x_992].z;
    let x_996 : i32 = u_xlati36;
    let x_998 : f32 = x_940.x_AdditionalLightsAttenuation[x_996].w;
    u_xlat40 = ((x_991 * x_994) + x_998);
    let x_1000 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1000, 0.0f, 1.0f);
    let x_1002 : f32 = u_xlat40;
    let x_1003 : f32 = u_xlat40;
    u_xlat40 = (x_1002 * x_1003);
    let x_1005 : f32 = u_xlat38;
    let x_1006 : f32 = u_xlat40;
    u_xlat38 = (x_1005 * x_1006);
    let x_1009 : f32 = u_xlat37;
    let x_1011 : i32 = u_xlati36;
    let x_1013 : vec4<f32> = x_940.x_AdditionalLightsColor[x_1011];
    u_xlat10 = (vec3<f32>(x_1009, x_1009, x_1009) * vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
    let x_1016 : vec3<f32> = u_xlat12;
    let x_1017 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_1016, x_1017);
    let x_1019 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1019, 0.0f, 1.0f);
    let x_1021 : f32 = u_xlat36;
    let x_1022 : f32 = u_xlat38;
    u_xlat36 = (x_1021 * x_1022);
    let x_1024 : f32 = u_xlat36;
    let x_1026 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1024, x_1024, x_1024) * x_1026);
    let x_1028 : vec3<f32> = u_xlat8;
    let x_1029 : f32 = u_xlat39;
    let x_1032 : vec3<f32> = u_xlat4;
    u_xlat8 = ((x_1028 * vec3<f32>(x_1029, x_1029, x_1029)) + x_1032);
    let x_1034 : vec3<f32> = u_xlat8;
    let x_1035 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1034, x_1035);
    let x_1037 : f32 = u_xlat36;
    u_xlat36 = max(x_1037, 1.17549435e-37f);
    let x_1039 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1039);
    let x_1041 : f32 = u_xlat36;
    let x_1043 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1041, x_1041, x_1041) * x_1043);
    let x_1045 : vec3<f32> = u_xlat12;
    let x_1046 : vec3<f32> = u_xlat8;
    u_xlat36 = dot(x_1045, x_1046);
    let x_1048 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1048, 0.0f, 1.0f);
    let x_1050 : vec3<f32> = u_xlat9;
    let x_1051 : vec3<f32> = u_xlat8;
    u_xlat38 = dot(x_1050, x_1051);
    let x_1053 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1053, 0.0f, 1.0f);
    let x_1055 : f32 = u_xlat36;
    let x_1056 : f32 = u_xlat36;
    u_xlat36 = (x_1055 * x_1056);
    let x_1058 : f32 = u_xlat36;
    let x_1060 : f32 = u_xlat0.x;
    u_xlat36 = ((x_1058 * x_1060) + 1.000010014f);
    let x_1063 : f32 = u_xlat38;
    let x_1064 : f32 = u_xlat38;
    u_xlat38 = (x_1063 * x_1064);
    let x_1066 : f32 = u_xlat36;
    let x_1067 : f32 = u_xlat36;
    u_xlat36 = (x_1066 * x_1067);
    let x_1069 : f32 = u_xlat38;
    u_xlat38 = max(x_1069, 0.100000001f);
    let x_1071 : f32 = u_xlat36;
    let x_1072 : f32 = u_xlat38;
    u_xlat36 = (x_1071 * x_1072);
    let x_1074 : f32 = u_xlat35;
    let x_1075 : f32 = u_xlat36;
    u_xlat36 = (x_1074 * x_1075);
    let x_1078 : f32 = u_xlat1.x;
    let x_1079 : f32 = u_xlat36;
    u_xlat36 = (x_1078 / x_1079);
    let x_1081 : vec3<f32> = u_xlat2;
    let x_1082 : f32 = u_xlat36;
    let x_1085 : vec3<f32> = u_xlat6;
    u_xlat8 = ((x_1081 * vec3<f32>(x_1082, x_1082, x_1082)) + x_1085);
    let x_1087 : vec3<f32> = u_xlat8;
    let x_1088 : vec3<f32> = u_xlat10;
    let x_1090 : vec4<f32> = u_xlat7;
    let x_1092 : vec3<f32> = ((x_1087 * x_1088) + vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
    let x_1093 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);

    continuing {
      let x_1095 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1095 + bitcast<u32>(1i));
    }
  }
  let x_1097 : vec3<f32> = u_xlat3;
  let x_1098 : f32 = u_xlat33;
  let x_1101 : vec3<f32> = u_xlat5;
  let x_1102 : vec3<f32> = ((x_1097 * vec3<f32>(x_1098, x_1098, x_1098)) + x_1101);
  let x_1103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1107 : vec4<f32> = u_xlat7;
  let x_1109 : vec4<f32> = u_xlat0;
  let x_1111 : vec3<f32> = (vec3<f32>(x_1107.x, x_1107.y, x_1107.z) + vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1117 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1119 : f32 = x_267.unity_RenderingLayer.x;
  u_xlatu0 = (x_1117 & bitcast<u32>(x_1119));
  let x_1122 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1122);
  let x_1127 : f32 = u_xlat0.x;
  let x_1130 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1127 * x_1130);
  let x_1135 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1135, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1140 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1140.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

