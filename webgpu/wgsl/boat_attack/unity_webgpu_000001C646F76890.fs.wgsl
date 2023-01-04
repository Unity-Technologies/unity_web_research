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

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(3) var<uniform> x_573 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_947 : AdditionalLights;

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
  var x_371 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb27 : bool;
  var u_xlat27 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu37 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati37 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat41 : f32;
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
  let x_361 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_361;
  let x_364 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_364;
  let x_368 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_368;
  let x_370 : bool = u_xlatb11;
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
  u_xlat11.x = (x_379 * x_381);
  let x_385 : f32 = x_44.unity_MatrixV[0i].z;
  let x_387 : f32 = vs_INTERP0.x;
  let x_390 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_385 * x_387) + x_390);
  let x_394 : f32 = x_44.unity_MatrixV[2i].z;
  let x_396 : f32 = vs_INTERP0.z;
  let x_399 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_394 * x_396) + x_399);
  let x_403 : f32 = u_xlat11.x;
  let x_405 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat11.x = (x_403 + x_405);
  let x_409 : f32 = u_xlat11.x;
  let x_413 : f32 = x_44.x_ProjectionParams.y;
  u_xlat11.x = (-(x_409) + -(x_413));
  let x_418 : f32 = u_xlat11.x;
  u_xlat11.x = max(x_418, 0.0f);
  let x_422 : f32 = u_xlat11.x;
  let x_425 : f32 = x_44.unity_FogParams.x;
  u_xlat11.x = (x_422 * x_425);
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
  u_xlat22 = ((x_458 * x_461) + x_464);
  let x_466 : f32 = u_xlat22;
  u_xlat5.z = (-(x_466) + 1.0f);
  let x_471 : f32 = u_xlat0.x;
  u_xlat22 = ((-(x_471) * 0.959999979f) + 0.959999979f);
  let x_477 : f32 = u_xlat22;
  let x_480 : f32 = u_xlat1.x;
  u_xlat35 = (-(x_477) + x_480);
  let x_483 : f32 = u_xlat22;
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
  u_xlat22 = (x_504 * x_506);
  let x_508 : f32 = u_xlat22;
  let x_509 : f32 = u_xlat22;
  u_xlat1.x = (x_508 * x_509);
  let x_512 : f32 = u_xlat35;
  u_xlat35 = (x_512 + 1.0f);
  let x_514 : f32 = u_xlat35;
  u_xlat35 = min(x_514, 1.0f);
  let x_517 : f32 = u_xlat22;
  u_xlat36 = ((x_517 * 4.0f) + 2.0f);
  let x_527 : vec3<f32> = u_xlat5;
  let x_530 : f32 = x_44.x_GlobalMipBias.x;
  let x_531 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_527.x, x_527.z), x_530);
  u_xlat37 = x_531.x;
  let x_533 : f32 = u_xlat37;
  u_xlat5.x = (x_533 + -1.0f);
  let x_537 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_539 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_537 * x_539) + 1.0f);
  let x_545 : f32 = u_xlat0.w;
  let x_546 : f32 = u_xlat37;
  u_xlat33 = min(x_545, x_546);
  let x_550 : vec4<f32> = vs_INTERP8;
  let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
  let x_553 : f32 = vs_INTERP8.z;
  txVec0 = vec3<f32>(x_551.x, x_551.y, x_553);
  let x_565 : vec3<f32> = txVec0;
  let x_567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_565.xy, x_565.z);
  u_xlat37 = x_567;
  let x_575 : f32 = x_573.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_575) + 1.0f);
  let x_579 : f32 = u_xlat37;
  let x_581 : f32 = x_573.x_MainLightShadowParams.x;
  let x_584 : f32 = u_xlat16.x;
  u_xlat37 = ((x_579 * x_581) + x_584);
  let x_588 : f32 = vs_INTERP8.z;
  u_xlatb16 = (0.0f >= x_588);
  let x_592 : f32 = vs_INTERP8.z;
  u_xlatb27 = (x_592 >= 1.0f);
  let x_594 : bool = u_xlatb27;
  let x_595 : bool = u_xlatb16;
  u_xlatb16 = (x_594 | x_595);
  let x_597 : bool = u_xlatb16;
  let x_598 : f32 = u_xlat37;
  u_xlat37 = select(x_598, 1.0f, x_597);
  let x_600 : vec3<f32> = vs_INTERP0;
  let x_602 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_600 + -(x_602));
  let x_605 : vec3<f32> = u_xlat16;
  let x_606 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_605, x_606);
  let x_610 : f32 = u_xlat16.x;
  let x_612 : f32 = x_573.x_MainLightShadowParams.z;
  let x_615 : f32 = x_573.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_610 * x_612) + x_615);
  let x_619 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_619, 0.0f, 1.0f);
  let x_623 : f32 = u_xlat37;
  u_xlat27 = (-(x_623) + 1.0f);
  let x_627 : f32 = u_xlat16.x;
  let x_628 : f32 = u_xlat27;
  let x_630 : f32 = u_xlat37;
  u_xlat37 = ((x_627 * x_628) + x_630);
  let x_632 : vec3<f32> = u_xlat5;
  let x_635 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_632.x, x_632.x, x_632.x) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec3<f32> = u_xlat3;
  let x_641 : vec3<f32> = u_xlat12;
  u_xlat39 = dot(-(x_639), x_641);
  let x_643 : f32 = u_xlat39;
  let x_644 : f32 = u_xlat39;
  u_xlat39 = (x_643 + x_644);
  let x_647 : vec3<f32> = u_xlat12;
  let x_648 : f32 = u_xlat39;
  let x_652 : vec3<f32> = u_xlat3;
  let x_654 : vec3<f32> = ((x_647 * -(vec3<f32>(x_648, x_648, x_648))) + -(x_652));
  let x_655 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec3<f32> = u_xlat12;
  let x_658 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_657, x_658);
  let x_660 : f32 = u_xlat39;
  u_xlat39 = clamp(x_660, 0.0f, 1.0f);
  let x_662 : f32 = u_xlat39;
  u_xlat39 = (-(x_662) + 1.0f);
  let x_665 : f32 = u_xlat39;
  let x_666 : f32 = u_xlat39;
  u_xlat39 = (x_665 * x_666);
  let x_668 : f32 = u_xlat39;
  let x_669 : f32 = u_xlat39;
  u_xlat39 = (x_668 * x_669);
  let x_673 : f32 = u_xlat0.x;
  u_xlat40 = ((-(x_673) * 0.699999988f) + 1.700000048f);
  let x_680 : f32 = u_xlat0.x;
  let x_681 : f32 = u_xlat40;
  u_xlat0.x = (x_680 * x_681);
  let x_685 : f32 = u_xlat0.x;
  u_xlat0.x = (x_685 * 6.0f);
  let x_697 : vec4<f32> = u_xlat7;
  let x_700 : f32 = u_xlat0.x;
  let x_701 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_697.x, x_697.y, x_697.z), x_700);
  u_xlat7 = x_701;
  let x_703 : f32 = u_xlat7.w;
  u_xlat0.x = (x_703 + -1.0f);
  let x_707 : f32 = x_267.unity_SpecCube0_HDR.w;
  let x_709 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_707 * x_709) + 1.0f);
  let x_714 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_714, 0.0f);
  let x_718 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_718);
  let x_722 : f32 = u_xlat0.x;
  let x_724 : f32 = x_267.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_722 * x_724);
  let x_728 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_728);
  let x_732 : f32 = u_xlat0.x;
  let x_734 : f32 = x_267.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_732 * x_734);
  let x_737 : vec4<f32> = u_xlat7;
  let x_739 : vec4<f32> = u_xlat0;
  let x_741 : vec3<f32> = (vec3<f32>(x_737.x, x_737.y, x_737.z) * vec3<f32>(x_739.x, x_739.x, x_739.x));
  let x_742 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : f32 = u_xlat22;
  let x_746 : f32 = u_xlat22;
  let x_750 : vec2<f32> = ((vec2<f32>(x_744, x_744) * vec2<f32>(x_746, x_746)) + vec2<f32>(-1.0f, 1.0f));
  let x_751 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_750.x, x_751.y, x_750.y, x_751.w);
  let x_754 : f32 = u_xlat0.z;
  u_xlat22 = (1.0f / x_754);
  let x_757 : vec3<f32> = u_xlat2;
  let x_759 : f32 = u_xlat35;
  u_xlat8 = (-(x_757) + vec3<f32>(x_759, x_759, x_759));
  let x_762 : f32 = u_xlat39;
  let x_764 : vec3<f32> = u_xlat8;
  let x_766 : vec3<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_762, x_762, x_762) * x_764) + x_766);
  let x_768 : f32 = u_xlat22;
  let x_770 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_768, x_768, x_768) * x_770);
  let x_772 : vec4<f32> = u_xlat7;
  let x_774 : vec3<f32> = u_xlat8;
  let x_775 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) * x_774);
  let x_776 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec3<f32> = u_xlat4;
  let x_779 : vec3<f32> = u_xlat6;
  let x_781 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_778 * x_779) + vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : f32 = u_xlat37;
  let x_787 : f32 = x_267.unity_LightData.z;
  u_xlat22 = (x_784 * x_787);
  let x_789 : vec3<f32> = u_xlat12;
  let x_791 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_789, vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : f32 = u_xlat35;
  u_xlat35 = clamp(x_794, 0.0f, 1.0f);
  let x_796 : f32 = u_xlat22;
  let x_797 : f32 = u_xlat35;
  u_xlat22 = (x_796 * x_797);
  let x_799 : f32 = u_xlat22;
  let x_801 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_799, x_799, x_799) * x_801);
  let x_803 : vec3<f32> = u_xlat3;
  let x_805 : vec4<f32> = x_44.x_MainLightPosition;
  let x_807 : vec3<f32> = (x_803 + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat7;
  let x_812 : vec4<f32> = u_xlat7;
  u_xlat22 = dot(vec3<f32>(x_810.x, x_810.y, x_810.z), vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : f32 = u_xlat22;
  u_xlat22 = max(x_815, 1.17549435e-37f);
  let x_818 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_818);
  let x_820 : f32 = u_xlat22;
  let x_822 : vec4<f32> = u_xlat7;
  let x_824 : vec3<f32> = (vec3<f32>(x_820, x_820, x_820) * vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec3<f32> = u_xlat12;
  let x_828 : vec4<f32> = u_xlat7;
  u_xlat22 = dot(x_827, vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : f32 = u_xlat22;
  u_xlat22 = clamp(x_831, 0.0f, 1.0f);
  let x_834 : vec4<f32> = x_44.x_MainLightPosition;
  let x_836 : vec4<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_834.x, x_834.y, x_834.z), vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : f32 = u_xlat35;
  u_xlat35 = clamp(x_839, 0.0f, 1.0f);
  let x_841 : f32 = u_xlat22;
  let x_842 : f32 = u_xlat22;
  u_xlat22 = (x_841 * x_842);
  let x_844 : f32 = u_xlat22;
  let x_846 : f32 = u_xlat0.x;
  u_xlat22 = ((x_844 * x_846) + 1.000010014f);
  let x_850 : f32 = u_xlat35;
  let x_851 : f32 = u_xlat35;
  u_xlat35 = (x_850 * x_851);
  let x_853 : f32 = u_xlat22;
  let x_854 : f32 = u_xlat22;
  u_xlat22 = (x_853 * x_854);
  let x_856 : f32 = u_xlat35;
  u_xlat35 = max(x_856, 0.100000001f);
  let x_859 : f32 = u_xlat22;
  let x_860 : f32 = u_xlat35;
  u_xlat22 = (x_859 * x_860);
  let x_862 : f32 = u_xlat36;
  let x_863 : f32 = u_xlat22;
  u_xlat22 = (x_862 * x_863);
  let x_866 : f32 = u_xlat1.x;
  let x_867 : f32 = u_xlat22;
  u_xlat22 = (x_866 / x_867);
  let x_869 : vec3<f32> = u_xlat2;
  let x_870 : f32 = u_xlat22;
  let x_873 : vec3<f32> = u_xlat6;
  let x_874 : vec3<f32> = ((x_869 * vec3<f32>(x_870, x_870, x_870)) + x_873);
  let x_875 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec3<f32> = u_xlat16;
  let x_878 : vec4<f32> = u_xlat7;
  u_xlat16 = (x_877 * vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_882 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_884 : f32 = x_267.unity_LightData.y;
  u_xlat22 = min(x_882, x_884);
  let x_888 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_888));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_900 : u32 = u_xlatu_loop_1;
    let x_901 : u32 = u_xlatu22;
    if ((x_900 < x_901)) {
    } else {
      break;
    }
    let x_904 : u32 = u_xlatu_loop_1;
    u_xlatu37 = (x_904 >> 2u);
    let x_908 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_908 & 3u));
    let x_912 : u32 = u_xlatu37;
    let x_915 : vec4<f32> = x_267.unity_LightIndices[bitcast<i32>(x_912)];
    let x_925 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_930 : vec4<u32> = indexable[x_925];
    u_xlat37 = dot(x_915, bitcast<vec4<f32>>(x_930));
    let x_934 : f32 = u_xlat37;
    u_xlati37 = i32(x_934);
    let x_936 : vec3<f32> = vs_INTERP0;
    let x_948 : i32 = u_xlati37;
    let x_950 : vec4<f32> = x_947.x_AdditionalLightsPosition[x_948];
    let x_953 : i32 = u_xlati37;
    let x_955 : vec4<f32> = x_947.x_AdditionalLightsPosition[x_953];
    u_xlat8 = ((-(x_936) * vec3<f32>(x_950.w, x_950.w, x_950.w)) + vec3<f32>(x_955.x, x_955.y, x_955.z));
    let x_958 : vec3<f32> = u_xlat8;
    let x_959 : vec3<f32> = u_xlat8;
    u_xlat39 = dot(x_958, x_959);
    let x_961 : f32 = u_xlat39;
    u_xlat39 = max(x_961, 6.10351562e-05f);
    let x_964 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_964);
    let x_967 : f32 = u_xlat40;
    let x_969 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_967, x_967, x_967) * x_969);
    let x_972 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_972);
    let x_974 : f32 = u_xlat39;
    let x_975 : i32 = u_xlati37;
    let x_977 : f32 = x_947.x_AdditionalLightsAttenuation[x_975].x;
    u_xlat39 = (x_974 * x_977);
    let x_979 : f32 = u_xlat39;
    let x_981 : f32 = u_xlat39;
    u_xlat39 = ((-(x_979) * x_981) + 1.0f);
    let x_984 : f32 = u_xlat39;
    u_xlat39 = max(x_984, 0.0f);
    let x_986 : f32 = u_xlat39;
    let x_987 : f32 = u_xlat39;
    u_xlat39 = (x_986 * x_987);
    let x_989 : f32 = u_xlat39;
    let x_990 : f32 = u_xlat41;
    u_xlat39 = (x_989 * x_990);
    let x_992 : i32 = u_xlati37;
    let x_994 : vec4<f32> = x_947.x_AdditionalLightsSpotDir[x_992];
    let x_996 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_994.x, x_994.y, x_994.z), x_996);
    let x_998 : f32 = u_xlat41;
    let x_999 : i32 = u_xlati37;
    let x_1001 : f32 = x_947.x_AdditionalLightsAttenuation[x_999].z;
    let x_1003 : i32 = u_xlati37;
    let x_1005 : f32 = x_947.x_AdditionalLightsAttenuation[x_1003].w;
    u_xlat41 = ((x_998 * x_1001) + x_1005);
    let x_1007 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1007, 0.0f, 1.0f);
    let x_1009 : f32 = u_xlat41;
    let x_1010 : f32 = u_xlat41;
    u_xlat41 = (x_1009 * x_1010);
    let x_1012 : f32 = u_xlat39;
    let x_1013 : f32 = u_xlat41;
    u_xlat39 = (x_1012 * x_1013);
    let x_1016 : vec3<f32> = u_xlat5;
    let x_1018 : i32 = u_xlati37;
    let x_1020 : vec4<f32> = x_947.x_AdditionalLightsColor[x_1018];
    u_xlat10 = (vec3<f32>(x_1016.x, x_1016.x, x_1016.x) * vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
    let x_1023 : vec3<f32> = u_xlat12;
    let x_1024 : vec3<f32> = u_xlat9;
    u_xlat37 = dot(x_1023, x_1024);
    let x_1026 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1026, 0.0f, 1.0f);
    let x_1028 : f32 = u_xlat37;
    let x_1029 : f32 = u_xlat39;
    u_xlat37 = (x_1028 * x_1029);
    let x_1031 : f32 = u_xlat37;
    let x_1033 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1031, x_1031, x_1031) * x_1033);
    let x_1035 : vec3<f32> = u_xlat8;
    let x_1036 : f32 = u_xlat40;
    let x_1039 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1035 * vec3<f32>(x_1036, x_1036, x_1036)) + x_1039);
    let x_1041 : vec3<f32> = u_xlat8;
    let x_1042 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1041, x_1042);
    let x_1044 : f32 = u_xlat37;
    u_xlat37 = max(x_1044, 1.17549435e-37f);
    let x_1046 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_1046);
    let x_1048 : f32 = u_xlat37;
    let x_1050 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1048, x_1048, x_1048) * x_1050);
    let x_1052 : vec3<f32> = u_xlat12;
    let x_1053 : vec3<f32> = u_xlat8;
    u_xlat37 = dot(x_1052, x_1053);
    let x_1055 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1055, 0.0f, 1.0f);
    let x_1057 : vec3<f32> = u_xlat9;
    let x_1058 : vec3<f32> = u_xlat8;
    u_xlat39 = dot(x_1057, x_1058);
    let x_1060 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1060, 0.0f, 1.0f);
    let x_1062 : f32 = u_xlat37;
    let x_1063 : f32 = u_xlat37;
    u_xlat37 = (x_1062 * x_1063);
    let x_1065 : f32 = u_xlat37;
    let x_1067 : f32 = u_xlat0.x;
    u_xlat37 = ((x_1065 * x_1067) + 1.000010014f);
    let x_1070 : f32 = u_xlat39;
    let x_1071 : f32 = u_xlat39;
    u_xlat39 = (x_1070 * x_1071);
    let x_1073 : f32 = u_xlat37;
    let x_1074 : f32 = u_xlat37;
    u_xlat37 = (x_1073 * x_1074);
    let x_1076 : f32 = u_xlat39;
    u_xlat39 = max(x_1076, 0.100000001f);
    let x_1078 : f32 = u_xlat37;
    let x_1079 : f32 = u_xlat39;
    u_xlat37 = (x_1078 * x_1079);
    let x_1081 : f32 = u_xlat36;
    let x_1082 : f32 = u_xlat37;
    u_xlat37 = (x_1081 * x_1082);
    let x_1085 : f32 = u_xlat1.x;
    let x_1086 : f32 = u_xlat37;
    u_xlat37 = (x_1085 / x_1086);
    let x_1088 : vec3<f32> = u_xlat2;
    let x_1089 : f32 = u_xlat37;
    let x_1092 : vec3<f32> = u_xlat6;
    u_xlat8 = ((x_1088 * vec3<f32>(x_1089, x_1089, x_1089)) + x_1092);
    let x_1094 : vec3<f32> = u_xlat8;
    let x_1095 : vec3<f32> = u_xlat10;
    let x_1097 : vec4<f32> = u_xlat7;
    let x_1099 : vec3<f32> = ((x_1094 * x_1095) + vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
    let x_1100 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);

    continuing {
      let x_1102 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1102 + bitcast<u32>(1i));
    }
  }
  let x_1104 : vec3<f32> = u_xlat4;
  let x_1105 : f32 = u_xlat33;
  let x_1108 : vec3<f32> = u_xlat16;
  let x_1109 : vec3<f32> = ((x_1104 * vec3<f32>(x_1105, x_1105, x_1105)) + x_1108);
  let x_1110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1109.x, x_1110.y, x_1109.y, x_1109.z);
  let x_1112 : vec4<f32> = u_xlat7;
  let x_1114 : vec4<f32> = u_xlat0;
  let x_1116 : vec3<f32> = (vec3<f32>(x_1112.x, x_1112.y, x_1112.z) + vec3<f32>(x_1114.x, x_1114.z, x_1114.w));
  let x_1117 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1116.x, x_1117.y, x_1116.y, x_1116.z);
  let x_1120 : f32 = u_xlat11.x;
  let x_1122 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1120 * -(x_1122));
  let x_1127 : f32 = u_xlat11.x;
  u_xlat11.x = exp2(x_1127);
  let x_1130 : vec4<f32> = u_xlat0;
  let x_1134 : vec4<f32> = x_44.unity_FogColor;
  let x_1137 : vec3<f32> = (vec3<f32>(x_1130.x, x_1130.z, x_1130.w) + -(vec3<f32>(x_1134.x, x_1134.y, x_1134.z)));
  let x_1138 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1137.x, x_1138.y, x_1137.y, x_1137.z);
  let x_1142 : vec2<f32> = u_xlat11;
  let x_1144 : vec4<f32> = u_xlat0;
  let x_1148 : vec4<f32> = x_44.unity_FogColor;
  let x_1150 : vec3<f32> = ((vec3<f32>(x_1142.x, x_1142.x, x_1142.x) * vec3<f32>(x_1144.x, x_1144.z, x_1144.w)) + vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1156 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_1158 : f32 = x_267.unity_RenderingLayer.x;
  u_xlatu0 = (x_1156 & bitcast<u32>(x_1158));
  let x_1161 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1161);
  let x_1166 : f32 = u_xlat0.x;
  let x_1169 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1166 * x_1169);
  let x_1174 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1174, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_1179 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1179.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

