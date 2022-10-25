struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
}

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

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_127 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_854 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_1034 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1700 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb43 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlatb44 : bool;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat16 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb30 : bool;
  var x_1265 : f32;
  var u_xlat30 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu43 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati43 : i32;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_35 : vec4<f32> = x_30.x_MaskMapRemapScale0;
  let x_42 : vec4<f32> = x_30.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_35.x, x_35.y, x_35.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_42.x, x_42.y, x_42.w));
  let x_48 : vec4<f32> = x_30.x_MaskMapRemapScale1;
  let x_53 : vec4<f32> = x_30.x_MaskMapRemapOffset1;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_53.x, x_53.y, x_53.w));
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_61 : vec4<f32> = x_30.x_MaskMapRemapScale2;
  let x_66 : vec4<f32> = x_30.x_MaskMapRemapOffset2;
  let x_68 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_79 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_81 : vec3<f32> = ((vec3<f32>(x_74.x, x_74.w, x_74.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_79.x, x_79.w, x_79.y));
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_81.z);
  let x_88 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_92 : vec2<f32> = (vec2<f32>(x_88.z, x_88.w) + vec2<f32>(-1.0f, -1.0f));
  let x_93 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_92.x, x_92.y, x_93.z, x_93.w);
  let x_96 : vec4<f32> = vs_TEXCOORD0;
  let x_98 : vec4<f32> = u_xlat4;
  let x_102 : vec2<f32> = ((vec2<f32>(x_96.x, x_96.y) * vec2<f32>(x_98.x, x_98.y)) + vec2<f32>(0.5f, 0.5f));
  let x_103 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat4;
  let x_108 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_110 : vec2<f32> = (vec2<f32>(x_105.x, x_105.y) * vec2<f32>(x_108.x, x_108.y));
  let x_111 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_111.w);
  let x_123 : vec4<f32> = u_xlat4;
  let x_132 : f32 = x_127.x_GlobalMipBias.x;
  let x_133 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_123.x, x_123.y), x_132);
  u_xlat4 = x_133;
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_136, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_146 : vec4<f32> = vs_TEXCOORD1;
  let x_149 : f32 = x_127.x_GlobalMipBias.x;
  let x_150 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_146.x, x_146.y), x_149);
  u_xlat5 = x_150;
  let x_156 : vec4<f32> = vs_TEXCOORD1;
  let x_159 : f32 = x_127.x_GlobalMipBias.x;
  let x_160 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_156.z, x_156.w), x_159);
  u_xlat6 = x_160;
  let x_167 : vec4<f32> = vs_TEXCOORD2;
  let x_170 : f32 = x_127.x_GlobalMipBias.x;
  let x_171 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_167.x, x_167.y), x_170);
  u_xlat7 = x_171;
  let x_177 : vec4<f32> = vs_TEXCOORD2;
  let x_180 : f32 = x_127.x_GlobalMipBias.x;
  let x_181 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_177.z, x_177.w), x_180);
  u_xlat8 = x_181;
  let x_184 : f32 = u_xlat5.w;
  u_xlat9.x = x_184;
  let x_187 : f32 = u_xlat6.w;
  u_xlat9.y = x_187;
  let x_191 : f32 = u_xlat7.w;
  u_xlat9.z = x_191;
  let x_195 : f32 = u_xlat8.w;
  u_xlat9.w = x_195;
  let x_198 : vec4<f32> = u_xlat9;
  let x_201 : f32 = x_30.x_Smoothness0;
  let x_204 : f32 = x_30.x_Smoothness1;
  let x_207 : f32 = x_30.x_Smoothness2;
  let x_210 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_198 * vec4<f32>(x_201, x_204, x_207, x_210));
  let x_219 : f32 = x_30.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_219);
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_222) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_225 : vec4<f32> = u_xlat9;
  let x_226 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_225 + -(x_226));
  let x_229 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_229 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_233 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_233, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_238 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_238 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_242);
  let x_245 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_245 + -(x_246));
  let x_251 : f32 = u_xlat12.x;
  let x_254 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_251 * x_254);
  let x_258 : f32 = u_xlat12.y;
  let x_261 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_258 * x_261);
  let x_265 : f32 = u_xlat12.z;
  let x_268 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_265 * x_268);
  let x_272 : f32 = u_xlat12.w;
  let x_275 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_272 * x_275);
  let x_278 : vec4<f32> = u_xlat11;
  let x_279 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_278 + x_279);
  let x_281 : bool = u_xlatb43;
  let x_282 : vec4<f32> = u_xlat11;
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_283, x_282, vec4<bool>(x_281, x_281, x_281, x_281));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_288, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_292 : f32 = u_xlat43;
  u_xlatb44 = (0.005f >= x_292);
  let x_294 : bool = u_xlatb44;
  if (((select(0i, 1i, x_294) * -1i) != 0i)) {
    discard;
  }
  let x_303 : f32 = u_xlat43;
  u_xlat43 = (x_303 + 6.10351562e-05f);
  let x_306 : vec4<f32> = u_xlat4;
  let x_307 : f32 = u_xlat43;
  u_xlat4 = (x_306 / vec4<f32>(x_307, x_307, x_307, x_307));
  let x_310 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_315 : vec3<f32> = (vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_323 : vec3<f32> = (vec3<f32>(x_318.y, x_318.y, x_318.y) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec4<f32> = u_xlat12;
  let x_330 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat5;
  let x_335 : vec4<f32> = u_xlat11;
  let x_338 : vec4<f32> = u_xlat6;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.x, x_335.y, x_335.z)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat4;
  let x_346 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_348 : vec3<f32> = (vec3<f32>(x_343.z, x_343.z, x_343.z) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat7;
  let x_353 : vec4<f32> = u_xlat6;
  let x_356 : vec4<f32> = u_xlat5;
  let x_358 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353.x, x_353.y, x_353.z)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat4;
  let x_364 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_366 : vec3<f32> = (vec3<f32>(x_361.w, x_361.w, x_361.w) * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec4<f32> = u_xlat8;
  let x_371 : vec4<f32> = u_xlat6;
  let x_374 : vec4<f32> = u_xlat5;
  let x_376 : vec3<f32> = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.x, x_371.y, x_371.z)) + vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_384 : vec4<f32> = vs_TEXCOORD1;
  let x_387 : f32 = x_127.x_GlobalMipBias.x;
  let x_388 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_384.x, x_384.y), x_387);
  let x_389 : vec3<f32> = vec3<f32>(x_388.x, x_388.y, x_388.w);
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : f32 = u_xlat6.x;
  let x_395 : f32 = u_xlat6.z;
  u_xlat6.x = (x_393 * x_395);
  let x_398 : vec4<f32> = u_xlat6;
  let x_403 : vec2<f32> = ((vec2<f32>(x_398.x, x_398.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_404 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat6;
  let x_408 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_406.x, x_406.y), vec2<f32>(x_408.x, x_408.y));
  let x_411 : f32 = u_xlat43;
  u_xlat43 = min(x_411, 1.0f);
  let x_413 : f32 = u_xlat43;
  u_xlat43 = (-(x_413) + 1.0f);
  let x_416 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_416);
  let x_418 : f32 = u_xlat43;
  u_xlat7.z = max(x_418, 1.00000002e-16f);
  let x_422 : vec4<f32> = u_xlat6;
  let x_425 : f32 = x_30.x_NormalScale0;
  let x_427 : vec2<f32> = (vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_425, x_425));
  let x_428 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  let x_434 : vec4<f32> = vs_TEXCOORD1;
  let x_437 : f32 = x_127.x_GlobalMipBias.x;
  let x_438 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_434.z, x_434.w), x_437);
  let x_439 : vec3<f32> = vec3<f32>(x_438.x, x_438.y, x_438.w);
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_443 : f32 = u_xlat6.x;
  let x_445 : f32 = u_xlat6.z;
  u_xlat6.x = (x_443 * x_445);
  let x_448 : vec4<f32> = u_xlat6;
  let x_451 : vec2<f32> = ((vec2<f32>(x_448.x, x_448.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat6;
  let x_456 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_454.x, x_454.y), vec2<f32>(x_456.x, x_456.y));
  let x_459 : f32 = u_xlat43;
  u_xlat43 = min(x_459, 1.0f);
  let x_461 : f32 = u_xlat43;
  u_xlat43 = (-(x_461) + 1.0f);
  let x_464 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_464);
  let x_466 : f32 = u_xlat43;
  u_xlat8.z = max(x_466, 1.00000002e-16f);
  let x_469 : vec4<f32> = u_xlat6;
  let x_472 : f32 = x_30.x_NormalScale1;
  let x_474 : f32 = x_30.x_NormalScale1;
  let x_475 : vec2<f32> = vec2<f32>(x_472, x_474);
  let x_479 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) * vec2<f32>(x_475.x, x_475.y));
  let x_480 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
  let x_482 : vec4<f32> = u_xlat4;
  let x_484 : vec4<f32> = u_xlat8;
  let x_486 : vec3<f32> = (vec3<f32>(x_482.y, x_482.y, x_482.y) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat4;
  let x_491 : vec4<f32> = u_xlat7;
  let x_494 : vec4<f32> = u_xlat6;
  let x_496 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.x, x_489.x) * vec3<f32>(x_491.x, x_491.y, x_491.z)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_503 : vec4<f32> = vs_TEXCOORD2;
  let x_506 : f32 = x_127.x_GlobalMipBias.x;
  let x_507 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_503.x, x_503.y), x_506);
  let x_508 : vec3<f32> = vec3<f32>(x_507.x, x_507.y, x_507.w);
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_512 : f32 = u_xlat7.x;
  let x_514 : f32 = u_xlat7.z;
  u_xlat7.x = (x_512 * x_514);
  let x_517 : vec4<f32> = u_xlat7;
  let x_520 : vec2<f32> = ((vec2<f32>(x_517.x, x_517.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_521 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat7;
  let x_525 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_523.x, x_523.y), vec2<f32>(x_525.x, x_525.y));
  let x_528 : f32 = u_xlat43;
  u_xlat43 = min(x_528, 1.0f);
  let x_530 : f32 = u_xlat43;
  u_xlat43 = (-(x_530) + 1.0f);
  let x_533 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_533);
  let x_535 : f32 = u_xlat43;
  u_xlat8.z = max(x_535, 1.00000002e-16f);
  let x_538 : vec4<f32> = u_xlat7;
  let x_542 : f32 = x_30.x_NormalScale2;
  let x_544 : f32 = x_30.x_NormalScale2;
  let x_545 : vec2<f32> = vec2<f32>(x_542, x_544);
  let x_549 : vec2<f32> = (vec2<f32>(x_538.x, x_538.y) * vec2<f32>(x_545.x, x_545.y));
  let x_550 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
  let x_552 : vec4<f32> = u_xlat4;
  let x_554 : vec4<f32> = u_xlat8;
  let x_557 : vec4<f32> = u_xlat6;
  let x_559 : vec3<f32> = ((vec3<f32>(x_552.z, x_552.z, x_552.z) * vec3<f32>(x_554.x, x_554.y, x_554.z)) + vec3<f32>(x_557.x, x_557.y, x_557.z));
  let x_560 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_566 : vec4<f32> = vs_TEXCOORD2;
  let x_569 : f32 = x_127.x_GlobalMipBias.x;
  let x_570 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_566.z, x_566.w), x_569);
  let x_571 : vec3<f32> = vec3<f32>(x_570.x, x_570.y, x_570.w);
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_575 : f32 = u_xlat7.x;
  let x_577 : f32 = u_xlat7.z;
  u_xlat7.x = (x_575 * x_577);
  let x_580 : vec4<f32> = u_xlat7;
  let x_583 : vec2<f32> = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_584 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat7;
  let x_588 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_586.x, x_586.y), vec2<f32>(x_588.x, x_588.y));
  let x_591 : f32 = u_xlat43;
  u_xlat43 = min(x_591, 1.0f);
  let x_593 : f32 = u_xlat43;
  u_xlat43 = (-(x_593) + 1.0f);
  let x_596 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_596);
  let x_598 : f32 = u_xlat43;
  u_xlat8.z = max(x_598, 1.00000002e-16f);
  let x_601 : vec4<f32> = u_xlat7;
  let x_605 : f32 = x_30.x_NormalScale3;
  let x_607 : f32 = x_30.x_NormalScale3;
  let x_608 : vec2<f32> = vec2<f32>(x_605, x_607);
  let x_612 : vec2<f32> = (vec2<f32>(x_601.x, x_601.y) * vec2<f32>(x_608.x, x_608.y));
  let x_613 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat4;
  let x_617 : vec4<f32> = u_xlat8;
  let x_620 : vec4<f32> = u_xlat6;
  let x_622 : vec3<f32> = ((vec3<f32>(x_615.w, x_615.w, x_615.w) * vec3<f32>(x_617.x, x_617.y, x_617.z)) + vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_626 : f32 = u_xlat6.z;
  u_xlat6.w = (x_626 + 0.00001f);
  let x_630 : vec4<f32> = u_xlat6;
  let x_632 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_630.x, x_630.y, x_630.w), vec3<f32>(x_632.x, x_632.y, x_632.w));
  let x_635 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_635);
  let x_637 : f32 = u_xlat43;
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec3<f32> = (vec3<f32>(x_637, x_637, x_637) * vec3<f32>(x_639.x, x_639.y, x_639.w));
  let x_642 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_645 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_645;
  let x_648 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_648;
  let x_651 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_651;
  let x_654 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_654;
  let x_657 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_657;
  let x_660 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_660;
  let x_663 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_663;
  let x_666 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_666;
  let x_668 : vec4<f32> = u_xlat7;
  let x_669 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_668 + x_669);
  let x_672 : f32 = u_xlat0.z;
  u_xlat8.x = x_672;
  let x_675 : f32 = u_xlat1.z;
  u_xlat8.y = x_675;
  let x_678 : f32 = u_xlat2.z;
  u_xlat8.z = x_678;
  let x_681 : f32 = u_xlat3.y;
  u_xlat8.w = x_681;
  let x_683 : vec4<f32> = u_xlat9;
  let x_686 : f32 = x_30.x_Smoothness0;
  let x_688 : f32 = x_30.x_Smoothness1;
  let x_690 : f32 = x_30.x_Smoothness2;
  let x_692 : f32 = x_30.x_Smoothness3;
  let x_695 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_683) * vec4<f32>(x_686, x_688, x_690, x_692)) + x_695);
  let x_699 : f32 = x_30.x_LayerHasMask0;
  let x_702 : f32 = x_30.x_LayerHasMask1;
  let x_705 : f32 = x_30.x_LayerHasMask2;
  let x_708 : f32 = x_30.x_LayerHasMask3;
  let x_710 : vec4<f32> = u_xlat8;
  let x_712 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_699, x_702, x_705, x_708) * x_710) + x_712);
  let x_715 : vec4<f32> = u_xlat4;
  let x_716 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_715, x_716);
  let x_719 : f32 = u_xlat0.x;
  u_xlat8.x = x_719;
  let x_722 : f32 = u_xlat1.x;
  u_xlat8.y = x_722;
  let x_725 : f32 = u_xlat2.x;
  u_xlat8.z = x_725;
  let x_728 : f32 = u_xlat3.x;
  u_xlat8.w = x_728;
  let x_730 : vec4<f32> = u_xlat8;
  let x_733 : f32 = x_30.x_Metallic0;
  let x_736 : f32 = x_30.x_Metallic1;
  let x_739 : f32 = x_30.x_Metallic2;
  let x_742 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_730 + -(vec4<f32>(x_733, x_736, x_739, x_742)));
  let x_747 : f32 = x_30.x_LayerHasMask0;
  let x_749 : f32 = x_30.x_LayerHasMask1;
  let x_751 : f32 = x_30.x_LayerHasMask2;
  let x_753 : f32 = x_30.x_LayerHasMask3;
  let x_755 : vec4<f32> = u_xlat8;
  let x_758 : f32 = x_30.x_Metallic0;
  let x_760 : f32 = x_30.x_Metallic1;
  let x_762 : f32 = x_30.x_Metallic2;
  let x_764 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_747, x_749, x_751, x_753) * x_755) + vec4<f32>(x_758, x_760, x_762, x_764));
  let x_767 : vec4<f32> = u_xlat4;
  let x_768 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_767, x_768);
  let x_772 : f32 = u_xlat0.y;
  u_xlat3.x = x_772;
  let x_775 : f32 = u_xlat1.y;
  u_xlat3.y = x_775;
  let x_778 : f32 = u_xlat2.y;
  u_xlat3.z = x_778;
  let x_780 : vec4<f32> = u_xlat7;
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_780) + x_782);
  let x_785 : f32 = x_30.x_LayerHasMask0;
  let x_787 : f32 = x_30.x_LayerHasMask1;
  let x_789 : f32 = x_30.x_LayerHasMask2;
  let x_791 : f32 = x_30.x_LayerHasMask3;
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_785, x_787, x_789, x_791) * x_793) + x_795);
  let x_798 : vec4<f32> = u_xlat4;
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_798, x_799);
  let x_801 : vec4<f32> = u_xlat6;
  let x_804 : vec4<f32> = vs_TEXCOORD5;
  let x_806 : vec3<f32> = (vec3<f32>(x_801.y, x_801.y, x_801.y) * vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = vs_TEXCOORD4;
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = ((vec3<f32>(x_809.x, x_809.x, x_809.x) * -(vec3<f32>(x_812.x, x_812.y, x_812.z))) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat6;
  let x_824 : vec4<f32> = vs_TEXCOORD3;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = ((vec3<f32>(x_821.z, x_821.z, x_821.z) * vec3<f32>(x_824.x, x_824.y, x_824.z)) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat1;
  let x_834 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_832.x, x_832.y, x_832.z), vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_837);
  let x_839 : f32 = u_xlat43;
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec3<f32> = (vec3<f32>(x_839, x_839, x_839) * vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_848 : vec3<f32> = vs_TEXCOORD7;
  let x_856 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres0;
  let x_859 : vec3<f32> = (x_848 + -(vec3<f32>(x_856.x, x_856.y, x_856.z)));
  let x_860 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec3<f32> = vs_TEXCOORD7;
  let x_864 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres1;
  let x_867 : vec3<f32> = (x_862 + -(vec3<f32>(x_864.x, x_864.y, x_864.z)));
  let x_868 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec3<f32> = vs_TEXCOORD7;
  let x_872 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres2;
  let x_875 : vec3<f32> = (x_870 + -(vec3<f32>(x_872.x, x_872.y, x_872.z)));
  let x_876 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec3<f32> = vs_TEXCOORD7;
  let x_880 : vec4<f32> = x_854.x_CascadeShadowSplitSpheres3;
  let x_883 : vec3<f32> = (x_878 + -(vec3<f32>(x_880.x, x_880.y, x_880.z)));
  let x_884 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat2;
  let x_888 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_892 : vec4<f32> = u_xlat3;
  let x_894 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_892.x, x_892.y, x_892.z), vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_898 : vec4<f32> = u_xlat4;
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_904 : vec4<f32> = u_xlat6;
  let x_906 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_904.x, x_904.y, x_904.z), vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec4<f32> = x_854.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_912 < x_914);
  let x_917 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_917);
  let x_921 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_921);
  let x_925 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_925);
  let x_929 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_929);
  let x_933 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_933);
  let x_938 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_938);
  let x_942 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_942);
  let x_945 : vec4<f32> = u_xlat2;
  let x_947 : vec4<f32> = u_xlat3;
  let x_949 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) + vec3<f32>(x_947.y, x_947.z, x_947.w));
  let x_950 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat2;
  let x_955 : vec3<f32> = max(vec3<f32>(x_952.x, x_952.y, x_952.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_956 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_956.x, x_955.x, x_955.y, x_955.z);
  let x_958 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_958, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_964 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_964) + 4.0f);
  let x_971 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_971);
  let x_975 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_975) << bitcast<u32>(2i));
  let x_979 : vec3<f32> = vs_TEXCOORD7;
  let x_981 : i32 = u_xlati2;
  let x_984 : i32 = u_xlati2;
  let x_988 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_981 + 1i) / 4i)][((x_984 + 1i) % 4i)];
  u_xlat16 = (vec3<f32>(x_979.y, x_979.y, x_979.y) * vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_991 : i32 = u_xlati2;
  let x_993 : i32 = u_xlati2;
  let x_996 : vec4<f32> = x_854.x_MainLightWorldToShadow[(x_991 / 4i)][(x_993 % 4i)];
  let x_998 : vec3<f32> = vs_TEXCOORD7;
  let x_1001 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(x_998.x, x_998.x, x_998.x)) + x_1001);
  let x_1003 : i32 = u_xlati2;
  let x_1006 : i32 = u_xlati2;
  let x_1010 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1003 + 2i) / 4i)][((x_1006 + 2i) % 4i)];
  let x_1012 : vec3<f32> = vs_TEXCOORD7;
  let x_1015 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1010.x, x_1010.y, x_1010.z) * vec3<f32>(x_1012.z, x_1012.z, x_1012.z)) + x_1015);
  let x_1017 : vec3<f32> = u_xlat16;
  let x_1018 : i32 = u_xlati2;
  let x_1021 : i32 = u_xlati2;
  let x_1025 : vec4<f32> = x_854.x_MainLightWorldToShadow[((x_1018 + 3i) / 4i)][((x_1021 + 3i) % 4i)];
  let x_1027 : vec3<f32> = (x_1017 + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  u_xlat1.w = 1.0f;
  let x_1036 : vec4<f32> = x_1034.unity_SHAr;
  let x_1037 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_1036, x_1037);
  let x_1041 : vec4<f32> = x_1034.unity_SHAg;
  let x_1042 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_1041, x_1042);
  let x_1046 : vec4<f32> = x_1034.unity_SHAb;
  let x_1047 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_1046, x_1047);
  let x_1050 : vec4<f32> = u_xlat1;
  let x_1052 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_1050.y, x_1050.z, x_1050.z, x_1050.x) * vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1052.z));
  let x_1056 : vec4<f32> = x_1034.unity_SHBr;
  let x_1057 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_1056, x_1057);
  let x_1061 : vec4<f32> = x_1034.unity_SHBg;
  let x_1062 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_1061, x_1062);
  let x_1066 : vec4<f32> = x_1034.unity_SHBb;
  let x_1067 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_1066, x_1067);
  let x_1071 : f32 = u_xlat1.y;
  let x_1073 : f32 = u_xlat1.y;
  u_xlat43 = (x_1071 * x_1073);
  let x_1076 : f32 = u_xlat1.x;
  let x_1078 : f32 = u_xlat1.x;
  let x_1080 : f32 = u_xlat43;
  u_xlat43 = ((x_1076 * x_1078) + -(x_1080));
  let x_1085 : vec4<f32> = x_1034.unity_SHC;
  let x_1087 : f32 = u_xlat43;
  let x_1090 : vec4<f32> = u_xlat6;
  let x_1092 : vec3<f32> = ((vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * vec3<f32>(x_1087, x_1087, x_1087)) + vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1095 : vec4<f32> = u_xlat3;
  let x_1097 : vec4<f32> = u_xlat4;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1095.x, x_1095.y, x_1095.z) + vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : vec4<f32> = u_xlat3;
  let x_1104 : vec3<f32> = max(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1105 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1109 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
  let x_1114 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1110.x, x_1110.y));
  let x_1115 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
  let x_1117 : vec4<f32> = u_xlat4;
  let x_1119 : vec4<f32> = hlslcc_FragCoord;
  let x_1121 : vec2<f32> = (vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(x_1119.x, x_1119.y));
  let x_1122 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
  let x_1125 : f32 = u_xlat4.y;
  let x_1127 : f32 = x_127.x_ScaleBiasRt.x;
  let x_1130 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat43 = ((x_1125 * x_1127) + x_1130);
  let x_1132 : f32 = u_xlat43;
  u_xlat4.z = (-(x_1132) + 1.0f);
  let x_1137 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1137) * 0.959999979f) + 0.959999979f);
  let x_1143 : f32 = u_xlat43;
  u_xlat44 = (-(x_1143) + 1.0f);
  let x_1146 : f32 = u_xlat43;
  let x_1148 : vec4<f32> = u_xlat5;
  let x_1150 : vec3<f32> = (vec3<f32>(x_1146, x_1146, x_1146) * vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat5;
  let x_1157 : vec3<f32> = (vec3<f32>(x_1153.x, x_1153.y, x_1153.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1158 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : vec3<f32> = u_xlat0;
  let x_1162 : vec4<f32> = u_xlat5;
  let x_1167 : vec3<f32> = ((vec3<f32>(x_1160.x, x_1160.x, x_1160.x) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1168 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1170) + 1.0f);
  let x_1175 : f32 = u_xlat0.x;
  let x_1177 : f32 = u_xlat0.x;
  u_xlat43 = (x_1175 * x_1177);
  let x_1179 : f32 = u_xlat43;
  u_xlat43 = max(x_1179, 0.0078125f);
  let x_1183 : f32 = u_xlat43;
  let x_1184 : f32 = u_xlat43;
  u_xlat45 = (x_1183 * x_1184);
  let x_1186 : f32 = u_xlat28;
  let x_1187 : f32 = u_xlat44;
  u_xlat28 = (x_1186 + x_1187);
  let x_1189 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1189, 0.0f, 1.0f);
  let x_1191 : f32 = u_xlat43;
  u_xlat44 = ((x_1191 * 4.0f) + 2.0f);
  let x_1199 : vec4<f32> = u_xlat4;
  let x_1202 : f32 = x_127.x_GlobalMipBias.x;
  let x_1203 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1199.x, x_1199.z), x_1202);
  u_xlat4.x = x_1203.x;
  let x_1208 : f32 = u_xlat4.x;
  u_xlat18 = (x_1208 + -1.0f);
  let x_1211 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1212 : f32 = u_xlat18;
  u_xlat18 = ((x_1211 * x_1212) + 1.0f);
  let x_1215 : f32 = u_xlat14;
  let x_1217 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1215, x_1217);
  let x_1220 : vec4<f32> = u_xlat2;
  let x_1221 : vec2<f32> = vec2<f32>(x_1220.x, x_1220.y);
  let x_1223 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1221.x, x_1221.y, x_1223);
  let x_1235 : vec3<f32> = txVec0;
  let x_1237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1235.xy, x_1235.z);
  u_xlat2.x = x_1237;
  let x_1240 : f32 = x_854.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1240) + 1.0f);
  let x_1245 : f32 = u_xlat2.x;
  let x_1247 : f32 = x_854.x_MainLightShadowParams.x;
  let x_1250 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1245 * x_1247) + x_1250);
  let x_1255 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1255);
  let x_1259 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1259 >= 1.0f);
  let x_1261 : bool = u_xlatb30;
  let x_1262 : bool = u_xlatb16;
  u_xlatb16 = (x_1261 | x_1262);
  let x_1264 : bool = u_xlatb16;
  if (x_1264) {
    x_1265 = 1.0f;
  } else {
    let x_1270 : f32 = u_xlat2.x;
    x_1265 = x_1270;
  }
  let x_1271 : f32 = x_1265;
  u_xlat2.x = x_1271;
  let x_1273 : vec3<f32> = vs_TEXCOORD7;
  let x_1276 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_1278 : vec3<f32> = (x_1273 + -(x_1276));
  let x_1279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1278.x, x_1279.y, x_1278.y, x_1278.z);
  let x_1281 : vec4<f32> = u_xlat4;
  let x_1283 : vec4<f32> = u_xlat4;
  u_xlat16.x = dot(vec3<f32>(x_1281.x, x_1281.z, x_1281.w), vec3<f32>(x_1283.x, x_1283.z, x_1283.w));
  let x_1288 : f32 = u_xlat16.x;
  let x_1290 : f32 = x_854.x_MainLightShadowParams.z;
  let x_1293 : f32 = x_854.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1288 * x_1290) + x_1293);
  let x_1297 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1297, 0.0f, 1.0f);
  let x_1302 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1302) + 1.0f);
  let x_1306 : f32 = u_xlat16.x;
  let x_1307 : f32 = u_xlat30;
  let x_1310 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1306 * x_1307) + x_1310);
  let x_1313 : f32 = u_xlat18;
  let x_1316 : vec4<f32> = x_127.x_MainLightColor;
  let x_1318 : vec3<f32> = (vec3<f32>(x_1313, x_1313, x_1313) * vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1318.x, x_1319.y, x_1318.y, x_1318.z);
  let x_1322 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1322;
  let x_1325 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1325;
  let x_1328 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1328;
  let x_1330 : vec4<f32> = u_xlat7;
  let x_1333 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1330.x, x_1330.y, x_1330.z)), vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
  let x_1338 : f32 = u_xlat16.x;
  let x_1340 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1338 + x_1340);
  let x_1343 : vec4<f32> = u_xlat1;
  let x_1345 : vec3<f32> = u_xlat16;
  let x_1349 : vec4<f32> = u_xlat7;
  let x_1352 : vec3<f32> = ((vec3<f32>(x_1343.x, x_1343.y, x_1343.z) * -(vec3<f32>(x_1345.x, x_1345.x, x_1345.x))) + -(vec3<f32>(x_1349.x, x_1349.y, x_1349.z)));
  let x_1353 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
  let x_1355 : vec4<f32> = u_xlat1;
  let x_1357 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1355.x, x_1355.y, x_1355.z), vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
  let x_1362 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1362, 0.0f, 1.0f);
  let x_1366 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1366) + 1.0f);
  let x_1371 : f32 = u_xlat16.x;
  let x_1373 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1371 * x_1373);
  let x_1377 : f32 = u_xlat16.x;
  let x_1379 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1377 * x_1379);
  let x_1383 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1383) * 0.699999988f) + 1.700000048f);
  let x_1390 : f32 = u_xlat0.x;
  let x_1391 : f32 = u_xlat30;
  u_xlat0.x = (x_1390 * x_1391);
  let x_1395 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1395 * 6.0f);
  let x_1407 : vec4<f32> = u_xlat8;
  let x_1410 : f32 = u_xlat0.x;
  let x_1411 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1407.x, x_1407.y, x_1407.z), x_1410);
  u_xlat8 = x_1411;
  let x_1413 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1413 + -1.0f);
  let x_1417 : f32 = x_1034.unity_SpecCube0_HDR.w;
  let x_1419 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1417 * x_1419) + 1.0f);
  let x_1424 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1424, 0.0f);
  let x_1428 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1428);
  let x_1432 : f32 = u_xlat0.x;
  let x_1434 : f32 = x_1034.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1432 * x_1434);
  let x_1438 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1438);
  let x_1442 : f32 = u_xlat0.x;
  let x_1444 : f32 = x_1034.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1442 * x_1444);
  let x_1447 : vec4<f32> = u_xlat8;
  let x_1449 : vec3<f32> = u_xlat0;
  let x_1451 : vec3<f32> = (vec3<f32>(x_1447.x, x_1447.y, x_1447.z) * vec3<f32>(x_1449.x, x_1449.x, x_1449.x));
  let x_1452 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
  let x_1454 : f32 = u_xlat43;
  let x_1456 : f32 = u_xlat43;
  let x_1460 : vec2<f32> = ((vec2<f32>(x_1454, x_1454) * vec2<f32>(x_1456, x_1456)) + vec2<f32>(-1.0f, 1.0f));
  let x_1461 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1460.x, x_1460.y, x_1461.z, x_1461.w);
  let x_1464 : f32 = u_xlat9.y;
  u_xlat0.x = (1.0f / x_1464);
  let x_1468 : vec4<f32> = u_xlat5;
  let x_1471 : f32 = u_xlat28;
  u_xlat23 = (-(vec3<f32>(x_1468.x, x_1468.y, x_1468.z)) + vec3<f32>(x_1471, x_1471, x_1471));
  let x_1474 : vec3<f32> = u_xlat16;
  let x_1476 : vec3<f32> = u_xlat23;
  let x_1478 : vec4<f32> = u_xlat5;
  u_xlat23 = ((vec3<f32>(x_1474.x, x_1474.x, x_1474.x) * x_1476) + vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
  let x_1481 : vec3<f32> = u_xlat0;
  let x_1483 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1481.x, x_1481.x, x_1481.x) * x_1483);
  let x_1485 : vec4<f32> = u_xlat8;
  let x_1487 : vec3<f32> = u_xlat23;
  let x_1488 : vec3<f32> = (vec3<f32>(x_1485.x, x_1485.y, x_1485.z) * x_1487);
  let x_1489 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
  let x_1491 : vec4<f32> = u_xlat3;
  let x_1493 : vec4<f32> = u_xlat6;
  let x_1496 : vec4<f32> = u_xlat8;
  let x_1498 : vec3<f32> = ((vec3<f32>(x_1491.x, x_1491.y, x_1491.z) * vec3<f32>(x_1493.x, x_1493.y, x_1493.z)) + vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
  let x_1499 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
  let x_1502 : f32 = u_xlat2.x;
  let x_1504 : f32 = x_1034.unity_LightData.z;
  u_xlat0.x = (x_1502 * x_1504);
  let x_1507 : vec4<f32> = u_xlat1;
  let x_1510 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_1507.x, x_1507.y, x_1507.z), vec3<f32>(x_1510.x, x_1510.y, x_1510.z));
  let x_1513 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1513, 0.0f, 1.0f);
  let x_1515 : f32 = u_xlat28;
  let x_1517 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1515 * x_1517);
  let x_1520 : vec3<f32> = u_xlat0;
  let x_1522 : vec4<f32> = u_xlat4;
  let x_1524 : vec3<f32> = (vec3<f32>(x_1520.x, x_1520.x, x_1520.x) * vec3<f32>(x_1522.x, x_1522.z, x_1522.w));
  let x_1525 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1524.x, x_1524.y, x_1524.z, x_1525.w);
  let x_1527 : vec4<f32> = u_xlat7;
  let x_1530 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1532 : vec3<f32> = (vec3<f32>(x_1527.x, x_1527.y, x_1527.z) + vec3<f32>(x_1530.x, x_1530.y, x_1530.z));
  let x_1533 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1532.x, x_1533.y, x_1532.y, x_1532.z);
  let x_1535 : vec4<f32> = u_xlat4;
  let x_1537 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_1535.x, x_1535.z, x_1535.w), vec3<f32>(x_1537.x, x_1537.z, x_1537.w));
  let x_1542 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1542, 1.17549435e-37f);
  let x_1547 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1547);
  let x_1550 : vec3<f32> = u_xlat0;
  let x_1552 : vec4<f32> = u_xlat4;
  let x_1554 : vec3<f32> = (vec3<f32>(x_1550.x, x_1550.x, x_1550.x) * vec3<f32>(x_1552.x, x_1552.z, x_1552.w));
  let x_1555 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1554.x, x_1555.y, x_1554.y, x_1554.z);
  let x_1557 : vec4<f32> = u_xlat1;
  let x_1559 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(vec3<f32>(x_1557.x, x_1557.y, x_1557.z), vec3<f32>(x_1559.x, x_1559.z, x_1559.w));
  let x_1564 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1564, 0.0f, 1.0f);
  let x_1568 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1570 : vec4<f32> = u_xlat4;
  u_xlat0.z = dot(vec3<f32>(x_1568.x, x_1568.y, x_1568.z), vec3<f32>(x_1570.x, x_1570.z, x_1570.w));
  let x_1575 : f32 = u_xlat0.z;
  u_xlat0.z = clamp(x_1575, 0.0f, 1.0f);
  let x_1578 : vec3<f32> = u_xlat0;
  let x_1580 : vec3<f32> = u_xlat0;
  let x_1582 : vec2<f32> = (vec2<f32>(x_1578.x, x_1578.z) * vec2<f32>(x_1580.x, x_1580.z));
  let x_1583 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1582.x, x_1583.y, x_1582.y);
  let x_1586 : f32 = u_xlat0.x;
  let x_1588 : f32 = u_xlat9.x;
  u_xlat0.x = ((x_1586 * x_1588) + 1.000010014f);
  let x_1594 : f32 = u_xlat0.x;
  let x_1596 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1594 * x_1596);
  let x_1600 : f32 = u_xlat0.z;
  u_xlat28 = max(x_1600, 0.100000001f);
  let x_1603 : f32 = u_xlat28;
  let x_1605 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1603 * x_1605);
  let x_1608 : f32 = u_xlat44;
  let x_1610 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1608 * x_1610);
  let x_1613 : f32 = u_xlat45;
  let x_1615 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1613 / x_1615);
  let x_1618 : vec4<f32> = u_xlat5;
  let x_1620 : vec3<f32> = u_xlat0;
  let x_1623 : vec4<f32> = u_xlat6;
  let x_1625 : vec3<f32> = ((vec3<f32>(x_1618.x, x_1618.y, x_1618.z) * vec3<f32>(x_1620.x, x_1620.x, x_1620.x)) + vec3<f32>(x_1623.x, x_1623.y, x_1623.z));
  let x_1626 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1625.x, x_1626.y, x_1625.y, x_1625.z);
  let x_1628 : vec4<f32> = u_xlat2;
  let x_1630 : vec4<f32> = u_xlat4;
  let x_1632 : vec3<f32> = (vec3<f32>(x_1628.x, x_1628.y, x_1628.z) * vec3<f32>(x_1630.x, x_1630.z, x_1630.w));
  let x_1633 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
  let x_1636 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_1638 : f32 = x_1034.unity_LightData.y;
  u_xlat0.x = min(x_1636, x_1638);
  let x_1643 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1643));
  u_xlat4.x = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1655 : u32 = u_xlatu_loop_1;
    let x_1656 : u32 = u_xlatu0;
    if ((x_1655 < x_1656)) {
    } else {
      break;
    }
    let x_1659 : u32 = u_xlatu_loop_1;
    u_xlatu43 = (x_1659 >> 2u);
    let x_1662 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1662 & 3u));
    let x_1665 : u32 = u_xlatu43;
    let x_1668 : vec4<f32> = x_1034.unity_LightIndices[bitcast<i32>(x_1665)];
    let x_1678 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1683 : vec4<u32> = indexable[x_1678];
    u_xlat43 = dot(x_1668, bitcast<vec4<f32>>(x_1683));
    let x_1687 : f32 = u_xlat43;
    u_xlati43 = i32(x_1687);
    let x_1689 : vec3<f32> = vs_TEXCOORD7;
    let x_1701 : i32 = u_xlati43;
    let x_1703 : vec4<f32> = x_1700.x_AdditionalLightsPosition[x_1701];
    let x_1706 : i32 = u_xlati43;
    let x_1708 : vec4<f32> = x_1700.x_AdditionalLightsPosition[x_1706];
    let x_1710 : vec3<f32> = ((-(x_1689) * vec3<f32>(x_1703.w, x_1703.w, x_1703.w)) + vec3<f32>(x_1708.x, x_1708.y, x_1708.z));
    let x_1711 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1711.w);
    let x_1714 : vec4<f32> = u_xlat8;
    let x_1716 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1714.x, x_1714.y, x_1714.z), vec3<f32>(x_1716.x, x_1716.y, x_1716.z));
    let x_1719 : f32 = u_xlat47;
    u_xlat47 = max(x_1719, 6.10351562e-05f);
    let x_1722 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1722);
    let x_1724 : f32 = u_xlat48;
    let x_1726 : vec4<f32> = u_xlat8;
    u_xlat23 = (vec3<f32>(x_1724, x_1724, x_1724) * vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
    let x_1730 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1730);
    let x_1732 : f32 = u_xlat47;
    let x_1733 : i32 = u_xlati43;
    let x_1735 : f32 = x_1700.x_AdditionalLightsAttenuation[x_1733].x;
    u_xlat47 = (x_1732 * x_1735);
    let x_1737 : f32 = u_xlat47;
    let x_1739 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1737) * x_1739) + 1.0f);
    let x_1742 : f32 = u_xlat47;
    u_xlat47 = max(x_1742, 0.0f);
    let x_1744 : f32 = u_xlat47;
    let x_1745 : f32 = u_xlat47;
    u_xlat47 = (x_1744 * x_1745);
    let x_1747 : f32 = u_xlat47;
    let x_1748 : f32 = u_xlat49;
    u_xlat47 = (x_1747 * x_1748);
    let x_1750 : i32 = u_xlati43;
    let x_1752 : vec4<f32> = x_1700.x_AdditionalLightsSpotDir[x_1750];
    let x_1754 : vec3<f32> = u_xlat23;
    u_xlat49 = dot(vec3<f32>(x_1752.x, x_1752.y, x_1752.z), x_1754);
    let x_1756 : f32 = u_xlat49;
    let x_1757 : i32 = u_xlati43;
    let x_1759 : f32 = x_1700.x_AdditionalLightsAttenuation[x_1757].z;
    let x_1761 : i32 = u_xlati43;
    let x_1763 : f32 = x_1700.x_AdditionalLightsAttenuation[x_1761].w;
    u_xlat49 = ((x_1756 * x_1759) + x_1763);
    let x_1765 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1765, 0.0f, 1.0f);
    let x_1767 : f32 = u_xlat49;
    let x_1768 : f32 = u_xlat49;
    u_xlat49 = (x_1767 * x_1768);
    let x_1770 : f32 = u_xlat47;
    let x_1771 : f32 = u_xlat49;
    u_xlat47 = (x_1770 * x_1771);
    let x_1773 : f32 = u_xlat18;
    let x_1775 : i32 = u_xlati43;
    let x_1777 : vec4<f32> = x_1700.x_AdditionalLightsColor[x_1775];
    let x_1779 : vec3<f32> = (vec3<f32>(x_1773, x_1773, x_1773) * vec3<f32>(x_1777.x, x_1777.y, x_1777.z));
    let x_1780 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1779.x, x_1779.y, x_1779.z, x_1780.w);
    let x_1782 : vec4<f32> = u_xlat1;
    let x_1784 : vec3<f32> = u_xlat23;
    u_xlat43 = dot(vec3<f32>(x_1782.x, x_1782.y, x_1782.z), x_1784);
    let x_1786 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1786, 0.0f, 1.0f);
    let x_1788 : f32 = u_xlat43;
    let x_1789 : f32 = u_xlat47;
    u_xlat43 = (x_1788 * x_1789);
    let x_1791 : f32 = u_xlat43;
    let x_1793 : vec4<f32> = u_xlat10;
    let x_1795 : vec3<f32> = (vec3<f32>(x_1791, x_1791, x_1791) * vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
    let x_1796 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
    let x_1798 : vec4<f32> = u_xlat8;
    let x_1800 : f32 = u_xlat48;
    let x_1803 : vec4<f32> = u_xlat7;
    let x_1805 : vec3<f32> = ((vec3<f32>(x_1798.x, x_1798.y, x_1798.z) * vec3<f32>(x_1800, x_1800, x_1800)) + vec3<f32>(x_1803.x, x_1803.y, x_1803.z));
    let x_1806 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
    let x_1808 : vec4<f32> = u_xlat8;
    let x_1810 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1808.x, x_1808.y, x_1808.z), vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
    let x_1813 : f32 = u_xlat43;
    u_xlat43 = max(x_1813, 1.17549435e-37f);
    let x_1815 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_1815);
    let x_1817 : f32 = u_xlat43;
    let x_1819 : vec4<f32> = u_xlat8;
    let x_1821 : vec3<f32> = (vec3<f32>(x_1817, x_1817, x_1817) * vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
    let x_1822 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1821.x, x_1821.y, x_1821.z, x_1822.w);
    let x_1824 : vec4<f32> = u_xlat1;
    let x_1826 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1824.x, x_1824.y, x_1824.z), vec3<f32>(x_1826.x, x_1826.y, x_1826.z));
    let x_1829 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1829, 0.0f, 1.0f);
    let x_1831 : vec3<f32> = u_xlat23;
    let x_1832 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(x_1831, vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
    let x_1835 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1835, 0.0f, 1.0f);
    let x_1837 : f32 = u_xlat43;
    let x_1838 : f32 = u_xlat43;
    u_xlat43 = (x_1837 * x_1838);
    let x_1840 : f32 = u_xlat43;
    let x_1842 : f32 = u_xlat9.x;
    u_xlat43 = ((x_1840 * x_1842) + 1.000010014f);
    let x_1845 : f32 = u_xlat47;
    let x_1846 : f32 = u_xlat47;
    u_xlat47 = (x_1845 * x_1846);
    let x_1848 : f32 = u_xlat43;
    let x_1849 : f32 = u_xlat43;
    u_xlat43 = (x_1848 * x_1849);
    let x_1851 : f32 = u_xlat47;
    u_xlat47 = max(x_1851, 0.100000001f);
    let x_1853 : f32 = u_xlat43;
    let x_1854 : f32 = u_xlat47;
    u_xlat43 = (x_1853 * x_1854);
    let x_1856 : f32 = u_xlat44;
    let x_1857 : f32 = u_xlat43;
    u_xlat43 = (x_1856 * x_1857);
    let x_1859 : f32 = u_xlat45;
    let x_1860 : f32 = u_xlat43;
    u_xlat43 = (x_1859 / x_1860);
    let x_1862 : vec4<f32> = u_xlat5;
    let x_1864 : f32 = u_xlat43;
    let x_1867 : vec4<f32> = u_xlat6;
    let x_1869 : vec3<f32> = ((vec3<f32>(x_1862.x, x_1862.y, x_1862.z) * vec3<f32>(x_1864, x_1864, x_1864)) + vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
    let x_1870 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
    let x_1872 : vec4<f32> = u_xlat8;
    let x_1874 : vec4<f32> = u_xlat10;
    let x_1877 : vec4<f32> = u_xlat4;
    let x_1879 : vec3<f32> = ((vec3<f32>(x_1872.x, x_1872.y, x_1872.z) * vec3<f32>(x_1874.x, x_1874.y, x_1874.z)) + vec3<f32>(x_1877.x, x_1877.z, x_1877.w));
    let x_1880 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1879.x, x_1880.y, x_1879.y, x_1879.z);

    continuing {
      let x_1882 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1882 + bitcast<u32>(1i));
    }
  }
  let x_1884 : vec4<f32> = u_xlat3;
  let x_1886 : f32 = u_xlat14;
  let x_1889 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1884.x, x_1884.y, x_1884.z) * vec3<f32>(x_1886, x_1886, x_1886)) + vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
  let x_1892 : vec4<f32> = u_xlat4;
  let x_1894 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1892.x, x_1892.z, x_1892.w) + x_1894);
  let x_1898 : f32 = u_xlat42;
  let x_1900 : vec3<f32> = u_xlat0;
  let x_1901 : vec3<f32> = (vec3<f32>(x_1898, x_1898, x_1898) * x_1900);
  let x_1902 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}
