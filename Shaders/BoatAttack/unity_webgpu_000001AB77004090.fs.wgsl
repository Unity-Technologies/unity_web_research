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

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_842 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(15) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(20) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1389 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1655 : AdditionalLights;

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
  var u_xlatb2 : vec4<bool>;
  var u_xlatu43 : u32;
  var u_xlati43 : i32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat18 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb30 : bool;
  var x_1235 : f32;
  var u_xlat30 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati48 : i32;
  var u_xlat47 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati47 : i32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
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
  let x_836 : vec3<f32> = vs_TEXCOORD7;
  let x_844 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres0;
  let x_847 : vec3<f32> = (x_836 + -(vec3<f32>(x_844.x, x_844.y, x_844.z)));
  let x_848 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec3<f32> = vs_TEXCOORD7;
  let x_852 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres1;
  let x_855 : vec3<f32> = (x_850 + -(vec3<f32>(x_852.x, x_852.y, x_852.z)));
  let x_856 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec3<f32> = vs_TEXCOORD7;
  let x_860 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres2;
  let x_863 : vec3<f32> = (x_858 + -(vec3<f32>(x_860.x, x_860.y, x_860.z)));
  let x_864 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec3<f32> = vs_TEXCOORD7;
  let x_868 : vec4<f32> = x_842.x_CascadeShadowSplitSpheres3;
  let x_871 : vec3<f32> = (x_866 + -(vec3<f32>(x_868.x, x_868.y, x_868.z)));
  let x_872 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat2;
  let x_876 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_874.x, x_874.y, x_874.z), vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_880 : vec4<f32> = u_xlat3;
  let x_882 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_880.x, x_880.y, x_880.z), vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_886 : vec4<f32> = u_xlat4;
  let x_888 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_886.x, x_886.y, x_886.z), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_892 : vec4<f32> = u_xlat6;
  let x_894 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_892.x, x_892.y, x_892.z), vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = x_842.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_900 < x_902);
  let x_905 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_905);
  let x_909 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_909);
  let x_913 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_913);
  let x_917 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_917);
  let x_921 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_921);
  let x_926 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_926);
  let x_930 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_930);
  let x_933 : vec4<f32> = u_xlat2;
  let x_935 : vec4<f32> = u_xlat3;
  let x_937 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) + vec3<f32>(x_935.y, x_935.z, x_935.w));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat2;
  let x_943 : vec3<f32> = max(vec3<f32>(x_940.x, x_940.y, x_940.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_944 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_944.x, x_943.x, x_943.y, x_943.z);
  let x_946 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(x_946, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_950 : f32 = u_xlat43;
  u_xlat43 = (-(x_950) + 4.0f);
  let x_955 : f32 = u_xlat43;
  u_xlatu43 = u32(x_955);
  let x_959 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_959) << bitcast<u32>(2i));
  let x_962 : vec3<f32> = vs_TEXCOORD7;
  let x_964 : i32 = u_xlati43;
  let x_967 : i32 = u_xlati43;
  let x_971 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_964 + 1i) / 4i)][((x_967 + 1i) % 4i)];
  let x_973 : vec3<f32> = (vec3<f32>(x_962.y, x_962.y, x_962.y) * vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : i32 = u_xlati43;
  let x_978 : i32 = u_xlati43;
  let x_981 : vec4<f32> = x_842.x_MainLightWorldToShadow[(x_976 / 4i)][(x_978 % 4i)];
  let x_983 : vec3<f32> = vs_TEXCOORD7;
  let x_986 : vec4<f32> = u_xlat2;
  let x_988 : vec3<f32> = ((vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(x_983.x, x_983.x, x_983.x)) + vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_989 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : i32 = u_xlati43;
  let x_994 : i32 = u_xlati43;
  let x_998 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_991 + 2i) / 4i)][((x_994 + 2i) % 4i)];
  let x_1000 : vec3<f32> = vs_TEXCOORD7;
  let x_1003 : vec4<f32> = u_xlat2;
  let x_1005 : vec3<f32> = ((vec3<f32>(x_998.x, x_998.y, x_998.z) * vec3<f32>(x_1000.z, x_1000.z, x_1000.z)) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat2;
  let x_1010 : i32 = u_xlati43;
  let x_1013 : i32 = u_xlati43;
  let x_1017 : vec4<f32> = x_842.x_MainLightWorldToShadow[((x_1010 + 3i) / 4i)][((x_1013 + 3i) % 4i)];
  let x_1019 : vec3<f32> = (vec3<f32>(x_1008.x, x_1008.y, x_1008.z) + vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
  let x_1020 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1027 : vec4<f32> = vs_TEXCOORD0;
  let x_1030 : f32 = x_127.x_GlobalMipBias.x;
  let x_1031 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_1027.z, x_1027.w), x_1030);
  u_xlat3 = x_1031;
  let x_1036 : vec4<f32> = vs_TEXCOORD0;
  let x_1039 : f32 = x_127.x_GlobalMipBias.x;
  let x_1040 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_1036.z, x_1036.w), x_1039);
  let x_1041 : vec3<f32> = vec3<f32>(x_1040.x, x_1040.y, x_1040.z);
  let x_1042 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat3;
  let x_1048 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.y, x_1044.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1049 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
  let x_1051 : vec4<f32> = u_xlat1;
  let x_1053 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_1051.x, x_1051.y, x_1051.z), vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
  let x_1056 : f32 = u_xlat43;
  u_xlat43 = (x_1056 + 0.5f);
  let x_1058 : f32 = u_xlat43;
  let x_1060 : vec4<f32> = u_xlat4;
  let x_1062 : vec3<f32> = (vec3<f32>(x_1058, x_1058, x_1058) * vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1066 : f32 = u_xlat3.w;
  u_xlat43 = max(x_1066, 0.0001f);
  let x_1069 : vec4<f32> = u_xlat3;
  let x_1071 : f32 = u_xlat43;
  let x_1073 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) / vec3<f32>(x_1071, x_1071, x_1071));
  let x_1074 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1078 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_1079 : vec2<f32> = vec2<f32>(x_1078.x, x_1078.y);
  let x_1083 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_1079.x, x_1079.y));
  let x_1084 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat4;
  let x_1088 : vec4<f32> = hlslcc_FragCoord;
  let x_1090 : vec2<f32> = (vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(x_1088.x, x_1088.y));
  let x_1091 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
  let x_1094 : f32 = u_xlat4.y;
  let x_1096 : f32 = x_127.x_ScaleBiasRt.x;
  let x_1099 : f32 = x_127.x_ScaleBiasRt.y;
  u_xlat43 = ((x_1094 * x_1096) + x_1099);
  let x_1101 : f32 = u_xlat43;
  u_xlat4.z = (-(x_1101) + 1.0f);
  let x_1106 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_1106) * 0.959999979f) + 0.959999979f);
  let x_1112 : f32 = u_xlat28;
  let x_1113 : f32 = u_xlat43;
  u_xlat44 = (x_1112 + -(x_1113));
  let x_1116 : f32 = u_xlat43;
  let x_1118 : vec4<f32> = u_xlat5;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1116, x_1116, x_1116) * vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1121 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec4<f32> = u_xlat5;
  let x_1127 : vec3<f32> = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1128 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : vec3<f32> = u_xlat0;
  let x_1132 : vec4<f32> = u_xlat5;
  let x_1137 : vec3<f32> = ((vec3<f32>(x_1130.x, x_1130.x, x_1130.x) * vec3<f32>(x_1132.x, x_1132.y, x_1132.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1138 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : f32 = u_xlat28;
  u_xlat0.x = (-(x_1140) + 1.0f);
  let x_1145 : f32 = u_xlat0.x;
  let x_1147 : f32 = u_xlat0.x;
  u_xlat28 = (x_1145 * x_1147);
  let x_1149 : f32 = u_xlat28;
  u_xlat28 = max(x_1149, 0.0078125f);
  let x_1152 : f32 = u_xlat28;
  let x_1153 : f32 = u_xlat28;
  u_xlat43 = (x_1152 * x_1153);
  let x_1155 : f32 = u_xlat44;
  u_xlat44 = (x_1155 + 1.0f);
  let x_1157 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1157, 0.0f, 1.0f);
  let x_1160 : f32 = u_xlat28;
  u_xlat45 = ((x_1160 * 4.0f) + 2.0f);
  let x_1168 : vec4<f32> = u_xlat4;
  let x_1171 : f32 = x_127.x_GlobalMipBias.x;
  let x_1172 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1168.x, x_1168.z), x_1171);
  u_xlat4.x = x_1172.x;
  let x_1177 : f32 = u_xlat4.x;
  u_xlat18 = (x_1177 + -1.0f);
  let x_1180 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_1181 : f32 = u_xlat18;
  u_xlat18 = ((x_1180 * x_1181) + 1.0f);
  let x_1184 : f32 = u_xlat14;
  let x_1186 : f32 = u_xlat4.x;
  u_xlat14 = min(x_1184, x_1186);
  let x_1189 : vec4<f32> = u_xlat2;
  let x_1190 : vec2<f32> = vec2<f32>(x_1189.x, x_1189.y);
  let x_1192 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_1190.x, x_1190.y, x_1192);
  let x_1204 : vec3<f32> = txVec0;
  let x_1206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1204.xy, x_1204.z);
  u_xlat2.x = x_1206;
  let x_1210 : f32 = x_842.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_1210) + 1.0f);
  let x_1215 : f32 = u_xlat2.x;
  let x_1217 : f32 = x_842.x_MainLightShadowParams.x;
  let x_1220 : f32 = u_xlat16.x;
  u_xlat2.x = ((x_1215 * x_1217) + x_1220);
  let x_1225 : f32 = u_xlat2.z;
  u_xlatb16 = (0.0f >= x_1225);
  let x_1229 : f32 = u_xlat2.z;
  u_xlatb30 = (x_1229 >= 1.0f);
  let x_1231 : bool = u_xlatb30;
  let x_1232 : bool = u_xlatb16;
  u_xlatb16 = (x_1231 | x_1232);
  let x_1234 : bool = u_xlatb16;
  if (x_1234) {
    x_1235 = 1.0f;
  } else {
    let x_1240 : f32 = u_xlat2.x;
    x_1235 = x_1240;
  }
  let x_1241 : f32 = x_1235;
  u_xlat2.x = x_1241;
  let x_1243 : vec3<f32> = vs_TEXCOORD7;
  let x_1246 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_1248 : vec3<f32> = (x_1243 + -(x_1246));
  let x_1249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1248.x, x_1249.y, x_1248.y, x_1248.z);
  let x_1251 : vec4<f32> = u_xlat4;
  let x_1253 : vec4<f32> = u_xlat4;
  u_xlat16.x = dot(vec3<f32>(x_1251.x, x_1251.z, x_1251.w), vec3<f32>(x_1253.x, x_1253.z, x_1253.w));
  let x_1258 : f32 = u_xlat16.x;
  let x_1260 : f32 = x_842.x_MainLightShadowParams.z;
  let x_1263 : f32 = x_842.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_1258 * x_1260) + x_1263);
  let x_1267 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1267, 0.0f, 1.0f);
  let x_1272 : f32 = u_xlat2.x;
  u_xlat30 = (-(x_1272) + 1.0f);
  let x_1276 : f32 = u_xlat16.x;
  let x_1277 : f32 = u_xlat30;
  let x_1280 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1276 * x_1277) + x_1280);
  let x_1283 : f32 = u_xlat18;
  let x_1286 : vec4<f32> = x_127.x_MainLightColor;
  let x_1288 : vec3<f32> = (vec3<f32>(x_1283, x_1283, x_1283) * vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
  let x_1289 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1288.x, x_1289.y, x_1288.y, x_1288.z);
  let x_1292 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1292;
  let x_1295 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1295;
  let x_1298 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1298;
  let x_1300 : vec4<f32> = u_xlat7;
  let x_1303 : vec4<f32> = u_xlat1;
  u_xlat16.x = dot(-(vec3<f32>(x_1300.x, x_1300.y, x_1300.z)), vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
  let x_1308 : f32 = u_xlat16.x;
  let x_1310 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1308 + x_1310);
  let x_1313 : vec4<f32> = u_xlat1;
  let x_1315 : vec3<f32> = u_xlat16;
  let x_1319 : vec4<f32> = u_xlat7;
  let x_1322 : vec3<f32> = ((vec3<f32>(x_1313.x, x_1313.y, x_1313.z) * -(vec3<f32>(x_1315.x, x_1315.x, x_1315.x))) + -(vec3<f32>(x_1319.x, x_1319.y, x_1319.z)));
  let x_1323 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
  let x_1325 : vec4<f32> = u_xlat1;
  let x_1327 : vec4<f32> = u_xlat7;
  u_xlat16.x = dot(vec3<f32>(x_1325.x, x_1325.y, x_1325.z), vec3<f32>(x_1327.x, x_1327.y, x_1327.z));
  let x_1332 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1332, 0.0f, 1.0f);
  let x_1336 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1336) + 1.0f);
  let x_1341 : f32 = u_xlat16.x;
  let x_1343 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1341 * x_1343);
  let x_1347 : f32 = u_xlat16.x;
  let x_1349 : f32 = u_xlat16.x;
  u_xlat16.x = (x_1347 * x_1349);
  let x_1353 : f32 = u_xlat0.x;
  u_xlat30 = ((-(x_1353) * 0.699999988f) + 1.700000048f);
  let x_1360 : f32 = u_xlat0.x;
  let x_1361 : f32 = u_xlat30;
  u_xlat0.x = (x_1360 * x_1361);
  let x_1365 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1365 * 6.0f);
  let x_1377 : vec4<f32> = u_xlat8;
  let x_1380 : f32 = u_xlat0.x;
  let x_1381 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1377.x, x_1377.y, x_1377.z), x_1380);
  u_xlat8 = x_1381;
  let x_1383 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1383 + -1.0f);
  let x_1391 : f32 = x_1389.unity_SpecCube0_HDR.w;
  let x_1393 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1391 * x_1393) + 1.0f);
  let x_1398 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1398, 0.0f);
  let x_1402 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1402);
  let x_1406 : f32 = u_xlat0.x;
  let x_1408 : f32 = x_1389.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1406 * x_1408);
  let x_1412 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1412);
  let x_1416 : f32 = u_xlat0.x;
  let x_1418 : f32 = x_1389.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1416 * x_1418);
  let x_1421 : vec4<f32> = u_xlat8;
  let x_1423 : vec3<f32> = u_xlat0;
  let x_1425 : vec3<f32> = (vec3<f32>(x_1421.x, x_1421.y, x_1421.z) * vec3<f32>(x_1423.x, x_1423.x, x_1423.x));
  let x_1426 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1426.w);
  let x_1428 : f32 = u_xlat28;
  let x_1430 : f32 = u_xlat28;
  let x_1434 : vec2<f32> = ((vec2<f32>(x_1428, x_1428) * vec2<f32>(x_1430, x_1430)) + vec2<f32>(-1.0f, 1.0f));
  let x_1435 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1434.x, x_1435.y, x_1434.y);
  let x_1438 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1438);
  let x_1440 : vec4<f32> = u_xlat5;
  let x_1443 : f32 = u_xlat44;
  let x_1445 : vec3<f32> = (-(vec3<f32>(x_1440.x, x_1440.y, x_1440.z)) + vec3<f32>(x_1443, x_1443, x_1443));
  let x_1446 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
  let x_1448 : vec3<f32> = u_xlat16;
  let x_1450 : vec4<f32> = u_xlat9;
  let x_1453 : vec4<f32> = u_xlat5;
  u_xlat16 = ((vec3<f32>(x_1448.x, x_1448.x, x_1448.x) * vec3<f32>(x_1450.x, x_1450.y, x_1450.z)) + vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1456 : f32 = u_xlat28;
  let x_1458 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_1456, x_1456, x_1456) * x_1458);
  let x_1460 : vec3<f32> = u_xlat16;
  let x_1461 : vec4<f32> = u_xlat8;
  u_xlat16 = (x_1460 * vec3<f32>(x_1461.x, x_1461.y, x_1461.z));
  let x_1464 : vec4<f32> = u_xlat3;
  let x_1466 : vec4<f32> = u_xlat6;
  let x_1469 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_1464.x, x_1464.y, x_1464.z) * vec3<f32>(x_1466.x, x_1466.y, x_1466.z)) + x_1469);
  let x_1472 : f32 = u_xlat2.x;
  let x_1474 : f32 = x_1389.unity_LightData.z;
  u_xlat28 = (x_1472 * x_1474);
  let x_1476 : vec4<f32> = u_xlat1;
  let x_1479 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_1476.x, x_1476.y, x_1476.z), vec3<f32>(x_1479.x, x_1479.y, x_1479.z));
  let x_1484 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1484, 0.0f, 1.0f);
  let x_1487 : f32 = u_xlat28;
  let x_1489 : f32 = u_xlat2.x;
  u_xlat28 = (x_1487 * x_1489);
  let x_1491 : f32 = u_xlat28;
  let x_1493 : vec4<f32> = u_xlat4;
  let x_1495 : vec3<f32> = (vec3<f32>(x_1491, x_1491, x_1491) * vec3<f32>(x_1493.x, x_1493.z, x_1493.w));
  let x_1496 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1496.w);
  let x_1498 : vec4<f32> = u_xlat7;
  let x_1501 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1503 : vec3<f32> = (vec3<f32>(x_1498.x, x_1498.y, x_1498.z) + vec3<f32>(x_1501.x, x_1501.y, x_1501.z));
  let x_1504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1503.x, x_1504.y, x_1503.y, x_1503.z);
  let x_1506 : vec4<f32> = u_xlat4;
  let x_1508 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec3<f32>(x_1506.x, x_1506.z, x_1506.w), vec3<f32>(x_1508.x, x_1508.z, x_1508.w));
  let x_1511 : f32 = u_xlat28;
  u_xlat28 = max(x_1511, 1.17549435e-37f);
  let x_1514 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1514);
  let x_1516 : f32 = u_xlat28;
  let x_1518 : vec4<f32> = u_xlat4;
  let x_1520 : vec3<f32> = (vec3<f32>(x_1516, x_1516, x_1516) * vec3<f32>(x_1518.x, x_1518.z, x_1518.w));
  let x_1521 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1520.x, x_1521.y, x_1520.y, x_1520.z);
  let x_1523 : vec4<f32> = u_xlat1;
  let x_1525 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec3<f32>(x_1523.x, x_1523.y, x_1523.z), vec3<f32>(x_1525.x, x_1525.z, x_1525.w));
  let x_1528 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1528, 0.0f, 1.0f);
  let x_1531 : vec4<f32> = x_127.x_MainLightPosition;
  let x_1533 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1531.x, x_1531.y, x_1531.z), vec3<f32>(x_1533.x, x_1533.z, x_1533.w));
  let x_1538 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1538, 0.0f, 1.0f);
  let x_1541 : f32 = u_xlat28;
  let x_1542 : f32 = u_xlat28;
  u_xlat28 = (x_1541 * x_1542);
  let x_1544 : f32 = u_xlat28;
  let x_1546 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1544 * x_1546) + 1.000010014f);
  let x_1551 : f32 = u_xlat2.x;
  let x_1553 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1551 * x_1553);
  let x_1556 : f32 = u_xlat28;
  let x_1557 : f32 = u_xlat28;
  u_xlat28 = (x_1556 * x_1557);
  let x_1560 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_1560, 0.100000001f);
  let x_1564 : f32 = u_xlat28;
  let x_1566 : f32 = u_xlat2.x;
  u_xlat28 = (x_1564 * x_1566);
  let x_1568 : f32 = u_xlat45;
  let x_1569 : f32 = u_xlat28;
  u_xlat28 = (x_1568 * x_1569);
  let x_1571 : f32 = u_xlat43;
  let x_1572 : f32 = u_xlat28;
  u_xlat28 = (x_1571 / x_1572);
  let x_1574 : vec4<f32> = u_xlat5;
  let x_1576 : f32 = u_xlat28;
  let x_1579 : vec4<f32> = u_xlat6;
  let x_1581 : vec3<f32> = ((vec3<f32>(x_1574.x, x_1574.y, x_1574.z) * vec3<f32>(x_1576, x_1576, x_1576)) + vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
  let x_1582 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1581.x, x_1582.y, x_1581.y, x_1581.z);
  let x_1584 : vec4<f32> = u_xlat3;
  let x_1586 : vec4<f32> = u_xlat4;
  let x_1588 : vec3<f32> = (vec3<f32>(x_1584.x, x_1584.y, x_1584.z) * vec3<f32>(x_1586.x, x_1586.z, x_1586.w));
  let x_1589 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1588.x, x_1588.y, x_1588.z, x_1589.w);
  let x_1592 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_1594 : f32 = x_1389.unity_LightData.y;
  u_xlat28 = min(x_1592, x_1594);
  let x_1597 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1597));
  u_xlat4.x = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1609 : u32 = u_xlatu_loop_1;
    let x_1610 : u32 = u_xlatu28;
    if ((x_1609 < x_1610)) {
    } else {
      break;
    }
    let x_1613 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1613 >> 2u);
    let x_1616 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1616 & 3u));
    let x_1620 : u32 = u_xlatu47;
    let x_1623 : vec4<f32> = x_1389.unity_LightIndices[bitcast<i32>(x_1620)];
    let x_1633 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1638 : vec4<u32> = indexable[x_1633];
    u_xlat47 = dot(x_1623, bitcast<vec4<f32>>(x_1638));
    let x_1642 : f32 = u_xlat47;
    u_xlati47 = i32(x_1642);
    let x_1644 : vec3<f32> = vs_TEXCOORD7;
    let x_1656 : i32 = u_xlati47;
    let x_1658 : vec4<f32> = x_1655.x_AdditionalLightsPosition[x_1656];
    let x_1661 : i32 = u_xlati47;
    let x_1663 : vec4<f32> = x_1655.x_AdditionalLightsPosition[x_1661];
    let x_1665 : vec3<f32> = ((-(x_1644) * vec3<f32>(x_1658.w, x_1658.w, x_1658.w)) + vec3<f32>(x_1663.x, x_1663.y, x_1663.z));
    let x_1666 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1665.x, x_1665.y, x_1665.z, x_1666.w);
    let x_1669 : vec4<f32> = u_xlat8;
    let x_1671 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1669.x, x_1669.y, x_1669.z), vec3<f32>(x_1671.x, x_1671.y, x_1671.z));
    let x_1674 : f32 = u_xlat48;
    u_xlat48 = max(x_1674, 6.10351562e-05f);
    let x_1677 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1677);
    let x_1679 : f32 = u_xlat49;
    let x_1681 : vec4<f32> = u_xlat8;
    let x_1683 : vec3<f32> = (vec3<f32>(x_1679, x_1679, x_1679) * vec3<f32>(x_1681.x, x_1681.y, x_1681.z));
    let x_1684 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1683.x, x_1683.y, x_1683.z, x_1684.w);
    let x_1687 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1687);
    let x_1689 : f32 = u_xlat48;
    let x_1690 : i32 = u_xlati47;
    let x_1692 : f32 = x_1655.x_AdditionalLightsAttenuation[x_1690].x;
    u_xlat48 = (x_1689 * x_1692);
    let x_1694 : f32 = u_xlat48;
    let x_1696 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1694) * x_1696) + 1.0f);
    let x_1699 : f32 = u_xlat48;
    u_xlat48 = max(x_1699, 0.0f);
    let x_1701 : f32 = u_xlat48;
    let x_1702 : f32 = u_xlat48;
    u_xlat48 = (x_1701 * x_1702);
    let x_1704 : f32 = u_xlat48;
    let x_1705 : f32 = u_xlat50;
    u_xlat48 = (x_1704 * x_1705);
    let x_1707 : i32 = u_xlati47;
    let x_1709 : vec4<f32> = x_1655.x_AdditionalLightsSpotDir[x_1707];
    let x_1711 : vec4<f32> = u_xlat9;
    u_xlat50 = dot(vec3<f32>(x_1709.x, x_1709.y, x_1709.z), vec3<f32>(x_1711.x, x_1711.y, x_1711.z));
    let x_1714 : f32 = u_xlat50;
    let x_1715 : i32 = u_xlati47;
    let x_1717 : f32 = x_1655.x_AdditionalLightsAttenuation[x_1715].z;
    let x_1719 : i32 = u_xlati47;
    let x_1721 : f32 = x_1655.x_AdditionalLightsAttenuation[x_1719].w;
    u_xlat50 = ((x_1714 * x_1717) + x_1721);
    let x_1723 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1723, 0.0f, 1.0f);
    let x_1725 : f32 = u_xlat50;
    let x_1726 : f32 = u_xlat50;
    u_xlat50 = (x_1725 * x_1726);
    let x_1728 : f32 = u_xlat48;
    let x_1729 : f32 = u_xlat50;
    u_xlat48 = (x_1728 * x_1729);
    let x_1731 : f32 = u_xlat18;
    let x_1733 : i32 = u_xlati47;
    let x_1735 : vec4<f32> = x_1655.x_AdditionalLightsColor[x_1733];
    let x_1737 : vec3<f32> = (vec3<f32>(x_1731, x_1731, x_1731) * vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
    let x_1738 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1737.x, x_1737.y, x_1737.z, x_1738.w);
    let x_1740 : vec4<f32> = u_xlat1;
    let x_1742 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1740.x, x_1740.y, x_1740.z), vec3<f32>(x_1742.x, x_1742.y, x_1742.z));
    let x_1745 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1745, 0.0f, 1.0f);
    let x_1747 : f32 = u_xlat47;
    let x_1748 : f32 = u_xlat48;
    u_xlat47 = (x_1747 * x_1748);
    let x_1750 : f32 = u_xlat47;
    let x_1752 : vec4<f32> = u_xlat10;
    let x_1754 : vec3<f32> = (vec3<f32>(x_1750, x_1750, x_1750) * vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
    let x_1755 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
    let x_1757 : vec4<f32> = u_xlat8;
    let x_1759 : f32 = u_xlat49;
    let x_1762 : vec4<f32> = u_xlat7;
    let x_1764 : vec3<f32> = ((vec3<f32>(x_1757.x, x_1757.y, x_1757.z) * vec3<f32>(x_1759, x_1759, x_1759)) + vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
    let x_1765 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
    let x_1767 : vec4<f32> = u_xlat8;
    let x_1769 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1767.x, x_1767.y, x_1767.z), vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
    let x_1772 : f32 = u_xlat47;
    u_xlat47 = max(x_1772, 1.17549435e-37f);
    let x_1774 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1774);
    let x_1776 : f32 = u_xlat47;
    let x_1778 : vec4<f32> = u_xlat8;
    let x_1780 : vec3<f32> = (vec3<f32>(x_1776, x_1776, x_1776) * vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
    let x_1781 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
    let x_1783 : vec4<f32> = u_xlat1;
    let x_1785 : vec4<f32> = u_xlat8;
    u_xlat47 = dot(vec3<f32>(x_1783.x, x_1783.y, x_1783.z), vec3<f32>(x_1785.x, x_1785.y, x_1785.z));
    let x_1788 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1788, 0.0f, 1.0f);
    let x_1790 : vec4<f32> = u_xlat9;
    let x_1792 : vec4<f32> = u_xlat8;
    u_xlat48 = dot(vec3<f32>(x_1790.x, x_1790.y, x_1790.z), vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
    let x_1795 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1795, 0.0f, 1.0f);
    let x_1797 : f32 = u_xlat47;
    let x_1798 : f32 = u_xlat47;
    u_xlat47 = (x_1797 * x_1798);
    let x_1800 : f32 = u_xlat47;
    let x_1802 : f32 = u_xlat0.x;
    u_xlat47 = ((x_1800 * x_1802) + 1.000010014f);
    let x_1805 : f32 = u_xlat48;
    let x_1806 : f32 = u_xlat48;
    u_xlat48 = (x_1805 * x_1806);
    let x_1808 : f32 = u_xlat47;
    let x_1809 : f32 = u_xlat47;
    u_xlat47 = (x_1808 * x_1809);
    let x_1811 : f32 = u_xlat48;
    u_xlat48 = max(x_1811, 0.100000001f);
    let x_1813 : f32 = u_xlat47;
    let x_1814 : f32 = u_xlat48;
    u_xlat47 = (x_1813 * x_1814);
    let x_1816 : f32 = u_xlat45;
    let x_1817 : f32 = u_xlat47;
    u_xlat47 = (x_1816 * x_1817);
    let x_1819 : f32 = u_xlat43;
    let x_1820 : f32 = u_xlat47;
    u_xlat47 = (x_1819 / x_1820);
    let x_1822 : vec4<f32> = u_xlat5;
    let x_1824 : f32 = u_xlat47;
    let x_1827 : vec4<f32> = u_xlat6;
    let x_1829 : vec3<f32> = ((vec3<f32>(x_1822.x, x_1822.y, x_1822.z) * vec3<f32>(x_1824, x_1824, x_1824)) + vec3<f32>(x_1827.x, x_1827.y, x_1827.z));
    let x_1830 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
    let x_1832 : vec4<f32> = u_xlat8;
    let x_1834 : vec4<f32> = u_xlat10;
    let x_1837 : vec4<f32> = u_xlat4;
    let x_1839 : vec3<f32> = ((vec3<f32>(x_1832.x, x_1832.y, x_1832.z) * vec3<f32>(x_1834.x, x_1834.y, x_1834.z)) + vec3<f32>(x_1837.x, x_1837.z, x_1837.w));
    let x_1840 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1839.x, x_1840.y, x_1839.y, x_1839.z);

    continuing {
      let x_1842 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1842 + bitcast<u32>(1i));
    }
  }
  let x_1844 : vec3<f32> = u_xlat16;
  let x_1845 : f32 = u_xlat14;
  let x_1848 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_1844 * vec3<f32>(x_1845, x_1845, x_1845)) + vec3<f32>(x_1848.x, x_1848.y, x_1848.z));
  let x_1851 : vec4<f32> = u_xlat4;
  let x_1853 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1851.x, x_1851.z, x_1851.w) + x_1853);
  let x_1857 : f32 = u_xlat42;
  let x_1859 : vec3<f32> = u_xlat0;
  let x_1860 : vec3<f32> = (vec3<f32>(x_1857, x_1857, x_1857) * x_1859);
  let x_1861 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
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

