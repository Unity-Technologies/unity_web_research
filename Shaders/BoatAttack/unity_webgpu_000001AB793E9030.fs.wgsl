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

@group(1) @binding(4) var<uniform> x_1006 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(13) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(20) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2365 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2632 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat60 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb61 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat61 : f32;
  var u_xlat40 : f32;
  var u_xlat20 : f32;
  var u_xlat62 : f32;
  var u_xlat23 : f32;
  var u_xlat43 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb63 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat63 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat64 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
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
  var u_xlatb64 : bool;
  var x_2231 : f32;
  var u_xlatu40 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati63 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati3 : i32;
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
  u_xlat60 = dot(x_136, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb61 = (4.0f >= x_219);
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
  let x_281 : bool = u_xlatb61;
  let x_282 : vec4<f32> = u_xlat11;
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_283, x_282, vec4<bool>(x_281, x_281, x_281, x_281));
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat61 = dot(x_288, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_290 : f32 = u_xlat61;
  u_xlat61 = (x_290 + 6.10351562e-05f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_294 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_393.x, x_393.y), vec2<f32>(x_395.x, x_395.y));
  let x_398 : f32 = u_xlat61;
  u_xlat61 = min(x_398, 1.0f);
  let x_400 : f32 = u_xlat61;
  u_xlat61 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_403);
  let x_405 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_442.x, x_442.y), vec2<f32>(x_444.x, x_444.y));
  let x_447 : f32 = u_xlat61;
  u_xlat61 = min(x_447, 1.0f);
  let x_449 : f32 = u_xlat61;
  u_xlat61 = (-(x_449) + 1.0f);
  let x_452 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_452);
  let x_454 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_511.x, x_511.y), vec2<f32>(x_513.x, x_513.y));
  let x_516 : f32 = u_xlat61;
  u_xlat61 = min(x_516, 1.0f);
  let x_518 : f32 = u_xlat61;
  u_xlat61 = (-(x_518) + 1.0f);
  let x_521 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_521);
  let x_523 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec2<f32>(x_574.x, x_574.y), vec2<f32>(x_576.x, x_576.y));
  let x_579 : f32 = u_xlat61;
  u_xlat61 = min(x_579, 1.0f);
  let x_581 : f32 = u_xlat61;
  u_xlat61 = (-(x_581) + 1.0f);
  let x_584 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_584);
  let x_586 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec3<f32>(x_618.x, x_618.y, x_618.w), vec3<f32>(x_620.x, x_620.y, x_620.w));
  let x_623 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat61;
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
  u_xlat40 = dot(x_703, x_704);
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
  u_xlat20 = dot(x_786, x_787);
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
  u_xlat61 = dot(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_825);
  let x_827 : f32 = u_xlat61;
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
  u_xlat61 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat61;
  u_xlat61 = (x_868 + 0.5f);
  let x_870 : f32 = u_xlat61;
  let x_872 : vec4<f32> = u_xlat3;
  let x_874 : vec3<f32> = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_878 : f32 = u_xlat2.w;
  u_xlat61 = max(x_878, 0.0001f);
  let x_881 : vec4<f32> = u_xlat2;
  let x_883 : f32 = u_xlat61;
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
  u_xlat61 = ((x_906 * x_908) + x_911);
  let x_913 : f32 = u_xlat61;
  u_xlat3.z = (-(x_913) + 1.0f);
  let x_918 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_918) * 0.959999979f) + 0.959999979f);
  let x_924 : f32 = u_xlat40;
  let x_925 : f32 = u_xlat61;
  u_xlat62 = (x_924 + -(x_925));
  let x_928 : f32 = u_xlat61;
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
  let x_952 : f32 = u_xlat40;
  u_xlat0.x = (-(x_952) + 1.0f);
  let x_957 : f32 = u_xlat0.x;
  let x_959 : f32 = u_xlat0.x;
  u_xlat40 = (x_957 * x_959);
  let x_961 : f32 = u_xlat40;
  u_xlat40 = max(x_961, 0.0078125f);
  let x_964 : f32 = u_xlat40;
  let x_965 : f32 = u_xlat40;
  u_xlat61 = (x_964 * x_965);
  let x_967 : f32 = u_xlat62;
  u_xlat62 = (x_967 + 1.0f);
  let x_969 : f32 = u_xlat62;
  u_xlat62 = clamp(x_969, 0.0f, 1.0f);
  let x_972 : f32 = u_xlat40;
  u_xlat23 = ((x_972 * 4.0f) + 2.0f);
  let x_980 : vec4<f32> = u_xlat3;
  let x_983 : f32 = x_127.x_GlobalMipBias.x;
  let x_984 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_980.x, x_980.z), x_983);
  u_xlat3.x = x_984.x;
  let x_989 : f32 = u_xlat3.x;
  u_xlat43 = (x_989 + -1.0f);
  let x_992 : f32 = x_127.x_AmbientOcclusionParam.w;
  let x_993 : f32 = u_xlat43;
  u_xlat43 = ((x_992 * x_993) + 1.0f);
  let x_996 : f32 = u_xlat20;
  let x_998 : f32 = u_xlat3.x;
  u_xlat20 = min(x_996, x_998);
  let x_1008 : f32 = x_1006.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_1008);
  let x_1010 : bool = u_xlatb3;
  if (x_1010) {
    let x_1014 : f32 = x_1006.x_MainLightShadowParams.y;
    u_xlatb3 = (x_1014 == 1.0f);
    let x_1016 : bool = u_xlatb3;
    if (x_1016) {
      let x_1020 : vec4<f32> = vs_TEXCOORD8;
      let x_1023 : vec4<f32> = x_1006.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y) + x_1023);
      let x_1026 : vec4<f32> = u_xlat6;
      let x_1027 : vec2<f32> = vec2<f32>(x_1026.x, x_1026.y);
      let x_1029 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
      let x_1041 : vec3<f32> = txVec0;
      let x_1043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1041.xy, x_1041.z);
      u_xlat7.x = x_1043;
      let x_1046 : vec4<f32> = u_xlat6;
      let x_1047 : vec2<f32> = vec2<f32>(x_1046.z, x_1046.w);
      let x_1049 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1047.x, x_1047.y, x_1049);
      let x_1056 : vec3<f32> = txVec1;
      let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1056.xy, x_1056.z);
      u_xlat7.y = x_1058;
      let x_1060 : vec4<f32> = vs_TEXCOORD8;
      let x_1063 : vec4<f32> = x_1006.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1060.x, x_1060.y, x_1060.x, x_1060.y) + x_1063);
      let x_1066 : vec4<f32> = u_xlat6;
      let x_1067 : vec2<f32> = vec2<f32>(x_1066.x, x_1066.y);
      let x_1069 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1067.x, x_1067.y, x_1069);
      let x_1076 : vec3<f32> = txVec2;
      let x_1078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1076.xy, x_1076.z);
      u_xlat7.z = x_1078;
      let x_1081 : vec4<f32> = u_xlat6;
      let x_1082 : vec2<f32> = vec2<f32>(x_1081.z, x_1081.w);
      let x_1084 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1082.x, x_1082.y, x_1084);
      let x_1091 : vec3<f32> = txVec3;
      let x_1093 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1091.xy, x_1091.z);
      u_xlat7.w = x_1093;
      let x_1095 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1095, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1103 : f32 = x_1006.x_MainLightShadowParams.y;
      u_xlatb63 = (x_1103 == 2.0f);
      let x_1105 : bool = u_xlatb63;
      if (x_1105) {
        let x_1108 : vec4<f32> = vs_TEXCOORD8;
        let x_1111 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.z, x_1111.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1115 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat6;
        let x_1119 : vec2<f32> = floor(vec2<f32>(x_1117.x, x_1117.y));
        let x_1120 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1124 : vec4<f32> = vs_TEXCOORD8;
        let x_1127 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(x_1127.z, x_1127.w)) + -(vec2<f32>(x_1130.x, x_1130.y)));
        let x_1134 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1134.x, x_1134.x, x_1134.y, x_1134.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1138 : vec4<f32> = u_xlat7;
        let x_1140 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1138.x, x_1138.x, x_1138.z, x_1138.z) * vec4<f32>(x_1140.x, x_1140.x, x_1140.z, x_1140.z));
        let x_1143 : vec4<f32> = u_xlat8;
        let x_1147 : vec2<f32> = (vec2<f32>(x_1143.y, x_1143.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1148 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1147.x, x_1148.y, x_1147.y, x_1148.w);
        let x_1150 : vec4<f32> = u_xlat8;
        let x_1153 : vec2<f32> = u_xlat46;
        let x_1155 : vec2<f32> = ((vec2<f32>(x_1150.x, x_1150.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1153));
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
        let x_1159 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1159) + vec2<f32>(1.0f, 1.0f));
        let x_1162 : vec2<f32> = u_xlat46;
        let x_1164 : vec2<f32> = min(x_1162, vec2<f32>(0.0f, 0.0f));
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1170 : vec4<f32> = u_xlat9;
        let x_1173 : vec2<f32> = u_xlat48;
        let x_1174 : vec2<f32> = ((-(vec2<f32>(x_1167.x, x_1167.y)) * vec2<f32>(x_1170.x, x_1170.y)) + x_1173);
        let x_1175 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
        let x_1177 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1177, vec2<f32>(0.0f, 0.0f));
        let x_1179 : vec2<f32> = u_xlat46;
        let x_1181 : vec2<f32> = u_xlat46;
        let x_1183 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1179) * x_1181) + vec2<f32>(x_1183.y, x_1183.w));
        let x_1186 : vec4<f32> = u_xlat9;
        let x_1188 : vec2<f32> = (vec2<f32>(x_1186.x, x_1186.y) + vec2<f32>(1.0f, 1.0f));
        let x_1189 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1191 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1191 + vec2<f32>(1.0f, 1.0f));
        let x_1193 : vec4<f32> = u_xlat8;
        let x_1197 : vec2<f32> = (vec2<f32>(x_1193.x, x_1193.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1198 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1197.x, x_1197.y, x_1198.z, x_1198.w);
        let x_1200 : vec2<f32> = u_xlat48;
        let x_1201 : vec2<f32> = (x_1200 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1202 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat9;
        let x_1206 : vec2<f32> = (vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1207 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
        let x_1209 : vec2<f32> = u_xlat46;
        let x_1210 : vec2<f32> = (x_1209 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1211 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1210.x, x_1210.y, x_1211.z, x_1211.w);
        let x_1213 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1213.y, x_1213.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1217 : f32 = u_xlat9.x;
        u_xlat10.z = x_1217;
        let x_1220 : f32 = u_xlat46.x;
        u_xlat10.w = x_1220;
        let x_1223 : f32 = u_xlat11.x;
        u_xlat8.z = x_1223;
        let x_1226 : f32 = u_xlat7.x;
        u_xlat8.w = x_1226;
        let x_1228 : vec4<f32> = u_xlat8;
        let x_1230 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1228.z, x_1228.w, x_1228.x, x_1228.z) + vec4<f32>(x_1230.z, x_1230.w, x_1230.x, x_1230.z));
        let x_1234 : f32 = u_xlat10.y;
        u_xlat9.z = x_1234;
        let x_1237 : f32 = u_xlat46.y;
        u_xlat9.w = x_1237;
        let x_1240 : f32 = u_xlat8.y;
        u_xlat11.z = x_1240;
        let x_1243 : f32 = u_xlat7.z;
        u_xlat11.w = x_1243;
        let x_1245 : vec4<f32> = u_xlat9;
        let x_1247 : vec4<f32> = u_xlat11;
        let x_1249 : vec3<f32> = (vec3<f32>(x_1245.z, x_1245.y, x_1245.w) + vec3<f32>(x_1247.z, x_1247.y, x_1247.w));
        let x_1250 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1254 : vec4<f32> = u_xlat12;
        let x_1256 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.z, x_1252.w) / vec3<f32>(x_1254.z, x_1254.w, x_1254.y));
        let x_1257 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
        let x_1259 : vec4<f32> = u_xlat8;
        let x_1264 : vec3<f32> = (vec3<f32>(x_1259.x, x_1259.y, x_1259.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1265 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
        let x_1267 : vec4<f32> = u_xlat11;
        let x_1269 : vec4<f32> = u_xlat7;
        let x_1271 : vec3<f32> = (vec3<f32>(x_1267.z, x_1267.y, x_1267.w) / vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
        let x_1274 : vec4<f32> = u_xlat9;
        let x_1276 : vec3<f32> = (vec3<f32>(x_1274.x, x_1274.y, x_1274.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
        let x_1279 : vec4<f32> = u_xlat8;
        let x_1282 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1284 : vec3<f32> = (vec3<f32>(x_1279.y, x_1279.x, x_1279.z) * vec3<f32>(x_1282.x, x_1282.x, x_1282.x));
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
        let x_1287 : vec4<f32> = u_xlat9;
        let x_1290 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1292 : vec3<f32> = (vec3<f32>(x_1287.x, x_1287.y, x_1287.z) * vec3<f32>(x_1290.y, x_1290.y, x_1290.y));
        let x_1293 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
        let x_1296 : f32 = u_xlat9.x;
        u_xlat8.w = x_1296;
        let x_1298 : vec4<f32> = u_xlat6;
        let x_1301 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.y, x_1304.w, x_1304.x, x_1304.w));
        let x_1307 : vec4<f32> = u_xlat6;
        let x_1310 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1307.x, x_1307.y) * vec2<f32>(x_1310.x, x_1310.y)) + vec2<f32>(x_1313.z, x_1313.w));
        let x_1317 : f32 = u_xlat8.y;
        u_xlat9.w = x_1317;
        let x_1319 : vec4<f32> = u_xlat9;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.y, x_1319.z);
        let x_1321 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1321.x, x_1320.x, x_1321.z, x_1320.y);
        let x_1323 : vec4<f32> = u_xlat6;
        let x_1326 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1329 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y) * vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.y)) + vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1329.y));
        let x_1332 : vec4<f32> = u_xlat6;
        let x_1335 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y) * vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y)) + vec4<f32>(x_1338.w, x_1338.y, x_1338.w, x_1338.z));
        let x_1341 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1341.x, x_1341.y, x_1341.x, x_1341.y) * vec4<f32>(x_1344.x, x_1344.y, x_1344.x, x_1344.y)) + vec4<f32>(x_1347.x, x_1347.w, x_1347.z, x_1347.w));
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1352 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1350.x, x_1350.x, x_1350.x, x_1350.y) * vec4<f32>(x_1352.z, x_1352.w, x_1352.y, x_1352.z));
        let x_1356 : vec4<f32> = u_xlat7;
        let x_1358 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1356.y, x_1356.y, x_1356.z, x_1356.z) * x_1358);
        let x_1362 : f32 = u_xlat7.z;
        let x_1364 : f32 = u_xlat12.y;
        u_xlat63 = (x_1362 * x_1364);
        let x_1367 : vec4<f32> = u_xlat10;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.x, x_1367.y);
        let x_1370 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1378 : vec3<f32> = txVec4;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat64 = x_1380;
        let x_1382 : vec4<f32> = u_xlat10;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.z, x_1382.w);
        let x_1385 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1393 : vec3<f32> = txVec5;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1393.xy, x_1393.z);
        u_xlat65 = x_1395;
        let x_1396 : f32 = u_xlat65;
        let x_1398 : f32 = u_xlat13.y;
        u_xlat65 = (x_1396 * x_1398);
        let x_1401 : f32 = u_xlat13.x;
        let x_1402 : f32 = u_xlat64;
        let x_1404 : f32 = u_xlat65;
        u_xlat64 = ((x_1401 * x_1402) + x_1404);
        let x_1407 : vec2<f32> = u_xlat46;
        let x_1409 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec6;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1416.xy, x_1416.z);
        u_xlat65 = x_1418;
        let x_1420 : f32 = u_xlat13.z;
        let x_1421 : f32 = u_xlat65;
        let x_1423 : f32 = u_xlat64;
        u_xlat64 = ((x_1420 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat9;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec7;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1436.xy, x_1436.z);
        u_xlat65 = x_1438;
        let x_1440 : f32 = u_xlat13.w;
        let x_1441 : f32 = u_xlat65;
        let x_1443 : f32 = u_xlat64;
        u_xlat64 = ((x_1440 * x_1441) + x_1443);
        let x_1446 : vec4<f32> = u_xlat11;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec8;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1456.xy, x_1456.z);
        u_xlat65 = x_1458;
        let x_1460 : f32 = u_xlat14.x;
        let x_1461 : f32 = u_xlat65;
        let x_1463 : f32 = u_xlat64;
        u_xlat64 = ((x_1460 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat11;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.z, x_1466.w);
        let x_1469 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec9;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1476.xy, x_1476.z);
        u_xlat65 = x_1478;
        let x_1480 : f32 = u_xlat14.y;
        let x_1481 : f32 = u_xlat65;
        let x_1483 : f32 = u_xlat64;
        u_xlat64 = ((x_1480 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat9;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.z, x_1486.w);
        let x_1489 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec10;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1496.xy, x_1496.z);
        u_xlat65 = x_1498;
        let x_1500 : f32 = u_xlat14.z;
        let x_1501 : f32 = u_xlat65;
        let x_1503 : f32 = u_xlat64;
        u_xlat64 = ((x_1500 * x_1501) + x_1503);
        let x_1506 : vec4<f32> = u_xlat8;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.x, x_1506.y);
        let x_1509 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec11;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1516.xy, x_1516.z);
        u_xlat65 = x_1518;
        let x_1520 : f32 = u_xlat14.w;
        let x_1521 : f32 = u_xlat65;
        let x_1523 : f32 = u_xlat64;
        u_xlat64 = ((x_1520 * x_1521) + x_1523);
        let x_1526 : vec4<f32> = u_xlat8;
        let x_1527 : vec2<f32> = vec2<f32>(x_1526.z, x_1526.w);
        let x_1529 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
        let x_1536 : vec3<f32> = txVec12;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1536.xy, x_1536.z);
        u_xlat65 = x_1538;
        let x_1539 : f32 = u_xlat63;
        let x_1540 : f32 = u_xlat65;
        let x_1542 : f32 = u_xlat64;
        u_xlat3.x = ((x_1539 * x_1540) + x_1542);
      } else {
        let x_1546 : vec4<f32> = vs_TEXCOORD8;
        let x_1549 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1552 : vec2<f32> = ((vec2<f32>(x_1546.x, x_1546.y) * vec2<f32>(x_1549.z, x_1549.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1553 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
        let x_1555 : vec4<f32> = u_xlat6;
        let x_1557 : vec2<f32> = floor(vec2<f32>(x_1555.x, x_1555.y));
        let x_1558 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1557.x, x_1557.y, x_1558.z, x_1558.w);
        let x_1560 : vec4<f32> = vs_TEXCOORD8;
        let x_1563 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1566 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1560.x, x_1560.y) * vec2<f32>(x_1563.z, x_1563.w)) + -(vec2<f32>(x_1566.x, x_1566.y)));
        let x_1570 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1570.x, x_1570.x, x_1570.y, x_1570.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1573 : vec4<f32> = u_xlat7;
        let x_1575 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1573.x, x_1573.x, x_1573.z, x_1573.z) * vec4<f32>(x_1575.x, x_1575.x, x_1575.z, x_1575.z));
        let x_1578 : vec4<f32> = u_xlat8;
        let x_1582 : vec2<f32> = (vec2<f32>(x_1578.y, x_1578.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1583 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1583.x, x_1582.x, x_1583.z, x_1582.y);
        let x_1585 : vec4<f32> = u_xlat8;
        let x_1588 : vec2<f32> = u_xlat46;
        let x_1590 : vec2<f32> = ((vec2<f32>(x_1585.x, x_1585.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1588));
        let x_1591 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1590.x, x_1591.y, x_1590.y, x_1591.w);
        let x_1593 : vec2<f32> = u_xlat46;
        let x_1595 : vec2<f32> = (-(x_1593) + vec2<f32>(1.0f, 1.0f));
        let x_1596 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1595.x, x_1595.y, x_1596.z, x_1596.w);
        let x_1598 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1598, vec2<f32>(0.0f, 0.0f));
        let x_1600 : vec2<f32> = u_xlat48;
        let x_1602 : vec2<f32> = u_xlat48;
        let x_1604 : vec4<f32> = u_xlat8;
        let x_1606 : vec2<f32> = ((-(x_1600) * x_1602) + vec2<f32>(x_1604.x, x_1604.y));
        let x_1607 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1606.x, x_1606.y, x_1607.z, x_1607.w);
        let x_1609 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1609, vec2<f32>(0.0f, 0.0f));
        let x_1612 : vec2<f32> = u_xlat48;
        let x_1614 : vec2<f32> = u_xlat48;
        let x_1616 : vec4<f32> = u_xlat7;
        let x_1618 : vec2<f32> = ((-(x_1612) * x_1614) + vec2<f32>(x_1616.y, x_1616.w));
        let x_1619 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1618.x, x_1619.y, x_1618.y);
        let x_1621 : vec4<f32> = u_xlat8;
        let x_1623 : vec2<f32> = (vec2<f32>(x_1621.x, x_1621.y) + vec2<f32>(2.0f, 2.0f));
        let x_1624 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1623.x, x_1623.y, x_1624.z, x_1624.w);
        let x_1626 : vec3<f32> = u_xlat27;
        let x_1628 : vec2<f32> = (vec2<f32>(x_1626.x, x_1626.z) + vec2<f32>(2.0f, 2.0f));
        let x_1629 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1629.x, x_1628.x, x_1629.z, x_1628.y);
        let x_1632 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1632 * 0.081632003f);
        let x_1636 : vec4<f32> = u_xlat7;
        let x_1639 : vec3<f32> = (vec3<f32>(x_1636.z, x_1636.x, x_1636.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1640 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
        let x_1642 : vec4<f32> = u_xlat8;
        let x_1645 : vec2<f32> = (vec2<f32>(x_1642.x, x_1642.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1646 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1645.x, x_1645.y, x_1646.z, x_1646.w);
        let x_1649 : f32 = u_xlat11.y;
        u_xlat10.x = x_1649;
        let x_1651 : vec2<f32> = u_xlat46;
        let x_1658 : vec2<f32> = ((vec2<f32>(x_1651.x, x_1651.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1659 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1659.x, x_1658.x, x_1659.z, x_1658.y);
        let x_1661 : vec2<f32> = u_xlat46;
        let x_1665 : vec2<f32> = ((vec2<f32>(x_1661.x, x_1661.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1666 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1665.x, x_1666.y, x_1665.y, x_1666.w);
        let x_1669 : f32 = u_xlat7.x;
        u_xlat8.y = x_1669;
        let x_1672 : f32 = u_xlat9.y;
        u_xlat8.w = x_1672;
        let x_1674 : vec4<f32> = u_xlat8;
        let x_1675 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1674 + x_1675);
        let x_1677 : vec2<f32> = u_xlat46;
        let x_1680 : vec2<f32> = ((vec2<f32>(x_1677.y, x_1677.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1681 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1681.x, x_1680.x, x_1681.z, x_1680.y);
        let x_1683 : vec2<f32> = u_xlat46;
        let x_1686 : vec2<f32> = ((vec2<f32>(x_1683.y, x_1683.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1687 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1686.x, x_1687.y, x_1686.y, x_1687.w);
        let x_1690 : f32 = u_xlat7.y;
        u_xlat9.y = x_1690;
        let x_1692 : vec4<f32> = u_xlat9;
        let x_1693 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1692 + x_1693);
        let x_1695 : vec4<f32> = u_xlat8;
        let x_1696 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1695 / x_1696);
        let x_1698 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1698 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1704 : vec4<f32> = u_xlat9;
        let x_1705 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1704 / x_1705);
        let x_1707 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1707 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1709 : vec4<f32> = u_xlat8;
        let x_1712 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1709.w, x_1709.x, x_1709.y, x_1709.z) * vec4<f32>(x_1712.x, x_1712.x, x_1712.x, x_1712.x));
        let x_1715 : vec4<f32> = u_xlat9;
        let x_1718 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1715.x, x_1715.w, x_1715.y, x_1715.z) * vec4<f32>(x_1718.y, x_1718.y, x_1718.y, x_1718.y));
        let x_1721 : vec4<f32> = u_xlat8;
        let x_1722 : vec3<f32> = vec3<f32>(x_1721.y, x_1721.z, x_1721.w);
        let x_1723 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1722.x, x_1723.y, x_1722.y, x_1722.z);
        let x_1726 : f32 = u_xlat9.x;
        u_xlat11.y = x_1726;
        let x_1728 : vec4<f32> = u_xlat6;
        let x_1731 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1728.x, x_1728.y, x_1728.x, x_1728.y) * vec4<f32>(x_1731.x, x_1731.y, x_1731.x, x_1731.y)) + vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1734.y));
        let x_1737 : vec4<f32> = u_xlat6;
        let x_1740 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1743 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1737.x, x_1737.y) * vec2<f32>(x_1740.x, x_1740.y)) + vec2<f32>(x_1743.w, x_1743.y));
        let x_1747 : f32 = u_xlat11.y;
        u_xlat8.y = x_1747;
        let x_1750 : f32 = u_xlat9.z;
        u_xlat11.y = x_1750;
        let x_1752 : vec4<f32> = u_xlat6;
        let x_1755 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1758 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1752.x, x_1752.y, x_1752.x, x_1752.y) * vec4<f32>(x_1755.x, x_1755.y, x_1755.x, x_1755.y)) + vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1758.y));
        let x_1761 : vec4<f32> = u_xlat6;
        let x_1764 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1767 : vec4<f32> = u_xlat11;
        let x_1769 : vec2<f32> = ((vec2<f32>(x_1761.x, x_1761.y) * vec2<f32>(x_1764.x, x_1764.y)) + vec2<f32>(x_1767.w, x_1767.y));
        let x_1770 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1769.x, x_1769.y, x_1770.z, x_1770.w);
        let x_1773 : f32 = u_xlat11.y;
        u_xlat8.z = x_1773;
        let x_1776 : vec4<f32> = u_xlat6;
        let x_1779 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1782 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1776.x, x_1776.y, x_1776.x, x_1776.y) * vec4<f32>(x_1779.x, x_1779.y, x_1779.x, x_1779.y)) + vec4<f32>(x_1782.x, x_1782.y, x_1782.x, x_1782.z));
        let x_1786 : f32 = u_xlat9.w;
        u_xlat11.y = x_1786;
        let x_1789 : vec4<f32> = u_xlat6;
        let x_1792 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1795 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1789.x, x_1789.y, x_1789.x, x_1789.y) * vec4<f32>(x_1792.x, x_1792.y, x_1792.x, x_1792.y)) + vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1795.y));
        let x_1799 : vec4<f32> = u_xlat6;
        let x_1802 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1805 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1799.x, x_1799.y) * vec2<f32>(x_1802.x, x_1802.y)) + vec2<f32>(x_1805.w, x_1805.y));
        let x_1809 : f32 = u_xlat11.y;
        u_xlat8.w = x_1809;
        let x_1812 : vec4<f32> = u_xlat6;
        let x_1815 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1818 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1812.x, x_1812.y) * vec2<f32>(x_1815.x, x_1815.y)) + vec2<f32>(x_1818.x, x_1818.w));
        let x_1821 : vec4<f32> = u_xlat11;
        let x_1822 : vec3<f32> = vec3<f32>(x_1821.x, x_1821.z, x_1821.w);
        let x_1823 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1822.x, x_1823.y, x_1822.y, x_1822.z);
        let x_1825 : vec4<f32> = u_xlat6;
        let x_1828 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1831 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1825.x, x_1825.y, x_1825.x, x_1825.y) * vec4<f32>(x_1828.x, x_1828.y, x_1828.x, x_1828.y)) + vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1831.y));
        let x_1835 : vec4<f32> = u_xlat6;
        let x_1838 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1841 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1835.x, x_1835.y) * vec2<f32>(x_1838.x, x_1838.y)) + vec2<f32>(x_1841.w, x_1841.y));
        let x_1845 : f32 = u_xlat8.x;
        u_xlat9.x = x_1845;
        let x_1847 : vec4<f32> = u_xlat6;
        let x_1850 : vec4<f32> = x_1006.x_MainLightShadowmapSize;
        let x_1853 : vec4<f32> = u_xlat9;
        let x_1855 : vec2<f32> = ((vec2<f32>(x_1847.x, x_1847.y) * vec2<f32>(x_1850.x, x_1850.y)) + vec2<f32>(x_1853.x, x_1853.y));
        let x_1856 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1855.x, x_1855.y, x_1856.z, x_1856.w);
        let x_1859 : vec4<f32> = u_xlat7;
        let x_1861 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1859.x, x_1859.x, x_1859.x, x_1859.x) * x_1861);
        let x_1864 : vec4<f32> = u_xlat7;
        let x_1866 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1864.y, x_1864.y, x_1864.y, x_1864.y) * x_1866);
        let x_1869 : vec4<f32> = u_xlat7;
        let x_1871 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1869.z, x_1869.z, x_1869.z, x_1869.z) * x_1871);
        let x_1873 : vec4<f32> = u_xlat7;
        let x_1875 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1873.w, x_1873.w, x_1873.w, x_1873.w) * x_1875);
        let x_1878 : vec4<f32> = u_xlat12;
        let x_1879 : vec2<f32> = vec2<f32>(x_1878.x, x_1878.y);
        let x_1881 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1879.x, x_1879.y, x_1881);
        let x_1888 : vec3<f32> = txVec13;
        let x_1890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1888.xy, x_1888.z);
        u_xlat63 = x_1890;
        let x_1892 : vec4<f32> = u_xlat12;
        let x_1893 : vec2<f32> = vec2<f32>(x_1892.z, x_1892.w);
        let x_1895 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec14;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1902.xy, x_1902.z);
        u_xlat64 = x_1904;
        let x_1905 : f32 = u_xlat64;
        let x_1907 : f32 = u_xlat17.y;
        u_xlat64 = (x_1905 * x_1907);
        let x_1910 : f32 = u_xlat17.x;
        let x_1911 : f32 = u_xlat63;
        let x_1913 : f32 = u_xlat64;
        u_xlat63 = ((x_1910 * x_1911) + x_1913);
        let x_1916 : vec2<f32> = u_xlat46;
        let x_1918 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1925 : vec3<f32> = txVec15;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1925.xy, x_1925.z);
        u_xlat64 = x_1927;
        let x_1929 : f32 = u_xlat17.z;
        let x_1930 : f32 = u_xlat64;
        let x_1932 : f32 = u_xlat63;
        u_xlat63 = ((x_1929 * x_1930) + x_1932);
        let x_1935 : vec4<f32> = u_xlat15;
        let x_1936 : vec2<f32> = vec2<f32>(x_1935.x, x_1935.y);
        let x_1938 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
        let x_1945 : vec3<f32> = txVec16;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1945.xy, x_1945.z);
        u_xlat64 = x_1947;
        let x_1949 : f32 = u_xlat17.w;
        let x_1950 : f32 = u_xlat64;
        let x_1952 : f32 = u_xlat63;
        u_xlat63 = ((x_1949 * x_1950) + x_1952);
        let x_1955 : vec4<f32> = u_xlat13;
        let x_1956 : vec2<f32> = vec2<f32>(x_1955.x, x_1955.y);
        let x_1958 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1956.x, x_1956.y, x_1958);
        let x_1965 : vec3<f32> = txVec17;
        let x_1967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1965.xy, x_1965.z);
        u_xlat64 = x_1967;
        let x_1969 : f32 = u_xlat18.x;
        let x_1970 : f32 = u_xlat64;
        let x_1972 : f32 = u_xlat63;
        u_xlat63 = ((x_1969 * x_1970) + x_1972);
        let x_1975 : vec4<f32> = u_xlat13;
        let x_1976 : vec2<f32> = vec2<f32>(x_1975.z, x_1975.w);
        let x_1978 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1976.x, x_1976.y, x_1978);
        let x_1985 : vec3<f32> = txVec18;
        let x_1987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1985.xy, x_1985.z);
        u_xlat64 = x_1987;
        let x_1989 : f32 = u_xlat18.y;
        let x_1990 : f32 = u_xlat64;
        let x_1992 : f32 = u_xlat63;
        u_xlat63 = ((x_1989 * x_1990) + x_1992);
        let x_1995 : vec4<f32> = u_xlat14;
        let x_1996 : vec2<f32> = vec2<f32>(x_1995.x, x_1995.y);
        let x_1998 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1996.x, x_1996.y, x_1998);
        let x_2005 : vec3<f32> = txVec19;
        let x_2007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2005.xy, x_2005.z);
        u_xlat64 = x_2007;
        let x_2009 : f32 = u_xlat18.z;
        let x_2010 : f32 = u_xlat64;
        let x_2012 : f32 = u_xlat63;
        u_xlat63 = ((x_2009 * x_2010) + x_2012);
        let x_2015 : vec4<f32> = u_xlat15;
        let x_2016 : vec2<f32> = vec2<f32>(x_2015.z, x_2015.w);
        let x_2018 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2016.x, x_2016.y, x_2018);
        let x_2025 : vec3<f32> = txVec20;
        let x_2027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2025.xy, x_2025.z);
        u_xlat64 = x_2027;
        let x_2029 : f32 = u_xlat18.w;
        let x_2030 : f32 = u_xlat64;
        let x_2032 : f32 = u_xlat63;
        u_xlat63 = ((x_2029 * x_2030) + x_2032);
        let x_2035 : vec4<f32> = u_xlat16;
        let x_2036 : vec2<f32> = vec2<f32>(x_2035.x, x_2035.y);
        let x_2038 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
        let x_2045 : vec3<f32> = txVec21;
        let x_2047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2045.xy, x_2045.z);
        u_xlat64 = x_2047;
        let x_2049 : f32 = u_xlat19.x;
        let x_2050 : f32 = u_xlat64;
        let x_2052 : f32 = u_xlat63;
        u_xlat63 = ((x_2049 * x_2050) + x_2052);
        let x_2055 : vec4<f32> = u_xlat16;
        let x_2056 : vec2<f32> = vec2<f32>(x_2055.z, x_2055.w);
        let x_2058 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2056.x, x_2056.y, x_2058);
        let x_2065 : vec3<f32> = txVec22;
        let x_2067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2065.xy, x_2065.z);
        u_xlat64 = x_2067;
        let x_2069 : f32 = u_xlat19.y;
        let x_2070 : f32 = u_xlat64;
        let x_2072 : f32 = u_xlat63;
        u_xlat63 = ((x_2069 * x_2070) + x_2072);
        let x_2075 : vec2<f32> = u_xlat28;
        let x_2077 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2075.x, x_2075.y, x_2077);
        let x_2084 : vec3<f32> = txVec23;
        let x_2086 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2084.xy, x_2084.z);
        u_xlat64 = x_2086;
        let x_2088 : f32 = u_xlat19.z;
        let x_2089 : f32 = u_xlat64;
        let x_2091 : f32 = u_xlat63;
        u_xlat63 = ((x_2088 * x_2089) + x_2091);
        let x_2094 : vec2<f32> = u_xlat54;
        let x_2096 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2094.x, x_2094.y, x_2096);
        let x_2103 : vec3<f32> = txVec24;
        let x_2105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2103.xy, x_2103.z);
        u_xlat64 = x_2105;
        let x_2107 : f32 = u_xlat19.w;
        let x_2108 : f32 = u_xlat64;
        let x_2110 : f32 = u_xlat63;
        u_xlat63 = ((x_2107 * x_2108) + x_2110);
        let x_2113 : vec4<f32> = u_xlat11;
        let x_2114 : vec2<f32> = vec2<f32>(x_2113.x, x_2113.y);
        let x_2116 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2114.x, x_2114.y, x_2116);
        let x_2123 : vec3<f32> = txVec25;
        let x_2125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2123.xy, x_2123.z);
        u_xlat64 = x_2125;
        let x_2127 : f32 = u_xlat7.x;
        let x_2128 : f32 = u_xlat64;
        let x_2130 : f32 = u_xlat63;
        u_xlat63 = ((x_2127 * x_2128) + x_2130);
        let x_2133 : vec4<f32> = u_xlat11;
        let x_2134 : vec2<f32> = vec2<f32>(x_2133.z, x_2133.w);
        let x_2136 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2134.x, x_2134.y, x_2136);
        let x_2143 : vec3<f32> = txVec26;
        let x_2145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2143.xy, x_2143.z);
        u_xlat64 = x_2145;
        let x_2147 : f32 = u_xlat7.y;
        let x_2148 : f32 = u_xlat64;
        let x_2150 : f32 = u_xlat63;
        u_xlat63 = ((x_2147 * x_2148) + x_2150);
        let x_2153 : vec2<f32> = u_xlat49;
        let x_2155 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2153.x, x_2153.y, x_2155);
        let x_2162 : vec3<f32> = txVec27;
        let x_2164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2162.xy, x_2162.z);
        u_xlat64 = x_2164;
        let x_2166 : f32 = u_xlat7.z;
        let x_2167 : f32 = u_xlat64;
        let x_2169 : f32 = u_xlat63;
        u_xlat63 = ((x_2166 * x_2167) + x_2169);
        let x_2172 : vec4<f32> = u_xlat6;
        let x_2173 : vec2<f32> = vec2<f32>(x_2172.x, x_2172.y);
        let x_2175 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2173.x, x_2173.y, x_2175);
        let x_2182 : vec3<f32> = txVec28;
        let x_2184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2182.xy, x_2182.z);
        u_xlat64 = x_2184;
        let x_2186 : f32 = u_xlat7.w;
        let x_2187 : f32 = u_xlat64;
        let x_2189 : f32 = u_xlat63;
        u_xlat3.x = ((x_2186 * x_2187) + x_2189);
      }
    }
  } else {
    let x_2194 : vec4<f32> = vs_TEXCOORD8;
    let x_2195 : vec2<f32> = vec2<f32>(x_2194.x, x_2194.y);
    let x_2197 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2195.x, x_2195.y, x_2197);
    let x_2204 : vec3<f32> = txVec29;
    let x_2206 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2204.xy, x_2204.z);
    u_xlat3.x = x_2206;
  }
  let x_2209 : f32 = x_1006.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_2209) + 1.0f);
  let x_2213 : f32 = u_xlat3.x;
  let x_2215 : f32 = x_1006.x_MainLightShadowParams.x;
  let x_2217 : f32 = u_xlat63;
  u_xlat3.x = ((x_2213 * x_2215) + x_2217);
  let x_2221 : f32 = vs_TEXCOORD8.z;
  u_xlatb63 = (0.0f >= x_2221);
  let x_2225 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (x_2225 >= 1.0f);
  let x_2227 : bool = u_xlatb63;
  let x_2228 : bool = u_xlatb64;
  u_xlatb63 = (x_2227 | x_2228);
  let x_2230 : bool = u_xlatb63;
  if (x_2230) {
    x_2231 = 1.0f;
  } else {
    let x_2236 : f32 = u_xlat3.x;
    x_2231 = x_2236;
  }
  let x_2237 : f32 = x_2231;
  u_xlat3.x = x_2237;
  let x_2241 : vec3<f32> = vs_TEXCOORD7;
  let x_2244 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  let x_2246 : vec3<f32> = (x_2241 + -(x_2244));
  let x_2247 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
  let x_2249 : vec4<f32> = u_xlat6;
  let x_2251 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2249.x, x_2249.y, x_2249.z), vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
  let x_2254 : f32 = u_xlat63;
  let x_2256 : f32 = x_1006.x_MainLightShadowParams.z;
  let x_2259 : f32 = x_1006.x_MainLightShadowParams.w;
  u_xlat63 = ((x_2254 * x_2256) + x_2259);
  let x_2261 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2261, 0.0f, 1.0f);
  let x_2264 : f32 = u_xlat3.x;
  u_xlat64 = (-(x_2264) + 1.0f);
  let x_2267 : f32 = u_xlat63;
  let x_2268 : f32 = u_xlat64;
  let x_2271 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2267 * x_2268) + x_2271);
  let x_2274 : f32 = u_xlat43;
  let x_2277 : vec4<f32> = x_127.x_MainLightColor;
  let x_2279 : vec3<f32> = (vec3<f32>(x_2274, x_2274, x_2274) * vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
  let x_2280 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
  let x_2283 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2283;
  let x_2286 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2286;
  let x_2289 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2289;
  let x_2291 : vec4<f32> = u_xlat7;
  let x_2294 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(-(vec3<f32>(x_2291.x, x_2291.y, x_2291.z)), vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
  let x_2297 : f32 = u_xlat63;
  let x_2298 : f32 = u_xlat63;
  u_xlat63 = (x_2297 + x_2298);
  let x_2300 : vec4<f32> = u_xlat1;
  let x_2302 : f32 = u_xlat63;
  let x_2306 : vec4<f32> = u_xlat7;
  let x_2309 : vec3<f32> = ((vec3<f32>(x_2300.x, x_2300.y, x_2300.z) * -(vec3<f32>(x_2302, x_2302, x_2302))) + -(vec3<f32>(x_2306.x, x_2306.y, x_2306.z)));
  let x_2310 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2309.x, x_2309.y, x_2309.z, x_2310.w);
  let x_2312 : vec4<f32> = u_xlat1;
  let x_2314 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2312.x, x_2312.y, x_2312.z), vec3<f32>(x_2314.x, x_2314.y, x_2314.z));
  let x_2317 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2317, 0.0f, 1.0f);
  let x_2319 : f32 = u_xlat63;
  u_xlat63 = (-(x_2319) + 1.0f);
  let x_2322 : f32 = u_xlat63;
  let x_2323 : f32 = u_xlat63;
  u_xlat63 = (x_2322 * x_2323);
  let x_2325 : f32 = u_xlat63;
  let x_2326 : f32 = u_xlat63;
  u_xlat63 = (x_2325 * x_2326);
  let x_2329 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_2329) * 0.699999988f) + 1.700000048f);
  let x_2336 : f32 = u_xlat0.x;
  let x_2337 : f32 = u_xlat64;
  u_xlat0.x = (x_2336 * x_2337);
  let x_2341 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2341 * 6.0f);
  let x_2353 : vec4<f32> = u_xlat8;
  let x_2356 : f32 = u_xlat0.x;
  let x_2357 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2353.x, x_2353.y, x_2353.z), x_2356);
  u_xlat8 = x_2357;
  let x_2359 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2359 + -1.0f);
  let x_2367 : f32 = x_2365.unity_SpecCube0_HDR.w;
  let x_2369 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2367 * x_2369) + 1.0f);
  let x_2374 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2374, 0.0f);
  let x_2378 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2378);
  let x_2382 : f32 = u_xlat0.x;
  let x_2384 : f32 = x_2365.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2382 * x_2384);
  let x_2388 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2388);
  let x_2392 : f32 = u_xlat0.x;
  let x_2394 : f32 = x_2365.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2392 * x_2394);
  let x_2397 : vec4<f32> = u_xlat8;
  let x_2399 : vec3<f32> = u_xlat0;
  let x_2401 : vec3<f32> = (vec3<f32>(x_2397.x, x_2397.y, x_2397.z) * vec3<f32>(x_2399.x, x_2399.x, x_2399.x));
  let x_2402 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
  let x_2404 : f32 = u_xlat40;
  let x_2406 : f32 = u_xlat40;
  let x_2410 : vec2<f32> = ((vec2<f32>(x_2404, x_2404) * vec2<f32>(x_2406, x_2406)) + vec2<f32>(-1.0f, 1.0f));
  let x_2411 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2410.x, x_2411.y, x_2410.y);
  let x_2414 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2414);
  let x_2416 : vec4<f32> = u_xlat5;
  let x_2419 : f32 = u_xlat62;
  let x_2421 : vec3<f32> = (-(vec3<f32>(x_2416.x, x_2416.y, x_2416.z)) + vec3<f32>(x_2419, x_2419, x_2419));
  let x_2422 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2421.x, x_2421.y, x_2421.z, x_2422.w);
  let x_2424 : f32 = u_xlat63;
  let x_2426 : vec4<f32> = u_xlat9;
  let x_2429 : vec4<f32> = u_xlat5;
  let x_2431 : vec3<f32> = ((vec3<f32>(x_2424, x_2424, x_2424) * vec3<f32>(x_2426.x, x_2426.y, x_2426.z)) + vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
  let x_2432 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2432.w);
  let x_2434 : f32 = u_xlat40;
  let x_2436 : vec4<f32> = u_xlat9;
  let x_2438 : vec3<f32> = (vec3<f32>(x_2434, x_2434, x_2434) * vec3<f32>(x_2436.x, x_2436.y, x_2436.z));
  let x_2439 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2438.x, x_2438.y, x_2438.z, x_2439.w);
  let x_2441 : vec4<f32> = u_xlat8;
  let x_2443 : vec4<f32> = u_xlat9;
  let x_2445 : vec3<f32> = (vec3<f32>(x_2441.x, x_2441.y, x_2441.z) * vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
  let x_2446 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
  let x_2448 : vec4<f32> = u_xlat2;
  let x_2450 : vec4<f32> = u_xlat4;
  let x_2453 : vec4<f32> = u_xlat8;
  let x_2455 : vec3<f32> = ((vec3<f32>(x_2448.x, x_2448.y, x_2448.z) * vec3<f32>(x_2450.x, x_2450.y, x_2450.z)) + vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
  let x_2456 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
  let x_2459 : f32 = u_xlat3.x;
  let x_2461 : f32 = x_2365.unity_LightData.z;
  u_xlat40 = (x_2459 * x_2461);
  let x_2463 : vec4<f32> = u_xlat1;
  let x_2466 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat62 = dot(vec3<f32>(x_2463.x, x_2463.y, x_2463.z), vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
  let x_2469 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2469, 0.0f, 1.0f);
  let x_2471 : f32 = u_xlat40;
  let x_2472 : f32 = u_xlat62;
  u_xlat40 = (x_2471 * x_2472);
  let x_2474 : f32 = u_xlat40;
  let x_2476 : vec4<f32> = u_xlat6;
  let x_2478 : vec3<f32> = (vec3<f32>(x_2474, x_2474, x_2474) * vec3<f32>(x_2476.x, x_2476.y, x_2476.z));
  let x_2479 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
  let x_2481 : vec4<f32> = u_xlat7;
  let x_2484 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2486 : vec3<f32> = (vec3<f32>(x_2481.x, x_2481.y, x_2481.z) + vec3<f32>(x_2484.x, x_2484.y, x_2484.z));
  let x_2487 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
  let x_2489 : vec4<f32> = u_xlat8;
  let x_2491 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2489.x, x_2489.y, x_2489.z), vec3<f32>(x_2491.x, x_2491.y, x_2491.z));
  let x_2494 : f32 = u_xlat40;
  u_xlat40 = max(x_2494, 1.17549435e-37f);
  let x_2497 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2497);
  let x_2499 : f32 = u_xlat40;
  let x_2501 : vec4<f32> = u_xlat8;
  let x_2503 : vec3<f32> = (vec3<f32>(x_2499, x_2499, x_2499) * vec3<f32>(x_2501.x, x_2501.y, x_2501.z));
  let x_2504 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2503.x, x_2503.y, x_2503.z, x_2504.w);
  let x_2506 : vec4<f32> = u_xlat1;
  let x_2508 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2506.x, x_2506.y, x_2506.z), vec3<f32>(x_2508.x, x_2508.y, x_2508.z));
  let x_2511 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2511, 0.0f, 1.0f);
  let x_2514 : vec4<f32> = x_127.x_MainLightPosition;
  let x_2516 : vec4<f32> = u_xlat8;
  u_xlat62 = dot(vec3<f32>(x_2514.x, x_2514.y, x_2514.z), vec3<f32>(x_2516.x, x_2516.y, x_2516.z));
  let x_2519 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2519, 0.0f, 1.0f);
  let x_2521 : f32 = u_xlat40;
  let x_2522 : f32 = u_xlat40;
  u_xlat40 = (x_2521 * x_2522);
  let x_2524 : f32 = u_xlat40;
  let x_2526 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2524 * x_2526) + 1.000010014f);
  let x_2530 : f32 = u_xlat62;
  let x_2531 : f32 = u_xlat62;
  u_xlat62 = (x_2530 * x_2531);
  let x_2533 : f32 = u_xlat40;
  let x_2534 : f32 = u_xlat40;
  u_xlat40 = (x_2533 * x_2534);
  let x_2536 : f32 = u_xlat62;
  u_xlat62 = max(x_2536, 0.100000001f);
  let x_2539 : f32 = u_xlat40;
  let x_2540 : f32 = u_xlat62;
  u_xlat40 = (x_2539 * x_2540);
  let x_2542 : f32 = u_xlat23;
  let x_2543 : f32 = u_xlat40;
  u_xlat40 = (x_2542 * x_2543);
  let x_2545 : f32 = u_xlat61;
  let x_2546 : f32 = u_xlat40;
  u_xlat40 = (x_2545 / x_2546);
  let x_2548 : vec4<f32> = u_xlat5;
  let x_2550 : f32 = u_xlat40;
  let x_2553 : vec4<f32> = u_xlat4;
  let x_2555 : vec3<f32> = ((vec3<f32>(x_2548.x, x_2548.y, x_2548.z) * vec3<f32>(x_2550, x_2550, x_2550)) + vec3<f32>(x_2553.x, x_2553.y, x_2553.z));
  let x_2556 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2555.x, x_2555.y, x_2555.z, x_2556.w);
  let x_2558 : vec4<f32> = u_xlat6;
  let x_2560 : vec4<f32> = u_xlat8;
  let x_2562 : vec3<f32> = (vec3<f32>(x_2558.x, x_2558.y, x_2558.z) * vec3<f32>(x_2560.x, x_2560.y, x_2560.z));
  let x_2563 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2562.x, x_2562.y, x_2562.z, x_2563.w);
  let x_2566 : f32 = x_127.x_AdditionalLightsCount.x;
  let x_2568 : f32 = x_2365.unity_LightData.y;
  u_xlat40 = min(x_2566, x_2568);
  let x_2572 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2572));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2584 : u32 = u_xlatu_loop_1;
    let x_2585 : u32 = u_xlatu40;
    if ((x_2584 < x_2585)) {
    } else {
      break;
    }
    let x_2588 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2588 >> 2u);
    let x_2592 : u32 = u_xlatu_loop_1;
    u_xlati63 = bitcast<i32>((x_2592 & 3u));
    let x_2595 : u32 = u_xlatu3;
    let x_2598 : vec4<f32> = x_2365.unity_LightIndices[bitcast<i32>(x_2595)];
    let x_2608 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2613 : vec4<u32> = indexable[x_2608];
    u_xlat3.x = dot(x_2598, bitcast<vec4<f32>>(x_2613));
    let x_2619 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_2619);
    let x_2621 : vec3<f32> = vs_TEXCOORD7;
    let x_2633 : i32 = u_xlati3;
    let x_2635 : vec4<f32> = x_2632.x_AdditionalLightsPosition[x_2633];
    let x_2638 : i32 = u_xlati3;
    let x_2640 : vec4<f32> = x_2632.x_AdditionalLightsPosition[x_2638];
    let x_2642 : vec3<f32> = ((-(x_2621) * vec3<f32>(x_2635.w, x_2635.w, x_2635.w)) + vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
    let x_2643 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
    let x_2645 : vec4<f32> = u_xlat9;
    let x_2647 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2645.x, x_2645.y, x_2645.z), vec3<f32>(x_2647.x, x_2647.y, x_2647.z));
    let x_2650 : f32 = u_xlat63;
    u_xlat63 = max(x_2650, 6.10351562e-05f);
    let x_2652 : f32 = u_xlat63;
    u_xlat64 = inverseSqrt(x_2652);
    let x_2654 : f32 = u_xlat64;
    let x_2656 : vec4<f32> = u_xlat9;
    let x_2658 : vec3<f32> = (vec3<f32>(x_2654, x_2654, x_2654) * vec3<f32>(x_2656.x, x_2656.y, x_2656.z));
    let x_2659 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2658.x, x_2658.y, x_2658.z, x_2659.w);
    let x_2661 : f32 = u_xlat63;
    u_xlat65 = (1.0f / x_2661);
    let x_2663 : f32 = u_xlat63;
    let x_2664 : i32 = u_xlati3;
    let x_2666 : f32 = x_2632.x_AdditionalLightsAttenuation[x_2664].x;
    u_xlat63 = (x_2663 * x_2666);
    let x_2668 : f32 = u_xlat63;
    let x_2670 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2668) * x_2670) + 1.0f);
    let x_2673 : f32 = u_xlat63;
    u_xlat63 = max(x_2673, 0.0f);
    let x_2675 : f32 = u_xlat63;
    let x_2676 : f32 = u_xlat63;
    u_xlat63 = (x_2675 * x_2676);
    let x_2678 : f32 = u_xlat63;
    let x_2679 : f32 = u_xlat65;
    u_xlat63 = (x_2678 * x_2679);
    let x_2681 : i32 = u_xlati3;
    let x_2683 : vec4<f32> = x_2632.x_AdditionalLightsSpotDir[x_2681];
    let x_2685 : vec4<f32> = u_xlat10;
    u_xlat65 = dot(vec3<f32>(x_2683.x, x_2683.y, x_2683.z), vec3<f32>(x_2685.x, x_2685.y, x_2685.z));
    let x_2688 : f32 = u_xlat65;
    let x_2689 : i32 = u_xlati3;
    let x_2691 : f32 = x_2632.x_AdditionalLightsAttenuation[x_2689].z;
    let x_2693 : i32 = u_xlati3;
    let x_2695 : f32 = x_2632.x_AdditionalLightsAttenuation[x_2693].w;
    u_xlat65 = ((x_2688 * x_2691) + x_2695);
    let x_2697 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2697, 0.0f, 1.0f);
    let x_2699 : f32 = u_xlat65;
    let x_2700 : f32 = u_xlat65;
    u_xlat65 = (x_2699 * x_2700);
    let x_2702 : f32 = u_xlat63;
    let x_2703 : f32 = u_xlat65;
    u_xlat63 = (x_2702 * x_2703);
    let x_2705 : f32 = u_xlat43;
    let x_2707 : i32 = u_xlati3;
    let x_2709 : vec4<f32> = x_2632.x_AdditionalLightsColor[x_2707];
    let x_2711 : vec3<f32> = (vec3<f32>(x_2705, x_2705, x_2705) * vec3<f32>(x_2709.x, x_2709.y, x_2709.z));
    let x_2712 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2711.x, x_2711.y, x_2711.z, x_2712.w);
    let x_2714 : vec4<f32> = u_xlat1;
    let x_2716 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2714.x, x_2714.y, x_2714.z), vec3<f32>(x_2716.x, x_2716.y, x_2716.z));
    let x_2721 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2721, 0.0f, 1.0f);
    let x_2725 : f32 = u_xlat3.x;
    let x_2726 : f32 = u_xlat63;
    u_xlat3.x = (x_2725 * x_2726);
    let x_2729 : vec4<f32> = u_xlat3;
    let x_2731 : vec4<f32> = u_xlat11;
    let x_2733 : vec3<f32> = (vec3<f32>(x_2729.x, x_2729.x, x_2729.x) * vec3<f32>(x_2731.x, x_2731.y, x_2731.z));
    let x_2734 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2733.x, x_2733.y, x_2733.z, x_2734.w);
    let x_2736 : vec4<f32> = u_xlat9;
    let x_2738 : f32 = u_xlat64;
    let x_2741 : vec4<f32> = u_xlat7;
    let x_2743 : vec3<f32> = ((vec3<f32>(x_2736.x, x_2736.y, x_2736.z) * vec3<f32>(x_2738, x_2738, x_2738)) + vec3<f32>(x_2741.x, x_2741.y, x_2741.z));
    let x_2744 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
    let x_2746 : vec4<f32> = u_xlat9;
    let x_2748 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_2746.x, x_2746.y, x_2746.z), vec3<f32>(x_2748.x, x_2748.y, x_2748.z));
    let x_2753 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_2753, 1.17549435e-37f);
    let x_2757 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_2757);
    let x_2760 : vec4<f32> = u_xlat3;
    let x_2762 : vec4<f32> = u_xlat9;
    let x_2764 : vec3<f32> = (vec3<f32>(x_2760.x, x_2760.x, x_2760.x) * vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
    let x_2765 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2765.w);
    let x_2767 : vec4<f32> = u_xlat1;
    let x_2769 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_2767.x, x_2767.y, x_2767.z), vec3<f32>(x_2769.x, x_2769.y, x_2769.z));
    let x_2774 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2774, 0.0f, 1.0f);
    let x_2777 : vec4<f32> = u_xlat10;
    let x_2779 : vec4<f32> = u_xlat9;
    u_xlat3.w = dot(vec3<f32>(x_2777.x, x_2777.y, x_2777.z), vec3<f32>(x_2779.x, x_2779.y, x_2779.z));
    let x_2784 : f32 = u_xlat3.w;
    u_xlat3.w = clamp(x_2784, 0.0f, 1.0f);
    let x_2787 : vec4<f32> = u_xlat3;
    let x_2789 : vec4<f32> = u_xlat3;
    let x_2791 : vec2<f32> = (vec2<f32>(x_2787.x, x_2787.w) * vec2<f32>(x_2789.x, x_2789.w));
    let x_2792 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_2791.x, x_2792.y, x_2792.z, x_2791.y);
    let x_2795 : f32 = u_xlat3.x;
    let x_2797 : f32 = u_xlat0.x;
    u_xlat3.x = ((x_2795 * x_2797) + 1.000010014f);
    let x_2802 : f32 = u_xlat3.x;
    let x_2804 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2802 * x_2804);
    let x_2808 : f32 = u_xlat3.w;
    u_xlat63 = max(x_2808, 0.100000001f);
    let x_2810 : f32 = u_xlat63;
    let x_2812 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2810 * x_2812);
    let x_2815 : f32 = u_xlat23;
    let x_2817 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2815 * x_2817);
    let x_2820 : f32 = u_xlat61;
    let x_2822 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2820 / x_2822);
    let x_2825 : vec4<f32> = u_xlat5;
    let x_2827 : vec4<f32> = u_xlat3;
    let x_2830 : vec4<f32> = u_xlat4;
    let x_2832 : vec3<f32> = ((vec3<f32>(x_2825.x, x_2825.y, x_2825.z) * vec3<f32>(x_2827.x, x_2827.x, x_2827.x)) + vec3<f32>(x_2830.x, x_2830.y, x_2830.z));
    let x_2833 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2832.x, x_2832.y, x_2832.z, x_2833.w);
    let x_2835 : vec4<f32> = u_xlat9;
    let x_2837 : vec4<f32> = u_xlat11;
    let x_2840 : vec4<f32> = u_xlat8;
    let x_2842 : vec3<f32> = ((vec3<f32>(x_2835.x, x_2835.y, x_2835.z) * vec3<f32>(x_2837.x, x_2837.y, x_2837.z)) + vec3<f32>(x_2840.x, x_2840.y, x_2840.z));
    let x_2843 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2842.x, x_2842.y, x_2842.z, x_2843.w);

    continuing {
      let x_2845 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2845 + bitcast<u32>(1i));
    }
  }
  let x_2847 : vec4<f32> = u_xlat2;
  let x_2849 : f32 = u_xlat20;
  let x_2852 : vec4<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2847.x, x_2847.y, x_2847.z) * vec3<f32>(x_2849, x_2849, x_2849)) + vec3<f32>(x_2852.x, x_2852.y, x_2852.z));
  let x_2855 : vec4<f32> = u_xlat8;
  let x_2857 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2855.x, x_2855.y, x_2855.z) + x_2857);
  let x_2861 : f32 = u_xlat60;
  let x_2863 : vec3<f32> = u_xlat0;
  let x_2864 : vec3<f32> = (vec3<f32>(x_2861, x_2861, x_2861) * x_2863);
  let x_2865 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2864.x, x_2864.y, x_2864.z, x_2865.w);
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

