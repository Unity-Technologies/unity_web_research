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
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_127 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(9) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(11) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(20) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1027 : MainLightShadows;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1187 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1454 : AdditionalLights;

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
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlat44 : f32;
  var u_xlat17 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb45 : bool;
  var u_xlatb46 : bool;
  var x_1052 : f32;
  var u_xlat46 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati45 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati3 : i32;
  var u_xlat47 : f32;
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
  let x_290 : f32 = u_xlat43;
  u_xlat43 = (x_290 + 6.10351562e-05f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat43;
  u_xlat4 = (x_293 / vec4<f32>(x_294, x_294, x_294, x_294));
  let x_297 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.x, x_297.x) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_310 : vec3<f32> = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<f32> = u_xlat12;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat5;
  let x_322 : vec4<f32> = u_xlat11;
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_333 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.z, x_330.z, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat7;
  let x_340 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.x, x_340.y, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat4;
  let x_351 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_353 : vec3<f32> = (vec3<f32>(x_348.w, x_348.w, x_348.w) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat8;
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec4<f32> = u_xlat5;
  let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.x, x_358.y, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_371 : vec4<f32> = vs_TEXCOORD1;
  let x_374 : f32 = x_127.x_GlobalMipBias.x;
  let x_375 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_371.x, x_371.y), x_374);
  let x_376 : vec3<f32> = vec3<f32>(x_375.x, x_375.y, x_375.w);
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : f32 = u_xlat6.x;
  let x_382 : f32 = u_xlat6.z;
  u_xlat6.x = (x_380 * x_382);
  let x_385 : vec4<f32> = u_xlat6;
  let x_390 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat6;
  let x_395 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_393.x, x_393.y), vec2<f32>(x_395.x, x_395.y));
  let x_398 : f32 = u_xlat43;
  u_xlat43 = min(x_398, 1.0f);
  let x_400 : f32 = u_xlat43;
  u_xlat43 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_403);
  let x_405 : f32 = u_xlat43;
  u_xlat7.z = max(x_405, 1.00000002e-16f);
  let x_409 : vec4<f32> = u_xlat6;
  let x_413 : f32 = x_30.x_NormalScale0;
  let x_415 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_413, x_413));
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_422 : vec4<f32> = vs_TEXCOORD1;
  let x_425 : f32 = x_127.x_GlobalMipBias.x;
  let x_426 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_422.z, x_422.w), x_425);
  let x_427 : vec3<f32> = vec3<f32>(x_426.x, x_426.y, x_426.w);
  let x_428 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = u_xlat6.x;
  let x_433 : f32 = u_xlat6.z;
  u_xlat6.x = (x_431 * x_433);
  let x_436 : vec4<f32> = u_xlat6;
  let x_439 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat6;
  let x_444 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_442.x, x_442.y), vec2<f32>(x_444.x, x_444.y));
  let x_447 : f32 = u_xlat43;
  u_xlat43 = min(x_447, 1.0f);
  let x_449 : f32 = u_xlat43;
  u_xlat43 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_452);
  let x_454 : f32 = u_xlat43;
  u_xlat8.z = max(x_454, 1.00000002e-16f);
  let x_457 : vec4<f32> = u_xlat6;
  let x_460 : f32 = x_30.x_NormalScale1;
  let x_462 : f32 = x_30.x_NormalScale1;
  let x_463 : vec2<f32> = vec2<f32>(x_460, x_462);
  let x_467 : vec2<f32> = (vec2<f32>(x_457.x, x_457.y) * vec2<f32>(x_463.x, x_463.y));
  let x_468 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat4;
  let x_472 : vec4<f32> = u_xlat8;
  let x_474 : vec3<f32> = (vec3<f32>(x_470.y, x_470.y, x_470.y) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat7;
  let x_482 : vec4<f32> = u_xlat6;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.x, x_477.x) * vec3<f32>(x_479.x, x_479.y, x_479.z)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_491 : vec4<f32> = vs_TEXCOORD2;
  let x_494 : f32 = x_127.x_GlobalMipBias.x;
  let x_495 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_491.x, x_491.y), x_494);
  let x_496 : vec3<f32> = vec3<f32>(x_495.x, x_495.y, x_495.w);
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_500 : f32 = u_xlat7.x;
  let x_502 : f32 = u_xlat7.z;
  u_xlat7.x = (x_500 * x_502);
  let x_505 : vec4<f32> = u_xlat7;
  let x_508 : vec2<f32> = ((vec2<f32>(x_505.x, x_505.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_509 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat7;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_511.x, x_511.y), vec2<f32>(x_513.x, x_513.y));
  let x_516 : f32 = u_xlat43;
  u_xlat43 = min(x_516, 1.0f);
  let x_518 : f32 = u_xlat43;
  u_xlat43 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_521);
  let x_523 : f32 = u_xlat43;
  u_xlat8.z = max(x_523, 1.00000002e-16f);
  let x_526 : vec4<f32> = u_xlat7;
  let x_530 : f32 = x_30.x_NormalScale2;
  let x_532 : f32 = x_30.x_NormalScale2;
  let x_533 : vec2<f32> = vec2<f32>(x_530, x_532);
  let x_537 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_533.x, x_533.y));
  let x_538 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec4<f32> = u_xlat8;
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.z, x_540.z, x_540.z) * vec3<f32>(x_542.x, x_542.y, x_542.z)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_554 : vec4<f32> = vs_TEXCOORD2;
  let x_557 : f32 = x_127.x_GlobalMipBias.x;
  let x_558 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_554.z, x_554.w), x_557);
  let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.w);
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_563 : f32 = u_xlat7.x;
  let x_565 : f32 = u_xlat7.z;
  u_xlat7.x = (x_563 * x_565);
  let x_568 : vec4<f32> = u_xlat7;
  let x_571 : vec2<f32> = ((vec2<f32>(x_568.x, x_568.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_572 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat7;
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_574.x, x_574.y), vec2<f32>(x_576.x, x_576.y));
  let x_579 : f32 = u_xlat43;
  u_xlat43 = min(x_579, 1.0f);
  let x_581 : f32 = u_xlat43;
  u_xlat43 = (-(x_581) + 1.0f);
  let x_584 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_584);
  let x_586 : f32 = u_xlat43;
  u_xlat8.z = max(x_586, 1.00000002e-16f);
  let x_589 : vec4<f32> = u_xlat7;
  let x_593 : f32 = x_30.x_NormalScale3;
  let x_595 : f32 = x_30.x_NormalScale3;
  let x_596 : vec2<f32> = vec2<f32>(x_593, x_595);
  let x_600 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_596.x, x_596.y));
  let x_601 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat8;
  let x_608 : vec4<f32> = u_xlat6;
  let x_610 : vec3<f32> = ((vec3<f32>(x_603.w, x_603.w, x_603.w) * vec3<f32>(x_605.x, x_605.y, x_605.z)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = u_xlat6.z;
  u_xlat6.w = (x_614 + 0.00001f);
  let x_618 : vec4<f32> = u_xlat6;
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_618.x, x_618.y, x_618.w), vec3<f32>(x_620.x, x_620.y, x_620.w));
  let x_623 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat43;
  let x_627 : vec4<f32> = u_xlat6;
  let x_629 : vec3<f32> = (vec3<f32>(x_625, x_625, x_625) * vec3<f32>(x_627.x, x_627.y, x_627.w));
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_633 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_633;
  let x_636 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_636;
  let x_639 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_639;
  let x_642 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_642;
  let x_645 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_645;
  let x_648 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_648;
  let x_651 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_651;
  let x_654 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_654;
  let x_656 : vec4<f32> = u_xlat7;
  let x_657 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_656 + x_657);
  let x_660 : f32 = u_xlat0.z;
  u_xlat8.x = x_660;
  let x_663 : f32 = u_xlat1.z;
  u_xlat8.y = x_663;
  let x_666 : f32 = u_xlat2.z;
  u_xlat8.z = x_666;
  let x_669 : f32 = u_xlat3.y;
  u_xlat8.w = x_669;
  let x_671 : vec4<f32> = u_xlat9;
  let x_674 : f32 = x_30.x_Smoothness0;
  let x_676 : f32 = x_30.x_Smoothness1;
  let x_678 : f32 = x_30.x_Smoothness2;
  let x_680 : f32 = x_30.x_Smoothness3;
  let x_683 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_671) * vec4<f32>(x_674, x_676, x_678, x_680)) + x_683);
  let x_687 : f32 = x_30.x_LayerHasMask0;
  let x_690 : f32 = x_30.x_LayerHasMask1;
  let x_693 : f32 = x_30.x_LayerHasMask2;
  let x_696 : f32 = x_30.x_LayerHasMask3;
  let x_698 : vec4<f32> = u_xlat8;
  let x_700 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_687, x_690, x_693, x_696) * x_698) + x_700);
  let x_703 : vec4<f32> = u_xlat4;
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_703, x_704);
  let x_707 : f32 = u_xlat0.x;
  u_xlat8.x = x_707;
  let x_710 : f32 = u_xlat1.x;
  u_xlat8.y = x_710;
  let x_713 : f32 = u_xlat2.x;
  u_xlat8.z = x_713;
  let x_716 : f32 = u_xlat3.x;
  u_xlat8.w = x_716;
  let x_718 : vec4<f32> = u_xlat8;
  let x_721 : f32 = x_30.x_Metallic0;
  let x_724 : f32 = x_30.x_Metallic1;
  let x_727 : f32 = x_30.x_Metallic2;
  let x_730 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_718 + -(vec4<f32>(x_721, x_724, x_727, x_730)));
  let x_735 : f32 = x_30.x_LayerHasMask0;
  let x_737 : f32 = x_30.x_LayerHasMask1;
  let x_739 : f32 = x_30.x_LayerHasMask2;
  let x_741 : f32 = x_30.x_LayerHasMask3;
  let x_743 : vec4<f32> = u_xlat8;
  let x_746 : f32 = x_30.x_Metallic0;
  let x_748 : f32 = x_30.x_Metallic1;
  let x_750 : f32 = x_30.x_Metallic2;
  let x_752 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_735, x_737, x_739, x_741) * x_743) + vec4<f32>(x_746, x_748, x_750, x_752));
  let x_755 : vec4<f32> = u_xlat4;
  let x_756 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_755, x_756);
  let x_760 : f32 = u_xlat0.y;
  u_xlat3.x = x_760;
  let x_763 : f32 = u_xlat1.y;
  u_xlat3.y = x_763;
  let x_766 : f32 = u_xlat2.y;
  u_xlat3.z = x_766;
  let x_768 : vec4<f32> = u_xlat7;
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_768) + x_770);
  let x_773 : f32 = x_30.x_LayerHasMask0;
  let x_775 : f32 = x_30.x_LayerHasMask1;
  let x_777 : f32 = x_30.x_LayerHasMask2;
  let x_779 : f32 = x_30.x_LayerHasMask3;
  let x_781 : vec4<f32> = u_xlat1;
  let x_783 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_773, x_775, x_777, x_779) * x_781) + x_783);
  let x_786 : vec4<f32> = u_xlat4;
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_786, x_787);
  let x_789 : vec4<f32> = u_xlat6;
  let x_792 : vec4<f32> = vs_TEXCOORD5;
  let x_794 : vec3<f32> = (vec3<f32>(x_789.y, x_789.y, x_789.y) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat6;
  let x_800 : vec4<f32> = vs_TEXCOORD4;
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.x, x_797.x) * -(vec3<f32>(x_800.x, x_800.y, x_800.z))) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat6;
  let x_812 : vec4<f32> = vs_TEXCOORD3;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_809.z, x_809.z, x_809.z) * vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat1;
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat43;
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_839 : vec4<f32> = vs_TEXCOORD0;
  let x_842 : f32 = x_127.x_GlobalMipBias.x;
  let x_843 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_839.z, x_839.w), x_842);
  u_xlat2 = x_843;
  let x_848 : vec4<f32> = vs_TEXCOORD0;
  let x_851 : f32 = x_127.x_GlobalMipBias.x;
  let x_852 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_848.z, x_848.w), x_851);
  let x_853 : vec3<f32> = vec3<f32>(x_852.x, x_852.y, x_852.z);
  let x_854 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat1;
  let x_865 : vec4<f32> = u_xlat2;
  u_xlat43 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat43;
  u_xlat43 = (x_868 + 0.5f);
  let x_870 : f32 = u_xlat43;
  let x_872 : vec4<f32> = u_xlat3;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_878 : f32 = u_xlat2.w;
  u_xlat43 = max(x_878, 0.0001f);
  let x_881 : vec4<f32> = u_xlat2;
  let x_883 : f32 = u_xlat43;
  let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) / vec3<f32>(x_883, x_883, x_883));
  let x_886 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_890 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
  let x_895 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_891.x, x_891.y));
  let x_896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
  let x_898 : vec4<f32> = u_xlat3;
  let x_900 : vec4<f32> = hlslcc_FragCoord;
  let x_902 : vec2<f32> = (vec2<f32>(x_898.x, x_898.y) * vec2<f32>(x_900.x, x_900.y));
  let x_903 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
  let x_906 : f32 = u_xlat3.y;
  let x_908 : f32 = x_127.x_ScaleBiasRt.x;
  let x_911 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat43 = ((x_906 * x_908) + x_911);
  let x_913 : f32 = u_xlat43;
  u_xlat3.z = (-(x_913) + 1.0f);
  let x_918 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_918) * 0.959999979f) + 0.959999979f);
  let x_924 : f32 = u_xlat28;
  let x_925 : f32 = u_xlat43;
  u_xlat44 = (x_924 + -(x_925));
  let x_928 : f32 = u_xlat43;
  let x_930 : vec4<f32> = u_xlat5;
  let x_932 : vec3<f32> = (vec3<f32>(x_928, x_928, x_928) * vec3<f32>(x_930.x, x_930.y, x_930.z));
  let x_933 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec4<f32> = u_xlat5;
  let x_939 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_940 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_942 : vec3<f32> = u_xlat0;
  let x_944 : vec4<f32> = u_xlat5;
  let x_949 : vec3<f32> = ((vec3<f32>(x_942.x, x_942.x, x_942.x) * vec3<f32>(x_944.x, x_944.y, x_944.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_950 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : f32 = u_xlat28;
  u_xlat0.x = (-(x_952) + 1.0f);
  let x_957 : f32 = u_xlat0.x;
  let x_959 : f32 = u_xlat0.x;
  u_xlat28 = (x_957 * x_959);
  let x_961 : f32 = u_xlat28;
  u_xlat28 = max(x_961, 0.0078125f);
  let x_964 : f32 = u_xlat28;
  let x_965 : f32 = u_xlat28;
  u_xlat43 = (x_964 * x_965);
  let x_967 : f32 = u_xlat44;
  u_xlat44 = (x_967 + 1.0f);
  let x_969 : f32 = u_xlat44;
  u_xlat44 = clamp(x_969, 0.0f, 1.0f);
  let x_972 : f32 = u_xlat28;
  u_xlat17 = ((x_972 * 4.0f) + 2.0f);
  let x_980 : vec4<f32> = u_xlat3;
  let x_983 : f32 = x_127.x_GlobalMipBias.x;
  let x_984 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_980.x, x_980.z), x_983);
  u_xlat3.x = x_984.x;
  let x_989 : f32 = u_xlat3.x;
  u_xlat31 = (x_989 + -1.0f);
  let x_992 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_993 : f32 = u_xlat31;
  u_xlat31 = ((x_992 * x_993) + 1.0f);
  let x_996 : f32 = u_xlat14;
  let x_998 : f32 = u_xlat3.x;
  u_xlat14 = min(x_996, x_998);
  let x_1002 : vec4<f32> = vs_TEXCOORD8;
  let x_1003 : vec2<f32> = vec2<f32>(x_1002.x, x_1002.y);
  let x_1005 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1003.x, x_1003.y, x_1005);
  let x_1017 : vec3<f32> = txVec0;
  let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1017.xy, x_1017.z);
  u_xlat3.x = x_1019;
  let x_1029 : f32 = x_1027.x_MainLightShadowParams.x;
  u_xlat45 = (-(x_1029) + 1.0f);
  let x_1033 : f32 = u_xlat3.x;
  let x_1035 : f32 = x_1027.x_MainLightShadowParams.x;
  let x_1037 : f32 = u_xlat45;
  u_xlat3.x = ((x_1033 * x_1035) + x_1037);
  let x_1042 : f32 = vs_TEXCOORD8.z;
  u_xlatb45 = (0.0f >= x_1042);
  let x_1046 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_1046 >= 1.0f);
  let x_1048 : bool = u_xlatb45;
  let x_1049 : bool = u_xlatb46;
  u_xlatb45 = (x_1048 | x_1049);
  let x_1051 : bool = u_xlatb45;
  if (x_1051) {
    x_1052 = 1.0f;
  } else {
    let x_1057 : f32 = u_xlat3.x;
    x_1052 = x_1057;
  }
  let x_1058 : f32 = x_1052;
  u_xlat3.x = x_1058;
  let x_1062 : vec3<f32> = vs_TEXCOORD7;
  let x_1065 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_1067 : vec3<f32> = (x_1062 + -(x_1065));
  let x_1068 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1070 : vec4<f32> = u_xlat6;
  let x_1072 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(vec3<f32>(x_1070.x, x_1070.y, x_1070.z), vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : f32 = u_xlat45;
  let x_1077 : f32 = x_1027.x_MainLightShadowParams.z;
  let x_1080 : f32 = x_1027.x_MainLightShadowParams.w;
  u_xlat45 = ((x_1075 * x_1077) + x_1080);
  let x_1082 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1082, 0.0f, 1.0f);
  let x_1086 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_1086) + 1.0f);
  let x_1089 : f32 = u_xlat45;
  let x_1090 : f32 = u_xlat46;
  let x_1093 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1089 * x_1090) + x_1093);
  let x_1096 : f32 = u_xlat31;
  let x_1099 : vec4<f32> = x_127.x_MainLightColor;
  let x_1101 : vec3<f32> = (vec3<f32>(x_1096, x_1096, x_1096) * vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
  let x_1102 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1105 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1105;
  let x_1108 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1108;
  let x_1111 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1111;
  let x_1113 : vec4<f32> = u_xlat7;
  let x_1116 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(-(vec3<f32>(x_1113.x, x_1113.y, x_1113.z)), vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : f32 = u_xlat45;
  let x_1120 : f32 = u_xlat45;
  u_xlat45 = (x_1119 + x_1120);
  let x_1122 : vec4<f32> = u_xlat1;
  let x_1124 : f32 = u_xlat45;
  let x_1128 : vec4<f32> = u_xlat7;
  let x_1131 : vec3<f32> = ((vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * -(vec3<f32>(x_1124, x_1124, x_1124))) + -(vec3<f32>(x_1128.x, x_1128.y, x_1128.z)));
  let x_1132 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
  let x_1134 : vec4<f32> = u_xlat1;
  let x_1136 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1134.x, x_1134.y, x_1134.z), vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1139 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1139, 0.0f, 1.0f);
  let x_1141 : f32 = u_xlat45;
  u_xlat45 = (-(x_1141) + 1.0f);
  let x_1144 : f32 = u_xlat45;
  let x_1145 : f32 = u_xlat45;
  u_xlat45 = (x_1144 * x_1145);
  let x_1147 : f32 = u_xlat45;
  let x_1148 : f32 = u_xlat45;
  u_xlat45 = (x_1147 * x_1148);
  let x_1151 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1151) * 0.699999988f) + 1.700000048f);
  let x_1158 : f32 = u_xlat0.x;
  let x_1159 : f32 = u_xlat46;
  u_xlat0.x = (x_1158 * x_1159);
  let x_1163 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1163 * 6.0f);
  let x_1175 : vec4<f32> = u_xlat8;
  let x_1178 : f32 = u_xlat0.x;
  let x_1179 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1175.x, x_1175.y, x_1175.z), x_1178);
  u_xlat8 = x_1179;
  let x_1181 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1181 + -1.0f);
  let x_1189 : f32 = x_1187.unity_SpecCube0_HDR.w;
  let x_1191 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1189 * x_1191) + 1.0f);
  let x_1196 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1196, 0.0f);
  let x_1200 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1200);
  let x_1204 : f32 = u_xlat0.x;
  let x_1206 : f32 = x_1187.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1204 * x_1206);
  let x_1210 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1210);
  let x_1214 : f32 = u_xlat0.x;
  let x_1216 : f32 = x_1187.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1214 * x_1216);
  let x_1219 : vec4<f32> = u_xlat8;
  let x_1221 : vec3<f32> = u_xlat0;
  let x_1223 : vec3<f32> = (vec3<f32>(x_1219.x, x_1219.y, x_1219.z) * vec3<f32>(x_1221.x, x_1221.x, x_1221.x));
  let x_1224 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  let x_1226 : f32 = u_xlat28;
  let x_1228 : f32 = u_xlat28;
  let x_1232 : vec2<f32> = ((vec2<f32>(x_1226, x_1226) * vec2<f32>(x_1228, x_1228)) + vec2<f32>(-1.0f, 1.0f));
  let x_1233 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1232.x, x_1233.y, x_1232.y);
  let x_1236 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1236);
  let x_1238 : vec4<f32> = u_xlat5;
  let x_1241 : f32 = u_xlat44;
  let x_1243 : vec3<f32> = (-(vec3<f32>(x_1238.x, x_1238.y, x_1238.z)) + vec3<f32>(x_1241, x_1241, x_1241));
  let x_1244 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
  let x_1246 : f32 = u_xlat45;
  let x_1248 : vec4<f32> = u_xlat9;
  let x_1251 : vec4<f32> = u_xlat5;
  let x_1253 : vec3<f32> = ((vec3<f32>(x_1246, x_1246, x_1246) * vec3<f32>(x_1248.x, x_1248.y, x_1248.z)) + vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
  let x_1254 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
  let x_1256 : f32 = u_xlat28;
  let x_1258 : vec4<f32> = u_xlat9;
  let x_1260 : vec3<f32> = (vec3<f32>(x_1256, x_1256, x_1256) * vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
  let x_1263 : vec4<f32> = u_xlat8;
  let x_1265 : vec4<f32> = u_xlat9;
  let x_1267 : vec3<f32> = (vec3<f32>(x_1263.x, x_1263.y, x_1263.z) * vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
  let x_1268 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
  let x_1270 : vec4<f32> = u_xlat2;
  let x_1272 : vec4<f32> = u_xlat4;
  let x_1275 : vec4<f32> = u_xlat8;
  let x_1277 : vec3<f32> = ((vec3<f32>(x_1270.x, x_1270.y, x_1270.z) * vec3<f32>(x_1272.x, x_1272.y, x_1272.z)) + vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
  let x_1278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1281 : f32 = u_xlat3.x;
  let x_1283 : f32 = x_1187.unity_LightData.z;
  u_xlat28 = (x_1281 * x_1283);
  let x_1285 : vec4<f32> = u_xlat1;
  let x_1288 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1285.x, x_1285.y, x_1285.z), vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1291, 0.0f, 1.0f);
  let x_1293 : f32 = u_xlat28;
  let x_1294 : f32 = u_xlat44;
  u_xlat28 = (x_1293 * x_1294);
  let x_1296 : f32 = u_xlat28;
  let x_1298 : vec4<f32> = u_xlat6;
  let x_1300 : vec3<f32> = (vec3<f32>(x_1296, x_1296, x_1296) * vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1301 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
  let x_1303 : vec4<f32> = u_xlat7;
  let x_1306 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1308 : vec3<f32> = (vec3<f32>(x_1303.x, x_1303.y, x_1303.z) + vec3<f32>(x_1306.x, x_1306.y, x_1306.z));
  let x_1309 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1311 : vec4<f32> = u_xlat8;
  let x_1313 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1311.x, x_1311.y, x_1311.z), vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1316 : f32 = u_xlat28;
  u_xlat28 = max(x_1316, 1.17549435e-37f);
  let x_1319 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1319);
  let x_1321 : f32 = u_xlat28;
  let x_1323 : vec4<f32> = u_xlat8;
  let x_1325 : vec3<f32> = (vec3<f32>(x_1321, x_1321, x_1321) * vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : vec4<f32> = u_xlat1;
  let x_1330 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1328.x, x_1328.y, x_1328.z), vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
  let x_1333 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1333, 0.0f, 1.0f);
  let x_1336 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1338 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1336.x, x_1336.y, x_1336.z), vec3<f32>(x_1338.x, x_1338.y, x_1338.z));
  let x_1341 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1341, 0.0f, 1.0f);
  let x_1343 : f32 = u_xlat28;
  let x_1344 : f32 = u_xlat28;
  u_xlat28 = (x_1343 * x_1344);
  let x_1346 : f32 = u_xlat28;
  let x_1348 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1346 * x_1348) + 1.000010014f);
  let x_1352 : f32 = u_xlat44;
  let x_1353 : f32 = u_xlat44;
  u_xlat44 = (x_1352 * x_1353);
  let x_1355 : f32 = u_xlat28;
  let x_1356 : f32 = u_xlat28;
  u_xlat28 = (x_1355 * x_1356);
  let x_1358 : f32 = u_xlat44;
  u_xlat44 = max(x_1358, 0.100000001f);
  let x_1361 : f32 = u_xlat28;
  let x_1362 : f32 = u_xlat44;
  u_xlat28 = (x_1361 * x_1362);
  let x_1364 : f32 = u_xlat17;
  let x_1365 : f32 = u_xlat28;
  u_xlat28 = (x_1364 * x_1365);
  let x_1367 : f32 = u_xlat43;
  let x_1368 : f32 = u_xlat28;
  u_xlat28 = (x_1367 / x_1368);
  let x_1370 : vec4<f32> = u_xlat5;
  let x_1372 : f32 = u_xlat28;
  let x_1375 : vec4<f32> = u_xlat4;
  let x_1377 : vec3<f32> = ((vec3<f32>(x_1370.x, x_1370.y, x_1370.z) * vec3<f32>(x_1372, x_1372, x_1372)) + vec3<f32>(x_1375.x, x_1375.y, x_1375.z));
  let x_1378 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1378.w);
  let x_1380 : vec4<f32> = u_xlat6;
  let x_1382 : vec4<f32> = u_xlat8;
  let x_1384 : vec3<f32> = (vec3<f32>(x_1380.x, x_1380.y, x_1380.z) * vec3<f32>(x_1382.x, x_1382.y, x_1382.z));
  let x_1385 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
  let x_1388 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_1390 : f32 = x_1187.unity_LightData.y;
  u_xlat28 = min(x_1388, x_1390);
  let x_1394 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1394));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1406 : u32 = u_xlatu_loop_1;
    let x_1407 : u32 = u_xlatu28;
    if ((x_1406 < x_1407)) {
    } else {
      break;
    }
    let x_1410 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1410 >> 2u);
    let x_1414 : u32 = u_xlatu_loop_1;
    u_xlati45 = bitcast<i32>((x_1414 & 3u));
    let x_1417 : u32 = u_xlatu3;
    let x_1420 : vec4<f32> = x_1187.unity_LightIndices[bitcast<i32>(x_1417)];
    let x_1430 : i32 = u_xlati45;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1435 : vec4<u32> = indexable[x_1430];
    u_xlat3.x = dot(x_1420, bitcast<vec4<f32>>(x_1435));
    let x_1441 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_1441);
    let x_1443 : vec3<f32> = vs_TEXCOORD7;
    let x_1455 : i32 = u_xlati3;
    let x_1457 : vec4<f32> = x_1454.x_AdditionalLightsPosition[x_1455];
    let x_1460 : i32 = u_xlati3;
    let x_1462 : vec4<f32> = x_1454.x_AdditionalLightsPosition[x_1460];
    let x_1464 : vec3<f32> = ((-(x_1443) * vec3<f32>(x_1457.w, x_1457.w, x_1457.w)) + vec3<f32>(x_1462.x, x_1462.y, x_1462.z));
    let x_1465 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
    let x_1467 : vec4<f32> = u_xlat9;
    let x_1469 : vec4<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1467.x, x_1467.y, x_1467.z), vec3<f32>(x_1469.x, x_1469.y, x_1469.z));
    let x_1472 : f32 = u_xlat45;
    u_xlat45 = max(x_1472, 6.10351562e-05f);
    let x_1474 : f32 = u_xlat45;
    u_xlat46 = inverseSqrt(x_1474);
    let x_1476 : f32 = u_xlat46;
    let x_1478 : vec4<f32> = u_xlat9;
    let x_1480 : vec3<f32> = (vec3<f32>(x_1476, x_1476, x_1476) * vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
    let x_1481 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
    let x_1484 : f32 = u_xlat45;
    u_xlat47 = (1.0f / x_1484);
    let x_1486 : f32 = u_xlat45;
    let x_1487 : i32 = u_xlati3;
    let x_1489 : f32 = x_1454.x_AdditionalLightsAttenuation[x_1487].x;
    u_xlat45 = (x_1486 * x_1489);
    let x_1491 : f32 = u_xlat45;
    let x_1493 : f32 = u_xlat45;
    u_xlat45 = ((-(x_1491) * x_1493) + 1.0f);
    let x_1496 : f32 = u_xlat45;
    u_xlat45 = max(x_1496, 0.0f);
    let x_1498 : f32 = u_xlat45;
    let x_1499 : f32 = u_xlat45;
    u_xlat45 = (x_1498 * x_1499);
    let x_1501 : f32 = u_xlat45;
    let x_1502 : f32 = u_xlat47;
    u_xlat45 = (x_1501 * x_1502);
    let x_1504 : i32 = u_xlati3;
    let x_1506 : vec4<f32> = x_1454.x_AdditionalLightsSpotDir[x_1504];
    let x_1508 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1506.x, x_1506.y, x_1506.z), vec3<f32>(x_1508.x, x_1508.y, x_1508.z));
    let x_1511 : f32 = u_xlat47;
    let x_1512 : i32 = u_xlati3;
    let x_1514 : f32 = x_1454.x_AdditionalLightsAttenuation[x_1512].z;
    let x_1516 : i32 = u_xlati3;
    let x_1518 : f32 = x_1454.x_AdditionalLightsAttenuation[x_1516].w;
    u_xlat47 = ((x_1511 * x_1514) + x_1518);
    let x_1520 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1520, 0.0f, 1.0f);
    let x_1522 : f32 = u_xlat47;
    let x_1523 : f32 = u_xlat47;
    u_xlat47 = (x_1522 * x_1523);
    let x_1525 : f32 = u_xlat45;
    let x_1526 : f32 = u_xlat47;
    u_xlat45 = (x_1525 * x_1526);
    let x_1528 : f32 = u_xlat31;
    let x_1530 : i32 = u_xlati3;
    let x_1532 : vec4<f32> = x_1454.x_AdditionalLightsColor[x_1530];
    let x_1534 : vec3<f32> = (vec3<f32>(x_1528, x_1528, x_1528) * vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
    let x_1535 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1535.w);
    let x_1537 : vec4<f32> = u_xlat1;
    let x_1539 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_1537.x, x_1537.y, x_1537.z), vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
    let x_1544 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1544, 0.0f, 1.0f);
    let x_1548 : f32 = u_xlat3.x;
    let x_1549 : f32 = u_xlat45;
    u_xlat3.x = (x_1548 * x_1549);
    let x_1552 : vec4<f32> = u_xlat3;
    let x_1554 : vec4<f32> = u_xlat11;
    let x_1556 : vec3<f32> = (vec3<f32>(x_1552.x, x_1552.x, x_1552.x) * vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
    let x_1557 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
    let x_1559 : vec4<f32> = u_xlat9;
    let x_1561 : f32 = u_xlat46;
    let x_1564 : vec4<f32> = u_xlat7;
    let x_1566 : vec3<f32> = ((vec3<f32>(x_1559.x, x_1559.y, x_1559.z) * vec3<f32>(x_1561, x_1561, x_1561)) + vec3<f32>(x_1564.x, x_1564.y, x_1564.z));
    let x_1567 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
    let x_1569 : vec4<f32> = u_xlat9;
    let x_1571 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_1569.x, x_1569.y, x_1569.z), vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
    let x_1576 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1576, 1.17549435e-37f);
    let x_1580 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1580);
    let x_1583 : vec4<f32> = u_xlat3;
    let x_1585 : vec4<f32> = u_xlat9;
    let x_1587 : vec3<f32> = (vec3<f32>(x_1583.x, x_1583.x, x_1583.x) * vec3<f32>(x_1585.x, x_1585.y, x_1585.z));
    let x_1588 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1587.x, x_1587.y, x_1587.z, x_1588.w);
    let x_1590 : vec4<f32> = u_xlat1;
    let x_1592 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_1590.x, x_1590.y, x_1590.z), vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
    let x_1597 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1597, 0.0f, 1.0f);
    let x_1600 : vec4<f32> = u_xlat10;
    let x_1602 : vec4<f32> = u_xlat9;
    u_xlat3.w = dot(vec3<f32>(x_1600.x, x_1600.y, x_1600.z), vec3<f32>(x_1602.x, x_1602.y, x_1602.z));
    let x_1607 : f32 = u_xlat3.w;
    u_xlat3.w = clamp(x_1607, 0.0f, 1.0f);
    let x_1610 : vec4<f32> = u_xlat3;
    let x_1612 : vec4<f32> = u_xlat3;
    let x_1614 : vec2<f32> = (vec2<f32>(x_1610.x, x_1610.w) * vec2<f32>(x_1612.x, x_1612.w));
    let x_1615 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1614.x, x_1615.y, x_1615.z, x_1614.y);
    let x_1618 : f32 = u_xlat3.x;
    let x_1620 : f32 = u_xlat0.x;
    u_xlat3.x = ((x_1618 * x_1620) + 1.000010014f);
    let x_1625 : f32 = u_xlat3.x;
    let x_1627 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1625 * x_1627);
    let x_1631 : f32 = u_xlat3.w;
    u_xlat45 = max(x_1631, 0.100000001f);
    let x_1633 : f32 = u_xlat45;
    let x_1635 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1633 * x_1635);
    let x_1638 : f32 = u_xlat17;
    let x_1640 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1638 * x_1640);
    let x_1643 : f32 = u_xlat43;
    let x_1645 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1643 / x_1645);
    let x_1648 : vec4<f32> = u_xlat5;
    let x_1650 : vec4<f32> = u_xlat3;
    let x_1653 : vec4<f32> = u_xlat4;
    let x_1655 : vec3<f32> = ((vec3<f32>(x_1648.x, x_1648.y, x_1648.z) * vec3<f32>(x_1650.x, x_1650.x, x_1650.x)) + vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
    let x_1656 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
    let x_1658 : vec4<f32> = u_xlat9;
    let x_1660 : vec4<f32> = u_xlat11;
    let x_1663 : vec4<f32> = u_xlat8;
    let x_1665 : vec3<f32> = ((vec3<f32>(x_1658.x, x_1658.y, x_1658.z) * vec3<f32>(x_1660.x, x_1660.y, x_1660.z)) + vec3<f32>(x_1663.x, x_1663.y, x_1663.z));
    let x_1666 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1665.x, x_1665.y, x_1665.z, x_1666.w);

    continuing {
      let x_1668 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1668 + bitcast<u32>(1i));
    }
  }
  let x_1670 : vec4<f32> = u_xlat2;
  let x_1672 : f32 = u_xlat14;
  let x_1675 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1670.x, x_1670.y, x_1670.z) * vec3<f32>(x_1672, x_1672, x_1672)) + vec3<f32>(x_1675.x, x_1675.y, x_1675.z));
  let x_1678 : vec4<f32> = u_xlat8;
  let x_1680 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1678.x, x_1678.y, x_1678.z) + x_1680);
  let x_1684 : f32 = u_xlat42;
  let x_1686 : vec3<f32> = u_xlat0;
  let x_1687 : vec3<f32> = (vec3<f32>(x_1684, x_1684, x_1684) * x_1686);
  let x_1688 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1687.x, x_1687.y, x_1687.z, x_1688.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

